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
    module ChromewebstoreV1_1
      # Chrome Web Store API
      #
      # The Chrome Web Store API provides access to data about apps and extensions, as
      #  well as developer tools for managing them.
      #
      # @example
      #    require 'google/apis/chromewebstore_v1_1'
      #
      #    Chromewebstore = Google::Apis::ChromewebstoreV1_1 # Alias the module
      #    service = Chromewebstore::ChromewebstoreService.new
      #
      # @see https://developer.chrome.com/docs/webstore/api
      class ChromewebstoreService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://chromewebstore.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-chromewebstore_v1_1',
                client_version: Google::Apis::ChromewebstoreV1_1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets your own Chrome Web Store item.
        # @param [String] item_id
        #   Unique identifier representing the Chrome App, Chrome Extension, or the Chrome
        #   Theme.
        # @param [String] projection
        #   Determines which subset of the item information to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV1_1::Item] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV1_1::Item]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_item(item_id, projection: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'chromewebstore/v1.1/items/{itemId}', options)
          command.response_representation = Google::Apis::ChromewebstoreV1_1::Item::Representation
          command.response_class = Google::Apis::ChromewebstoreV1_1::Item
          command.params['itemId'] = item_id unless item_id.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new item.
        # @param [String] publisher_email
        #   The email of the publisher who owns the items. Defaults to the caller's email
        #   address.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV1_1::Item] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV1_1::Item]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_item(publisher_email: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'chromewebstore/v1.1/items', options)
          else
            command = make_upload_command(:post, 'chromewebstore/v1.1/items', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::ChromewebstoreV1_1::Item::Representation
          command.response_class = Google::Apis::ChromewebstoreV1_1::Item
          command.query['publisherEmail'] = publisher_email unless publisher_email.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publishes an item.
        # @param [String] item_id
        #   The ID of the item to publish.
        # @param [Google::Apis::ChromewebstoreV1_1::PublishRequest] publish_request_object
        # @param [Fixnum] deploy_percentage
        #   The deploy percentage you want to set for your item. Valid values are [0, 100].
        #   If set to any number less than 100, only that many percentage of users will
        #   be allowed to get the update.
        # @param [String] publish_target
        #   Provide defined publishTarget in URL (case sensitive): publishTarget="
        #   trustedTesters" or publishTarget="default". Defaults to publishTarget="default"
        #   .
        # @param [Boolean] review_exemption
        #   Optional. The caller request to exempt the review and directly publish because
        #   the update is within the list that we can automatically validate. The API will
        #   check if the exemption can be granted using real time data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV1_1::Item2] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV1_1::Item2]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_item(item_id, publish_request_object = nil, deploy_percentage: nil, publish_target: nil, review_exemption: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'chromewebstore/v1.1/items/{itemId}/publish', options)
          command.request_representation = Google::Apis::ChromewebstoreV1_1::PublishRequest::Representation
          command.request_object = publish_request_object
          command.response_representation = Google::Apis::ChromewebstoreV1_1::Item2::Representation
          command.response_class = Google::Apis::ChromewebstoreV1_1::Item2
          command.params['itemId'] = item_id unless item_id.nil?
          command.query['deployPercentage'] = deploy_percentage unless deploy_percentage.nil?
          command.query['publishTarget'] = publish_target unless publish_target.nil?
          command.query['reviewExemption'] = review_exemption unless review_exemption.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing item.
        # @param [String] item_id
        #   The ID of the item to upload.
        # @param [Google::Apis::ChromewebstoreV1_1::Item] item_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromewebstoreV1_1::Item] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromewebstoreV1_1::Item]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_item(item_id, item_object = nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:put, 'chromewebstore/v1.1/items/{itemId}', options)
          else
            command = make_upload_command(:put, 'chromewebstore/v1.1/items/{itemId}', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::ChromewebstoreV1_1::Item::Representation
          command.request_object = item_object
          command.response_representation = Google::Apis::ChromewebstoreV1_1::Item::Representation
          command.response_class = Google::Apis::ChromewebstoreV1_1::Item
          command.params['itemId'] = item_id unless item_id.nil?
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
