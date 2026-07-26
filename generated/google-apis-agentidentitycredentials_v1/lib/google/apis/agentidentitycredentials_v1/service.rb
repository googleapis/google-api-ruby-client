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
    module AgentidentitycredentialsV1
      # Agent Identity Credentials API
      #
      # agentidentitycredentials.googleapis.com API.
      #
      # @example
      #    require 'google/apis/agentidentitycredentials_v1'
      #
      #    Agentidentitycredentials = Google::Apis::AgentidentitycredentialsV1 # Alias the module
      #    service = Agentidentitycredentials::AgentIdentityCredentialsService.new
      #
      # @see https://cloud.google.com/iam/docs/
      class AgentIdentityCredentialsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://agentidentitycredentials.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-agentidentitycredentials_v1',
                client_version: Google::Apis::AgentidentitycredentialsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Finalizes the credentials after a successful consent flow.
        # @param [String] auth_provider
        #   Required. The resource name of the AuthProvider. Format: `projects/`project`/
        #   locations/`location`/authProviders/`auth_provider``
        # @param [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest] google_cloud_agentidentitycredentials_v1_finalize_credentials_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_project_location_auth_provider_credential(auth_provider, google_cloud_agentidentitycredentials_v1_finalize_credentials_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+authProvider}/credentials:finalize', options)
          command.request_representation = Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsRequest::Representation
          command.request_object = google_cloud_agentidentitycredentials_v1_finalize_credentials_request_object
          command.response_representation = Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse::Representation
          command.response_class = Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1FinalizeCredentialsResponse
          command.params['authProvider'] = auth_provider unless auth_provider.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves authorization credentials for an authprovider, or indicates what
        # action needs to be taken to obtain credentials. If the `token` field in the
        # response is populated, credential retrieval was successful. If one of the
        # fields in the `status` oneof is populated, further action is required to
        # obtain credentials, such as redirecting the user for consent. View comments on
        # `RetrieveCredentialsResponse` for more information.
        # @param [String] auth_provider
        #   Required. The parent resource name of the AuthProvider. Format: `projects/`
        #   project`/locations/`location`/authProviders/`auth_provider``
        # @param [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest] google_cloud_agentidentitycredentials_v1_retrieve_credentials_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_project_location_auth_provider_credential(auth_provider, google_cloud_agentidentitycredentials_v1_retrieve_credentials_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+authProvider}/credentials:retrieve', options)
          command.request_representation = Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsRequest::Representation
          command.request_object = google_cloud_agentidentitycredentials_v1_retrieve_credentials_request_object
          command.response_representation = Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse::Representation
          command.response_class = Google::Apis::AgentidentitycredentialsV1::GoogleCloudAgentidentitycredentialsV1RetrieveCredentialsResponse
          command.params['authProvider'] = auth_provider unless auth_provider.nil?
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
