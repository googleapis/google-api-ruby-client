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
    module ApihubV1
      # API hub API
      #
      # 
      #
      # @example
      #    require 'google/apis/apihub_v1'
      #
      #    Apihub = Google::Apis::ApihubV1 # Alias the module
      #    service = Apihub::APIhubService.new
      #
      # @see https://cloud.google.com/apigee/docs/api-hub/what-is-api-hub
      class APIhubService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://apihub.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-apihub_v1',
                client_version: Google::Apis::ApihubV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Collect API data from a source and push it to Hub's collect layer.
        # @param [String] location
        #   Required. The regional location of the API hub instance and its resources.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1CollectApiDataRequest] google_cloud_apihub_v1_collect_api_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_api_data(location, google_cloud_apihub_v1_collect_api_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:collectApiData', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1CollectApiDataRequest::Representation
          command.request_object = google_cloud_apihub_v1_collect_api_data_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudLocationLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudLocationLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudLocationLocation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudLocationLocation
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudLocationListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudLocationListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudLocationListLocationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudLocationListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up a runtime project attachment. This API can be called in the context of
        # any project.
        # @param [String] name
        #   Required. Runtime project ID to look up runtime project attachment for. Lookup
        #   happens across all regions. Expected format: `projects/`project`/locations/`
        #   location``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_runtime_project_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:lookupRuntimeProjectAttachment', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1LookupRuntimeProjectAttachmentResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search across API-Hub resources.
        # @param [String] location
        #   Required. The resource name of the location which will be of the type `
        #   projects/`project_id`/locations/`location_id``. This field is used to identify
        #   the instance of API-Hub in which resources should be searched.
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResourcesRequest] google_cloud_apihub_v1_search_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_resources(location, google_cloud_apihub_v1_search_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:searchResources', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResourcesRequest::Representation
          command.request_object = google_cloud_apihub_v1_search_resources_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResourcesResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1SearchResourcesResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an addon.
        # @param [String] name
        #   Required. The name of the addon to get. Format: `projects/`project`/locations/`
        #   location`/addons/`addon``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Addon] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Addon]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_addon(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Addon::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Addon
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List addons.
        # @param [String] parent
        #   Required. The parent resource where this addon will be created. Format: `
        #   projects/`project`/locations/`location``.
        # @param [String] filter
        #   Optional. An expression that filters the list of addons. The only supported
        #   filter is `plugin_instance_name`. It can be used to filter addons that are
        #   enabled for a given plugin instance. The format of the filter is `
        #   plugin_instance_name = "projects/`project`/locations/`location`/plugins/`
        #   plugin`/instances/`instance`"`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of hub addons to return. The service may return
        #   fewer than this value. If unspecified, at most 50 hub addons will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAddons` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters (
        #   except page_size) provided to `ListAddons` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListAddonsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListAddonsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_addons(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/addons', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListAddonsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListAddonsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manage addon config. This RPC is used for managing the config of the addon.
        # Calling this RPC moves the addon into an updating state until the long-running
        # operation succeeds.
        # @param [String] name
        #   Required. The name of the addon for which the config is to be managed. Format:
        #   `projects/`project`/locations/`location`/addons/`addon``.
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ManageAddonConfigRequest] google_cloud_apihub_v1_manage_addon_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def manage_project_location_addon_config(name, google_cloud_apihub_v1_manage_addon_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:manageConfig', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ManageAddonConfigRequest::Representation
          command.request_object = google_cloud_apihub_v1_manage_addon_config_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions instance resources for the API Hub.
        # @param [String] parent
        #   Required. The parent resource for the Api Hub instance resource. Format: `
        #   projects/`project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance] google_cloud_apihub_v1_api_hub_instance_object
        # @param [String] api_hub_instance_id
        #   Optional. Identifier to assign to the Api Hub instance. Must be unique within
        #   scope of the parent resource. If the field is not provided, system generated
        #   id will be used. This value should be 4-40 characters, and valid characters
        #   are `/a-z[0-9]-_/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api_hub_instance(parent, google_cloud_apihub_v1_api_hub_instance_object = nil, api_hub_instance_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apiHubInstances', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance::Representation
          command.request_object = google_cloud_apihub_v1_api_hub_instance_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['apiHubInstanceId'] = api_hub_instance_id unless api_hub_instance_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the API hub instance. Deleting the API hub instance will also result
        # in the removal of all associated runtime project attachments and the host
        # project registration.
        # @param [String] name
        #   Required. The name of the Api Hub instance to delete. Format: `projects/`
        #   project`/locations/`location`/apiHubInstances/`apiHubInstance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api_hub_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single API Hub instance.
        # @param [String] name
        #   Required. The name of the Api Hub instance to retrieve. Format: `projects/`
        #   project`/locations/`location`/apiHubInstances/`apiHubInstance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_hub_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiHubInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up an Api Hub instance in a given GCP project. There will always be only
        # one Api Hub instance for a GCP project across all locations.
        # @param [String] parent
        #   Required. There will always be only one Api Hub instance for a GCP project
        #   across all locations. The parent resource for the Api Hub instance resource.
        #   Format: `projects/`project`/locations/`location``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1LookupApiHubInstanceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1LookupApiHubInstanceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_location_api_hub_instance(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apiHubInstances:lookup', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1LookupApiHubInstanceResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1LookupApiHubInstanceResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an API resource in the API hub. Once an API resource is created,
        # versions can be added to it.
        # @param [String] parent
        #   Required. The parent resource for the API resource. Format: `projects/`project`
        #   /locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Api] google_cloud_apihub_v1_api_object
        # @param [String] api_id
        #   Optional. The ID to use for the API resource, which will become the final
        #   component of the API's resource name. This field is optional. * If provided,
        #   the same will be used. The service will throw an error if the specified id is
        #   already used by another API resource in the API hub. * If not provided, a
        #   system generated id will be used. This value should be 4-500 characters, and
        #   valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Api] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api(parent, google_cloud_apihub_v1_api_object = nil, api_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apis', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Api::Representation
          command.request_object = google_cloud_apihub_v1_api_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Api::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Api
          command.params['parent'] = parent unless parent.nil?
          command.query['apiId'] = api_id unless api_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an API resource in the API hub. API can only be deleted if all
        # underlying versions are deleted.
        # @param [String] name
        #   Required. The name of the API resource to delete. Format: `projects/`project`/
        #   locations/`location`/apis/`api``
        # @param [Boolean] force
        #   Optional. If set to true, any versions from this API will also be deleted.
        #   Otherwise, the request will only work if the API has no versions.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get API resource details including the API versions contained in it.
        # @param [String] name
        #   Required. The name of the API resource to retrieve. Format: `projects/`project`
        #   /locations/`location`/apis/`api``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Api] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Api::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Api
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List API resources in the API hub.
        # @param [String] parent
        #   Required. The parent, which owns this collection of API resources. Format: `
        #   projects/`project`/locations/`location``
        # @param [String] filter
        #   Optional. An expression that filters the list of ApiResources. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string. The comparison operator must be one of:
        #   `<`, `>`, `:` or `=`. Filters are not case sensitive. The following fields in
        #   the `ApiResource` are eligible for filtering: * `owner.email` - The email of
        #   the team which owns the ApiResource. Allowed comparison operators: `=`. * `
        #   create_time` - The time at which the ApiResource was created. The value should
        #   be in the (RFC3339)[https://tools.ietf.org/html/rfc3339] format. Allowed
        #   comparison operators: `>` and `<`. * `display_name` - The display name of the
        #   ApiResource. Allowed comparison operators: `=`. * `target_user.enum_values.
        #   values.id` - The allowed value id of the target users attribute associated
        #   with the ApiResource. Allowed comparison operator is `:`. * `target_user.
        #   enum_values.values.display_name` - The allowed value display name of the
        #   target users attribute associated with the ApiResource. Allowed comparison
        #   operator is `:`. * `team.enum_values.values.id` - The allowed value id of the
        #   team attribute associated with the ApiResource. Allowed comparison operator is
        #   `:`. * `team.enum_values.values.display_name` - The allowed value display name
        #   of the team attribute associated with the ApiResource. Allowed comparison
        #   operator is `:`. * `business_unit.enum_values.values.id` - The allowed value
        #   id of the business unit attribute associated with the ApiResource. Allowed
        #   comparison operator is `:`. * `business_unit.enum_values.values.display_name` -
        #   The allowed value display name of the business unit attribute associated with
        #   the ApiResource. Allowed comparison operator is `:`. * `maturity_level.
        #   enum_values.values.id` - The allowed value id of the maturity level attribute
        #   associated with the ApiResource. Allowed comparison operator is `:`. * `
        #   maturity_level.enum_values.values.display_name` - The allowed value display
        #   name of the maturity level attribute associated with the ApiResource. Allowed
        #   comparison operator is `:`. * `api_style.enum_values.values.id` - The allowed
        #   value id of the api style attribute associated with the ApiResource. Allowed
        #   comparison operator is `:`. * `api_style.enum_values.values.display_name` -
        #   The allowed value display name of the api style attribute associated with the
        #   ApiResource. Allowed comparison operator is `:`. * `attributes.projects/test-
        #   project-id/locations/test-location-id/ attributes/user-defined-attribute-id.
        #   enum_values.values.id` - The allowed value id of the user defined enum
        #   attribute associated with the Resource. Allowed comparison operator is `:`.
        #   Here user-defined-attribute-enum-id is a placeholder that can be replaced with
        #   any user defined enum attribute name. * `attributes.projects/test-project-id/
        #   locations/test-location-id/ attributes/user-defined-attribute-id.enum_values.
        #   values.display_name` - The allowed value display name of the user defined enum
        #   attribute associated with the Resource. Allowed comparison operator is `:`.
        #   Here user-defined-attribute-enum-display-name is a placeholder that can be
        #   replaced with any user defined enum attribute enum name. * `attributes.
        #   projects/test-project-id/locations/test-location-id/ attributes/user-defined-
        #   attribute-id.string_values.values` - The allowed value of the user defined
        #   string attribute associated with the Resource. Allowed comparison operator is `
        #   :`. Here user-defined-attribute-string is a placeholder that can be replaced
        #   with any user defined string attribute name. * `attributes.projects/test-
        #   project-id/locations/test-location-id/ attributes/user-defined-attribute-id.
        #   json_values.values` - The allowed value of the user defined JSON attribute
        #   associated with the Resource. Allowed comparison operator is `:`. Here user-
        #   defined-attribute-json is a placeholder that can be replaced with any user
        #   defined JSON attribute name. A filter function is also supported in the filter
        #   string. The filter function is `id(name)`. The `id(name)` function returns the
        #   id of the resource name. For example, `id(name) = \"api-1\"` is equivalent to `
        #   name = \"projects/test-project-id/locations/test-location-id/apis/api-1\"`
        #   provided the parent is `projects/test-project-id/locations/test-location-id`.
        #   Expressions are combined with either `AND` logic operator or `OR` logical
        #   operator but not both of them together i.e. only one of the `AND` or `OR`
        #   operator can be used throughout the filter string and both the operators
        #   cannot be used together. No other logical operators are supported. At most
        #   three filter fields are allowed in the filter string and if provided more than
        #   that then `INVALID_ARGUMENT` error is returned by the API. Here are a few
        #   examples: * `owner.email = \"apihub@google.com\"` - - The owner team email is
        #   _apihub@google.com_. * `owner.email = \"apihub@google.com\" AND create_time < \
        #   "2021-08-15T14:50:00Z\" AND create_time > \"2021-08-10T12:00:00Z\"` - The
        #   owner team email is _apihub@google.com_ and the api was created before _2021-
        #   08-15 14:50:00 UTC_ and after _2021-08-10 12:00:00 UTC_. * `owner.email = \"
        #   apihub@google.com\" OR team.enum_values.values.id: apihub-team-id` - The
        #   filter string specifies the APIs where the owner team email is _apihub@google.
        #   com_ or the id of the allowed value associated with the team attribute is
        #   _apihub-team-id_. * `owner.email = \"apihub@google.com\" OR team.enum_values.
        #   values.display_name: ApiHub Team` - The filter string specifies the APIs where
        #   the owner team email is _apihub@google.com_ or the display name of the allowed
        #   value associated with the team attribute is `ApiHub Team`. * `owner.email = \"
        #   apihub@google.com\" AND attributes.projects/test-project-id/locations/test-
        #   location-id/ attributes/17650f90-4a29-4971-b3c0-d5532da3764b.enum_values.
        #   values.id: test_enum_id AND attributes.projects/test-project-id/locations/test-
        #   location-id/ attributes/1765\0f90-4a29-5431-b3d0-d5532da3764c.string_values.
        #   values: test_string_value` - The filter string specifies the APIs where the
        #   owner team email is _apihub@google.com_ and the id of the allowed value
        #   associated with the user defined attribute of type enum is _test_enum_id_ and
        #   the value of the user defined attribute of type string is _test_..
        # @param [Fixnum] page_size
        #   Optional. The maximum number of API resources to return. The service may
        #   return fewer than this value. If unspecified, at most 50 Apis will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListApis` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters (except
        #   page_size) provided to `ListApis` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListApisResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListApisResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_apis(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apis', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListApisResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListApisResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an API resource in the API hub. The following fields in the API can be
        # updated: * display_name * description * owner * documentation * target_user *
        # team * business_unit * maturity_level * api_style * attributes * fingerprint
        # The update_mask should be used to specify the fields being updated. Updating
        # the owner field requires complete owner message and updates both owner and
        # email fields.
        # @param [String] name
        #   Identifier. The name of the API resource in the API Hub. Format: `projects/`
        #   project`/locations/`location`/apis/`api``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Api] google_cloud_apihub_v1_api_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Api] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Api]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_api(name, google_cloud_apihub_v1_api_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Api::Representation
          command.request_object = google_cloud_apihub_v1_api_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Api::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Api
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an API version for an API resource in the API hub.
        # @param [String] parent
        #   Required. The parent resource for API version. Format: `projects/`project`/
        #   locations/`location`/apis/`api``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Version] google_cloud_apihub_v1_version_object
        # @param [String] version_id
        #   Optional. The ID to use for the API version, which will become the final
        #   component of the version's resource name. This field is optional. * If
        #   provided, the same will be used. The service will throw an error if the
        #   specified id is already used by another version in the API resource. * If not
        #   provided, a system generated id will be used. This value should be 4-500
        #   characters, overall resource name which will be of format `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version``, its length is limited to
        #   700 characters and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api_version(parent, google_cloud_apihub_v1_version_object = nil, version_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/versions', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Version::Representation
          command.request_object = google_cloud_apihub_v1_version_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Version::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Version
          command.params['parent'] = parent unless parent.nil?
          command.query['versionId'] = version_id unless version_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an API version. Version can only be deleted if all underlying specs,
        # operations, definitions and linked deployments are deleted.
        # @param [String] name
        #   Required. The name of the version to delete. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version``
        # @param [Boolean] force
        #   Optional. If set to true, any specs from this version will also be deleted.
        #   Otherwise, the request will only work if the version has no specs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api_version(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about the API version of an API resource. This will include
        # information about the specs and operations present in the API version as well
        # as the deployments linked to it.
        # @param [String] name
        #   Required. The name of the API version to retrieve. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_version(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Version::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Version
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List API versions of an API resource in the API hub.
        # @param [String] parent
        #   Required. The parent which owns this collection of API versions i.e., the API
        #   resource Format: `projects/`project`/locations/`location`/apis/`api``
        # @param [String] filter
        #   Optional. An expression that filters the list of Versions. A filter expression
        #   consists of a field name, a comparison operator, and a value for filtering.
        #   The value must be a string, a number, or a boolean. The comparison operator
        #   must be one of: `<`, `>` or `=`. Filters are not case sensitive. The following
        #   fields in the `Version` are eligible for filtering: * `display_name` - The
        #   display name of the Version. Allowed comparison operators: `=`. * `create_time`
        #   - The time at which the Version was created. The value should be in the (
        #   RFC3339)[https://tools.ietf.org/html/rfc3339] format. Allowed comparison
        #   operators: `>` and `<`. * `lifecycle.enum_values.values.id` - The allowed
        #   value id of the lifecycle attribute associated with the Version. Allowed
        #   comparison operators: `:`. * `lifecycle.enum_values.values.display_name` - The
        #   allowed value display name of the lifecycle attribute associated with the
        #   Version. Allowed comparison operators: `:`. * `compliance.enum_values.values.
        #   id` - The allowed value id of the compliances attribute associated with the
        #   Version. Allowed comparison operators: `:`. * `compliance.enum_values.values.
        #   display_name` - The allowed value display name of the compliances attribute
        #   associated with the Version. Allowed comparison operators: `:`. * `
        #   accreditation.enum_values.values.id` - The allowed value id of the
        #   accreditations attribute associated with the Version. Allowed comparison
        #   operators: `:`. * `accreditation.enum_values.values.display_name` - The
        #   allowed value display name of the accreditations attribute associated with the
        #   Version. Allowed comparison operators: `:`. * `attributes.projects/test-
        #   project-id/locations/test-location-id/ attributes/user-defined-attribute-id.
        #   enum_values.values.id` - The allowed value id of the user defined enum
        #   attribute associated with the Resource. Allowed comparison operator is `:`.
        #   Here user-defined-attribute-enum-id is a placeholder that can be replaced with
        #   any user defined enum attribute name. * `attributes.projects/test-project-id/
        #   locations/test-location-id/ attributes/user-defined-attribute-id.enum_values.
        #   values.display_name` - The allowed value display name of the user defined enum
        #   attribute associated with the Resource. Allowed comparison operator is `:`.
        #   Here user-defined-attribute-enum-display-name is a placeholder that can be
        #   replaced with any user defined enum attribute enum name. * `attributes.
        #   projects/test-project-id/locations/test-location-id/ attributes/user-defined-
        #   attribute-id.string_values.values` - The allowed value of the user defined
        #   string attribute associated with the Resource. Allowed comparison operator is `
        #   :`. Here user-defined-attribute-string is a placeholder that can be replaced
        #   with any user defined string attribute name. * `attributes.projects/test-
        #   project-id/locations/test-location-id/ attributes/user-defined-attribute-id.
        #   json_values.values` - The allowed value of the user defined JSON attribute
        #   associated with the Resource. Allowed comparison operator is `:`. Here user-
        #   defined-attribute-json is a placeholder that can be replaced with any user
        #   defined JSON attribute name. Expressions are combined with either `AND` logic
        #   operator or `OR` logical operator but not both of them together i.e. only one
        #   of the `AND` or `OR` operator can be used throughout the filter string and
        #   both the operators cannot be used together. No other logical operators are
        #   supported. At most three filter fields are allowed in the filter string and if
        #   provided more than that then `INVALID_ARGUMENT` error is returned by the API.
        #   Here are a few examples: * `lifecycle.enum_values.values.id: preview-id` - The
        #   filter string specifies that the id of the allowed value associated with the
        #   lifecycle attribute of the Version is _preview-id_. * `lifecycle.enum_values.
        #   values.display_name: \"Preview Display Name\"` - The filter string specifies
        #   that the display name of the allowed value associated with the lifecycle
        #   attribute of the Version is `Preview Display Name`. * `lifecycle.enum_values.
        #   values.id: preview-id AND create_time < \"2021-08-15T14:50:00Z\" AND
        #   create_time > \"2021-08-10T12:00:00Z\"` - The id of the allowed value
        #   associated with the lifecycle attribute of the Version is _preview-id_ and it
        #   was created before _2021-08-15 14:50:00 UTC_ and after _2021-08-10 12:00:00
        #   UTC_. * `compliance.enum_values.values.id: gdpr-id OR compliance.enum_values.
        #   values.id: pci-dss-id` - The id of the allowed value associated with the
        #   compliance attribute is _gdpr-id_ or _pci-dss-id_. * `lifecycle.enum_values.
        #   values.id: preview-id AND attributes.projects/test-project-id/locations/test-
        #   location-id/ attributes/17650f90-4a29-4971-b3c0-d5532da3764b.string_values.
        #   values: test` - The filter string specifies that the id of the allowed value
        #   associated with the lifecycle attribute of the Version is _preview-id_ and the
        #   value of the user defined attribute of type string is _test_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of versions to return. The service may return
        #   fewer than this value. If unspecified, at most 50 versions will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListVersions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters (
        #   except page_size) provided to `ListVersions` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_api_versions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/versions', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListVersionsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListVersionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update API version. The following fields in the version can be updated
        # currently: * display_name * description * documentation * deployments *
        # lifecycle * compliance * accreditation * attributes The update_mask should be
        # used to specify the fields being updated.
        # @param [String] name
        #   Identifier. The name of the version. Format: `projects/`project`/locations/`
        #   location`/apis/`api`/versions/`version``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Version] google_cloud_apihub_v1_version_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Version] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Version]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_api_version(name, google_cloud_apihub_v1_version_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Version::Representation
          command.request_object = google_cloud_apihub_v1_version_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Version::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Version
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about a definition in an API version.
        # @param [String] name
        #   Required. The name of the definition to retrieve. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version`/definitions/`definition``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Definition] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Definition]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_version_definition(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Definition::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Definition
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an apiOperation in an API version. An apiOperation can be created only
        # if the version has no apiOperations which were created by parsing a spec.
        # @param [String] parent
        #   Required. The parent resource for the operation resource. Format: `projects/`
        #   project`/locations/`location`/apis/`api`/versions/`version``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation] google_cloud_apihub_v1_api_operation_object
        # @param [String] api_operation_id
        #   Optional. The ID to use for the operation resource, which will become the
        #   final component of the operation's resource name. This field is optional. * If
        #   provided, the same will be used. The service will throw an error if the
        #   specified id is already used by another operation resource in the API hub. *
        #   If not provided, a system generated id will be used. This value should be 4-
        #   500 characters, overall resource name which will be of format `projects/`
        #   project`/locations/`location`/apis/`api`/versions/`version`/operations/`
        #   operation``, its length is limited to 700 characters, and valid characters are
        #   /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api_version_operation(parent, google_cloud_apihub_v1_api_operation_object = nil, api_operation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/operations', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation::Representation
          command.request_object = google_cloud_apihub_v1_api_operation_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['apiOperationId'] = api_operation_id unless api_operation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an operation in an API version and we can delete only the operations
        # created via create API. If the operation was created by parsing the spec, then
        # it can be deleted by editing or deleting the spec.
        # @param [String] name
        #   Required. The name of the operation resource to delete. Format: `projects/`
        #   project`/locations/`location`/apis/`api`/versions/`version`/operations/`
        #   operation``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api_version_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about a particular operation in API version.
        # @param [String] name
        #   Required. The name of the operation to retrieve. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version`/operations/`operation``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_version_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List operations in an API version.
        # @param [String] parent
        #   Required. The parent which owns this collection of operations i.e., the API
        #   version. Format: `projects/`project`/locations/`location`/apis/`api`/versions/`
        #   version``
        # @param [String] filter
        #   Optional. An expression that filters the list of ApiOperations. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string or a boolean. The comparison operator
        #   must be one of: `<`, `>` or `=`. Filters are not case sensitive. The following
        #   fields in the `ApiOperation` are eligible for filtering: * `name` - The
        #   ApiOperation resource name. Allowed comparison operators: `=`. * `details.
        #   http_operation.path.path` - The http operation's complete path relative to
        #   server endpoint. Allowed comparison operators: `=`. * `details.http_operation.
        #   method` - The http operation method type. Allowed comparison operators: `=`. *
        #   `details.deprecated` - Indicates if the ApiOperation is deprecated. Allowed
        #   values are True / False indicating the deprycation status of the ApiOperation.
        #   Allowed comparison operators: `=`. * `create_time` - The time at which the
        #   ApiOperation was created. The value should be in the (RFC3339)[https://tools.
        #   ietf.org/html/rfc3339] format. Allowed comparison operators: `>` and `<`. * `
        #   attributes.projects/test-project-id/locations/test-location-id/ attributes/
        #   user-defined-attribute-id.enum_values.values.id` - The allowed value id of the
        #   user defined enum attribute associated with the Resource. Allowed comparison
        #   operator is `:`. Here user-defined-attribute-enum-id is a placeholder that can
        #   be replaced with any user defined enum attribute name. * `attributes.projects/
        #   test-project-id/locations/test-location-id/ attributes/user-defined-attribute-
        #   id.enum_values.values.display_name` - The allowed value display name of the
        #   user defined enum attribute associated with the Resource. Allowed comparison
        #   operator is `:`. Here user-defined-attribute-enum-display-name is a
        #   placeholder that can be replaced with any user defined enum attribute enum
        #   name. * `attributes.projects/test-project-id/locations/test-location-id/
        #   attributes/user-defined-attribute-id.string_values.values` - The allowed value
        #   of the user defined string attribute associated with the Resource. Allowed
        #   comparison operator is `:`. Here user-defined-attribute-string is a
        #   placeholder that can be replaced with any user defined string attribute name. *
        #   `attributes.projects/test-project-id/locations/test-location-id/ attributes/
        #   user-defined-attribute-id.json_values.values` - The allowed value of the user
        #   defined JSON attribute associated with the Resource. Allowed comparison
        #   operator is `:`. Here user-defined-attribute-json is a placeholder that can be
        #   replaced with any user defined JSON attribute name. Expressions are combined
        #   with either `AND` logic operator or `OR` logical operator but not both of them
        #   together i.e. only one of the `AND` or `OR` operator can be used throughout
        #   the filter string and both the operators cannot be used together. No other
        #   logical operators are supported. At most three filter fields are allowed in
        #   the filter string and if provided more than that then `INVALID_ARGUMENT` error
        #   is returned by the API. Here are a few examples: * `details.deprecated = True`
        #   - The ApiOperation is deprecated. * `details.http_operation.method = GET AND
        #   create_time < \"2021-08-15T14:50:00Z\" AND create_time > \"2021-08-10T12:00:
        #   00Z\"` - The method of the http operation of the ApiOperation is _GET_ and the
        #   spec was created before _2021-08-15 14:50:00 UTC_ and after _2021-08-10 12:00:
        #   00 UTC_. * `details.http_operation.method = GET OR details.http_operation.
        #   method = POST`. - The http operation of the method of ApiOperation is _GET_ or
        #   _POST_. * `details.deprecated = True AND attributes.projects/test-project-id/
        #   locations/test-location-id/ attributes/17650f90-4a29-4971-b3c0-d5532da3764b.
        #   string_values.values: test` - The filter string specifies that the
        #   ApiOperation is deprecated and the value of the user defined attribute of type
        #   string is _test_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of operations to return. The service may return
        #   fewer than this value. If unspecified, at most 50 operations will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListApiOperations` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters (except page_size) provided to `ListApiOperations` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListApiOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListApiOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_api_version_operations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/operations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListApiOperationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListApiOperationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an operation in an API version. The following fields in the
        # ApiOperation resource can be updated: * details.description * details.
        # documentation * details.http_operation.path * details.http_operation.method *
        # details.deprecated * attributes * details.mcp_tool.title * details.mcp_tool.
        # description * details.input_schema * details.output_schema * details.mcp_tool.
        # annotations.title * details.mcp_tool.annotations.read_only_hint * details.
        # mcp_tool.annotations.destructive_hint * details.mcp_tool.annotations.
        # idempotent_hint * details.mcp_tool.annotations.open_world_hint * details.
        # mcp_tool.annotations.additional_hints The update_mask should be used to
        # specify the fields being updated. An operation can be updated only if the
        # operation was created via CreateApiOperation API. If the operation was created
        # by parsing the spec, then it can be edited by updating the spec.
        # @param [String] name
        #   Identifier. The name of the operation. Format: `projects/`project`/locations/`
        #   location`/apis/`api`/versions/`version`/operations/`operation``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation] google_cloud_apihub_v1_api_operation_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_api_version_operation(name, google_cloud_apihub_v1_api_operation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation::Representation
          command.request_object = google_cloud_apihub_v1_api_operation_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ApiOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add a spec to an API version in the API hub. Multiple specs can be added to an
        # API version. Note, while adding a spec, at least one of `contents` or `
        # source_uri` must be provided. If `contents` is provided, then `spec_type` must
        # also be provided. On adding a spec with contents to the version, the
        # operations present in it will be added to the version.Note that the file
        # contents in the spec should be of the same type as defined in the `projects/`
        # project`/locations/`location`/attributes/system-spec-type` attribute
        # associated with spec resource. Note that specs of various types can be
        # uploaded, however parsing of details is supported for OpenAPI spec currently.
        # In order to access the information parsed from the spec, use the GetSpec
        # method. In order to access the raw contents for a particular spec, use the
        # GetSpecContents method. In order to access the operations parsed from the spec,
        # use the ListAPIOperations method.
        # @param [String] parent
        #   Required. The parent resource for Spec. Format: `projects/`project`/locations/`
        #   location`/apis/`api`/versions/`version``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec] google_cloud_apihub_v1_spec_object
        # @param [String] spec_id
        #   Optional. The ID to use for the spec, which will become the final component of
        #   the spec's resource name. This field is optional. * If provided, the same will
        #   be used. The service will throw an error if the specified id is already used
        #   by another spec in the API resource. * If not provided, a system generated id
        #   will be used. This value should be 4-500 characters, overall resource name
        #   which will be of format `projects/`project`/locations/`location`/apis/`api`/
        #   versions/`version`/specs/`spec``, its length is limited to 1000 characters and
        #   valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_api_version_spec(parent, google_cloud_apihub_v1_spec_object = nil, spec_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/specs', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec::Representation
          command.request_object = google_cloud_apihub_v1_spec_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec
          command.params['parent'] = parent unless parent.nil?
          command.query['specId'] = spec_id unless spec_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a spec. Deleting a spec will also delete the associated operations from
        # the version.
        # @param [String] name
        #   Required. The name of the spec to delete. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version`/specs/`spec``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_api_version_spec(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about the information parsed from a spec. Note that this method
        # does not return the raw spec contents. Use GetSpecContents method to retrieve
        # the same.
        # @param [String] name
        #   Required. The name of the spec to retrieve. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version`/specs/`spec``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_version_spec(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get spec contents.
        # @param [String] name
        #   Required. The name of the spec whose contents need to be retrieved. Format: `
        #   projects/`project`/locations/`location`/apis/`api`/versions/`version`/specs/`
        #   spec``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1SpecContents] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1SpecContents]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_api_version_spec_contents(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:contents', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1SpecContents::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1SpecContents
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lints the requested spec and updates the corresponding API Spec with the lint
        # response. This lint response will be available in all subsequent Get and List
        # Spec calls to Core service.
        # @param [String] name
        #   Required. The name of the spec to be linted. Format: `projects/`project`/
        #   locations/`location`/apis/`api`/versions/`version`/specs/`spec``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1LintSpecRequest] google_cloud_apihub_v1_lint_spec_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lint_project_location_api_version_spec(name, google_cloud_apihub_v1_lint_spec_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:lint', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1LintSpecRequest::Representation
          command.request_object = google_cloud_apihub_v1_lint_spec_request_object
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List specs corresponding to a particular API resource.
        # @param [String] parent
        #   Required. The parent, which owns this collection of specs. Format: `projects/`
        #   project`/locations/`location`/apis/`api`/versions/`version``
        # @param [String] filter
        #   Optional. An expression that filters the list of Specs. A filter expression
        #   consists of a field name, a comparison operator, and a value for filtering.
        #   The value must be a string. The comparison operator must be one of: `<`, `>`, `
        #   :` or `=`. Filters are not case sensitive. The following fields in the `Spec`
        #   are eligible for filtering: * `display_name` - The display name of the Spec.
        #   Allowed comparison operators: `=`. * `create_time` - The time at which the
        #   Spec was created. The value should be in the (RFC3339)[https://tools.ietf.org/
        #   html/rfc3339] format. Allowed comparison operators: `>` and `<`. * `spec_type.
        #   enum_values.values.id` - The allowed value id of the spec_type attribute
        #   associated with the Spec. Allowed comparison operators: `:`. * `spec_type.
        #   enum_values.values.display_name` - The allowed value display name of the
        #   spec_type attribute associated with the Spec. Allowed comparison operators: `:`
        #   . * `lint_response.json_values.values` - The json value of the lint_response
        #   attribute associated with the Spec. Allowed comparison operators: `:`. * `
        #   mime_type` - The MIME type of the Spec. Allowed comparison operators: `=`. * `
        #   attributes.projects/test-project-id/locations/test-location-id/ attributes/
        #   user-defined-attribute-id.enum_values.values.id` - The allowed value id of the
        #   user defined enum attribute associated with the Resource. Allowed comparison
        #   operator is `:`. Here user-defined-attribute-enum-id is a placeholder that can
        #   be replaced with any user defined enum attribute name. * `attributes.projects/
        #   test-project-id/locations/test-location-id/ attributes/user-defined-attribute-
        #   id.enum_values.values.display_name` - The allowed value display name of the
        #   user defined enum attribute associated with the Resource. Allowed comparison
        #   operator is `:`. Here user-defined-attribute-enum-display-name is a
        #   placeholder that can be replaced with any user defined enum attribute enum
        #   name. * `attributes.projects/test-project-id/locations/test-location-id/
        #   attributes/user-defined-attribute-id.string_values.values` - The allowed value
        #   of the user defined string attribute associated with the Resource. Allowed
        #   comparison operator is `:`. Here user-defined-attribute-string is a
        #   placeholder that can be replaced with any user defined string attribute name. *
        #   `attributes.projects/test-project-id/locations/test-location-id/ attributes/
        #   user-defined-attribute-id.json_values.values` - The allowed value of the user
        #   defined JSON attribute associated with the Resource. Allowed comparison
        #   operator is `:`. Here user-defined-attribute-json is a placeholder that can be
        #   replaced with any user defined JSON attribute name. Expressions are combined
        #   with either `AND` logic operator or `OR` logical operator but not both of them
        #   together i.e. only one of the `AND` or `OR` operator can be used throughout
        #   the filter string and both the operators cannot be used together. No other
        #   logical operators are supported. At most three filter fields are allowed in
        #   the filter string and if provided more than that then `INVALID_ARGUMENT` error
        #   is returned by the API. Here are a few examples: * `spec_type.enum_values.
        #   values.id: rest-id` - The filter string specifies that the id of the allowed
        #   value associated with the spec_type attribute is _rest-id_. * `spec_type.
        #   enum_values.values.display_name: \"Rest Display Name\"` - The filter string
        #   specifies that the display name of the allowed value associated with the
        #   spec_type attribute is `Rest Display Name`. * `spec_type.enum_values.values.id:
        #   grpc-id AND create_time < \"2021-08-15T14:50:00Z\" AND create_time > \"2021-
        #   08-10T12:00:00Z\"` - The id of the allowed value associated with the spec_type
        #   attribute is _grpc-id_ and the spec was created before _2021-08-15 14:50:00
        #   UTC_ and after _2021-08-10 12:00:00 UTC_. * `spec_type.enum_values.values.id:
        #   rest-id OR spec_type.enum_values.values.id: grpc-id` - The id of the allowed
        #   value associated with the spec_type attribute is _rest-id_ or _grpc-id_. * `
        #   spec_type.enum_values.values.id: rest-id AND attributes.projects/test-project-
        #   id/locations/test-location-id/ attributes/17650f90-4a29-4971-b3c0-d5532da3764b.
        #   enum_values.values.id: test` - The filter string specifies that the id of the
        #   allowed value associated with the spec_type attribute is _rest-id_ and the id
        #   of the allowed value associated with the user defined attribute of type enum
        #   is _test_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of specs to return. The service may return fewer
        #   than this value. If unspecified, at most 50 specs will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSpecs` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSpecs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListSpecsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListSpecsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_api_version_specs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/specs', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListSpecsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListSpecsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update spec. The following fields in the spec can be updated: * display_name *
        # source_uri * lint_response * attributes * contents * spec_type In case of an
        # OAS spec, updating spec contents can lead to: 1. Creation, deletion and update
        # of operations. 2. Creation, deletion and update of definitions. 3. Update of
        # other info parsed out from the new spec. In case of contents or source_uri
        # being present in update mask, spec_type must also be present. Also, spec_type
        # can not be present in update mask if contents or source_uri is not present.
        # The update_mask should be used to specify the fields being updated.
        # @param [String] name
        #   Identifier. The name of the spec. Format: `projects/`project`/locations/`
        #   location`/apis/`api`/versions/`version`/specs/`spec``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec] google_cloud_apihub_v1_spec_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Spec]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_api_version_spec(name, google_cloud_apihub_v1_spec_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec::Representation
          command.request_object = google_cloud_apihub_v1_spec_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Spec
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a user defined attribute. Certain pre defined attributes are already
        # created by the API hub. These attributes will have type as `SYSTEM_DEFINED`
        # and can be listed via ListAttributes method. Allowed values for the same can
        # be updated via UpdateAttribute method.
        # @param [String] parent
        #   Required. The parent resource for Attribute. Format: `projects/`project`/
        #   locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute] google_cloud_apihub_v1_attribute_object
        # @param [String] attribute_id
        #   Optional. The ID to use for the attribute, which will become the final
        #   component of the attribute's resource name. This field is optional. * If
        #   provided, the same will be used. The service will throw an error if the
        #   specified id is already used by another attribute resource in the API hub. *
        #   If not provided, a system generated id will be used. This value should be 4-
        #   500 characters, and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_attribute(parent, google_cloud_apihub_v1_attribute_object = nil, attribute_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/attributes', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute::Representation
          command.request_object = google_cloud_apihub_v1_attribute_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute
          command.params['parent'] = parent unless parent.nil?
          command.query['attributeId'] = attribute_id unless attribute_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an attribute. Note: System defined attributes cannot be deleted. All
        # associations of the attribute being deleted with any API hub resource will
        # also get deleted.
        # @param [String] name
        #   Required. The name of the attribute to delete. Format: `projects/`project`/
        #   locations/`location`/attributes/`attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about the attribute.
        # @param [String] name
        #   Required. The name of the attribute to retrieve. Format: `projects/`project`/
        #   locations/`location`/attributes/`attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all attributes.
        # @param [String] parent
        #   Required. The parent resource for Attribute. Format: `projects/`project`/
        #   locations/`location``
        # @param [String] filter
        #   Optional. An expression that filters the list of Attributes. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string or a boolean. The comparison operator
        #   must be one of: `<`, `>` or `=`. Filters are not case sensitive. The following
        #   fields in the `Attribute` are eligible for filtering: * `display_name` - The
        #   display name of the Attribute. Allowed comparison operators: `=`. * `
        #   definition_type` - The definition type of the attribute. Allowed comparison
        #   operators: `=`. * `scope` - The scope of the attribute. Allowed comparison
        #   operators: `=`. * `data_type` - The type of the data of the attribute. Allowed
        #   comparison operators: `=`. * `mandatory` - Denotes whether the attribute is
        #   mandatory or not. Allowed comparison operators: `=`. * `create_time` - The
        #   time at which the Attribute was created. The value should be in the (RFC3339)[
        #   https://tools.ietf.org/html/rfc3339] format. Allowed comparison operators: `>`
        #   and `<`. Expressions are combined with either `AND` logic operator or `OR`
        #   logical operator but not both of them together i.e. only one of the `AND` or `
        #   OR` operator can be used throughout the filter string and both the operators
        #   cannot be used together. No other logical operators are supported. At most
        #   three filter fields are allowed in the filter string and if provided more than
        #   that then `INVALID_ARGUMENT` error is returned by the API. Here are a few
        #   examples: * `display_name = production` - - The display name of the attribute
        #   is _production_. * `(display_name = production) AND (create_time < \"2021-08-
        #   15T14:50:00Z\") AND (create_time > \"2021-08-10T12:00:00Z\")` - The display
        #   name of the attribute is _production_ and the attribute was created before
        #   _2021-08-15 14:50:00 UTC_ and after _2021-08-10 12:00:00 UTC_. * `display_name
        #   = production OR scope = api` - The attribute where the display name is
        #   _production_ or the scope is _api_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of attribute resources to return. The service may
        #   return fewer than this value. If unspecified, at most 50 attributes will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAttributes` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAttributes` must match the call that provided the
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListAttributesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListAttributesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_attributes(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attributes', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListAttributesResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListAttributesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the attribute. The following fields in the Attribute resource can be
        # updated: * display_name The display name can be updated for user defined
        # attributes only. * description The description can be updated for user defined
        # attributes only. * allowed_values To update the list of allowed values,
        # clients need to use the fetched list of allowed values and add or remove
        # values to or from the same list. The mutable allowed values can be updated for
        # both user defined and System defined attributes. The immutable allowed values
        # cannot be updated or deleted. The updated list of allowed values cannot be
        # empty. If an allowed value that is already used by some resource's attribute
        # is deleted, then the association between the resource and the attribute value
        # will also be deleted. * cardinality The cardinality can be updated for user
        # defined attributes only. Cardinality can only be increased during an update.
        # The update_mask should be used to specify the fields being updated.
        # @param [String] name
        #   Identifier. The name of the attribute in the API Hub. Format: `projects/`
        #   project`/locations/`location`/attributes/`attribute``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute] google_cloud_apihub_v1_attribute_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_attribute(name, google_cloud_apihub_v1_attribute_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute::Representation
          command.request_object = google_cloud_apihub_v1_attribute_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a curation resource in the API hub. Once a curation resource is created,
        # plugin instances can start using it.
        # @param [String] parent
        #   Required. The parent resource for the curation resource. Format: `projects/`
        #   project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation] google_cloud_apihub_v1_curation_object
        # @param [String] curation_id
        #   Optional. The ID to use for the curation resource, which will become the final
        #   component of the curations's resource name. This field is optional. * If
        #   provided, the same will be used. The service will throw an error if the
        #   specified ID is already used by another curation resource in the API hub. * If
        #   not provided, a system generated ID will be used. This value should be 4-500
        #   characters, and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_curation(parent, google_cloud_apihub_v1_curation_object = nil, curation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/curations', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation::Representation
          command.request_object = google_cloud_apihub_v1_curation_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation
          command.params['parent'] = parent unless parent.nil?
          command.query['curationId'] = curation_id unless curation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a curation resource in the API hub. A curation can only be deleted if
        # it's not being used by any plugin instance.
        # @param [String] name
        #   Required. The name of the curation resource to delete. Format: `projects/`
        #   project`/locations/`location`/curations/`curation``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_curation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get curation resource details.
        # @param [String] name
        #   Required. The name of the curation resource to retrieve. Format: `projects/`
        #   project`/locations/`location`/curations/`curation``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_curation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List curation resources in the API hub.
        # @param [String] parent
        #   Required. The parent, which owns this collection of curation resources. Format:
        #   `projects/`project`/locations/`location``
        # @param [String] filter
        #   Optional. An expression that filters the list of curation resources. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string. The comparison operator must be one of:
        #   `<`, `>`, `:` or `=`. Filters are case insensitive. The following fields in
        #   the `curation resource` are eligible for filtering: * `create_time` - The time
        #   at which the curation was created. The value should be in the (RFC3339)[https:/
        #   /tools.ietf.org/html/rfc3339] format. Allowed comparison operators: `>` and `<`
        #   . * `display_name` - The display name of the curation. Allowed comparison
        #   operators: `=`. * `state` - The state of the curation. Allowed comparison
        #   operators: `=`. Expressions are combined with either `AND` logic operator or `
        #   OR` logical operator but not both of them together i.e. only one of the `AND`
        #   or `OR` operator can be used throughout the filter string and both the
        #   operators cannot be used together. No other logical operators are supported.
        #   At most three filter fields are allowed in the filter string and if provided
        #   more than that then `INVALID_ARGUMENT` error is returned by the API. Here are
        #   a few examples: * `create_time < \"2021-08-15T14:50:00Z\" AND create_time > \"
        #   2021-08-10T12:00:00Z\"` - The curation resource was created before _2021-08-15
        #   14:50:00 UTC_ and after _2021-08-10 12:00:00 UTC_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of curation resources to return. The service may
        #   return fewer than this value. If unspecified, at most 50 curations will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListCurations` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters (
        #   except page_size) provided to `ListCurations` must match the call that
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListCurationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListCurationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_curations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/curations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListCurationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListCurationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a curation resource in the API hub. The following fields in the
        # curation can be updated: * display_name * description The update_mask should
        # be used to specify the fields being updated.
        # @param [String] name
        #   Identifier. The name of the curation. Format: `projects/`project`/locations/`
        #   location`/curations/`curation``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation] google_cloud_apihub_v1_curation_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Curation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_curation(name, google_cloud_apihub_v1_curation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation::Representation
          command.request_object = google_cloud_apihub_v1_curation_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Curation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a dependency between two entities in the API hub.
        # @param [String] parent
        #   Required. The parent resource for the dependency resource. Format: `projects/`
        #   project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency] google_cloud_apihub_v1_dependency_object
        # @param [String] dependency_id
        #   Optional. The ID to use for the dependency resource, which will become the
        #   final component of the dependency's resource name. This field is optional. *
        #   If provided, the same will be used. The service will throw an error if
        #   duplicate id is provided by the client. * If not provided, a system generated
        #   id will be used. This value should be 4-500 characters, and valid characters
        #   are `a-z[0-9]-_`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_dependency(parent, google_cloud_apihub_v1_dependency_object = nil, dependency_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dependencies', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency::Representation
          command.request_object = google_cloud_apihub_v1_dependency_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency
          command.params['parent'] = parent unless parent.nil?
          command.query['dependencyId'] = dependency_id unless dependency_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the dependency resource.
        # @param [String] name
        #   Required. The name of the dependency resource to delete. Format: `projects/`
        #   project`/locations/`location`/dependencies/`dependency``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_dependency(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about a dependency resource in the API hub.
        # @param [String] name
        #   Required. The name of the dependency resource to retrieve. Format: `projects/`
        #   project`/locations/`location`/dependencies/`dependency``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_dependency(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List dependencies based on the provided filter and pagination parameters.
        # @param [String] parent
        #   Required. The parent which owns this collection of dependency resources.
        #   Format: `projects/`project`/locations/`location``
        # @param [String] filter
        #   Optional. An expression that filters the list of Dependencies. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string. Allowed comparison operator is `=`.
        #   Filters are not case sensitive. The following fields in the `Dependency` are
        #   eligible for filtering: * `consumer.operation_resource_name` - The operation
        #   resource name for the consumer entity involved in a dependency. Allowed
        #   comparison operators: `=`. * `consumer.external_api_resource_name` - The
        #   external api resource name for the consumer entity involved in a dependency.
        #   Allowed comparison operators: `=`. * `supplier.operation_resource_name` - The
        #   operation resource name for the supplier entity involved in a dependency.
        #   Allowed comparison operators: `=`. * `supplier.external_api_resource_name` -
        #   The external api resource name for the supplier entity involved in a
        #   dependency. Allowed comparison operators: `=`. Expressions are combined with
        #   either `AND` logic operator or `OR` logical operator but not both of them
        #   together i.e. only one of the `AND` or `OR` operator can be used throughout
        #   the filter string and both the operators cannot be used together. No other
        #   logical operators are supported. At most three filter fields are allowed in
        #   the filter string and if provided more than that then `INVALID_ARGUMENT` error
        #   is returned by the API. For example, `consumer.operation_resource_name = \"
        #   projects/p1/locations/global/apis/a1/versions/v1/operations/o1\" OR supplier.
        #   operation_resource_name = \"projects/p1/locations/global/apis/a1/versions/v1/
        #   operations/o1\"` - The dependencies with either consumer or supplier operation
        #   resource name as _projects/p1/locations/global/apis/a1/versions/v1/operations/
        #   o1_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of dependency resources to return. The service
        #   may return fewer than this value. If unspecified, at most 50 dependencies will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDependencies` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDependencies` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDependenciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDependenciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_dependencies(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dependencies', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDependenciesResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDependenciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a dependency based on the update_mask provided in the request. The
        # following fields in the dependency can be updated: * description
        # @param [String] name
        #   Identifier. The name of the dependency in the API Hub. Format: `projects/`
        #   project`/locations/`location`/dependencies/`dependency``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency] google_cloud_apihub_v1_dependency_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_dependency(name, google_cloud_apihub_v1_dependency_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency::Representation
          command.request_object = google_cloud_apihub_v1_dependency_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Dependency
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a deployment resource in the API hub. Once a deployment resource is
        # created, it can be associated with API versions.
        # @param [String] parent
        #   Required. The parent resource for the deployment resource. Format: `projects/`
        #   project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment] google_cloud_apihub_v1_deployment_object
        # @param [String] deployment_id
        #   Optional. The ID to use for the deployment resource, which will become the
        #   final component of the deployment's resource name. This field is optional. *
        #   If provided, the same will be used. The service will throw an error if the
        #   specified id is already used by another deployment resource in the API hub. *
        #   If not provided, a system generated id will be used. This value should be 4-
        #   500 characters, and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_deployment(parent, google_cloud_apihub_v1_deployment_object = nil, deployment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/deployments', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment::Representation
          command.request_object = google_cloud_apihub_v1_deployment_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment
          command.params['parent'] = parent unless parent.nil?
          command.query['deploymentId'] = deployment_id unless deployment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a deployment resource in the API hub.
        # @param [String] name
        #   Required. The name of the deployment resource to delete. Format: `projects/`
        #   project`/locations/`location`/deployments/`deployment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about a deployment and the API versions linked to it.
        # @param [String] name
        #   Required. The name of the deployment resource to retrieve. Format: `projects/`
        #   project`/locations/`location`/deployments/`deployment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List deployment resources in the API hub.
        # @param [String] parent
        #   Required. The parent, which owns this collection of deployment resources.
        #   Format: `projects/`project`/locations/`location``
        # @param [String] filter
        #   Optional. An expression that filters the list of Deployments. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string. The comparison operator must be one of:
        #   `<`, `>` or `=`. Filters are not case sensitive. The following fields in the `
        #   Deployments` are eligible for filtering: * `display_name` - The display name
        #   of the Deployment. Allowed comparison operators: `=`. * `create_time` - The
        #   time at which the Deployment was created. The value should be in the (RFC3339)[
        #   https://tools.ietf.org/html/rfc3339] format. Allowed comparison operators: `>`
        #   and `<`. * `resource_uri` - A URI to the deployment resource. Allowed
        #   comparison operators: `=`. * `api_versions` - The API versions linked to this
        #   deployment. Allowed comparison operators: `:`. * `source_project` - The
        #   project/organization at source for the deployment. Allowed comparison
        #   operators: `=`. * `source_environment` - The environment at source for the
        #   deployment. Allowed comparison operators: `=`. * `deployment_type.enum_values.
        #   values.id` - The allowed value id of the deployment_type attribute associated
        #   with the Deployment. Allowed comparison operators: `:`. * `deployment_type.
        #   enum_values.values.display_name` - The allowed value display name of the
        #   deployment_type attribute associated with the Deployment. Allowed comparison
        #   operators: `:`. * `slo.string_values.values` -The allowed string value of the
        #   slo attribute associated with the deployment. Allowed comparison operators: `:`
        #   . * `environment.enum_values.values.id` - The allowed value id of the
        #   environment attribute associated with the deployment. Allowed comparison
        #   operators: `:`. * `environment.enum_values.values.display_name` - The allowed
        #   value display name of the environment attribute associated with the deployment.
        #   Allowed comparison operators: `:`. * `attributes.projects/test-project-id/
        #   locations/test-location-id/ attributes/user-defined-attribute-id.enum_values.
        #   values.id` - The allowed value id of the user defined enum attribute
        #   associated with the Resource. Allowed comparison operator is `:`. Here user-
        #   defined-attribute-enum-id is a placeholder that can be replaced with any user
        #   defined enum attribute name. * `attributes.projects/test-project-id/locations/
        #   test-location-id/ attributes/user-defined-attribute-id.enum_values.values.
        #   display_name` - The allowed value display name of the user defined enum
        #   attribute associated with the Resource. Allowed comparison operator is `:`.
        #   Here user-defined-attribute-enum-display-name is a placeholder that can be
        #   replaced with any user defined enum attribute enum name. * `attributes.
        #   projects/test-project-id/locations/test-location-id/ attributes/user-defined-
        #   attribute-id.string_values.values` - The allowed value of the user defined
        #   string attribute associated with the Resource. Allowed comparison operator is `
        #   :`. Here user-defined-attribute-string is a placeholder that can be replaced
        #   with any user defined string attribute name. * `attributes.projects/test-
        #   project-id/locations/test-location-id/ attributes/user-defined-attribute-id.
        #   json_values.values` - The allowed value of the user defined JSON attribute
        #   associated with the Resource. Allowed comparison operator is `:`. Here user-
        #   defined-attribute-json is a placeholder that can be replaced with any user
        #   defined JSON attribute name. A filter function is also supported in the filter
        #   string. The filter function is `id(name)`. The `id(name)` function returns the
        #   id of the resource name. For example, `id(name) = \"deployment-1\"` is
        #   equivalent to `name = \"projects/test-project-id/locations/test-location-id/
        #   deployments/deployment-1\"` provided the parent is `projects/test-project-id/
        #   locations/test-location-id`. Expressions are combined with either `AND` logic
        #   operator or `OR` logical operator but not both of them together i.e. only one
        #   of the `AND` or `OR` operator can be used throughout the filter string and
        #   both the operators cannot be used together. No other logical operators are
        #   supported. At most three filter fields are allowed in the filter string and if
        #   provided more than that then `INVALID_ARGUMENT` error is returned by the API.
        #   Here are a few examples: * `environment.enum_values.values.id: staging-id` -
        #   The allowed value id of the environment attribute associated with the
        #   Deployment is _staging-id_. * `environment.enum_values.values.display_name: \"
        #   Staging Deployment\"` - The allowed value display name of the environment
        #   attribute associated with the Deployment is `Staging Deployment`. * `
        #   environment.enum_values.values.id: production-id AND create_time < \"2021-08-
        #   15T14:50:00Z\" AND create_time > \"2021-08-10T12:00:00Z\"` - The allowed value
        #   id of the environment attribute associated with the Deployment is _production-
        #   id_ and Deployment was created before _2021-08-15 14:50:00 UTC_ and after
        #   _2021-08-10 12:00:00 UTC_. * `environment.enum_values.values.id: production-id
        #   OR slo.string_values.values: \"99.99%\"` - The allowed value id of the
        #   environment attribute Deployment is _production-id_ or string value of the slo
        #   attribute is _99.99%_. * `environment.enum_values.values.id: staging-id AND
        #   attributes.projects/test-project-id/locations/test-location-id/ attributes/
        #   17650f90-4a29-4971-b3c0-d5532da3764b.string_values.values: test` - The filter
        #   string specifies that the allowed value id of the environment attribute
        #   associated with the Deployment is _staging-id_ and the value of the user
        #   defined attribute of type string is _test_.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of deployment resources to return. The service
        #   may return fewer than this value. If unspecified, at most 50 deployments will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDeployments` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters (except page_size) provided to `ListDeployments` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_deployments(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a deployment resource in the API hub. The following fields in the
        # deployment resource can be updated: * display_name * description *
        # documentation * deployment_type * resource_uri * endpoints * slo * environment
        # * attributes * source_project * source_environment * management_url *
        # source_uri The update_mask should be used to specify the fields being updated.
        # @param [String] name
        #   Identifier. The name of the deployment. Format: `projects/`project`/locations/`
        #   location`/deployments/`deployment``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment] google_cloud_apihub_v1_deployment_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_deployment(name, google_cloud_apihub_v1_deployment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment::Representation
          command.request_object = google_cloud_apihub_v1_deployment_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DiscoveredAPIObservation in a given project, location and
        # ApiObservation.
        # @param [String] name
        #   Required. The name of the DiscoveredApiObservation to retrieve. Format:
        #   projects/`project`/locations/`location`/discoveredApiObservations/`
        #   discovered_api_observation`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiObservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiObservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_discovered_api_observation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiObservation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiObservation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DiscoveredAPIObservations in a given project and location.
        # @param [String] parent
        #   Required. The parent, which owns this collection of ApiObservations. Format:
        #   projects/`project`/locations/`location`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of ApiObservations to return. The service may
        #   return fewer than this value. If unspecified, at most 10 ApiObservations will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListApiObservations` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListApiObservations` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiObservationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiObservationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_discovered_api_observations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/discoveredApiObservations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiObservationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiObservationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DiscoveredAPIOperation in a given project, location, ApiObservation and
        # ApiOperation.
        # @param [String] name
        #   Required. The name of the DiscoveredApiOperation to retrieve. Format: projects/
        #   `project`/locations/`location`/discoveredApiObservations/`
        #   discovered_api_observation`/discoveredApiOperations/`discovered_api_operation`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_discovered_api_observation_discovered_api_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1DiscoveredApiOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DiscoveredAPIOperations in a given project, location and
        # ApiObservation.
        # @param [String] parent
        #   Required. The parent, which owns this collection of DiscoveredApiOperations.
        #   Format: projects/`project`/locations/`location`/discoveredApiObservations/`
        #   discovered_api_observation`
        # @param [Fixnum] page_size
        #   Optional. DiscoveredApiOperations will be returned. The maximum value is 1000;
        #   values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `
        #   ListDiscoveredApiApiOperations` call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to `
        #   ListDiscoveredApiApiOperations` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_discovered_api_observation_discovered_api_operations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/discoveredApiOperations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiOperationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListDiscoveredApiOperationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an External API resource in the API hub.
        # @param [String] parent
        #   Required. The parent resource for the External API resource. Format: `projects/
        #   `project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi] google_cloud_apihub_v1_external_api_object
        # @param [String] external_api_id
        #   Optional. The ID to use for the External API resource, which will become the
        #   final component of the External API's resource name. This field is optional. *
        #   If provided, the same will be used. The service will throw an error if the
        #   specified id is already used by another External API resource in the API hub. *
        #   If not provided, a system generated id will be used. This value should be 4-
        #   500 characters, and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_external_api(parent, google_cloud_apihub_v1_external_api_object = nil, external_api_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/externalApis', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi::Representation
          command.request_object = google_cloud_apihub_v1_external_api_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi
          command.params['parent'] = parent unless parent.nil?
          command.query['externalApiId'] = external_api_id unless external_api_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an External API resource in the API hub.
        # @param [String] name
        #   Required. The name of the External API resource to delete. Format: `projects/`
        #   project`/locations/`location`/externalApis/`externalApi``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_external_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about an External API resource in the API hub.
        # @param [String] name
        #   Required. The name of the External API resource to retrieve. Format: `projects/
        #   `project`/locations/`location`/externalApis/`externalApi``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_external_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List External API resources in the API hub.
        # @param [String] parent
        #   Required. The parent, which owns this collection of External API resources.
        #   Format: `projects/`project`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of External API resources to return. The service
        #   may return fewer than this value. If unspecified, at most 50 ExternalApis will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListExternalApis` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters (except page_size) provided to `ListExternalApis` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListExternalApisResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListExternalApisResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_external_apis(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/externalApis', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListExternalApisResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListExternalApisResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an External API resource in the API hub. The following fields can be
        # updated: * display_name * description * documentation * endpoints * paths The
        # update_mask should be used to specify the fields being updated.
        # @param [String] name
        #   Identifier. Format: `projects/`project`/locations/`location`/externalApi/`
        #   externalApi``.
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi] google_cloud_apihub_v1_external_api_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_external_api(name, google_cloud_apihub_v1_external_api_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi::Representation
          command.request_object = google_cloud_apihub_v1_external_api_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ExternalApi
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a host project registration. A Google cloud project can be registered
        # as a host project if it is not attached as a runtime project to another host
        # project. A project can be registered as a host project only once. Subsequent
        # register calls for the same project will fail.
        # @param [String] parent
        #   Required. The parent resource for the host project. Format: `projects/`project`
        #   /locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration] google_cloud_apihub_v1_host_project_registration_object
        # @param [String] host_project_registration_id
        #   Required. The ID to use for the Host Project Registration, which will become
        #   the final component of the host project registration's resource name. The ID
        #   must be the same as the Google cloud project specified in the
        #   host_project_registration.gcp_project field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_host_project_registration(parent, google_cloud_apihub_v1_host_project_registration_object = nil, host_project_registration_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/hostProjectRegistrations', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration::Representation
          command.request_object = google_cloud_apihub_v1_host_project_registration_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration
          command.params['parent'] = parent unless parent.nil?
          command.query['hostProjectRegistrationId'] = host_project_registration_id unless host_project_registration_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a host project registration.
        # @param [String] name
        #   Required. Host project registration resource name. projects/`project`/
        #   locations/`location`/hostProjectRegistrations/`host_project_registration_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_host_project_registration(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1HostProjectRegistration
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists host project registrations.
        # @param [String] parent
        #   Required. The parent, which owns this collection of host projects. Format: `
        #   projects/*/locations/*`
        # @param [String] filter
        #   Optional. An expression that filters the list of HostProjectRegistrations. A
        #   filter expression consists of a field name, a comparison operator, and a value
        #   for filtering. The value must be a string. All standard operators as
        #   documented at https://google.aip.dev/160 are supported. The following fields
        #   in the `HostProjectRegistration` are eligible for filtering: * `name` - The
        #   name of the HostProjectRegistration. * `create_time` - The time at which the
        #   HostProjectRegistration was created. The value should be in the (RFC3339)[
        #   https://tools.ietf.org/html/rfc3339] format. * `gcp_project` - The Google
        #   cloud project associated with the HostProjectRegistration.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of host project registrations to return. The
        #   service may return fewer than this value. If unspecified, at most 50 host
        #   project registrations will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListHostProjectRegistrations`
        #   call. Provide this to retrieve the subsequent page. When paginating, all
        #   other parameters (except page_size) provided to `ListHostProjectRegistrations`
        #   must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListHostProjectRegistrationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListHostProjectRegistrationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_host_project_registrations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/hostProjectRegistrations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListHostProjectRegistrationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListHostProjectRegistrationsResponse
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
        # @param [Google::Apis::ApihubV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
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
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
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
        #   those that are unreachable are returned in the [ListOperationsResponse.
        #   unreachable] field. This can only be `true` when reading across collections e.
        #   g. when `parent` is set to `"projects/example/locations/-"`. This field is not
        #   by default supported and will result in an `UNIMPLEMENTED` error if set unless
        #   explicitly documented otherwise in service or product specific documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an API Hub plugin resource in the API hub. Once a plugin is created, it
        # can be used to create plugin instances.
        # @param [String] parent
        #   Required. The parent resource where this plugin will be created. Format: `
        #   projects/`project`/locations/`location``.
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin] google_cloud_apihub_v1_plugin_object
        # @param [String] plugin_id
        #   Optional. The ID to use for the Plugin resource, which will become the final
        #   component of the Plugin's resource name. This field is optional. * If provided,
        #   the same will be used. The service will throw an error if the specified id is
        #   already used by another Plugin resource in the API hub instance. * If not
        #   provided, a system generated id will be used. This value should be 4-63
        #   characters, overall resource name which will be of format `projects/`project`/
        #   locations/`location`/plugins/`plugin``, its length is limited to 1000
        #   characters and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_plugin(parent, google_cloud_apihub_v1_plugin_object = nil, plugin_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/plugins', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin::Representation
          command.request_object = google_cloud_apihub_v1_plugin_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin
          command.params['parent'] = parent unless parent.nil?
          command.query['pluginId'] = plugin_id unless plugin_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Plugin in API hub. Note, only user owned plugins can be deleted via
        # this method.
        # @param [String] name
        #   Required. The name of the Plugin resource to delete. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_plugin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a plugin. The `state` of the plugin after disabling is `DISABLED`
        # @param [String] name
        #   Required. The name of the plugin to disable. Format: `projects/`project`/
        #   locations/`location`/plugins/`plugin``.
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1DisablePluginRequest] google_cloud_apihub_v1_disable_plugin_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_plugin(name, google_cloud_apihub_v1_disable_plugin_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:disable', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1DisablePluginRequest::Representation
          command.request_object = google_cloud_apihub_v1_disable_plugin_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a plugin. The `state` of the plugin after enabling is `ENABLED`
        # @param [String] name
        #   Required. The name of the plugin to enable. Format: `projects/`project`/
        #   locations/`location`/plugins/`plugin``.
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1EnablePluginRequest] google_cloud_apihub_v1_enable_plugin_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_plugin(name, google_cloud_apihub_v1_enable_plugin_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enable', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1EnablePluginRequest::Representation
          command.request_object = google_cloud_apihub_v1_enable_plugin_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an API Hub plugin.
        # @param [String] name
        #   Required. The name of the plugin to retrieve. Format: `projects/`project`/
        #   locations/`location`/plugins/`plugin``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_plugin(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1Plugin
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the style guide being used for linting.
        # @param [String] name
        #   Required. The name of the spec to retrieve. Format: `projects/`project`/
        #   locations/`location`/plugins/`plugin`/styleGuide`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_plugin_style_guide(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the plugins in a given project and location.
        # @param [String] parent
        #   Required. The parent resource where this plugin will be created. Format: `
        #   projects/`project`/locations/`location``.
        # @param [String] filter
        #   Optional. An expression that filters the list of plugins. A filter expression
        #   consists of a field name, a comparison operator, and a value for filtering.
        #   The value must be a string. The comparison operator must be one of: `<`, `>`
        #   or `=`. Filters are not case sensitive. The following fields in the `Plugins`
        #   are eligible for filtering: * `plugin_category` - The category of the Plugin.
        #   Allowed comparison operators: `=`. Expressions are combined with either `AND`
        #   logic operator or `OR` logical operator but not both of them together i.e.
        #   only one of the `AND` or `OR` operator can be used throughout the filter
        #   string and both the operators cannot be used together. No other logical
        #   operators are supported. At most three filter fields are allowed in the filter
        #   string and if provided more than that then `INVALID_ARGUMENT` error is
        #   returned by the API. Here are a few examples: * `plugin_category = ON_RAMP` -
        #   The plugin is of category on ramp.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of hub plugins to return. The service may return
        #   fewer than this value. If unspecified, at most 50 hub plugins will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListPlugins` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters (
        #   except page_size) provided to `ListPlugins` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_plugins(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/plugins', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the styleGuide to be used for liniting in by API hub.
        # @param [String] name
        #   Identifier. The name of the style guide. Format: `projects/`project`/locations/
        #   `location`/plugins/`plugin`/styleGuide`
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide] google_cloud_apihub_v1_style_guide_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_plugin_style_guide(name, google_cloud_apihub_v1_style_guide_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide::Representation
          command.request_object = google_cloud_apihub_v1_style_guide_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuide
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Plugin instance in the API hub.
        # @param [String] parent
        #   Required. The parent of the plugin instance resource. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance] google_cloud_apihub_v1_plugin_instance_object
        # @param [String] plugin_instance_id
        #   Optional. The ID to use for the plugin instance, which will become the final
        #   component of the plugin instance's resource name. This field is optional. * If
        #   provided, the same will be used. The service will throw an error if the
        #   specified id is already used by another plugin instance in the plugin resource.
        #   * If not provided, a system generated id will be used. This value should be 4-
        #   63 characters, and valid characters are /a-z[0-9]-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_plugin_instance(parent, google_cloud_apihub_v1_plugin_instance_object = nil, plugin_instance_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance::Representation
          command.request_object = google_cloud_apihub_v1_plugin_instance_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['pluginInstanceId'] = plugin_instance_id unless plugin_instance_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a plugin instance in the API hub.
        # @param [String] name
        #   Required. The name of the plugin instance to delete. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin`/instances/`instance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_plugin_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables a plugin instance in the API hub.
        # @param [String] name
        #   Required. The name of the plugin instance to disable. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1DisablePluginInstanceActionRequest] google_cloud_apihub_v1_disable_plugin_instance_action_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_plugin_instance_action(name, google_cloud_apihub_v1_disable_plugin_instance_action_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:disableAction', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1DisablePluginInstanceActionRequest::Representation
          command.request_object = google_cloud_apihub_v1_disable_plugin_instance_action_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables a plugin instance in the API hub.
        # @param [String] name
        #   Required. The name of the plugin instance to enable. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1EnablePluginInstanceActionRequest] google_cloud_apihub_v1_enable_plugin_instance_action_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_plugin_instance_action(name, google_cloud_apihub_v1_enable_plugin_instance_action_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enableAction', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1EnablePluginInstanceActionRequest::Representation
          command.request_object = google_cloud_apihub_v1_enable_plugin_instance_action_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes a plugin instance in the API hub.
        # @param [String] name
        #   Required. The name of the plugin instance to execute. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ExecutePluginInstanceActionRequest] google_cloud_apihub_v1_execute_plugin_instance_action_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_location_plugin_instance_action(name, google_cloud_apihub_v1_execute_plugin_instance_action_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:executeAction', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ExecutePluginInstanceActionRequest::Representation
          command.request_object = google_cloud_apihub_v1_execute_plugin_instance_action_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an API Hub plugin instance.
        # @param [String] name
        #   Required. The name of the plugin instance to retrieve. Format: `projects/`
        #   project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_plugin_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all the plugins in a given project and location. `-` can be used as
        # wildcard value for `plugin_id`
        # @param [String] parent
        #   Required. The parent resource where this plugin will be created. Format: `
        #   projects/`project`/locations/`location`/plugins/`plugin``. To list plugin
        #   instances for multiple plugins, use the - character instead of the plugin ID.
        # @param [String] filter
        #   Optional. An expression that filters the list of plugin instances. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string. The comparison operator must be one of:
        #   `<`, `>` or `=`. Filters are not case sensitive. The following fields in the `
        #   PluginInstances` are eligible for filtering: * `state` - The state of the
        #   Plugin Instance. Allowed comparison operators: `=`. A filter function is also
        #   supported in the filter string. The filter function is `id(name)`. The `id(
        #   name)` function returns the id of the resource name. For example, `id(name) = \
        #   "plugin-instance-1\"` is equivalent to `name = \"projects/test-project-id/
        #   locations/test-location-id/plugins/plugin-1/instances/plugin-instance-1\"`
        #   provided the parent is `projects/test-project-id/locations/test-location-id/
        #   plugins/plugin-1`. Expressions are combined with either `AND` logic operator
        #   or `OR` logical operator but not both of them together i.e. only one of the `
        #   AND` or `OR` operator can be used throughout the filter string and both the
        #   operators cannot be used together. No other logical operators are supported.
        #   At most three filter fields are allowed in the filter string and if provided
        #   more than that then `INVALID_ARGUMENT` error is returned by the API. Here are
        #   a few examples: * `state = ENABLED` - The plugin instance is in enabled state.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of hub plugins to return. The service may return
        #   fewer than this value. If unspecified, at most 50 hub plugins will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListPluginInstances` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListPluginInstances` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_plugin_instances(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instances', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginInstancesResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListPluginInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manages data for a given plugin instance.
        # @param [String] name
        #   Required. The name of the plugin instance for which data needs to be managed.
        #   Format: `projects/`project`/locations/`location`/plugins/`plugin`/instances/`
        #   instance``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1ManagePluginInstanceSourceDataRequest] google_cloud_apihub_v1_manage_plugin_instance_source_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def manage_project_location_plugin_instance_source_data(name, google_cloud_apihub_v1_manage_plugin_instance_source_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:manageSourceData', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ManagePluginInstanceSourceDataRequest::Representation
          command.request_object = google_cloud_apihub_v1_manage_plugin_instance_source_data_request_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ManagePluginInstanceSourceDataResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a plugin instance in the API hub. The following fields in the
        # plugin_instance can be updated currently: * display_name *
        # schedule_cron_expression The update_mask should be used to specify the fields
        # being updated. To update the auth_config and additional_config of the plugin
        # instance, use the ApplyPluginInstanceConfig method.
        # @param [String] name
        #   Identifier. The unique name of the plugin instance resource. Format: `projects/
        #   `project`/locations/`location`/plugins/`plugin`/instances/`instance``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance] google_cloud_apihub_v1_plugin_instance_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_plugin_instance(name, google_cloud_apihub_v1_plugin_instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance::Representation
          command.request_object = google_cloud_apihub_v1_plugin_instance_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1PluginInstance
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the contents of the style guide.
        # @param [String] name
        #   Required. The name of the StyleGuide whose contents need to be retrieved.
        #   There is exactly one style guide resource per project per location. The
        #   expected format is `projects/`project`/locations/`location`/plugins/`plugin`/
        #   styleGuide`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuideContents] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuideContents]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_plugin_style_guide_contents(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:contents', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuideContents::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1StyleGuideContents
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Attaches a runtime project to the host project.
        # @param [String] parent
        #   Required. The parent resource for the Runtime Project Attachment. Format: `
        #   projects/`project`/locations/`location``
        # @param [Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment] google_cloud_apihub_v1_runtime_project_attachment_object
        # @param [String] runtime_project_attachment_id
        #   Required. The ID to use for the Runtime Project Attachment, which will become
        #   the final component of the Runtime Project Attachment's name. The ID must be
        #   the same as the project ID of the Google cloud project specified in the
        #   runtime_project_attachment.runtime_project field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_runtime_project_attachment(parent, google_cloud_apihub_v1_runtime_project_attachment_object = nil, runtime_project_attachment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/runtimeProjectAttachments', options)
          command.request_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment::Representation
          command.request_object = google_cloud_apihub_v1_runtime_project_attachment_object
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment
          command.params['parent'] = parent unless parent.nil?
          command.query['runtimeProjectAttachmentId'] = runtime_project_attachment_id unless runtime_project_attachment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a runtime project attachment in the API Hub. This call will detach the
        # runtime project from the host project.
        # @param [String] name
        #   Required. The name of the Runtime Project Attachment to delete. Format: `
        #   projects/`project`/locations/`location`/runtimeProjectAttachments/`
        #   runtime_project_attachment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_runtime_project_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::Empty::Representation
          command.response_class = Google::Apis::ApihubV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a runtime project attachment.
        # @param [String] name
        #   Required. The name of the API resource to retrieve. Format: `projects/`project`
        #   /locations/`location`/runtimeProjectAttachments/`runtime_project_attachment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_runtime_project_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1RuntimeProjectAttachment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List runtime projects attached to the host project.
        # @param [String] parent
        #   Required. The parent, which owns this collection of runtime project
        #   attachments. Format: `projects/`project`/locations/`location``
        # @param [String] filter
        #   Optional. An expression that filters the list of RuntimeProjectAttachments. A
        #   filter expression consists of a field name, a comparison operator, and a value
        #   for filtering. The value must be a string. All standard operators as
        #   documented at https://google.aip.dev/160 are supported. The following fields
        #   in the `RuntimeProjectAttachment` are eligible for filtering: * `name` - The
        #   name of the RuntimeProjectAttachment. * `create_time` - The time at which the
        #   RuntimeProjectAttachment was created. The value should be in the (RFC3339)[
        #   https://tools.ietf.org/html/rfc3339] format. * `runtime_project` - The Google
        #   cloud project associated with the RuntimeProjectAttachment.
        # @param [String] order_by
        #   Optional. Hint for how to order the results.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of runtime project attachments to return. The
        #   service may return fewer than this value. If unspecified, at most 50 runtime
        #   project attachments will be returned. The maximum value is 1000; values above
        #   1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `
        #   ListRuntimeProjectAttachments` call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters (except page_size) provided to `
        #   ListRuntimeProjectAttachments` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::ApihubV1::GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApihubV1::GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_runtime_project_attachments(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/runtimeProjectAttachments', options)
          command.response_representation = Google::Apis::ApihubV1::GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse::Representation
          command.response_class = Google::Apis::ApihubV1::GoogleCloudApihubV1ListRuntimeProjectAttachmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
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
