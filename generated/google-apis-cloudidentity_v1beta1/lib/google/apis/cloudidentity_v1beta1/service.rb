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
    module CloudidentityV1beta1
      # Cloud Identity API
      #
      # API for provisioning and managing identity resources.
      #
      # @example
      #    require 'google/apis/cloudidentity_v1beta1'
      #
      #    Cloudidentity = Google::Apis::CloudidentityV1beta1 # Alias the module
      #    service = Cloudidentity::CloudIdentityService.new
      #
      # @see https://cloud.google.com/identity/
      class CloudIdentityService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudidentity.googleapis.com/', '',
                client_name: 'google-apis-cloudidentity_v1beta1',
                client_version: Google::Apis::CloudidentityV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Cancels a UserInvitation that was already sent.
        # @param [String] name
        #   Required. `UserInvitation` name in the format `customers/`customer`/
        #   userinvitations/`user_email_address``
        # @param [Google::Apis::CloudidentityV1beta1::CancelUserInvitationRequest] cancel_user_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_userinvitation_user_invitation(name, cancel_user_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::CancelUserInvitationRequest::Representation
          command.request_object = cancel_user_invitation_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a UserInvitation resource. **Note:** New consumer accounts with the
        # customer's verified domain created within the previous 48 hours will not
        # appear in the result. This delay also applies to newly-verified domains.
        # @param [String] name
        #   Required. `UserInvitation` name in the format `customers/`customer`/
        #   userinvitations/`user_email_address``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::UserInvitation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::UserInvitation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_userinvitation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::UserInvitation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::UserInvitation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verifies whether a user account is eligible to receive a UserInvitation (is an
        # unmanaged account). Eligibility is based on the following criteria: * the
        # email address is a consumer account and it's the primary email address of the
        # account, and * the domain of the email address matches an existing verified
        # Google Workspace or Cloud Identity domain If both conditions are met, the user
        # is eligible. **Note:** This method is not supported for Workspace Essentials
        # customers.
        # @param [String] name
        #   Required. `UserInvitation` name in the format `customers/`customer`/
        #   userinvitations/`user_email_address``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::IsInvitableUserResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::IsInvitableUserResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def is_customer_userinvitation_invitable_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:isInvitableUser', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::IsInvitableUserResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::IsInvitableUserResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of UserInvitation resources. **Note:** New consumer accounts
        # with the customer's verified domain created within the previous 48 hours will
        # not appear in the result. This delay also applies to newly-verified domains.
        # @param [String] parent
        #   Required. The customer ID of the Google Workspace or Cloud Identity account
        #   the UserInvitation resources are associated with.
        # @param [String] filter
        #   Optional. A query string for filtering `UserInvitation` results by their
        #   current state, in the format: `"state=='invited'"`.
        # @param [String] order_by
        #   Optional. The sort order of the list results. You can sort the results in
        #   descending order based on either email or last update timestamp but not both,
        #   using `order_by="email desc"`. Currently, sorting is supported for `
        #   update_time asc`, `update_time desc`, `email asc`, and `email desc`. If not
        #   specified, results will be returned based on `email asc` order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of UserInvitation resources to return. If
        #   unspecified, at most 100 resources will be returned. The maximum value is 200;
        #   values above 200 will be set to 200.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserInvitations` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListBooks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListUserInvitationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListUserInvitationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_userinvitations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/userinvitations', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListUserInvitationsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListUserInvitationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends a UserInvitation to email. If the `UserInvitation` does not exist for
        # this request and it is a valid request, the request creates a `UserInvitation`.
        # **Note:** The `get` and `list` methods have a 48-hour delay where newly-
        # created consumer accounts will not appear in the results. You can still send a
        # `UserInvitation` to those accounts if you know the unmanaged email address and
        # IsInvitableUser==True.
        # @param [String] name
        #   Required. `UserInvitation` name in the format `customers/`customer`/
        #   userinvitations/`user_email_address``
        # @param [Google::Apis::CloudidentityV1beta1::SendUserInvitationRequest] send_user_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_userinvitation_user_invitation(name, send_user_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:send', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::SendUserInvitationRequest::Representation
          command.request_object = send_user_invitation_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an unfinished device wipe. This operation can be used to cancel device
        # wipe in the gap between the wipe operation returning success and the device
        # being wiped.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id``, where device_id is the unique
        #   ID assigned to the Device.
        # @param [Google::Apis::CloudidentityV1beta1::CancelWipeDeviceRequest] cancel_wipe_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_wipe_device(name, cancel_wipe_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:cancelWipe', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::CancelWipeDeviceRequest::Representation
          command.request_object = cancel_wipe_device_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device. Only company-owned device may be created. **Note**: This
        # method is available only to customers who have one of the following SKUs:
        # Enterprise Standard, Enterprise Plus, Enterprise for Education, and Cloud
        # Identity Premium
        # @param [Google::Apis::CloudidentityV1beta1::CreateDeviceRequest] create_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_device(create_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/devices', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::CreateDeviceRequest::Representation
          command.request_object = create_device_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified device.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id``, where device_id is the unique
        #   ID assigned to the Device.
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer. If you're using this API for your own organization, use `
        #   customers/my_customer` If you're using this API to manage another organization,
        #   use `customers/`customer_id``, where customer_id is the customer to whom the
        #   device belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_device(name, customer: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified device.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id``, where device_id is the unique
        #   ID assigned to the Device.
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Customer in format: `customers/`customer_id``, where customer_id is the
        #   customer to whom the device belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Device] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Device]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_device(name, customer: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Device::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Device
          command.params['name'] = name unless name.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists/Searches devices.
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer.
        # @param [String] filter
        #   Optional. Additional restrictions when fetching list of devices. For a list of
        #   search fields, refer to [Mobile device search fields](https://developers.
        #   google.com/admin-sdk/directory/v1/search-operators). Multiple search fields
        #   are separated by the space character.
        # @param [String] order_by
        #   Optional. Order specification for devices in the response. Only one of the
        #   following field names may be used to specify the order: `create_time`, `
        #   last_sync_time`, `model`, `os_version`, `device_type` and `serial_number`. `
        #   desc` may be specified optionally to specify results to be sorted in
        #   descending order. Default order is ascending.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of Devices to return. If unspecified, at most 20
        #   Devices will be returned. The maximum value is 100; values above 100 will be
        #   coerced to 100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDevices` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListDevices` must match the call that provided the page token.
        # @param [String] view
        #   Optional. The view to use for the List request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_devices(customer: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/devices', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListDevicesResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListDevicesResponse
          command.query['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Wipes all data on the specified device.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [Google::Apis::CloudidentityV1beta1::WipeDeviceRequest] wipe_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def wipe_device(name, wipe_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:wipe', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::WipeDeviceRequest::Representation
          command.request_object = wipe_device_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves device to access user data.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [Google::Apis::CloudidentityV1beta1::ApproveDeviceUserRequest] approve_device_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_device_user(name, approve_device_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:approve', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::ApproveDeviceUserRequest::Representation
          command.request_object = approve_device_user_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Blocks device from accessing user data
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [Google::Apis::CloudidentityV1beta1::BlockDeviceUserRequest] block_device_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def block_device_user(name, block_device_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:block', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::BlockDeviceUserRequest::Representation
          command.request_object = block_device_user_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an unfinished user account wipe. This operation can be used to cancel
        # device wipe in the gap between the wipe operation returning success and the
        # device being wiped.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [Google::Apis::CloudidentityV1beta1::CancelWipeDeviceUserRequest] cancel_wipe_device_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_wipe_device_user(name, cancel_wipe_device_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:cancelWipe', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::CancelWipeDeviceUserRequest::Representation
          command.request_object = cancel_wipe_device_user_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified DeviceUser. This also revokes the user's access to
        # device data.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer. If you're using this API for your own organization, use `
        #   customers/my_customer` If you're using this API to manage another organization,
        #   use `customers/`customer_id``, where customer_id is the customer to whom the
        #   device belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_device_device_user(name, customer: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified DeviceUser
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer. If you're using this API for your own organization, use `
        #   customers/my_customer` If you're using this API to manage another organization,
        #   use `customers/`customer_id``, where customer_id is the customer to whom the
        #   device belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::DeviceUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::DeviceUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_device_device_user(name, customer: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::DeviceUser::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::DeviceUser
          command.params['name'] = name unless name.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists/Searches DeviceUsers.
        # @param [String] parent
        #   Required. To list all DeviceUsers, set this to "devices/-". To list all
        #   DeviceUsers owned by a device, set this to the resource name of the device.
        #   Format: devices/`device`
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer. If you're using this API for your own organization, use `
        #   customers/my_customer` If you're using this API to manage another organization,
        #   use `customers/`customer_id``, where customer_id is the customer to whom the
        #   device belongs.
        # @param [String] filter
        #   Optional. Additional restrictions when fetching list of devices. For a list of
        #   search fields, refer to [Mobile device search fields](https://developers.
        #   google.com/admin-sdk/directory/v1/search-operators). Multiple search fields
        #   are separated by the space character.
        # @param [String] order_by
        #   Optional. Order specification for devices in the response.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of DeviceUsers to return. If unspecified, at most
        #   5 DeviceUsers will be returned. The maximum value is 20; values above 20 will
        #   be coerced to 20.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDeviceUsers` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListBooks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListDeviceUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListDeviceUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_device_device_users(parent, customer: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/deviceUsers', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListDeviceUsersResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListDeviceUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up resource names of the DeviceUsers associated with the caller's
        # credentials, as well as the properties provided in the request. This method
        # must be called with end-user credentials with the scope: https://www.
        # googleapis.com/auth/cloud-identity.devices.lookup If multiple properties are
        # provided, only DeviceUsers having all of these properties are considered as
        # matches - i.e. the query behaves like an AND. Different platforms require
        # different amounts of information from the caller to ensure that the DeviceUser
        # is uniquely identified. - iOS: No properties need to be passed, the caller's
        # credentials are sufficient to identify the corresponding DeviceUser. - Android:
        # Specifying the 'android_id' field is required. - Desktop: Specifying the '
        # raw_resource_id' field is required.
        # @param [String] parent
        #   Must be set to "devices/-/deviceUsers" to search across all DeviceUser
        #   belonging to the user.
        # @param [String] android_id
        #   Android Id returned by [Settings.Secure#ANDROID_ID](https://developer.android.
        #   com/reference/android/provider/Settings.Secure.html#ANDROID_ID).
        # @param [Fixnum] page_size
        #   The maximum number of DeviceUsers to return. If unspecified, at most 20
        #   DeviceUsers will be returned. The maximum value is 20; values above 20 will be
        #   coerced to 20.
        # @param [String] page_token
        #   A page token, received from a previous `LookupDeviceUsers` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `LookupDeviceUsers` must match the call that provided the page
        #   token.
        # @param [String] raw_resource_id
        #   Raw Resource Id used by Google Endpoint Verification. If the user is enrolled
        #   into Google Endpoint Verification, this id will be saved as the '
        #   device_resource_id' field in the following platform dependent files. Mac: ~/.
        #   secureConnect/context_aware_config.json Windows: C:\Users\%USERPROFILE%\.
        #   secureConnect\context_aware_config.json Linux: ~/.secureConnect/
        #   context_aware_config.json
        # @param [String] user_id
        #   The user whose DeviceUser's resource name will be fetched. Must be set to 'me'
        #   to fetch the DeviceUser's resource name for the calling user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::LookupSelfDeviceUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::LookupSelfDeviceUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_device_device_user(parent, android_id: nil, page_size: nil, page_token: nil, raw_resource_id: nil, user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}:lookup', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::LookupSelfDeviceUsersResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::LookupSelfDeviceUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['androidId'] = android_id unless android_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['rawResourceId'] = raw_resource_id unless raw_resource_id.nil?
          command.query['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Wipes the user's account on a device.
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the Device in format: `devices/`device_id`/deviceUsers/`device_user_id``,
        #   where device_id is the unique ID assigned to the Device, and device_user_id is
        #   the unique ID assigned to the User.
        # @param [Google::Apis::CloudidentityV1beta1::WipeDeviceUserRequest] wipe_device_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def wipe_device_user(name, wipe_device_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:wipe', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::WipeDeviceUserRequest::Representation
          command.request_object = wipe_device_user_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the client state for the device user
        # @param [String] name
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the ClientState in format: `devices/`device_id`/deviceUsers/`device_user_id`
        #   /clientStates/`partner_id``, where `device_id` is the unique ID assigned to
        #   the Device, `device_user_id` is the unique ID assigned to the User and `
        #   partner_id` identifies the partner storing the data. To get the client state
        #   for devices belonging to your own organization, the `partnerId` is in the
        #   format: `customerId-*anystring*`. Where the `customerId` is your organization'
        #   s customer ID and `anystring` is any suffix. This suffix is used in setting up
        #   Custom Access Levels in Context-Aware Access. You may use `my_customer`
        #   instead of the customer ID for devices managed by your own organization. You
        #   may specify `-` in place of the ``device_id``, so the ClientState resource
        #   name can be: `devices/-/deviceUsers/`device_user_resource_id`/clientStates/`
        #   partner_id``.
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer. If you're using this API for your own organization, use `
        #   customers/my_customer` If you're using this API to manage another organization,
        #   use `customers/`customer_id``, where customer_id is the customer to whom the
        #   device belongs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ClientState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ClientState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_device_device_user_client_state(name, customer: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ClientState::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ClientState
          command.params['name'] = name unless name.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the client state for the device user **Note**: This method is
        # available only to customers who have one of the following SKUs: Enterprise
        # Standard, Enterprise Plus, Enterprise for Education, and Cloud Identity
        # Premium
        # @param [String] name
        #   Output only. [Resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the ClientState in format: `devices/`device_id`/deviceUsers/
        #   `device_user_id`/clientState/`partner_id``, where partner_id corresponds to
        #   the partner storing the data.
        # @param [Google::Apis::CloudidentityV1beta1::ClientState] client_state_object
        # @param [String] customer
        #   Optional. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the customer. If you're using this API for your own organization, use `
        #   customers/my_customer` If you're using this API to manage another organization,
        #   use `customers/`customer_id``, where customer_id is the customer to whom the
        #   device belongs.
        # @param [String] update_mask
        #   Optional. Comma-separated list of fully qualified names of fields to be
        #   updated. If not specified, all updatable fields in ClientState are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_device_device_user_client_state(name, client_state_object = nil, customer: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::ClientState::Representation
          command.request_object = client_state_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a `Group`.
        # @param [Google::Apis::CloudidentityV1beta1::Group] group_object
        # @param [String] initial_group_config
        #   Required. The initial configuration option for the `Group`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_group(group_object = nil, initial_group_config: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/groups', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.query['initialGroupConfig'] = initial_group_config unless initial_group_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Group`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the `Group` to retrieve. Must be of the form `groups/`
        #   group_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Group`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the `Group` to retrieve. Must be of the form `groups/`
        #   group_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Group::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Group
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get Security Settings
        # @param [String] name
        #   Required. The security settings to retrieve. Format: `groups/`group_id`/
        #   securitySettings`
        # @param [String] read_mask
        #   Field-level read mask of which fields to return. "*" returns all fields. If
        #   not specified, all fields will be returned. May only contain the following
        #   field: `member_restriction`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::SecuritySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::SecuritySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group_security_settings(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::SecuritySettings::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::SecuritySettings
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `Group` resources under a customer or namespace.
        # @param [Fixnum] page_size
        #   The maximum number of results to return. Note that the number of results
        #   returned may be less than this value even if there are more available results.
        #   To fetch all results, clients must continue calling this method repeatedly
        #   until the response no longer contains a `next_page_token`. If unspecified,
        #   defaults to 200 for `View.BASIC` and to 50 for `View.FULL`. Must not be
        #   greater than 1000 for `View.BASIC` or 500 for `View.FULL`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous list request, if any.
        # @param [String] parent
        #   Required. The parent resource under which to list all `Group` resources. Must
        #   be of the form `identitysources/`identity_source_id`` for external- identity-
        #   mapped groups or `customers/`customer_id`` for Google Groups. The `customer_id`
        #   must begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (
        #   https://support.google.com/cloudidentity/answer/10070793)
        # @param [String] view
        #   The level of detail to be returned. If unspecified, defaults to `View.BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_groups(page_size: nil, page_token: nil, parent: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/groups', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListGroupsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListGroupsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up the [resource name](https://cloud.google.com/apis/design/
        # resource_names) of a `Group` by its `EntityKey`.
        # @param [String] group_key_id
        #   The ID of the entity. For Google-managed entities, the `id` must be the email
        #   address of an existing group or user. For external-identity-mapped entities,
        #   the `id` must be a string conforming to the Identity Source's requirements.
        #   Must be unique within a `namespace`.
        # @param [String] group_key_namespace
        #   The namespace in which the entity exists. If not specified, the `EntityKey`
        #   represents a Google-managed entity such as a Google user or a Google Group. If
        #   specified, the `EntityKey` represents an external-identity-mapped group. The
        #   namespace must correspond to an identity source created in Admin Console and
        #   must be in the form of `identitysources/`identity_source_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_group(group_key_id: nil, group_key_namespace: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/groups:lookup', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::LookupGroupNameResponse
          command.query['groupKey.id'] = group_key_id unless group_key_id.nil?
          command.query['groupKey.namespace'] = group_key_namespace unless group_key_namespace.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Group`.
        # @param [String] name
        #   Output only. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the `Group`. Shall be of the form `groups/`group_id``.
        # @param [Google::Apis::CloudidentityV1beta1::Group] group_object
        # @param [String] update_mask
        #   Required. The names of fields to update. May only contain the following field
        #   names: `display_name`, `description`, `labels`, `dynamic_group_metadata`, `
        #   posix_groups`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_group(name, group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for `Group` resources matching a specified query.
        # @param [String] order_by
        #   The ordering of groups for the display name or email in the search groups
        #   response. The syntax for this field can be found at https://cloud.google.com/
        #   apis/design/design_patterns#sorting_order. Example: Sort by the ascending name:
        #   order_by="display_name" Sort by the descending group key email: order_by="
        #   group_key desc"
        # @param [Fixnum] page_size
        #   The maximum number of results to return. Note that the number of results
        #   returned may be less than this value even if there are more available results.
        #   To fetch all results, clients must continue calling this method repeatedly
        #   until the response no longer contains a `next_page_token`. If unspecified,
        #   defaults to 200 for `GroupView.BASIC` and to 50 for `GroupView.FULL`. Must not
        #   be greater than 1000 for `GroupView.BASIC` or 500 for `GroupView.FULL`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous search request, if any.
        # @param [String] query
        #   Required. The search query. * Must be specified in [Common Expression Language]
        #   (https://opensource.google/projects/cel). * Must contain equality operators on
        #   the parent, e.g. `parent == 'customers/`customer_id`'`. The `customer_id` must
        #   begin with "C" (for example, 'C046psxkn'). [Find your customer ID.] (https://
        #   support.google.com/cloudidentity/answer/10070793) * Can contain optional
        #   inclusion operators on `labels` such as `'cloudidentity.googleapis.com/groups.
        #   discussion_forum' in labels`). * Can contain an optional equality operator on `
        #   domain_name`. e.g. `domain_name == 'abc.com'` * Can contain optional `
        #   startsWith/contains/equality` operators on `group_key`, e.g. `group_key.
        #   startsWith('dev')`, `group_key.contains('dev'), group_key == 'dev@abc.com'` *
        #   Can contain optional `startsWith/contains/equality` operators on `display_name`
        #   , such as `display_name.startsWith('dev')` , `display_name.contains('dev')`, `
        #   display_name == 'dev'`
        # @param [String] view
        #   The level of detail to be returned. If unspecified, defaults to `View.BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::SearchGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::SearchGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_groups(order_by: nil, page_size: nil, page_token: nil, query: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/groups:search', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::SearchGroupsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::SearchGroupsResponse
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update Security Settings
        # @param [String] name
        #   Output only. The resource name of the security settings. Shall be of the form `
        #   groups/`group_id`/securitySettings`.
        # @param [Google::Apis::CloudidentityV1beta1::SecuritySettings] security_settings_object
        # @param [String] update_mask
        #   Required. The fully-qualified names of fields to update. May only contain the
        #   following field: `member_restriction.query`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_group_security_settings(name, security_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::SecuritySettings::Representation
          command.request_object = security_settings_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Check a potential member for membership in a group. **Note:** This feature is
        # only available to Google Workspace Enterprise Standard, Enterprise Plus, and
        # Enterprise for Education; and Cloud Identity Premium accounts. A member has
        # membership to a group as long as there is a single viewable transitive
        # membership between the group and the member. The actor must have view
        # permissions to at least one transitive membership between the member and group.
        # @param [String] parent
        #   [Resource name](https://cloud.google.com/apis/design/resource_names) of the
        #   group to check the transitive membership in. Format: `groups/`group_id``,
        #   where `group_id` is the unique id assigned to the Group to which the
        #   Membership belongs to.
        # @param [String] query
        #   Required. A CEL expression that MUST include member specification. This is a `
        #   required` field. Certain groups are uniquely identified by both a '
        #   member_key_id' and a 'member_key_namespace', which requires an additional
        #   query input: 'member_key_namespace'. Example query: `member_key_id == '
        #   member_key_id_value'`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::CheckTransitiveMembershipResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::CheckTransitiveMembershipResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_group_membership_transitive_membership(parent, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:checkTransitiveMembership', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::CheckTransitiveMembershipResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::CheckTransitiveMembershipResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a `Membership`.
        # @param [String] parent
        #   Required. The parent `Group` resource under which to create the `Membership`.
        #   Must be of the form `groups/`group_id``.
        # @param [Google::Apis::CloudidentityV1beta1::Membership] membership_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_group_membership(parent, membership_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/memberships', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::Membership::Representation
          command.request_object = membership_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Membership`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the `Membership` to delete. Must be of the form `groups/`
        #   group_id`/memberships/`membership_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group_membership(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Membership`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the `Membership` to retrieve. Must be of the form `groups/`
        #   group_id`/memberships/`membership_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Membership] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Membership]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group_membership(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Membership::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Membership
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a membership graph of just a member or both a member and a group. **Note:**
        # This feature is only available to Google Workspace Enterprise Standard,
        # Enterprise Plus, and Enterprise for Education; and Cloud Identity Premium
        # accounts. Given a member, the response will contain all membership paths from
        # the member. Given both a group and a member, the response will contain all
        # membership paths between the group and the member.
        # @param [String] parent
        #   Required. [Resource name](https://cloud.google.com/apis/design/resource_names)
        #   of the group to search transitive memberships in. Format: `groups/`group_id``,
        #   where `group_id` is the unique ID assigned to the Group to which the
        #   Membership belongs to. group_id can be a wildcard collection id "-". When a
        #   group_id is specified, the membership graph will be constrained to paths
        #   between the member (defined in the query) and the parent. If a wildcard
        #   collection is provided, all membership paths connected to the member will be
        #   returned.
        # @param [String] query
        #   Required. A CEL expression that MUST include member specification AND label(s).
        #   Certain groups are uniquely identified by both a 'member_key_id' and a '
        #   member_key_namespace', which requires an additional query input: '
        #   member_key_namespace'. Example query: `member_key_id == 'member_key_id_value' &
        #   & in labels`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group_membership_membership_graph(parent, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:getMembershipGraph', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the `Membership`s within a `Group`.
        # @param [String] parent
        #   Required. The parent `Group` resource under which to lookup the `Membership`
        #   name. Must be of the form `groups/`group_id``.
        # @param [Fixnum] page_size
        #   The maximum number of results to return. Note that the number of results
        #   returned may be less than this value even if there are more available results.
        #   To fetch all results, clients must continue calling this method repeatedly
        #   until the response no longer contains a `next_page_token`. If unspecified,
        #   defaults to 200 for `GroupView.BASIC` and to 50 for `GroupView.FULL`. Must not
        #   be greater than 1000 for `GroupView.BASIC` or 500 for `GroupView.FULL`.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous search request, if any.
        # @param [String] view
        #   The level of detail to be returned. If unspecified, defaults to `
        #   MembershipView.BASIC`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_group_memberships(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListMembershipsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up the [resource name](https://cloud.google.com/apis/design/
        # resource_names) of a `Membership` by its `EntityKey`.
        # @param [String] parent
        #   Required. The parent `Group` resource under which to lookup the `Membership`
        #   name. Must be of the form `groups/`group_id``.
        # @param [String] member_key_id
        #   The ID of the entity. For Google-managed entities, the `id` must be the email
        #   address of an existing group or user. For external-identity-mapped entities,
        #   the `id` must be a string conforming to the Identity Source's requirements.
        #   Must be unique within a `namespace`.
        # @param [String] member_key_namespace
        #   The namespace in which the entity exists. If not specified, the `EntityKey`
        #   represents a Google-managed entity such as a Google user or a Google Group. If
        #   specified, the `EntityKey` represents an external-identity-mapped group. The
        #   namespace must correspond to an identity source created in Admin Console and
        #   must be in the form of `identitysources/`identity_source_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_group_membership(parent, member_key_id: nil, member_key_namespace: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:lookup', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::LookupMembershipNameResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['memberKey.id'] = member_key_id unless member_key_id.nil?
          command.query['memberKey.namespace'] = member_key_namespace unless member_key_namespace.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies the `MembershipRole`s of a `Membership`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the `Membership` whose roles are to be modified. Must be of
        #   the form `groups/`group_id`/memberships/`membership_id``.
        # @param [Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesRequest] modify_membership_roles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_membership_roles(name, modify_membership_roles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:modifyMembershipRoles', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesRequest::Representation
          command.request_object = modify_membership_roles_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ModifyMembershipRolesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches direct groups of a member.
        # @param [String] parent
        #   [Resource name](https://cloud.google.com/apis/design/resource_names) of the
        #   group to search transitive memberships in. Format: groups/`group_id`, where
        #   group_id is always '-' as this API will search across all groups for a given
        #   member.
        # @param [String] order_by
        #   The ordering of membership relation for the display name or email in the
        #   response. The syntax for this field can be found at https://cloud.google.com/
        #   apis/design/design_patterns#sorting_order. Example: Sort by the ascending
        #   display name: order_by="group_name" or order_by="group_name asc". Sort by the
        #   descending display name: order_by="group_name desc". Sort by the ascending
        #   group key: order_by="group_key" or order_by="group_key asc". Sort by the
        #   descending group key: order_by="group_key desc".
        # @param [Fixnum] page_size
        #   The default page size is 200 (max 1000).
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any
        # @param [String] query
        #   Required. A CEL expression that MUST include member specification AND label(s).
        #   Users can search on label attributes of groups. CONTAINS match ('in') is
        #   supported on labels. Identity-mapped groups are uniquely identified by both a `
        #   member_key_id` and a `member_key_namespace`, which requires an additional
        #   query input: `member_key_namespace`. Example query: `member_key_id == '
        #   member_key_id_value' && 'label_value' in labels`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::SearchDirectGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::SearchDirectGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_group_membership_direct_groups(parent, order_by: nil, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:searchDirectGroups', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::SearchDirectGroupsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::SearchDirectGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search transitive groups of a member. **Note:** This feature is only available
        # to Google Workspace Enterprise Standard, Enterprise Plus, and Enterprise for
        # Education; and Cloud Identity Premium accounts. A transitive group is any
        # group that has a direct or indirect membership to the member. Actor must have
        # view permissions all transitive groups.
        # @param [String] parent
        #   [Resource name](https://cloud.google.com/apis/design/resource_names) of the
        #   group to search transitive memberships in. Format: `groups/`group_id``, where `
        #   group_id` is always '-' as this API will search across all groups for a given
        #   member.
        # @param [Fixnum] page_size
        #   The default page size is 200 (max 1000).
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] query
        #   Required. A CEL expression that MUST include member specification AND label(s).
        #   This is a `required` field. Users can search on label attributes of groups.
        #   CONTAINS match ('in') is supported on labels. Identity-mapped groups are
        #   uniquely identified by both a `member_key_id` and a `member_key_namespace`,
        #   which requires an additional query input: `member_key_namespace`. Example
        #   query: `member_key_id == 'member_key_id_value' && in labels` Query may
        #   optionally contain equality operators on the parent of the group restricting
        #   the search within a particular customer, e.g. `parent == 'customers/`
        #   customer_id`'`. The `customer_id` must begin with "C" (for example, 'C046psxkn'
        #   ). This filtering is only supported for Admins with groups read permissons on
        #   the input customer. Example query: `member_key_id == 'member_key_id_value' &&
        #   in labels && parent == 'customers/C046psxkn'`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::SearchTransitiveGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::SearchTransitiveGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_group_membership_transitive_groups(parent, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:searchTransitiveGroups', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::SearchTransitiveGroupsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::SearchTransitiveGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search transitive memberships of a group. **Note:** This feature is only
        # available to Google Workspace Enterprise Standard, Enterprise Plus, and
        # Enterprise for Education; and Cloud Identity Premium accounts. A transitive
        # membership is any direct or indirect membership of a group. Actor must have
        # view permissions to all transitive memberships.
        # @param [String] parent
        #   [Resource name](https://cloud.google.com/apis/design/resource_names) of the
        #   group to search transitive memberships in. Format: `groups/`group_id``, where `
        #   group_id` is the unique ID assigned to the Group.
        # @param [Fixnum] page_size
        #   The default page size is 200 (max 1000).
        # @param [String] page_token
        #   The next_page_token value returned from a previous list request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::SearchTransitiveMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::SearchTransitiveMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_group_membership_transitive_memberships(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships:searchTransitiveMemberships', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::SearchTransitiveMembershipsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::SearchTransitiveMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an InboundSamlSsoProfile for a customer.
        # @param [Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile] inbound_saml_sso_profile_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inbound_saml_sso_profile(inbound_saml_sso_profile_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/inboundSamlSsoProfiles', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile::Representation
          command.request_object = inbound_saml_sso_profile_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an InboundSamlSsoProfile.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the InboundSamlSsoProfile to delete. Format: `
        #   inboundSamlSsoProfiles/`sso_profile_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inbound_saml_sso_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an InboundSamlSsoProfile.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the InboundSamlSsoProfile to get. Format: `
        #   inboundSamlSsoProfiles/`sso_profile_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inbound_saml_sso_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists InboundSamlSsoProfiles for a customer.
        # @param [String] filter
        #   A [Common Expression Language](https://github.com/google/cel-spec) expression
        #   to filter the results. The only supported filter is filtering by customer. For
        #   example: `customer=="customers/C0123abc"`. Omitting the filter or specifying a
        #   filter of `customer=="customers/my_customer"` will return the profiles for the
        #   customer that the caller (authenticated user) belongs to.
        # @param [Fixnum] page_size
        #   The maximum number of InboundSamlSsoProfiles to return. The service may return
        #   fewer than this value. If omitted (or defaulted to zero) the server will use a
        #   sensible default. This default may change over time. The maximum allowed value
        #   is 100. Requests with page_size greater than that will be silently interpreted
        #   as having this maximum value.
        # @param [String] page_token
        #   A page token, received from a previous `ListInboundSamlSsoProfiles` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListInboundSamlSsoProfiles` must match the call that
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
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListInboundSamlSsoProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListInboundSamlSsoProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inbound_saml_sso_profiles(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/inboundSamlSsoProfiles', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListInboundSamlSsoProfilesResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListInboundSamlSsoProfilesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an InboundSamlSsoProfile.
        # @param [String] name
        #   Output only. [Resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the SAML SSO profile.
        # @param [Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile] inbound_saml_sso_profile_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inbound_saml_sso_profile(name, inbound_saml_sso_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::InboundSamlSsoProfile::Representation
          command.request_object = inbound_saml_sso_profile_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an IdpCredential. Up to 2 credentials are allowed.
        # @param [String] parent
        #   Required. The InboundSamlSsoProfile that owns the IdpCredential. Format: `
        #   inboundSamlSsoProfiles/`sso_profile_id``
        # @param [Google::Apis::CloudidentityV1beta1::AddIdpCredentialRequest] add_idp_credential_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_idp_credential(parent, add_idp_credential_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/idpCredentials:add', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::AddIdpCredentialRequest::Representation
          command.request_object = add_idp_credential_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an IdpCredential.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the IdpCredential to delete. Format: `
        #   inboundSamlSsoProfiles/`sso_profile_id`/idpCredentials/`idp_credential_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inbound_saml_sso_profile_idp_credential(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an IdpCredential.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the IdpCredential to retrieve. Format: `
        #   inboundSamlSsoProfiles/`sso_profile_id`/idpCredentials/`idp_credential_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::IdpCredential] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::IdpCredential]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inbound_saml_sso_profile_idp_credential(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::IdpCredential::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::IdpCredential
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of IdpCredentials in an InboundSamlSsoProfile.
        # @param [String] parent
        #   Required. The parent, which owns this collection of `IdpCredential`s. Format: `
        #   inboundSamlSsoProfiles/`sso_profile_id``
        # @param [Fixnum] page_size
        #   The maximum number of `IdpCredential`s to return. The service may return fewer
        #   than this value.
        # @param [String] page_token
        #   A page token, received from a previous `ListIdpCredentials` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListIdpCredentials` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListIdpCredentialsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListIdpCredentialsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inbound_saml_sso_profile_idp_credentials(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/idpCredentials', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListIdpCredentialsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListIdpCredentialsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an InboundSsoAssignment for users and devices in a `Customer` under a
        # given `Group` or `OrgUnit`.
        # @param [Google::Apis::CloudidentityV1beta1::InboundSsoAssignment] inbound_sso_assignment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_inbound_sso_assignment(inbound_sso_assignment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/inboundSsoAssignments', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::InboundSsoAssignment::Representation
          command.request_object = inbound_sso_assignment_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an InboundSsoAssignment. To disable SSO, Create (or Update) an
        # assignment that has `sso_mode` == `SSO_OFF`.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the InboundSsoAssignment to delete. Format: `
        #   inboundSsoAssignments/`assignment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_inbound_sso_assignment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an InboundSsoAssignment.
        # @param [String] name
        #   Required. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the InboundSsoAssignment to fetch. Format: `
        #   inboundSsoAssignments/`assignment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::InboundSsoAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::InboundSsoAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_inbound_sso_assignment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::InboundSsoAssignment::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::InboundSsoAssignment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the InboundSsoAssignments for a `Customer`.
        # @param [String] filter
        #   A CEL expression to filter the results. The only supported filter is filtering
        #   by customer. For example: `customer==customers/C0123abc`. Omitting the filter
        #   or specifying a filter of `customer==customers/my_customer` will return the
        #   assignments for the customer that the caller (authenticated user) belongs to.
        # @param [Fixnum] page_size
        #   The maximum number of assignments to return. The service may return fewer than
        #   this value. If omitted (or defaulted to zero) the server will use a sensible
        #   default. This default may change over time. The maximum allowed value is 100,
        #   though requests with page_size greater than that will be silently interpreted
        #   as having this maximum value. This may increase in the futue.
        # @param [String] page_token
        #   A page token, received from a previous `ListInboundSsoAssignments` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListInboundSsoAssignments` must match the call that
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
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListInboundSsoAssignmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListInboundSsoAssignmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_inbound_sso_assignments(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/inboundSsoAssignments', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListInboundSsoAssignmentsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListInboundSsoAssignmentsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an InboundSsoAssignment. The body of this request is the `
        # inbound_sso_assignment` field and the `update_mask` is relative to that. For
        # example: a PATCH to `/v1beta1/inboundSsoAssignments/0abcdefg1234567&
        # update_mask=rank` with a body of `` "rank": 1 `` moves that (presumably group-
        # targeted) SSO assignment to the highest priority and shifts any other group-
        # targeted assignments down in priority.
        # @param [String] name
        #   Output only. [Resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the Inbound SSO Assignment.
        # @param [Google::Apis::CloudidentityV1beta1::InboundSsoAssignment] inbound_sso_assignment_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_inbound_sso_assignment(name, inbound_sso_assignment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::InboundSsoAssignment::Representation
          command.request_object = inbound_sso_assignment_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List OrgMembership resources in an OrgUnit treated as 'parent'. Parent format:
        # orgUnits/`$orgUnitId` where `$orgUnitId` is the `orgUnitId` from the [Admin
        # SDK `OrgUnit` resource](https://developers.google.com/admin-sdk/directory/
        # reference/rest/v1/orgunits)
        # @param [String] parent
        #   Required. Immutable. OrgUnit which is queried for a list of memberships.
        #   Format: orgUnits/`$orgUnitId` where `$orgUnitId` is the `orgUnitId` from the [
        #   Admin SDK `OrgUnit` resource](https://developers.google.com/admin-sdk/
        #   directory/reference/rest/v1/orgunits).
        # @param [String] customer
        #   Required. Immutable. Customer that this OrgMembership belongs to. All
        #   authorization will happen on the role assignments of this customer. Format:
        #   customers/`$customerId` where `$customerId` is the `id` from the [Admin SDK `
        #   Customer` resource](https://developers.google.com/admin-sdk/directory/
        #   reference/rest/v1/customers). You may also use `customers/my_customer` to
        #   specify your own organization.
        # @param [String] filter
        #   The search query. Must be specified in [Common Expression Language](https://
        #   opensource.google/projects/cel). May only contain equality operators on the `
        #   type` (e.g., `type == 'shared_drive'`).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. The service may return fewer than
        #   this value. If omitted (or defaulted to zero) the server will default to 50.
        #   The maximum allowed value is 100, though requests with page_size greater than
        #   that will be silently interpreted as 100.
        # @param [String] page_token
        #   A page token, received from a previous `OrgMembershipsService.
        #   ListOrgMemberships` call. Provide this to retrieve the subsequent page. When
        #   paginating, all other parameters provided to `ListOrgMembershipsRequest` must
        #   match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::ListOrgMembershipsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::ListOrgMembershipsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_org_unit_memberships(parent, customer: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/memberships', options)
          command.response_representation = Google::Apis::CloudidentityV1beta1::ListOrgMembershipsResponse::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::ListOrgMembershipsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Move an OrgMembership to a new OrgUnit. NOTE: This is an atomic copy-and-
        # delete. The resource will have a new copy under the destination OrgUnit and be
        # deleted from the source OrgUnit. The resource can only be searched under the
        # destination OrgUnit afterwards.
        # @param [String] name
        #   Required. Immutable. The [resource name](https://cloud.google.com/apis/design/
        #   resource_names) of the OrgMembership. Format: orgUnits/`$orgUnitId`/
        #   memberships/`$membership` The `$orgUnitId` is the `orgUnitId` from the [Admin
        #   SDK `OrgUnit` resource](https://developers.google.com/admin-sdk/directory/
        #   reference/rest/v1/orgunits). To manage a Membership without specifying source `
        #   orgUnitId`, this API also supports the wildcard character '-' for `$orgUnitId`
        #   per https://google.aip.dev/159. The `$membership` shall be of the form ``$
        #   entityType`;`$memberId``, where `$entityType` is the enum value of
        #   OrgMembership.EntityType, and `memberId` is the `id` from [Drive API (V3) `
        #   Drive` resource](https://developers.google.com/drive/api/v3/reference/drives#
        #   resource) for OrgMembership.EntityType.SHARED_DRIVE.
        # @param [Google::Apis::CloudidentityV1beta1::MoveOrgMembershipRequest] move_org_membership_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudidentityV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudidentityV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_org_membership(name, move_org_membership_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:move', options)
          command.request_representation = Google::Apis::CloudidentityV1beta1::MoveOrgMembershipRequest::Representation
          command.request_object = move_org_membership_request_object
          command.response_representation = Google::Apis::CloudidentityV1beta1::Operation::Representation
          command.response_class = Google::Apis::CloudidentityV1beta1::Operation
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
