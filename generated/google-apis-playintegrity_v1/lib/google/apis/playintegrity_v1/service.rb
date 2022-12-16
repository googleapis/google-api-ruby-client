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
    module PlayintegrityV1
      # Google Play Integrity API
      #
      # The Play Integrity API helps you check that you're interacting with your
      #  genuine app on a genuine Android device powered by Google Play services. The
      #  Play Integrity API has replaced SafetyNet Attestation and Android Device
      #  Verification.
      #
      # @example
      #    require 'google/apis/playintegrity_v1'
      #
      #    Playintegrity = Google::Apis::PlayintegrityV1 # Alias the module
      #    service = Playintegrity::PlayIntegrityService.new
      #
      # @see https://developer.android.com/google/play/integrity
      class PlayIntegrityService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://playintegrity.googleapis.com/', '',
                client_name: 'google-apis-playintegrity_v1',
                client_version: Google::Apis::PlayintegrityV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Decodes the integrity token and returns the token payload.
        # @param [String] package_name
        #   Package name of the app the attached integrity token belongs to.
        # @param [Google::Apis::PlayintegrityV1::DecodeIntegrityTokenRequest] decode_integrity_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlayintegrityV1::DecodeIntegrityTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlayintegrityV1::DecodeIntegrityTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def decode_integrity_token(package_name, decode_integrity_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+packageName}:decodeIntegrityToken', options)
          command.request_representation = Google::Apis::PlayintegrityV1::DecodeIntegrityTokenRequest::Representation
          command.request_object = decode_integrity_token_request_object
          command.response_representation = Google::Apis::PlayintegrityV1::DecodeIntegrityTokenResponse::Representation
          command.response_class = Google::Apis::PlayintegrityV1::DecodeIntegrityTokenResponse
          command.params['packageName'] = package_name unless package_name.nil?
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
