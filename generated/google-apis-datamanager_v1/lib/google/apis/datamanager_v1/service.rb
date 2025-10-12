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
    module DatamanagerV1
      # Data Manager API
      #
      # A unified ingestion API for data partners, agencies and advertisers to connect
      #  first-party data across Google advertising products.
      #
      # @example
      #    require 'google/apis/datamanager_v1'
      #
      #    Datamanager = Google::Apis::DatamanagerV1 # Alias the module
      #    service = Datamanager::DataManagerService.new
      #
      # @see https://developers.google.com/data-manager
      class DataManagerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://datamanager.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-datamanager_v1',
                client_version: Google::Apis::DatamanagerV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Uploads a list of AudienceMember resources to the provided Destination.
        # @param [Google::Apis::DatamanagerV1::IngestAudienceMembersRequest] ingest_audience_members_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::IngestAudienceMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::IngestAudienceMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_audience_members(ingest_audience_members_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/audienceMembers:ingest', options)
          command.request_representation = Google::Apis::DatamanagerV1::IngestAudienceMembersRequest::Representation
          command.request_object = ingest_audience_members_request_object
          command.response_representation = Google::Apis::DatamanagerV1::IngestAudienceMembersResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::IngestAudienceMembersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a list of AudienceMember resources from the provided Destination.
        # @param [Google::Apis::DatamanagerV1::RemoveAudienceMembersRequest] remove_audience_members_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_audience_members(remove_audience_members_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/audienceMembers:remove', options)
          command.request_representation = Google::Apis::DatamanagerV1::RemoveAudienceMembersRequest::Representation
          command.request_object = remove_audience_members_request_object
          command.response_representation = Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a list of Event resources from the provided Destination.
        # @param [Google::Apis::DatamanagerV1::IngestEventsRequest] ingest_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::IngestEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::IngestEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_events(ingest_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/events:ingest', options)
          command.request_representation = Google::Apis::DatamanagerV1::IngestEventsRequest::Representation
          command.request_object = ingest_events_request_object
          command.response_representation = Google::Apis::DatamanagerV1::IngestEventsResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::IngestEventsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a request given request id.
        # @param [String] request_id
        #   Required. Required. The request ID of the Data Manager API request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_request_status(request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/requestStatus:retrieve', options)
          command.response_representation = Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse
          command.query['requestId'] = request_id unless request_id.nil?
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
