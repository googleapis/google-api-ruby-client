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
    module ReaderrevenuesubscriptionlinkingV1
      # Reader Revenue Subscription Linking API
      #
      # readerrevenuesubscriptionlinking.googleapis.com API.
      #
      # @example
      #    require 'google/apis/readerrevenuesubscriptionlinking_v1'
      #
      #    Readerrevenuesubscriptionlinking = Google::Apis::ReaderrevenuesubscriptionlinkingV1 # Alias the module
      #    service = Readerrevenuesubscriptionlinking::SubscriptionLinkingService.new
      #
      # @see https://developers.google.com/news/subscribe/subscription-linking/overview
      class SubscriptionLinkingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://readerrevenuesubscriptionlinking.googleapis.com/', '',
                client_name: 'google-apis-readerrevenuesubscriptionlinking_v1',
                client_version: Google::Apis::ReaderrevenuesubscriptionlinkingV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Removes a publication reader, effectively severing the association with a
        # Google user. If `force` is set to true, any entitlements for this reader will
        # also be deleted. (Otherwise, the request will only work if the reader has no
        # entitlements.) - If the reader does not exist, return NOT_FOUND. - Return
        # FAILED_PRECONDITION if the force field is false (or unset) and entitlements
        # are present.
        # @param [String] name
        #   Required. The resource name of the reader. Format: publications/`
        #   publication_id`/readers/`ppid`
        # @param [Boolean] force
        #   If set to true, any entitlements under the reader will also be purged.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ReaderrevenuesubscriptionlinkingV1::DeleteReaderResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReaderrevenuesubscriptionlinkingV1::DeleteReaderResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_publication_reader(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ReaderrevenuesubscriptionlinkingV1::DeleteReaderResponse::Representation
          command.response_class = Google::Apis::ReaderrevenuesubscriptionlinkingV1::DeleteReaderResponse
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reader of a publication. Returns NOT_FOUND if the reader does not exist.
        # @param [String] name
        #   Required. The resource name of the reader. Format: publications/`
        #   publication_id`/readers/`ppid`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ReaderrevenuesubscriptionlinkingV1::Reader] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReaderrevenuesubscriptionlinkingV1::Reader]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_publication_reader(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ReaderrevenuesubscriptionlinkingV1::Reader::Representation
          command.response_class = Google::Apis::ReaderrevenuesubscriptionlinkingV1::Reader
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the reader entitlements for a publication reader. - Returns
        # PERMISSION_DENIED if the caller does not have access. - Returns NOT_FOUND if
        # the reader does not exist.
        # @param [String] name
        #   Required. The name of the reader entitlements to retrieve. Format:
        #   publications/`publication_id`/readers/`reader_id`/entitlements
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_publication_reader_entitlements(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements::Representation
          command.response_class = Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the reader entitlements for a publication reader. The entire reader
        # entitlements will be overwritten by the new reader entitlements in the payload,
        # like a PUT. - Returns PERMISSION_DENIED if the caller does not have access. -
        # Returns NOT_FOUND if the reader does not exist.
        # @param [String] name
        #   Output only. The resource name of the singleton.
        # @param [Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements] reader_entitlements_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. Defaults to all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_publication_reader_entitlements(name, reader_entitlements_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements::Representation
          command.request_object = reader_entitlements_object
          command.response_representation = Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements::Representation
          command.response_class = Google::Apis::ReaderrevenuesubscriptionlinkingV1::ReaderEntitlements
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
