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
    module BaremetalsolutionV2
      # Bare Metal Solution API
      #
      # Provides ways to manage Bare Metal Solution hardware installed in a regional
      #  extension located near a Google Cloud data center.
      #
      # @example
      #    require 'google/apis/baremetalsolution_v2'
      #
      #    Baremetalsolution = Google::Apis::BaremetalsolutionV2 # Alias the module
      #    service = Baremetalsolution::BaremetalsolutionService.new
      #
      # @see https://cloud.google.com/bare-metal
      class BaremetalsolutionService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://baremetalsolution.googleapis.com/', '',
                client_name: 'google-apis-baremetalsolution_v2',
                client_version: Google::Apis::BaremetalsolutionV2::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Location::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get instance provisioning settings for a given project. This is hidden method
        # used by UI only.
        # @param [String] location
        #   Required. The parent project and location containing the ProvisioningSettings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::FetchInstanceProvisioningSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::FetchInstanceProvisioningSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_instance_provisioning_setting(location, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+location}/instanceProvisioningSettings:fetch', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::FetchInstanceProvisioningSettingsResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::FetchInstanceProvisioningSettingsResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an Instance.
        # @param [String] parent
        #   Required. The parent project and location.
        # @param [Google::Apis::BaremetalsolutionV2::Instance] instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_instance(parent, instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/instances', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Detach LUN from Instance.
        # @param [String] instance
        #   Required. Name of the instance.
        # @param [Google::Apis::BaremetalsolutionV2::DetachLunRequest] detach_lun_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detach_instance_lun(instance, detach_lun_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+instance}:detachLun', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::DetachLunRequest::Representation
          command.request_object = detach_lun_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable the interactive serial console feature on an instance.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Google::Apis::BaremetalsolutionV2::DisableInteractiveSerialConsoleRequest] disable_interactive_serial_console_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_instance_interactive_serial_console(name, disable_interactive_serial_console_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:disableInteractiveSerialConsole', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::DisableInteractiveSerialConsoleRequest::Representation
          command.request_object = disable_interactive_serial_console_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable the interactive serial console feature on an instance.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Google::Apis::BaremetalsolutionV2::EnableInteractiveSerialConsoleRequest] enable_interactive_serial_console_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_instance_interactive_serial_console(name, enable_interactive_serial_console_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:enableInteractiveSerialConsole', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::EnableInteractiveSerialConsoleRequest::Representation
          command.request_object = enable_interactive_serial_console_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about a single server.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Instance::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Instance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List servers in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListInstancesRequest.
        # @param [String] filter
        #   List filter.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, the server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instances(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/instances', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListInstancesResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update details of a single server.
        # @param [String] name
        #   Immutable. The resource name of this `Instance`. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. Format: `projects/`project`/locations/`location`/instances/`
        #   instance``
        # @param [Google::Apis::BaremetalsolutionV2::Instance] instance_object
        # @param [String] update_mask
        #   The list of fields to update. The currently supported fields are: `labels` `
        #   hyperthreading_enabled` `os_image`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_instance(name, instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RenameInstance sets a new name for an instance.
        # @param [String] name
        #   Immutable. The resource name of this `Instance`. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. Format: `projects/`project`/locations/`location`/instances/`
        #   instance``
        # @param [Google::Apis::BaremetalsolutionV2::RenameInstanceRequest] rename_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rename_instance(name, rename_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:rename', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::RenameInstanceRequest::Representation
          command.request_object = rename_instance_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Perform an ungraceful, hard reset on a server. Equivalent to shutting the
        # power off and then turning it back on.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Google::Apis::BaremetalsolutionV2::ResetInstanceRequest] reset_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance(name, reset_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:reset', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::ResetInstanceRequest::Representation
          command.request_object = reset_instance_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a server that was shutdown.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Google::Apis::BaremetalsolutionV2::StartInstanceRequest] start_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_instance(name, start_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:start', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::StartInstanceRequest::Representation
          command.request_object = start_instance_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop a running server.
        # @param [String] name
        #   Required. Name of the resource.
        # @param [Google::Apis::BaremetalsolutionV2::StopInstanceRequest] stop_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_instance(name, stop_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:stop', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::StopInstanceRequest::Representation
          command.request_object = stop_instance_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details of a single network.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Network] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Network]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_network(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Network::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Network
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List network in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListNetworksRequest.
        # @param [String] filter
        #   List filter.
        # @param [Fixnum] page_size
        #   Requested page size. The server might return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListNetworksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListNetworksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_networks(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/networks', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListNetworksResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListNetworksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Networks (and used IPs for each Network) in the vendor account
        # associated with the specified project.
        # @param [String] location
        #   Required. Parent value (project and location).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListNetworkUsageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListNetworkUsageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_network_network_usage(location, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+location}/networks:listNetworkUsage', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListNetworkUsageResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListNetworkUsageResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update details of a single network.
        # @param [String] name
        #   Output only. The resource name of this `Network`. Resource names are
        #   schemeless URIs that follow the conventions in https://cloud.google.com/apis/
        #   design/resource_names. Format: `projects/`project`/locations/`location`/
        #   networks/`network``
        # @param [Google::Apis::BaremetalsolutionV2::Network] network_object
        # @param [String] update_mask
        #   The list of fields to update. The only currently supported fields are: `labels`
        #   , `reservations`, `vrf.vlan_attachments`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_network(name, network_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::Network::Representation
          command.request_object = network_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an NFS share.
        # @param [String] parent
        #   Required. The parent project and location.
        # @param [Google::Apis::BaremetalsolutionV2::NfsShare] nfs_share_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_nfs_share(parent, nfs_share_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/nfsShares', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::NfsShare::Representation
          command.request_object = nfs_share_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an NFS share. The underlying volume is automatically deleted.
        # @param [String] name
        #   Required. The name of the NFS share to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_nfs_share(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details of a single NFS share.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::NfsShare] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::NfsShare]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_nfs_share(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::NfsShare::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::NfsShare
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List NFS shares.
        # @param [String] parent
        #   Required. Parent value for ListNfsSharesRequest.
        # @param [String] filter
        #   List filter.
        # @param [Fixnum] page_size
        #   Requested page size. The server might return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListNfsSharesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListNfsSharesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_nfs_shares(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/nfsShares', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListNfsSharesResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListNfsSharesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update details of a single NFS share.
        # @param [String] name
        #   Immutable. The name of the NFS share.
        # @param [Google::Apis::BaremetalsolutionV2::NfsShare] nfs_share_object
        # @param [String] update_mask
        #   The list of fields to update. The only currently supported fields are: `labels`
        #   `allowed_clients`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_nfs_share(name, nfs_share_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::NfsShare::Representation
          command.request_object = nfs_share_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details about an operation. This method used only to work around CCFE lack
        # of passthrough LRO support (b/221498758).
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create new ProvisioningConfig.
        # @param [String] parent
        #   Required. The parent project and location containing the ProvisioningConfig.
        # @param [Google::Apis::BaremetalsolutionV2::ProvisioningConfig] provisioning_config_object
        # @param [String] email
        #   Optional. Email provided to send a confirmation with provisioning config to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ProvisioningConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ProvisioningConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_provisioning_config(parent, provisioning_config_object = nil, email: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/provisioningConfigs', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
          command.request_object = provisioning_config_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ProvisioningConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['email'] = email unless email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get ProvisioningConfig by name.
        # @param [String] name
        #   Required. Name of the ProvisioningConfig.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ProvisioningConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ProvisioningConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_provisioning_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ProvisioningConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update existing ProvisioningConfig.
        # @param [String] name
        #   Output only. The system-generated name of the provisioning config. This
        #   follows the UUID format.
        # @param [Google::Apis::BaremetalsolutionV2::ProvisioningConfig] provisioning_config_object
        # @param [String] email
        #   Optional. Email provided to send a confirmation with provisioning config to.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ProvisioningConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ProvisioningConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_provisioning_config(name, provisioning_config_object = nil, email: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
          command.request_object = provisioning_config_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::ProvisioningConfig::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ProvisioningConfig
          command.params['name'] = name unless name.nil?
          command.query['email'] = email unless email.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a provisiong configuration for a given project.
        # @param [String] parent
        #   Required. The parent project and location containing the ProvisioningConfig.
        # @param [Google::Apis::BaremetalsolutionV2::SubmitProvisioningConfigRequest] submit_provisioning_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::SubmitProvisioningConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::SubmitProvisioningConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_provisioning_config(parent, submit_provisioning_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/provisioningConfigs:submit', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::SubmitProvisioningConfigRequest::Representation
          command.request_object = submit_provisioning_config_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::SubmitProvisioningConfigResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::SubmitProvisioningConfigResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the budget details to provision resources on a given project.
        # @param [String] parent
        #   Required. Parent value for ListProvisioningQuotasRequest.
        # @param [Fixnum] page_size
        #   Requested page size. The server might return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. Notice that page_size
        #   field is not supported and won't be respected in the API request for now, will
        #   be updated when pagination is supported.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListProvisioningQuotasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListProvisioningQuotasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_provisioning_quotas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/provisioningQuotas', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListProvisioningQuotasResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListProvisioningQuotasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Register a public SSH key in the specified project for use with the
        # interactive serial console feature.
        # @param [String] parent
        #   Required. The parent containing the SSH keys.
        # @param [Google::Apis::BaremetalsolutionV2::SshKey] ssh_key_object
        # @param [String] ssh_key_id
        #   Required. The ID to use for the key, which will become the final component of
        #   the key's resource name. This value must match the regex: [a-zA-Z0-9@.\-_]`1,
        #   64`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::SshKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::SshKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_ssh_key(parent, ssh_key_object = nil, ssh_key_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/sshKeys', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::SshKey::Representation
          command.request_object = ssh_key_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::SshKey::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::SshKey
          command.params['parent'] = parent unless parent.nil?
          command.query['sshKeyId'] = ssh_key_id unless ssh_key_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a public SSH key registered in the specified project.
        # @param [String] name
        #   Required. The name of the SSH key to delete. Currently, the only valid value
        #   for the location is "global".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_ssh_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Empty::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the public SSH keys registered for the specified project. These SSH keys
        # are used only for the interactive serial console feature.
        # @param [String] parent
        #   Required. The parent containing the SSH keys. Currently, the only valid value
        #   for the location is "global".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListSshKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListSshKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_ssh_keys(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sshKeys', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListSshKeysResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListSshKeysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Skips volume's cooloff and deletes it now. Volume must be in cooloff state.
        # @param [String] name
        #   Required. The name of the Volume.
        # @param [Google::Apis::BaremetalsolutionV2::EvictVolumeRequest] evict_volume_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def evict_volume(name, evict_volume_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:evict', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::EvictVolumeRequest::Representation
          command.request_object = evict_volume_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details of a single storage volume.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Volume] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Volume]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_volume(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Volume::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Volume
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List storage volumes in a given project and location.
        # @param [String] parent
        #   Required. Parent value for ListVolumesRequest.
        # @param [String] filter
        #   List filter.
        # @param [Fixnum] page_size
        #   Requested page size. The server might return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListVolumesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListVolumesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_volumes(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/volumes', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListVolumesResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListVolumesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update details of a single storage volume.
        # @param [String] name
        #   Output only. The resource name of this `Volume`. Resource names are schemeless
        #   URIs that follow the conventions in https://cloud.google.com/apis/design/
        #   resource_names. Format: `projects/`project`/locations/`location`/volumes/`
        #   volume``
        # @param [Google::Apis::BaremetalsolutionV2::Volume] volume_object
        # @param [String] update_mask
        #   The list of fields to update. The only currently supported fields are: 'labels'
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_volume(name, volume_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::Volume::Representation
          command.request_object = volume_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Emergency Volume resize.
        # @param [String] volume
        #   Required. Volume to resize.
        # @param [Google::Apis::BaremetalsolutionV2::ResizeVolumeRequest] resize_volume_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resize_volume(volume, resize_volume_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+volume}:resize', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::ResizeVolumeRequest::Representation
          command.request_object = resize_volume_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['volume'] = volume unless volume.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Skips lun's cooloff and deletes it now. Lun must be in cooloff state.
        # @param [String] name
        #   Required. The name of the lun.
        # @param [Google::Apis::BaremetalsolutionV2::EvictLunRequest] evict_lun_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def evict_lun(name, evict_lun_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:evict', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::EvictLunRequest::Representation
          command.request_object = evict_lun_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details of a single storage logical unit number(LUN).
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Lun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Lun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_volume_lun(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Lun::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Lun
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List storage volume luns for given storage volume.
        # @param [String] parent
        #   Required. Parent value for ListLunsRequest.
        # @param [Fixnum] page_size
        #   Requested page size. The server might return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListLunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListLunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_volume_luns(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/luns', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListLunsResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListLunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Takes a snapshot of a boot volume. Returns INVALID_ARGUMENT if called for a
        # non-boot volume.
        # @param [String] parent
        #   Required. The volume to snapshot.
        # @param [Google::Apis::BaremetalsolutionV2::VolumeSnapshot] volume_snapshot_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::VolumeSnapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::VolumeSnapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_volume_snapshot(parent, volume_snapshot_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/snapshots', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::VolumeSnapshot::Representation
          command.request_object = volume_snapshot_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::VolumeSnapshot::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::VolumeSnapshot
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a volume snapshot. Returns INVALID_ARGUMENT if called for a non-boot
        # volume.
        # @param [String] name
        #   Required. The name of the snapshot to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_volume_snapshot(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::Empty::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified snapshot resource. Returns INVALID_ARGUMENT if called
        # for a non-boot volume.
        # @param [String] name
        #   Required. The name of the snapshot.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::VolumeSnapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::VolumeSnapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_volume_snapshot(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::VolumeSnapshot::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::VolumeSnapshot
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of snapshots for the specified volume. Returns a response
        # with an empty list of snapshots if called for a non-boot volume.
        # @param [String] parent
        #   Required. Parent value for ListVolumesRequest.
        # @param [Fixnum] page_size
        #   Requested page size. The server might return fewer items than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results from the server.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::ListVolumeSnapshotsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::ListVolumeSnapshotsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_volume_snapshots(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/snapshots', options)
          command.response_representation = Google::Apis::BaremetalsolutionV2::ListVolumeSnapshotsResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::ListVolumeSnapshotsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uses the specified snapshot to restore its parent volume. Returns
        # INVALID_ARGUMENT if called for a non-boot volume.
        # @param [String] volume_snapshot
        #   Required. Name of the snapshot which will be used to restore its parent volume.
        # @param [Google::Apis::BaremetalsolutionV2::RestoreVolumeSnapshotRequest] restore_volume_snapshot_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_volume_snapshot(volume_snapshot, restore_volume_snapshot_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+volumeSnapshot}:restoreVolumeSnapshot', options)
          command.request_representation = Google::Apis::BaremetalsolutionV2::RestoreVolumeSnapshotRequest::Representation
          command.request_object = restore_volume_snapshot_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV2::Operation::Representation
          command.response_class = Google::Apis::BaremetalsolutionV2::Operation
          command.params['volumeSnapshot'] = volume_snapshot unless volume_snapshot.nil?
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
