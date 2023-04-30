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
    module PubliccaV1
      # Public Certificate Authority API
      #
      # The Public Certificate Authority API may be used to create and manage ACME
      #  external account binding keys associated with Google Trust Services' publicly
      #  trusted certificate authority.
      #
      # @example
      #    require 'google/apis/publicca_v1'
      #
      #    Publicca = Google::Apis::PubliccaV1 # Alias the module
      #    service = Publicca::PublicCertificateAuthorityService.new
      #
      # @see https://cloud.google.com/public-certificate-authority/docs
      class PublicCertificateAuthorityService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://publicca.googleapis.com/', '',
                client_name: 'google-apis-publicca_v1',
                client_version: Google::Apis::PubliccaV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a new ExternalAccountKey bound to the project.
        # @param [String] parent
        #   Required. The parent resource where this external_account_key will be created.
        #   Format: projects/[project_id]/locations/[location]. At present only the "
        #   global" location is supported.
        # @param [Google::Apis::PubliccaV1::ExternalAccountKey] external_account_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PubliccaV1::ExternalAccountKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PubliccaV1::ExternalAccountKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_external_account_key(parent, external_account_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/externalAccountKeys', options)
          command.request_representation = Google::Apis::PubliccaV1::ExternalAccountKey::Representation
          command.request_object = external_account_key_object
          command.response_representation = Google::Apis::PubliccaV1::ExternalAccountKey::Representation
          command.response_class = Google::Apis::PubliccaV1::ExternalAccountKey
          command.params['parent'] = parent unless parent.nil?
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
