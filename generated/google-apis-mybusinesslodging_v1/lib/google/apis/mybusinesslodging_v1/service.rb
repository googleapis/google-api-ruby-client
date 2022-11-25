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
    module MybusinesslodgingV1
      # My Business Lodging API
      #
      # The My Business Lodging API enables managing lodging business information on
      #  Google. Note - If you have a quota of 0 after enabling the API, please request
      #  for GBP API access.
      #
      # @example
      #    require 'google/apis/mybusinesslodging_v1'
      #
      #    Mybusinesslodging = Google::Apis::MybusinesslodgingV1 # Alias the module
      #    service = Mybusinesslodging::MyBusinessLodgingService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessLodgingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinesslodging.googleapis.com/', '',
                client_name: 'google-apis-mybusinesslodging_v1',
                client_version: Google::Apis::MybusinesslodgingV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns the Lodging of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `locations/`
        #   location_id`/lodging`
        # @param [String] read_mask
        #   Required. The specific fields to return. Use "*" to include all fields.
        #   Repeated field items cannot be individually specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinesslodgingV1::Lodging] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinesslodgingV1::Lodging]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_lodging(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinesslodgingV1::Lodging::Representation
          command.response_class = Google::Apis::MybusinesslodgingV1::Lodging
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Lodging of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `locations/`
        #   location_id`/lodging`
        # @param [Google::Apis::MybusinesslodgingV1::Lodging] lodging_object
        # @param [String] update_mask
        #   Required. The specific fields to update. Use "*" to update all fields, which
        #   may include unsetting empty fields in the request. Repeated field items cannot
        #   be individually updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinesslodgingV1::Lodging] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinesslodgingV1::Lodging]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_location_lodging(name, lodging_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinesslodgingV1::Lodging::Representation
          command.request_object = lodging_object
          command.response_representation = Google::Apis::MybusinesslodgingV1::Lodging::Representation
          command.response_class = Google::Apis::MybusinesslodgingV1::Lodging
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the Google updated Lodging of a specific location.
        # @param [String] name
        #   Required. Google identifier for this location in the form: `accounts/`
        #   account_id`/locations/`location_id`/lodging`
        # @param [String] read_mask
        #   Required. The specific fields to return. Use "*" to include all fields.
        #   Repeated field items cannot be individually specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinesslodgingV1::GetGoogleUpdatedLodgingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinesslodgingV1::GetGoogleUpdatedLodgingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_lodging_google_updated(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getGoogleUpdated', options)
          command.response_representation = Google::Apis::MybusinesslodgingV1::GetGoogleUpdatedLodgingResponse::Representation
          command.response_class = Google::Apis::MybusinesslodgingV1::GetGoogleUpdatedLodgingResponse
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
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
