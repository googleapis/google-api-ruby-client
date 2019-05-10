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
    module LicensingV1
      # Enterprise License Manager API
      #
      # Views and manages licenses for your domain.
      #
      # @example
      #    require 'google/apis/licensing_v1'
      #
      #    Licensing = Google::Apis::LicensingV1 # Alias the module
      #    service = Licensing::LicensingService.new
      #
      # @see https://developers.google.com/google-apps/licensing/
      class LicensingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'apps/licensing/v1/product/')
          @batch_path = 'batch/licensing/v1'
        end
        
        # Revoke License.
        # @param [String] product_id
        #   Name for product
        # @param [String] sku_id
        #   Name for sku
        # @param [String] user_id
        #   email id or unique Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_license_assignment(product_id, sku_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:delete, '{productId}/sku/{skuId}/user/{userId}', options)
          command.params['productId'] = product_id unless product_id.nil?
          command.params['skuId'] = sku_id unless sku_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get license assignment of a particular product and sku for a user
        # @param [String] product_id
        #   Name for product
        # @param [String] sku_id
        #   Name for sku
        # @param [String] user_id
        #   email id or unique Id of the user
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LicensingV1::LicenseAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LicensingV1::LicenseAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_license_assignment(product_id, sku_id, user_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, '{productId}/sku/{skuId}/user/{userId}', options)
          command.response_representation = Google::Apis::LicensingV1::LicenseAssignment::Representation
          command.response_class = Google::Apis::LicensingV1::LicenseAssignment
          command.params['productId'] = product_id unless product_id.nil?
          command.params['skuId'] = sku_id unless sku_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assign License.
        # @param [String] product_id
        #   Name for product
        # @param [String] sku_id
        #   Name for sku
        # @param [Google::Apis::LicensingV1::LicenseAssignmentInsert] license_assignment_insert_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LicensingV1::LicenseAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LicensingV1::LicenseAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_license_assignment(product_id, sku_id, license_assignment_insert_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, '{productId}/sku/{skuId}/user', options)
          command.request_representation = Google::Apis::LicensingV1::LicenseAssignmentInsert::Representation
          command.request_object = license_assignment_insert_object
          command.response_representation = Google::Apis::LicensingV1::LicenseAssignment::Representation
          command.response_class = Google::Apis::LicensingV1::LicenseAssignment
          command.params['productId'] = product_id unless product_id.nil?
          command.params['skuId'] = sku_id unless sku_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List license assignments for given product of the customer.
        # @param [String] product_id
        #   Name for product
        # @param [String] customer_id
        #   CustomerId represents the customer for whom licenseassignments are queried
        # @param [Fixnum] max_results
        #   Maximum number of campaigns to return at one time. Must be positive. Optional.
        #   Default value is 100.
        # @param [String] page_token
        #   Token to fetch the next page.Optional. By default server will return first
        #   page
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LicensingV1::LicenseAssignmentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LicensingV1::LicenseAssignmentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_license_assignments_for_product(product_id, customer_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, '{productId}/users', options)
          command.response_representation = Google::Apis::LicensingV1::LicenseAssignmentList::Representation
          command.response_class = Google::Apis::LicensingV1::LicenseAssignmentList
          command.params['productId'] = product_id unless product_id.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List license assignments for given product and sku of the customer.
        # @param [String] product_id
        #   Name for product
        # @param [String] sku_id
        #   Name for sku
        # @param [String] customer_id
        #   CustomerId represents the customer for whom licenseassignments are queried
        # @param [Fixnum] max_results
        #   Maximum number of campaigns to return at one time. Must be positive. Optional.
        #   Default value is 100.
        # @param [String] page_token
        #   Token to fetch the next page.Optional. By default server will return first
        #   page
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LicensingV1::LicenseAssignmentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LicensingV1::LicenseAssignmentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_license_assignments_for_product_and_sku(product_id, sku_id, customer_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, '{productId}/sku/{skuId}/users', options)
          command.response_representation = Google::Apis::LicensingV1::LicenseAssignmentList::Representation
          command.response_class = Google::Apis::LicensingV1::LicenseAssignmentList
          command.params['productId'] = product_id unless product_id.nil?
          command.params['skuId'] = sku_id unless sku_id.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assign License. This method supports patch semantics.
        # @param [String] product_id
        #   Name for product
        # @param [String] sku_id
        #   Name for sku for which license would be revoked
        # @param [String] user_id
        #   email id or unique Id of the user
        # @param [Google::Apis::LicensingV1::LicenseAssignment] license_assignment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LicensingV1::LicenseAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LicensingV1::LicenseAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_license_assignment(product_id, sku_id, user_id, license_assignment_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:patch, '{productId}/sku/{skuId}/user/{userId}', options)
          command.request_representation = Google::Apis::LicensingV1::LicenseAssignment::Representation
          command.request_object = license_assignment_object
          command.response_representation = Google::Apis::LicensingV1::LicenseAssignment::Representation
          command.response_class = Google::Apis::LicensingV1::LicenseAssignment
          command.params['productId'] = product_id unless product_id.nil?
          command.params['skuId'] = sku_id unless sku_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assign License.
        # @param [String] product_id
        #   Name for product
        # @param [String] sku_id
        #   Name for sku for which license would be revoked
        # @param [String] user_id
        #   email id or unique Id of the user
        # @param [Google::Apis::LicensingV1::LicenseAssignment] license_assignment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LicensingV1::LicenseAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LicensingV1::LicenseAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_license_assignment(product_id, sku_id, user_id, license_assignment_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:put, '{productId}/sku/{skuId}/user/{userId}', options)
          command.request_representation = Google::Apis::LicensingV1::LicenseAssignment::Representation
          command.request_object = license_assignment_object
          command.response_representation = Google::Apis::LicensingV1::LicenseAssignment::Representation
          command.response_class = Google::Apis::LicensingV1::LicenseAssignment
          command.params['productId'] = product_id unless product_id.nil?
          command.params['skuId'] = sku_id unless sku_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
