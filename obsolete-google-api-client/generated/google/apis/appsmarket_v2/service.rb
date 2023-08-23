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
    module AppsmarketV2
      # G Suite Marketplace API
      #
      # Lets your G Suite Marketplace applications integrate with Google's licensing
      #  and billing services.
      #
      # @example
      #    require 'google/apis/appsmarket_v2'
      #
      #    Appsmarket = Google::Apis::AppsmarketV2 # Alias the module
      #    service = Appsmarket::GSuiteMarketplaceAPIService.new
      #
      # @see https://developers.google.com/apps-marketplace
      class GSuiteMarketplaceAPIService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://appsmarket.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Get the status of a license for a customer to determine if they have access
        # for a given app.
        # @param [String] application_id
        #   Application Id
        # @param [String] customer_id
        #   Customer Id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AppsmarketV2::CustomerLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AppsmarketV2::CustomerLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_license(application_id, customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'appsmarket/v2/customerLicense/{applicationId}/{customerId}', options)
          command.response_representation = Google::Apis::AppsmarketV2::CustomerLicense::Representation
          command.response_class = Google::Apis::AppsmarketV2::CustomerLicense
          command.params['applicationId'] = application_id unless application_id.nil?
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of licensing notifications with regards to a given app.
        # @param [String] application_id
        #   Application Id
        # @param [Fixnum] max_results
        # @param [String] start_token
        # @param [Fixnum] timestamp
        #   Timestamp in milliseconds since epoch
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AppsmarketV2::LicenseNotificationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AppsmarketV2::LicenseNotificationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_license_notifications(application_id, max_results: nil, start_token: nil, timestamp: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'appsmarket/v2/licenseNotification/{applicationId}', options)
          command.response_representation = Google::Apis::AppsmarketV2::LicenseNotificationList::Representation
          command.response_class = Google::Apis::AppsmarketV2::LicenseNotificationList
          command.params['applicationId'] = application_id unless application_id.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['start-token'] = start_token unless start_token.nil?
          command.query['timestamp'] = timestamp unless timestamp.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the user's licensing status for their permission to use a given app.
        # @param [String] application_id
        #   Application Id
        # @param [String] user_id
        #   User Id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AppsmarketV2::UserLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AppsmarketV2::UserLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_license(application_id, user_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'appsmarket/v2/userLicense/{applicationId}/{userId}', options)
          command.response_representation = Google::Apis::AppsmarketV2::UserLicense::Representation
          command.response_class = Google::Apis::AppsmarketV2::UserLicense
          command.params['applicationId'] = application_id unless application_id.nil?
          command.params['userId'] = user_id unless user_id.nil?
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
