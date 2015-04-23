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
    module CloudsearchV1
      # Google Cloud Search API
      #
      # The Google Cloud Search API defines an application interface to index
      #  documents that contain structured data and to search those indexes. It
      #  supports full text search.
      #
      # @example
      #    require 'google/apis/cloudsearch_v1'
      #
      #    Cloudsearch = Google::Apis::CloudsearchV1 # Alias the module
      #    service = Cloudsearch::CloudsearchService.new
      #
      # @see 
      class CloudsearchService < Google::Apis::Core::BaseService

        # @return [String]
        #  OAuth access token.
        attr_accessor :access_token

        # @return [String]
        #  OAuth bearer token.
        attr_accessor :bearer_token

        # @return [String]
        #  JSONP
        attr_accessor :callback

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [Boolean]
        #  Pretty-print response.
        attr_accessor :pp

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        # @return [String]
        #  V1 error format.
        attr_accessor :__xgafv

        def initialize
          super('https://cloudsearch.googleapis.com/', '')
        end

        protected

        def apply_command_defaults(command)
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['key'] = key unless key.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
        end
      end
    end
  end
end
