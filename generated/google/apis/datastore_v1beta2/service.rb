# Copyright 2015 Google Inc.
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
    module DatastoreV1beta2
      # Google Cloud Datastore API
      #
      # API for accessing Google Cloud Datastore.
      #
      # @example
      #    require 'google/apis/datastore_v1beta2'
      #
      #    Datastore = Google::Apis::DatastoreV1beta2 # Alias the module
      #    service = Datastore::DatastoreService.new
      #
      # @see https://developers.google.com/datastore/
      class DatastoreService < Google::Apis::Core::BaseService

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', '/datastore/v1beta2/datasets/')
        end

        # Allocate IDs for incomplete keys (useful for referencing an entity before it
        # is inserted).
        # @param [Google::Apis::DatastoreV1beta2::AllocateIdsRequest] allocate_ids_request_obj
        #   
        # @param [String] dataset_id
        #   Identifies the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastoreV1beta2::AllocateIdsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastoreV1beta2::AllocateIdsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def allocate_ids(allocate_ids_request_obj, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{datasetId}/allocateIds'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DatastoreV1beta2::AllocateIdsRequestRepresentation
          command.request_object = allocate_ids_request_obj
          command.response_representation = Google::Apis::DatastoreV1beta2::AllocateIdsResponseRepresentation
          command.response_class = Google::Apis::DatastoreV1beta2::AllocateIdsResponse
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Begin a new transaction.
        # @param [Google::Apis::DatastoreV1beta2::BeginTransactionRequest] begin_transaction_request_obj
        #   
        # @param [String] dataset_id
        #   Identifies the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastoreV1beta2::BeginTransactionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastoreV1beta2::BeginTransactionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def begin_transaction(begin_transaction_request_obj, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{datasetId}/beginTransaction'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DatastoreV1beta2::BeginTransactionRequestRepresentation
          command.request_object = begin_transaction_request_obj
          command.response_representation = Google::Apis::DatastoreV1beta2::BeginTransactionResponseRepresentation
          command.response_class = Google::Apis::DatastoreV1beta2::BeginTransactionResponse
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Commit a transaction, optionally creating, deleting or modifying some entities.
        # @param [Google::Apis::DatastoreV1beta2::CommitRequest] commit_request_obj
        #   
        # @param [String] dataset_id
        #   Identifies the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastoreV1beta2::CommitResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastoreV1beta2::CommitResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_dataset(commit_request_obj, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{datasetId}/commit'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DatastoreV1beta2::CommitRequestRepresentation
          command.request_object = commit_request_obj
          command.response_representation = Google::Apis::DatastoreV1beta2::CommitResponseRepresentation
          command.response_class = Google::Apis::DatastoreV1beta2::CommitResponse
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Look up some entities by key.
        # @param [Google::Apis::DatastoreV1beta2::LookupRequest] lookup_request_obj
        #   
        # @param [String] dataset_id
        #   Identifies the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastoreV1beta2::LookupResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastoreV1beta2::LookupResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_dataset(lookup_request_obj, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{datasetId}/lookup'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DatastoreV1beta2::LookupRequestRepresentation
          command.request_object = lookup_request_obj
          command.response_representation = Google::Apis::DatastoreV1beta2::LookupResponseRepresentation
          command.response_class = Google::Apis::DatastoreV1beta2::LookupResponse
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Roll back a transaction.
        # @param [Google::Apis::DatastoreV1beta2::RollbackRequest] rollback_request_obj
        #   
        # @param [String] dataset_id
        #   Identifies the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastoreV1beta2::RollbackResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastoreV1beta2::RollbackResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_dataset(rollback_request_obj, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{datasetId}/rollback'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DatastoreV1beta2::RollbackRequestRepresentation
          command.request_object = rollback_request_obj
          command.response_representation = Google::Apis::DatastoreV1beta2::RollbackResponseRepresentation
          command.response_class = Google::Apis::DatastoreV1beta2::RollbackResponse
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Query for entities.
        # @param [Google::Apis::DatastoreV1beta2::RunQueryRequest] run_query_request_obj
        #   
        # @param [String] dataset_id
        #   Identifies the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatastoreV1beta2::RunQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatastoreV1beta2::RunQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_query(run_query_request_obj, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{datasetId}/runQuery'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DatastoreV1beta2::RunQueryRequestRepresentation
          command.request_object = run_query_request_obj
          command.response_representation = Google::Apis::DatastoreV1beta2::RunQueryResponseRepresentation
          command.response_class = Google::Apis::DatastoreV1beta2::RunQueryResponse
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
