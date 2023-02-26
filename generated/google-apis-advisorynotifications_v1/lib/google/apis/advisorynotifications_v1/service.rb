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
    module AdvisorynotificationsV1
      # Advisory Notifications API
      #
      # An API for accessing Advisory Notifications in Google Cloud
      #
      # @example
      #    require 'google/apis/advisorynotifications_v1'
      #
      #    Advisorynotifications = Google::Apis::AdvisorynotificationsV1 # Alias the module
      #    service = Advisorynotifications::AdvisorynotificationsService.new
      #
      # @see https://cloud.google.com/advisory-notifications
      class AdvisorynotificationsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://advisorynotifications.googleapis.com/', '',
                client_name: 'google-apis-advisorynotifications_v1',
                client_version: Google::Apis::AdvisorynotificationsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets a notification.
        # @param [String] name
        #   Required. A name of the notification to retrieve. Format: organizations/`
        #   organization`/locations/`location`/notifications/`notification`.
        # @param [String] language_code
        #   ISO code for requested localization language. If unset, will be interpereted
        #   as "en". If the requested language is valid, but not supported for this
        #   notification, English will be returned with an "Not applicable"
        #   LocalizationState. If the ISO code is invalid (i.e. not a real language), this
        #   RPC will throw an error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_notification(name, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification::Representation
          command.response_class = Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification
          command.params['name'] = name unless name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists notifications under a given parent.
        # @param [String] parent
        #   Required. The parent, which owns this collection of notifications. Must be of
        #   the form "organizations/`organization`/locations/`location`".
        # @param [String] language_code
        #   ISO code for requested localization language. If unset, will be interpereted
        #   as "en". If the requested language is valid, but not supported for this
        #   notification, English will be returned with an "Not applicable"
        #   LocalizationState. If the ISO code is invalid (i.e. not a real language), this
        #   RPC will throw an error.
        # @param [Fixnum] page_size
        #   The maximum number of notifications to return. The service may return fewer
        #   than this value. If unspecified or equal to 0, at most 50 notifications will
        #   be returned. The maximum value is 50; values above 50 will be coerced to 50.
        # @param [String] page_token
        #   A page token returned from a previous request. When paginating, all other
        #   parameters provided in the request must match the call that returned the page
        #   token.
        # @param [String] view
        #   Specifies which parts of the notification resource should be returned in the
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1ListNotificationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1ListNotificationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_notifications(parent, language_code: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/notifications', options)
          command.response_representation = Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1ListNotificationsResponse::Representation
          command.response_class = Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1ListNotificationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
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
