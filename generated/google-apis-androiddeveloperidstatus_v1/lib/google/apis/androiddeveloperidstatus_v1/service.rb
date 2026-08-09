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
    module AndroiddeveloperidstatusV1
      # Android Developer ID Status API
      #
      # Android Developer ID Status API.
      #
      # @example
      #    require 'google/apis/androiddeveloperidstatus_v1'
      #
      #    Androiddeveloperidstatus = Google::Apis::AndroiddeveloperidstatusV1 # Alias the module
      #    service = Androiddeveloperidstatus::AndroidDeveloperIDStatusService.new
      #
      # @see https://developer.android.com/developer-verification/guides/check-registration-status
      class AndroidDeveloperIDStatusService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://androiddeveloperidstatus.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-androiddeveloperidstatus_v1',
                client_version: Google::Apis::AndroiddeveloperidstatusV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves the Android Developer ID registration status for a given package.
        # @param [String] name
        #   Required. The name of the package registration status resource. Format:
        #   packages/`package`/packageRegistrationStatus ``package`` must follow the
        #   specific format: The fully-qualified Android package name with dots ('.')
        #   replaced by hyphens ('-') (e.g., `com-example-app` instead of `com.example.app`
        #   ).
        # @param [String] certificate_fingerprint
        #   Optional. The SHA-256 fingerprint of the public certificate represented as a
        #   64-character lowercase hexadecimal string without any colons or separators (e.
        #   g., `d6ac89ed1d0a805aad4b087d06d5f41645b814480b133fbc867ef7498d069e06`).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AndroiddeveloperidstatusV1::PackageRegistrationStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AndroiddeveloperidstatusV1::PackageRegistrationStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_package_package_registration_status(name, certificate_fingerprint: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:check', options)
          command.response_representation = Google::Apis::AndroiddeveloperidstatusV1::PackageRegistrationStatus::Representation
          command.response_class = Google::Apis::AndroiddeveloperidstatusV1::PackageRegistrationStatus
          command.params['name'] = name unless name.nil?
          command.query['certificateFingerprint'] = certificate_fingerprint unless certificate_fingerprint.nil?
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
