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
    module PlaygroupingV1alpha1
      # Google Play Grouping API
      #
      # playgrouping.googleapis.com API.
      #
      # @example
      #    require 'google/apis/playgrouping_v1alpha1'
      #
      #    Playgrouping = Google::Apis::PlaygroupingV1alpha1 # Alias the module
      #    service = Playgrouping::PlayGroupingService.new
      #
      # @see https://cloud.google.com/playgrouping/
      class PlayGroupingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://playgrouping.googleapis.com/', '',
                client_name: 'google-apis-playgrouping_v1alpha1',
                client_version: Google::Apis::PlaygroupingV1alpha1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Verify an API token by asserting the app and persona it belongs to. The
        # verification is a protection against client-side attacks and will fail if the
        # contents of the token don't match the provided values. A token must be
        # verified before it can be used to manipulate user tags.
        # @param [String] app_package
        #   Required. App the token belongs to. Format: apps/`package_name`
        # @param [String] token
        #   Required. The token to be verified. Format: tokens/`token`
        # @param [Google::Apis::PlaygroupingV1alpha1::VerifyTokenRequest] verify_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaygroupingV1alpha1::VerifyTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaygroupingV1alpha1::VerifyTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_token(app_package, token, verify_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+appPackage}/{+token}:verify', options)
          command.request_representation = Google::Apis::PlaygroupingV1alpha1::VerifyTokenRequest::Representation
          command.request_object = verify_token_request_object
          command.response_representation = Google::Apis::PlaygroupingV1alpha1::VerifyTokenResponse::Representation
          command.response_class = Google::Apis::PlaygroupingV1alpha1::VerifyTokenResponse
          command.params['appPackage'] = app_package unless app_package.nil?
          command.params['token'] = token unless token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create or update tags for the user and app that are represented by the given
        # token.
        # @param [String] app_package
        #   Required. App whose tags are being manipulated. Format: apps/`package_name`
        # @param [String] token
        #   Required. Token for which the tags are being inserted or updated. Format:
        #   tokens/`token`
        # @param [Google::Apis::PlaygroupingV1alpha1::CreateOrUpdateTagsRequest] create_or_update_tags_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaygroupingV1alpha1::CreateOrUpdateTagsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaygroupingV1alpha1::CreateOrUpdateTagsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_or_update_tags(app_package, token, create_or_update_tags_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+appPackage}/{+token}/tags:createOrUpdate', options)
          command.request_representation = Google::Apis::PlaygroupingV1alpha1::CreateOrUpdateTagsRequest::Representation
          command.request_object = create_or_update_tags_request_object
          command.response_representation = Google::Apis::PlaygroupingV1alpha1::CreateOrUpdateTagsResponse::Representation
          command.response_class = Google::Apis::PlaygroupingV1alpha1::CreateOrUpdateTagsResponse
          command.params['appPackage'] = app_package unless app_package.nil?
          command.params['token'] = token unless token.nil?
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
