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
    module DataportabilityV1beta
      # Data Portability API
      #
      # The Data Portability API lets you build applications that request
      #  authorization from a user to move a copy of data from Google services into
      #  your application. This enables data portability and facilitates switching
      #  services.
      #
      # @example
      #    require 'google/apis/dataportability_v1beta'
      #
      #    Dataportability = Google::Apis::DataportabilityV1beta # Alias the module
      #    service = Dataportability::DataPortabilityService.new
      #
      # @see https://developers.google.com/data-portability
      class DataPortabilityService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://dataportability.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-dataportability_v1beta',
                client_version: Google::Apis::DataportabilityV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves the state of a Takeout Archive job for the Portability API.
        # @param [String] name
        #   Required. The archive job ID that is returned when you request the state of
        #   the job from Takeout. The format is: archiveJobs/`archive_job`/
        #   portabilityArchiveState. archive_job is the job ID returned by the
        #   InitiatePortabilityArchiveResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1beta::PortabilityArchiveState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1beta::PortabilityArchiveState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_archive_job_portability_archive_state(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::DataportabilityV1beta::PortabilityArchiveState::Representation
          command.response_class = Google::Apis::DataportabilityV1beta::PortabilityArchiveState
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retries a failed Portability Archive job.
        # @param [String] name
        #   Required. The archive job ID returned by the
        #   InitiatePortabilityArchiveResponse to be retried. Retrying is only executed if
        #   the initial job failed.
        # @param [Google::Apis::DataportabilityV1beta::RetryPortabilityArchiveRequest] retry_portability_archive_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1beta::RetryPortabilityArchiveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1beta::RetryPortabilityArchiveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retry_archive_job_portability_archive(name, retry_portability_archive_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:retry', options)
          command.request_representation = Google::Apis::DataportabilityV1beta::RetryPortabilityArchiveRequest::Representation
          command.request_object = retry_portability_archive_request_object
          command.response_representation = Google::Apis::DataportabilityV1beta::RetryPortabilityArchiveResponse::Representation
          command.response_class = Google::Apis::DataportabilityV1beta::RetryPortabilityArchiveResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Revokes OAuth tokens and resets exhausted scopes for a user/project pair. This
        # method allows you to initiate a Takeout request after a new consent is granted.
        # This method also indicates that previous archives can be garbage collected.
        # You should call this method when all jobs are complete and all archives are
        # downloaded. Do not call it only when you start a new job.
        # @param [Google::Apis::DataportabilityV1beta::ResetAuthorizationRequest] reset_authorization_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_authorization(reset_authorization_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/authorization:reset', options)
          command.request_representation = Google::Apis::DataportabilityV1beta::ResetAuthorizationRequest::Representation
          command.request_object = reset_authorization_request_object
          command.response_representation = Google::Apis::DataportabilityV1beta::Empty::Representation
          command.response_class = Google::Apis::DataportabilityV1beta::Empty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a new Takeout Archive job for the Portability API.
        # @param [Google::Apis::DataportabilityV1beta::InitiatePortabilityArchiveRequest] initiate_portability_archive_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1beta::InitiatePortabilityArchiveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1beta::InitiatePortabilityArchiveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initiate_portability_archive(initiate_portability_archive_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/portabilityArchive:initiate', options)
          command.request_representation = Google::Apis::DataportabilityV1beta::InitiatePortabilityArchiveRequest::Representation
          command.request_object = initiate_portability_archive_request_object
          command.response_representation = Google::Apis::DataportabilityV1beta::InitiatePortabilityArchiveResponse::Representation
          command.response_class = Google::Apis::DataportabilityV1beta::InitiatePortabilityArchiveResponse
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
