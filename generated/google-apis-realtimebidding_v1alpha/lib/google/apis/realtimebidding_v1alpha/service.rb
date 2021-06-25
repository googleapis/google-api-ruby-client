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
    module RealtimebiddingV1alpha
      # Real-time Bidding API
      #
      # Allows external bidders to manage their RTB integration with Google. This
      #  includes managing bidder endpoints, QPS quotas, configuring what ad inventory
      #  to receive via pretargeting, submitting creatives for verification, and
      #  accessing creative metadata such as approval status.
      #
      # @example
      #    require 'google/apis/realtimebidding_v1alpha'
      #
      #    Realtimebidding = Google::Apis::RealtimebiddingV1alpha # Alias the module
      #    service = Realtimebidding::RealtimeBiddingService.new
      #
      # @see https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/
      class RealtimeBiddingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://realtimebidding.googleapis.com/', '',
                client_name: 'google-apis-realtimebidding_v1alpha',
                client_version: Google::Apis::RealtimebiddingV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Activates an existing bidding function. An activated function is available for
        # invocation for the server-side TURTLEDOVE simulations.
        # @param [String] name
        #   Required. The name of the bidding function to activate. Format: `bidders/`
        #   bidder_account_id`/biddingFunction/`bidding_function_name``
        # @param [Google::Apis::RealtimebiddingV1alpha::ActivateBiddingFunctionRequest] activate_bidding_function_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1alpha::BiddingFunction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1alpha::BiddingFunction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_bidding_function(name, activate_bidding_function_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:activate', options)
          command.request_representation = Google::Apis::RealtimebiddingV1alpha::ActivateBiddingFunctionRequest::Representation
          command.request_object = activate_bidding_function_request_object
          command.response_representation = Google::Apis::RealtimebiddingV1alpha::BiddingFunction::Representation
          command.response_class = Google::Apis::RealtimebiddingV1alpha::BiddingFunction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives an existing bidding function. An archived function will not be
        # available for function invocation for the server-side TURTLEDOVE simulations
        # unless it is activated.
        # @param [String] name
        #   Required. The name of the bidding function to archive. Format: `bidders/`
        #   bidder_account_id`/biddingFunction/`bidding_function_name``
        # @param [Google::Apis::RealtimebiddingV1alpha::ArchiveBiddingFunctionRequest] archive_bidding_function_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1alpha::BiddingFunction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1alpha::BiddingFunction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_bidding_function(name, archive_bidding_function_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:archive', options)
          command.request_representation = Google::Apis::RealtimebiddingV1alpha::ArchiveBiddingFunctionRequest::Representation
          command.request_object = archive_bidding_function_request_object
          command.response_representation = Google::Apis::RealtimebiddingV1alpha::BiddingFunction::Representation
          command.response_class = Google::Apis::RealtimebiddingV1alpha::BiddingFunction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new bidding function.
        # @param [String] parent
        #   Required. The name of the bidder for which to create the bidding function.
        #   Format: `bidders/`bidderAccountId``
        # @param [Google::Apis::RealtimebiddingV1alpha::BiddingFunction] bidding_function_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1alpha::BiddingFunction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1alpha::BiddingFunction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_bidder_bidding_function(parent, bidding_function_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/biddingFunctions', options)
          command.request_representation = Google::Apis::RealtimebiddingV1alpha::BiddingFunction::Representation
          command.request_object = bidding_function_object
          command.response_representation = Google::Apis::RealtimebiddingV1alpha::BiddingFunction::Representation
          command.response_class = Google::Apis::RealtimebiddingV1alpha::BiddingFunction
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the bidding functions that a bidder currently has registered.
        # @param [String] parent
        #   Required. Name of the bidder whose bidding functions will be listed. Format: `
        #   bidders/`bidder_account_id``
        # @param [Fixnum] page_size
        #   The maximum number of bidding functions to return.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. This value is
        #   received from a previous `ListBiddingFunctions` call in
        #   ListBiddingFunctionsResponse.nextPageToken.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1alpha::ListBiddingFunctionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1alpha::ListBiddingFunctionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_bidder_bidding_functions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/biddingFunctions', options)
          command.response_representation = Google::Apis::RealtimebiddingV1alpha::ListBiddingFunctionsResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1alpha::ListBiddingFunctionsResponse
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
