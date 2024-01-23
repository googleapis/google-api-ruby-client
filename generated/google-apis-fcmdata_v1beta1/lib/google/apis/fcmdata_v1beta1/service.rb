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
    module FcmdataV1beta1
      # Firebase Cloud Messaging Data API
      #
      # Provides additional information about Firebase Cloud Messaging (FCM) message
      #  sends and deliveries.
      #
      # @example
      #    require 'google/apis/fcmdata_v1beta1'
      #
      #    Fcmdata = Google::Apis::FcmdataV1beta1 # Alias the module
      #    service = Fcmdata::FcmdataService.new
      #
      # @see https://firebase.google.com/docs/cloud-messaging
      class FcmdataService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://fcmdata.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-fcmdata_v1beta1',
                client_version: Google::Apis::FcmdataV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # List aggregate delivery data for the given Android application.
        # @param [String] parent
        #   Required. The application for which to list delivery data. Format: `projects/`
        #   project_id`/androidApps/`app_id``
        # @param [Fixnum] page_size
        #   The maximum number of entries to return. The service may return fewer than
        #   this value. If unspecified, at most 1,000 entries will be returned. The
        #   maximum value is 10,000; values above 10,000 will be capped to 10,000. This
        #   default may change over time.
        # @param [String] page_token
        #   A page token, received from a previous `ListAndroidDeliveryDataRequest` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAndroidDeliveryDataRequest` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_android_app_delivery_data(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/deliveryData', options)
          command.response_representation = Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse::Representation
          command.response_class = Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse
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
