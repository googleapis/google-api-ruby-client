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
    module SafebrowsingV5
      # Safe Browsing API
      #
      # Enables client applications to check web resources (most commonly URLs)
      #  against Google-generated lists of unsafe web resources. The Safe Browsing APIs
      #  are for non-commercial use only. If you need to use APIs to detect malicious
      #  URLs for commercial purposes – meaning “for sale or revenue-generating
      #  purposes” – please refer to the Web Risk API.
      #
      # @example
      #    require 'google/apis/safebrowsing_v5'
      #
      #    Safebrowsing = Google::Apis::SafebrowsingV5 # Alias the module
      #    service = Safebrowsing::SafebrowsingService.new
      #
      # @see https://developers.google.com/safe-browsing/
      class SafebrowsingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://safebrowsing.googleapis.com/', '',
                client_name: 'google-apis-safebrowsing_v5',
                client_version: Google::Apis::SafebrowsingV5::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Search for full hashes matching the specified prefixes. This is a custom
        # method as described by guidance at https://google.aip.dev/136
        # @param [Array<String>, String] hash_prefixes
        #   Required. The hash prefixes to be looked up.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_hashes(hash_prefixes: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v5/hashes:search', options)
          command.response_representation = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse::Representation
          command.response_class = Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5SearchHashesResponse
          command.query['hashPrefixes'] = hash_prefixes unless hash_prefixes.nil?
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
