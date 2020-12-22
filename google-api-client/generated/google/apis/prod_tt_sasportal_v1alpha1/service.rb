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
    module ProdTtSasportalV1alpha1
      # SAS Portal API (Testing)
      #
      # 
      #
      # @example
      #    require 'google/apis/prod_tt_sasportal_v1alpha1'
      #
      #    ProdTtSasportal = Google::Apis::ProdTtSasportalV1alpha1 # Alias the module
      #    service = ProdTtSasportal::SASPortalTestingService.new
      #
      # @see https://developers.google.com/spectrum-access-system/
      class SASPortalTestingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://prod-tt-sasportal.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns a requested customer.
        # @param [String] name
        #   Required. The name of the customer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of requested customers.
        # @param [Fixnum] page_size
        #   The maximum number of customers to return in the response.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListCustomers method that
        #   indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListCustomersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListCustomersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customers(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/customers', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListCustomersResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListCustomersResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing customer.
        # @param [String] name
        #   Output only. Resource name of the customer.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer] sas_portal_customer_object
        # @param [String] update_mask
        #   Fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_customer(name, sas_portal_customer_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer::Representation
          command.request_object = sas_portal_customer_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCustomer
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a deployment under another node or customer.
        # @param [String] name
        #   Required. The name of the deployment to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeploymentRequest] sas_portal_move_deployment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_customer_deployment(name, sas_portal_move_deployment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeploymentRequest::Representation
          command.request_object = sas_portal_move_deployment_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_deployment_device(parent, sas_portal_device_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a signed device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest] sas_portal_create_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_deployment_device_signed(parent, sas_portal_create_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:createSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest::Representation
          command.request_object = sas_portal_create_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [String] filter
        #   The filter expression. The filter should have one of the following formats: "
        #   sn=123454" or "display_name=MyDevice". sn corresponds to serial_number of the
        #   device. The filter is case insensitive.
        # @param [Fixnum] page_size
        #   The maximum number of devices to return in the response. If empty or zero, all
        #   devices will be listed. Must be in the range [0, 1000].
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListDevices that indicates
        #   where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_deployment_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/devices', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer. Returned devices are unordered.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceRequest] sas_portal_bulk_create_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_customer_device(parent, sas_portal_bulk_create_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:bulk', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceRequest::Representation
          command.request_object = sas_portal_bulk_create_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_device(parent, sas_portal_device_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a signed device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest] sas_portal_create_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_device_signed(parent, sas_portal_create_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:createSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest::Representation
          command.request_object = sas_portal_create_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a device.
        # @param [String] name
        #   Required. The name of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_customer_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about a device.
        # @param [String] name
        #   Required. The name of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [String] filter
        #   The filter expression. The filter should have one of the following formats: "
        #   sn=123454" or "display_name=MyDevice". sn corresponds to serial_number of the
        #   device. The filter is case insensitive.
        # @param [Fixnum] page_size
        #   The maximum number of devices to return in the response. If empty or zero, all
        #   devices will be listed. Must be in the range [0, 1000].
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListDevices that indicates
        #   where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/devices', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a device under another node or customer.
        # @param [String] name
        #   Required. The name of the device to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeviceRequest] sas_portal_move_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_customer_device(name, sas_portal_move_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeviceRequest::Representation
          command.request_object = sas_portal_move_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a device.
        # @param [String] name
        #   Output only. The resource path name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] update_mask
        #   Fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_customer_device(name, sas_portal_device_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs a device.
        # @param [String] name
        #   Output only. The resource path name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalSignDeviceRequest] sas_portal_sign_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_customer_device_device(name, sas_portal_sign_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:signDevice', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalSignDeviceRequest::Representation
          command.request_object = sas_portal_sign_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a signed device.
        # @param [String] name
        #   Required. The name of the device to update.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalUpdateSignedDeviceRequest] sas_portal_update_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_customer_device_signed(name, sas_portal_update_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}:updateSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalUpdateSignedDeviceRequest::Representation
          command.request_object = sas_portal_update_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new node.
        # @param [String] parent
        #   Required. The parent resource name where the node is to be created.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] sas_portal_node_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_node(parent, sas_portal_node_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/nodes', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.request_object = sas_portal_node_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a node.
        # @param [String] name
        #   Required. The name of the node.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_customer_node(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a requested node.
        # @param [String] name
        #   Required. The name of the node.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_node(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists nodes.
        # @param [String] parent
        #   Required. The parent resource name, for example, "nodes/1".
        # @param [Fixnum] page_size
        #   The maximum number of nodes to return in the response.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListNodes method that
        #   indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/nodes', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a node under another node or customer.
        # @param [String] name
        #   Required. The name of the node to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveNodeRequest] sas_portal_move_node_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_customer_node(name, sas_portal_move_node_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveNodeRequest::Representation
          command.request_object = sas_portal_move_node_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing node.
        # @param [String] name
        #   Output only. Resource name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] sas_portal_node_object
        # @param [String] update_mask
        #   Fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_customer_node(name, sas_portal_node_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.request_object = sas_portal_node_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_node_device(parent, sas_portal_device_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a signed device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest] sas_portal_create_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_node_device_signed(parent, sas_portal_create_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:createSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest::Representation
          command.request_object = sas_portal_create_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [String] filter
        #   The filter expression. The filter should have one of the following formats: "
        #   sn=123454" or "display_name=MyDevice". sn corresponds to serial_number of the
        #   device. The filter is case insensitive.
        # @param [Fixnum] page_size
        #   The maximum number of devices to return in the response. If empty or zero, all
        #   devices will be listed. Must be in the range [0, 1000].
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListDevices that indicates
        #   where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_node_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/devices', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new node.
        # @param [String] parent
        #   Required. The parent resource name where the node is to be created.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] sas_portal_node_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_node_node(parent, sas_portal_node_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/nodes', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.request_object = sas_portal_node_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists nodes.
        # @param [String] parent
        #   Required. The parent resource name, for example, "nodes/1".
        # @param [Fixnum] page_size
        #   The maximum number of nodes to return in the response.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListNodes method that
        #   indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_node_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/nodes', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a device.
        # @param [String] name
        #   Required. The name of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_deployment_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about a device.
        # @param [String] name
        #   Required. The name of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_deployment_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a device under another node or customer.
        # @param [String] name
        #   Required. The name of the device to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeviceRequest] sas_portal_move_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_deployment_device(name, sas_portal_move_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeviceRequest::Representation
          command.request_object = sas_portal_move_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a device.
        # @param [String] name
        #   Output only. The resource path name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] update_mask
        #   Fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_deployment_device(name, sas_portal_device_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs a device.
        # @param [String] name
        #   Output only. The resource path name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalSignDeviceRequest] sas_portal_sign_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_deployment_device_device(name, sas_portal_sign_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:signDevice', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalSignDeviceRequest::Representation
          command.request_object = sas_portal_sign_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a signed device.
        # @param [String] name
        #   Required. The name of the device to update.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalUpdateSignedDeviceRequest] sas_portal_update_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_deployment_device_signed(name, sas_portal_update_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}:updateSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalUpdateSignedDeviceRequest::Representation
          command.request_object = sas_portal_update_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a secret to be used with the ValidateInstaller method
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalGenerateSecretRequest] sas_portal_generate_secret_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalGenerateSecretResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalGenerateSecretResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_installer_secret(sas_portal_generate_secret_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/installer:generateSecret', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalGenerateSecretRequest::Representation
          command.request_object = sas_portal_generate_secret_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalGenerateSecretResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalGenerateSecretResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Validates the identity of a Certified Professional Installer (CPI).
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalValidateInstallerRequest] sas_portal_validate_installer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalValidateInstallerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalValidateInstallerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def validate_installer(sas_portal_validate_installer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/installer:validate', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalValidateInstallerRequest::Representation
          command.request_object = sas_portal_validate_installer_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalValidateInstallerResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalValidateInstallerResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a requested node.
        # @param [String] name
        #   Required. The name of the node.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_node(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a deployment under another node or customer.
        # @param [String] name
        #   Required. The name of the deployment to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeploymentRequest] sas_portal_move_deployment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_node_deployment(name, sas_portal_move_deployment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeploymentRequest::Representation
          command.request_object = sas_portal_move_deployment_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_deployment_device(parent, sas_portal_device_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a signed device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest] sas_portal_create_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_deployment_device_signed(parent, sas_portal_create_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:createSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest::Representation
          command.request_object = sas_portal_create_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [String] filter
        #   The filter expression. The filter should have one of the following formats: "
        #   sn=123454" or "display_name=MyDevice". sn corresponds to serial_number of the
        #   device. The filter is case insensitive.
        # @param [Fixnum] page_size
        #   The maximum number of devices to return in the response. If empty or zero, all
        #   devices will be listed. Must be in the range [0, 1000].
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListDevices that indicates
        #   where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_node_deployment_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/devices', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer. Returned devices are unordered.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceRequest] sas_portal_bulk_create_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_node_device(parent, sas_portal_bulk_create_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:bulk', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceRequest::Representation
          command.request_object = sas_portal_bulk_create_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_device(parent, sas_portal_device_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a signed device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest] sas_portal_create_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_device_signed(parent, sas_portal_create_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:createSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest::Representation
          command.request_object = sas_portal_create_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a device.
        # @param [String] name
        #   Required. The name of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_node_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about a device.
        # @param [String] name
        #   Required. The name of the device.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_node_device(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [String] filter
        #   The filter expression. The filter should have one of the following formats: "
        #   sn=123454" or "display_name=MyDevice". sn corresponds to serial_number of the
        #   device. The filter is case insensitive.
        # @param [Fixnum] page_size
        #   The maximum number of devices to return in the response. If empty or zero, all
        #   devices will be listed. Must be in the range [0, 1000].
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListDevices that indicates
        #   where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_node_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/devices', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a device under another node or customer.
        # @param [String] name
        #   Required. The name of the device to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeviceRequest] sas_portal_move_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_node_device(name, sas_portal_move_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveDeviceRequest::Representation
          command.request_object = sas_portal_move_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a device.
        # @param [String] name
        #   Output only. The resource path name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] update_mask
        #   Fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_node_device(name, sas_portal_device_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs a device.
        # @param [String] name
        #   Output only. The resource path name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalSignDeviceRequest] sas_portal_sign_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_node_device_device(name, sas_portal_sign_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:signDevice', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalSignDeviceRequest::Representation
          command.request_object = sas_portal_sign_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a signed device.
        # @param [String] name
        #   Required. The name of the device to update.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalUpdateSignedDeviceRequest] sas_portal_update_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_node_device_signed(name, sas_portal_update_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}:updateSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalUpdateSignedDeviceRequest::Representation
          command.request_object = sas_portal_update_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new node.
        # @param [String] parent
        #   Required. The parent resource name where the node is to be created.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] sas_portal_node_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_node(parent, sas_portal_node_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/nodes', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.request_object = sas_portal_node_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a node.
        # @param [String] name
        #   Required. The name of the node.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_node_node(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a requested node.
        # @param [String] name
        #   Required. The name of the node.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_node_node(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists nodes.
        # @param [String] parent
        #   Required. The parent resource name, for example, "nodes/1".
        # @param [Fixnum] page_size
        #   The maximum number of nodes to return in the response.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListNodes method that
        #   indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_node_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/nodes', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a node under another node or customer.
        # @param [String] name
        #   Required. The name of the node to move.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveNodeRequest] sas_portal_move_node_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_node_node(name, sas_portal_move_node_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:move', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalMoveNodeRequest::Representation
          command.request_object = sas_portal_move_node_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing node.
        # @param [String] name
        #   Output only. Resource name.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] sas_portal_node_object
        # @param [String] update_mask
        #   Fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_node_node(name, sas_portal_node_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha1/{+name}', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.request_object = sas_portal_node_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer. Returned devices are unordered.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceRequest] sas_portal_bulk_create_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bulk_node_node_device(parent, sas_portal_bulk_create_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:bulk', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceRequest::Representation
          command.request_object = sas_portal_bulk_create_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalBulkCreateDeviceResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] sas_portal_device_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_node_device(parent, sas_portal_device_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.request_object = sas_portal_device_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a signed device under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest] sas_portal_create_signed_device_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_node_device_signed(parent, sas_portal_create_signed_device_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/devices:createSigned', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalCreateSignedDeviceRequest::Representation
          command.request_object = sas_portal_create_signed_device_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalDevice
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists devices under a node or customer.
        # @param [String] parent
        #   Required. The name of the parent resource.
        # @param [String] filter
        #   The filter expression. The filter should have one of the following formats: "
        #   sn=123454" or "display_name=MyDevice". sn corresponds to serial_number of the
        #   device. The filter is case insensitive.
        # @param [Fixnum] page_size
        #   The maximum number of devices to return in the response. If empty or zero, all
        #   devices will be listed. Must be in the range [0, 1000].
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListDevices that indicates
        #   where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_node_node_devices(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/devices', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new node.
        # @param [String] parent
        #   Required. The parent resource name where the node is to be created.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] sas_portal_node_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_node_node_node(parent, sas_portal_node_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+parent}/nodes', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.request_object = sas_portal_node_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalNode
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists nodes.
        # @param [String] parent
        #   Required. The parent resource name, for example, "nodes/1".
        # @param [Fixnum] page_size
        #   The maximum number of nodes to return in the response.
        # @param [String] page_token
        #   A pagination token returned from a previous call to ListNodes method that
        #   indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_node_node_nodes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/nodes', options)
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalListNodesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. Returns an empty policy if the
        # resource exists and does not have a policy set.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalGetPolicyRequest] sas_portal_get_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_policy(sas_portal_get_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/policies:get', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalGetPolicyRequest::Representation
          command.request_object = sas_portal_get_policy_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on the specified resource. Replaces any
        # existing policy.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalSetPolicyRequest] sas_portal_set_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_policy(sas_portal_set_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/policies:set', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalSetPolicyRequest::Representation
          command.request_object = sas_portal_set_policy_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalPolicy
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the specified resource.
        # @param [Google::Apis::ProdTtSasportalV1alpha1::SasPortalTestPermissionsRequest] sas_portal_test_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ProdTtSasportalV1alpha1::SasPortalTestPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ProdTtSasportalV1alpha1::SasPortalTestPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_policy(sas_portal_test_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/policies:test', options)
          command.request_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalTestPermissionsRequest::Representation
          command.request_object = sas_portal_test_permissions_request_object
          command.response_representation = Google::Apis::ProdTtSasportalV1alpha1::SasPortalTestPermissionsResponse::Representation
          command.response_class = Google::Apis::ProdTtSasportalV1alpha1::SasPortalTestPermissionsResponse
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
