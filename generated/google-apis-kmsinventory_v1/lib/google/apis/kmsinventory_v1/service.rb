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
    module KmsinventoryV1
      # KMS Inventory API
      #
      # 
      #
      # @example
      #    require 'google/apis/kmsinventory_v1'
      #
      #    Kmsinventory = Google::Apis::KmsinventoryV1 # Alias the module
      #    service = Kmsinventory::KmsinventoryService.new
      #
      # @see https://cloud.google.com/kms/
      class KmsinventoryService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://kmsinventory.googleapis.com/', '',
                client_name: 'google-apis-kmsinventory_v1',
                client_version: Google::Apis::KmsinventoryV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns metadata about the resources protected by the given Cloud KMS
        # CryptoKey in the given Cloud organization.
        # @param [String] scope
        #   Required. Resource name of the organization. Example: organizations/123
        # @param [String] crypto_key
        #   Required. The resource name of the CryptoKey.
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value. If unspecified, at most 500 resources will be returned. The
        #   maximum value is 500; values above 500 will be coerced to 500.
        # @param [String] page_token
        #   A page token, received from a previous KeyTrackingService.
        #   SearchProtectedResources call. Provide this to retrieve the subsequent page.
        #   When paginating, all other parameters provided to KeyTrackingService.
        #   SearchProtectedResources must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_organization_protected_resources(scope, crypto_key: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+scope}/protectedResources:search', options)
          command.response_representation = Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse::Representation
          command.response_class = Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1SearchProtectedResourcesResponse
          command.params['scope'] = scope unless scope.nil?
          command.query['cryptoKey'] = crypto_key unless crypto_key.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns cryptographic keys managed by Cloud KMS in a given Cloud project. Note
        # that this data is sourced from snapshots, meaning it may not completely
        # reflect the actual state of key metadata at call time.
        # @param [String] parent
        #   Required. The Google Cloud project for which to retrieve key metadata, in the
        #   format `projects/*`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of keys to return. The service may return fewer
        #   than this value. If unspecified, at most 1000 keys will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. Pass this into a subsequent request in order to receive the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ListCryptoKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ListCryptoKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_crypto_keys(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/cryptoKeys', options)
          command.response_representation = Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ListCryptoKeysResponse::Representation
          command.response_class = Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ListCryptoKeysResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns aggregate information about the resources protected by the given Cloud
        # KMS CryptoKey. Only resources within the same Cloud organization as the key
        # will be returned. The project that holds the key must be part of an
        # organization in order for this call to succeed.
        # @param [String] name
        #   Required. The resource name of the CryptoKey.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResourcesSummary] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResourcesSummary]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_key_ring_crypto_key_protected_resources_summary(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/protectedResourcesSummary', options)
          command.response_representation = Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResourcesSummary::Representation
          command.response_class = Google::Apis::KmsinventoryV1::GoogleCloudKmsInventoryV1ProtectedResourcesSummary
          command.params['name'] = name unless name.nil?
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
