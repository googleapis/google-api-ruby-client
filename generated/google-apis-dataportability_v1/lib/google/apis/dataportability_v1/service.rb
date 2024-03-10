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
    module DataportabilityV1
      # Data Portability API
      #
      # The Data Portability API lets you build applications that request
      #  authorization from a user to move a copy of data from Google services into
      #  your application. This enables data portability and facilitates switching
      #  services.
      #
      # @example
      #    require 'google/apis/dataportability_v1'
      #
      #    Dataportability = Google::Apis::DataportabilityV1 # Alias the module
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
                client_name: 'google-apis-dataportability_v1',
                client_version: Google::Apis::DataportabilityV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves the state of an Archive job for the Portability API.
        # @param [String] name
        #   Required. The archive job ID that is returned when you request the state of
        #   the job. The format is: archiveJobs/`archive_job`/portabilityArchiveState.
        #   archive_job is the job ID returned by the InitiatePortabilityArchiveResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1::PortabilityArchiveState] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1::PortabilityArchiveState]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_archive_job_portability_archive_state(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DataportabilityV1::PortabilityArchiveState::Representation
          command.response_class = Google::Apis::DataportabilityV1::PortabilityArchiveState
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retries a failed Portability Archive job.
        # @param [String] name
        #   Required. The Archive job ID you're retrying. This is returned by the
        #   InitiatePortabilityArchiveResponse. Retrying is only executed if the initial
        #   job failed.
        # @param [Google::Apis::DataportabilityV1::RetryPortabilityArchiveRequest] retry_portability_archive_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1::RetryPortabilityArchiveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1::RetryPortabilityArchiveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retry_archive_job_portability_archive(name, retry_portability_archive_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:retry', options)
          command.request_representation = Google::Apis::DataportabilityV1::RetryPortabilityArchiveRequest::Representation
          command.request_object = retry_portability_archive_request_object
          command.response_representation = Google::Apis::DataportabilityV1::RetryPortabilityArchiveResponse::Representation
          command.response_class = Google::Apis::DataportabilityV1::RetryPortabilityArchiveResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Revokes OAuth tokens and resets exhausted scopes for a user/project pair. This
        # method allows you to initiate a request after a new consent is granted. This
        # method also indicates that previous archives can be garbage collected. You
        # should call this method when all jobs are complete and all archives are
        # downloaded. Do not call it only when you start a new job.
        # @param [Google::Apis::DataportabilityV1::ResetAuthorizationRequest] reset_authorization_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_authorization(reset_authorization_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/authorization:reset', options)
          command.request_representation = Google::Apis::DataportabilityV1::ResetAuthorizationRequest::Representation
          command.request_object = reset_authorization_request_object
          command.response_representation = Google::Apis::DataportabilityV1::Empty::Representation
          command.response_class = Google::Apis::DataportabilityV1::Empty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a new Archive job for the Portability API.
        # @param [Google::Apis::DataportabilityV1::InitiatePortabilityArchiveRequest] initiate_portability_archive_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataportabilityV1::InitiatePortabilityArchiveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataportabilityV1::InitiatePortabilityArchiveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initiate_portability_archive(initiate_portability_archive_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/portabilityArchive:initiate', options)
          command.request_representation = Google::Apis::DataportabilityV1::InitiatePortabilityArchiveRequest::Representation
          command.request_object = initiate_portability_archive_request_object
          command.response_representation = Google::Apis::DataportabilityV1::InitiatePortabilityArchiveResponse::Representation
          command.response_class = Google::Apis::DataportabilityV1::InitiatePortabilityArchiveResponse
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
