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
    module WebfontsV1
      # Web Fonts Developer API
      #
      # The Google Web Fonts Developer API lets you retrieve information about web
      #  fonts served by Google.
      #
      # @example
      #    require 'google/apis/webfonts_v1'
      #
      #    Webfonts = Google::Apis::WebfontsV1 # Alias the module
      #    service = Webfonts::WebfontsService.new
      #
      # @see https://developers.google.com/fonts/docs/developer_api
      class WebfontsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://webfonts.googleapis.com/', '',
                client_name: 'google-apis-webfonts_v1',
                client_version: Google::Apis::WebfontsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves the list of fonts currently served by the Google Fonts Developer API.
        # @param [Array<String>, String] capability
        #   Controls the font urls in `Webfont.files`, by default, static ttf fonts are
        #   sent.
        # @param [Array<String>, String] family
        #   Filters by Webfont.family, using literal match. If not set, returns all
        #   families
        # @param [String] sort
        #   Enables sorting of the list.
        # @param [String] subset
        #   Filters by Webfont.subset, if subset is found in Webfont.subsets. If not set,
        #   returns all families.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebfontsV1::WebfontList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebfontsV1::WebfontList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_webfonts(capability: nil, family: nil, sort: nil, subset: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/webfonts', options)
          command.response_representation = Google::Apis::WebfontsV1::WebfontList::Representation
          command.response_class = Google::Apis::WebfontsV1::WebfontList
          command.query['capability'] = capability unless capability.nil?
          command.query['family'] = family unless family.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['subset'] = subset unless subset.nil?
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
