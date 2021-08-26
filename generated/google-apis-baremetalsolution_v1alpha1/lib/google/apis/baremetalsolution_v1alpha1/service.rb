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
    module BaremetalsolutionV1alpha1
      # Bare Metal Solution API
      #
      # Provides ways to manage Bare Metal Solution hardware installed in a regional
      #  extension located near a Google Cloud data center.
      #
      # @example
      #    require 'google/apis/baremetalsolution_v1alpha1'
      #
      #    Baremetalsolution = Google::Apis::BaremetalsolutionV1alpha1 # Alias the module
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
                client_name: 'google-apis-baremetalsolution_v1alpha1',
                client_version: Google::Apis::BaremetalsolutionV1alpha1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Submit a provisiong configuration for a given project.
        # @param [String] project
        #   Required. The target project of the provisioning request.
        # @param [String] location
        #   Required. The target location of the provisioning request.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::SubmitProvisioningConfigRequest] submit_provisioning_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_location_provisioning_config(project, location, submit_provisioning_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+project}/{+location}:submitProvisioningConfig', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::SubmitProvisioningConfigRequest::Representation
          command.request_object = submit_provisioning_config_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ProvisioningConfig
          command.params['project'] = project unless project.nil?
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable the interactive serial console feature on a specific machine.
        # @param [String] instance
        #   Required. Name of the instance to disable the interactive serial console
        #   feature on.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::DisableInteractiveSerialConsoleRequest] disable_interactive_serial_console_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::DisableInteractiveSerialConsoleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::DisableInteractiveSerialConsoleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_instance_interactive_serial_console(instance, disable_interactive_serial_console_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+instance}:disableInteractiveSerialConsole', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::DisableInteractiveSerialConsoleRequest::Representation
          command.request_object = disable_interactive_serial_console_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::DisableInteractiveSerialConsoleResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::DisableInteractiveSerialConsoleResponse
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable the interactive serial console feature on a specific machine.
        # @param [String] instance
        #   Required. Name of the instance to enable the interactive serial console
        #   feature on.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::EnableInteractiveSerialConsoleRequest] enable_interactive_serial_console_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::EnableInteractiveSerialConsoleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::EnableInteractiveSerialConsoleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_instance_interactive_serial_console(instance, enable_interactive_serial_console_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+instance}:enableInteractiveSerialConsole', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::EnableInteractiveSerialConsoleRequest::Representation
          command.request_object = enable_interactive_serial_console_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::EnableInteractiveSerialConsoleResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::EnableInteractiveSerialConsoleResponse
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details for a specific named Instance.
        # @param [String] name
        #   Required. The name of the Instance to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Instance::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Instance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Instances (physical servers).
        # @param [String] parent
        #   Required. The location to list Instances in.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instances(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/instances', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListInstancesResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Read the most recent serial port output from a machine.
        # @param [String] instance
        #   Required. Name of the instance to get serial port output of.
        # @param [Fixnum] start_byte
        #   Optional. The start byte of the serial port output to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::SerialPortOutput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::SerialPortOutput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def read_project_location_instance_serial_port_output(instance, start_byte: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+instance}:readSerialPortOutput', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::SerialPortOutput::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::SerialPortOutput
          command.params['instance'] = instance unless instance.nil?
          command.query['startByte'] = start_byte unless start_byte.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Perform an ungraceful, hard reset on a machine (equivalent to physically
        # turning power off and then back on).
        # @param [String] instance
        #   Required. Name of the instance to reset.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::ResetInstanceRequest] reset_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ResetInstanceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ResetInstanceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_instance(instance, reset_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+instance}:resetInstance', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::ResetInstanceRequest::Representation
          command.request_object = reset_instance_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ResetInstanceResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ResetInstanceResponse
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details for a specific named Lun.
        # @param [String] name
        #   Required. The name of the Lun to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Lun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Lun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_lun(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Lun::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Lun
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Luns.
        # @param [String] parent
        #   Required. The location to list Luns in.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListLunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListLunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_luns(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/luns', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListLunsResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListLunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details for a specific named Volume.
        # @param [String] name
        #   Required. The name of the Volume to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Volume] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Volume]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_volume(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Volume::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Volume
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the volumes for the specified project
        # @param [String] parent
        #   Required. The location to list Volumes in.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListVolumesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListVolumesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_volumes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/volumes', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListVolumesResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListVolumesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update certain parameters on a Volume.
        # @param [String] name
        #   Output only. The name of this Volume.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::Volume] volume_object
        # @param [String] update_mask
        #   The list of fields to update. The only currently supported field is `
        #   snapshot_auto_delete_behavior`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Volume] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Volume]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_volume(name, volume_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::Volume::Representation
          command.request_object = volume_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Volume::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Volume
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the specified snapshot schedule policy on the specified volume.
        # @param [String] volume
        #   Required. Name of the volume to set snapshot schedule policy on.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::SetVolumeSnapshotSchedulePolicyRequest] set_volume_snapshot_schedule_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::SetVolumeSnapshotSchedulePolicyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::SetVolumeSnapshotSchedulePolicyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_volume_snapshot_schedule_policy(volume, set_volume_snapshot_schedule_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+volume}:setVolumeSnapshotSchedulePolicy', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::SetVolumeSnapshotSchedulePolicyRequest::Representation
          command.request_object = set_volume_snapshot_schedule_policy_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::SetVolumeSnapshotSchedulePolicyResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::SetVolumeSnapshotSchedulePolicyResponse
          command.params['volume'] = volume unless volume.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create snapshot of the specified Volume
        # @param [String] parent
        #   Required. The Volume containing the VolumeSnapshots.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot] volume_snapshot_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_volume_snapshot(parent, volume_snapshot_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/snapshots', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot::Representation
          command.request_object = volume_snapshot_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete specific named snapshot.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_volume_snapshot(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Empty::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details for a specific named snapshot.
        # @param [String] name
        #   Required. The name of the snapshot to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_volume_snapshot(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::VolumeSnapshot
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the Snapshots for the specified Volume
        # @param [String] parent
        #   Required. The Volume containing the VolumeSnapshots.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListVolumeSnapshotsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListVolumeSnapshotsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_volume_snapshots(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/snapshots', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListVolumeSnapshotsResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListVolumeSnapshotsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restore a VolumeSnapshot.
        # @param [String] name
        #   Required. Name of the VolumeSnapshot to restore.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::RestoreVolumeSnapshotRequest] restore_volume_snapshot_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_volume_snapshot(name, restore_volume_snapshot_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:restore', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::RestoreVolumeSnapshotRequest::Representation
          command.request_object = restore_volume_snapshot_request_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Empty::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the budget details to provision resources on a given project.
        # @param [String] parent
        #   Required. The parent project containing the provisioning quotas.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListProvisioningQuotasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListProvisioningQuotasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_provisioning_quotas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/provisioningQuotas', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListProvisioningQuotasResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListProvisioningQuotasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a SnapshotSchedulePolicy.
        # @param [String] parent
        #   Required. The parent project containing the SnapshotSchedulePolicy.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy] snapshot_schedule_policy_object
        # @param [String] snapshot_schedule_policy_id
        #   Required. Snapshot policy ID
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_snapshot_schedule_policy(parent, snapshot_schedule_policy_object = nil, snapshot_schedule_policy_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/snapshotSchedulePolicies', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy::Representation
          command.request_object = snapshot_schedule_policy_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy
          command.params['parent'] = parent unless parent.nil?
          command.query['snapshotSchedulePolicyId'] = snapshot_schedule_policy_id unless snapshot_schedule_policy_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete removes named snapshot schedule policy
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_snapshot_schedule_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Empty::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details for a specific snapshot schedule policy
        # @param [String] name
        #   Required. The name of the policy to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_snapshot_schedule_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the snapshot schedule policies for the specified project
        # @param [String] parent
        #   Required. The parent project containing the Snapshot Schedule Policies.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListSnapshotSchedulePoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListSnapshotSchedulePoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_snapshot_schedule_policies(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/snapshotSchedulePolicies', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListSnapshotSchedulePoliciesResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListSnapshotSchedulePoliciesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a SnapshotSchedulePolicy.
        # @param [String] name
        #   Output only. The name of this SnapshotSchedulePolicy.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy] snapshot_schedule_policy_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_snapshot_schedule_policy(name, snapshot_schedule_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy::Representation
          command.request_object = snapshot_schedule_policy_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::SnapshotSchedulePolicy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new SSH key registration in the specified project.
        # @param [String] parent
        #   Required. The parent project containing the SSH keys.
        # @param [Google::Apis::BaremetalsolutionV1alpha1::SshKey] ssh_key_object
        # @param [String] ssh_key_id
        #   Required. The ID to use for the key, which will become the final component of
        #   the key's resource name. This value should be match the regex: [a-zA-Z0-9@.\-_]
        #   `1,64`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::SshKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::SshKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_ssh_key(parent, ssh_key_object = nil, ssh_key_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/sshKeys', options)
          command.request_representation = Google::Apis::BaremetalsolutionV1alpha1::SshKey::Representation
          command.request_object = ssh_key_object
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::SshKey::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::SshKey
          command.params['parent'] = parent unless parent.nil?
          command.query['sshKeyId'] = ssh_key_id unless ssh_key_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an SSH key registration in the specified project.
        # @param [String] name
        #   Required. The name of the SSH key to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_ssh_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::Empty::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the public SSH keys registered for the specified project.
        # @param [String] parent
        #   Required. The parent project containing the SSH keys.
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
        # @yieldparam result [Google::Apis::BaremetalsolutionV1alpha1::ListSshKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BaremetalsolutionV1alpha1::ListSshKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_ssh_keys(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/sshKeys', options)
          command.response_representation = Google::Apis::BaremetalsolutionV1alpha1::ListSshKeysResponse::Representation
          command.response_class = Google::Apis::BaremetalsolutionV1alpha1::ListSshKeysResponse
          command.params['parent'] = parent unless parent.nil?
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
