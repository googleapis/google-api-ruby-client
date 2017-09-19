# Copyright 2015 Google Inc.
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
    module AndroiddeviceprovisioningV1
      # Android Device Provisioning Partner API
      #
      # Automates reseller integration into zero-touch enrollment by assigning devices
      #  to customers and creating device reports.
      #
      # @example
      #    require 'google/apis/androiddeviceprovisioning_v1'
      #
      #    Androiddeviceprovisioning = Google::Apis::AndroiddeviceprovisioningV1 # Alias the module
      #    service = Androiddeviceprovisioning::AndroidProvisioningPartnerService.new
      #
      # @see https://developers.google.com/zero-touch/
      class AndroidProvisioningPartnerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://androiddeviceprovisioning.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
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
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Operation::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a customer for zero-touch enrollment. After the method returns
        # successfully, admin and owner roles can manage devices and EMM configs
        # by calling API methods or using their zero-touch enrollment portal. The API
        # doesn't notify the customer that they have access.
        # @param [String] parent
        #   Required. The parent resource ID in format `partners/[PARTNER_ID]` that
        #   identifies the reseller.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::CreateCustomerRequest] create_customer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer(parent, create_customer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+parent}/customers', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::CreateCustomerRequest::Representation
          command.request_object = create_customer_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Company::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Company
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the customers that are enrolled to the reseller identified by the
        # `partnerId` argument. This list includes customers that the reseller
        # created and customers that enrolled themselves using the portal.
        # @param [Fixnum] partner_id
        #   The ID of the partner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::ListCustomersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::ListCustomersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_customers(partner_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/partners/{+partnerId}/customers', options)
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::ListCustomersResponse::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::ListCustomersResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claim the device identified by device identifier.
        # @param [Fixnum] partner_id
        #   ID of the partner.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::ClaimDeviceRequest] claim_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::ClaimDeviceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::ClaimDeviceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def claim_device(partner_id, claim_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:claim', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::ClaimDeviceRequest::Representation
          command.request_object = claim_device_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::ClaimDeviceResponse::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::ClaimDeviceResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claim devices asynchronously.
        # @param [Fixnum] partner_id
        #   Partner ID.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::ClaimDevicesRequest] claim_devices_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def claim_partner_device_async(partner_id, claim_devices_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:claimAsync', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::ClaimDevicesRequest::Representation
          command.request_object = claim_devices_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Operation::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Operation
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Find devices by device identifier.
        # @param [Fixnum] partner_id
        #   ID of the partner.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByDeviceIdentifierRequest] find_devices_by_device_identifier_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByDeviceIdentifierResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByDeviceIdentifierResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_partner_device_by_identifier(partner_id, find_devices_by_device_identifier_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:findByIdentifier', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByDeviceIdentifierRequest::Representation
          command.request_object = find_devices_by_device_identifier_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByDeviceIdentifierResponse::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByDeviceIdentifierResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Find devices by ownership.
        # @param [Fixnum] partner_id
        #   ID of the partner.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByOwnerRequest] find_devices_by_owner_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByOwnerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByOwnerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_partner_device_by_owner(partner_id, find_devices_by_owner_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:findByOwner', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByOwnerRequest::Representation
          command.request_object = find_devices_by_owner_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByOwnerResponse::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::FindDevicesByOwnerResponse
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a device.
        # @param [String] name
        #   Resource name in `partners/[PARTNER_ID]/devices/[DEVICE_ID]`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partner_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Device::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Device
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the metadata.
        # @param [Fixnum] metadata_owner_id
        #   The owner of the newly set metadata. Set this to the partner ID.
        # @param [Fixnum] device_id
        #   ID of the partner.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::UpdateDeviceMetadataRequest] update_device_metadata_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def metadata_partner_device(metadata_owner_id, device_id, update_device_metadata_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+metadataOwnerId}/devices/{+deviceId}/metadata', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::UpdateDeviceMetadataRequest::Representation
          command.request_object = update_device_metadata_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::DeviceMetadata
          command.params['metadataOwnerId'] = metadata_owner_id unless metadata_owner_id.nil?
          command.params['deviceId'] = device_id unless device_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unclaim the device identified by the `device_id` or the `deviceIdentifier`.
        # @param [Fixnum] partner_id
        #   ID of the partner.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::UnclaimDeviceRequest] unclaim_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unclaim_device(partner_id, unclaim_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:unclaim', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::UnclaimDeviceRequest::Representation
          command.request_object = unclaim_device_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Empty::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Empty
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unclaim devices asynchronously.
        # @param [Fixnum] partner_id
        #   Partner ID.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::UnclaimDevicesRequest] unclaim_devices_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unclaim_partner_device_async(partner_id, unclaim_devices_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:unclaimAsync', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::UnclaimDevicesRequest::Representation
          command.request_object = unclaim_devices_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Operation::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Operation
          command.params['partnerId'] = partner_id unless partner_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Set metadata in batch asynchronously.
        # @param [Fixnum] partner_id
        #   Partner ID.
        # @param [Google::Apis::AndroiddeviceprovisioningV1::UpdateDeviceMetadataInBatchRequest] update_device_metadata_in_batch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeviceprovisioningV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeviceprovisioningV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_partner_device_metadata_async(partner_id, update_device_metadata_in_batch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/partners/{+partnerId}/devices:updateMetadataAsync', options)
          command.request_representation = Google::Apis::AndroiddeviceprovisioningV1::UpdateDeviceMetadataInBatchRequest::Representation
          command.request_object = update_device_metadata_in_batch_request_object
          command.response_representation = Google::Apis::AndroiddeviceprovisioningV1::Operation::Representation
          command.response_class = Google::Apis::AndroiddeviceprovisioningV1::Operation
          command.params['partnerId'] = partner_id unless partner_id.nil?
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
