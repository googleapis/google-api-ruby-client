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
    module AcceleratedmobilepageurlV1
      # Accelerated Mobile Pages (AMP) URL API
      #
      # Retrieves the list of AMP URLs (and equivalent AMP Cache URLs) for a given
      #  list of public URL(s).
      #
      # @example
      #    require 'google/apis/acceleratedmobilepageurl_v1'
      #
      #    Acceleratedmobilepageurl = Google::Apis::AcceleratedmobilepageurlV1 # Alias the module
      #    service = Acceleratedmobilepageurl::AcceleratedmobilepageurlService.new
      #
      # @see https://developers.google.com/amp/cache/
      class AcceleratedmobilepageurlService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://acceleratedmobilepageurl.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns AMP URL(s) and equivalent [AMP Cache URL(s)](/amp/cache/overview#amp-
        # cache-url-format).
        # @param [Google::Apis::AcceleratedmobilepageurlV1::BatchGetAmpUrlsRequest] batch_get_amp_urls_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AcceleratedmobilepageurlV1::BatchGetAmpUrlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AcceleratedmobilepageurlV1::BatchGetAmpUrlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_get_amp_urls(batch_get_amp_urls_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/ampUrls:batchGet', options)
          command.request_representation = Google::Apis::AcceleratedmobilepageurlV1::BatchGetAmpUrlsRequest::Representation
          command.request_object = batch_get_amp_urls_request_object
          command.response_representation = Google::Apis::AcceleratedmobilepageurlV1::BatchGetAmpUrlsResponse::Representation
          command.response_class = Google::Apis::AcceleratedmobilepageurlV1::BatchGetAmpUrlsResponse
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
