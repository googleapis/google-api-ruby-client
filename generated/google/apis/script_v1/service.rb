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
    module ScriptV1
      # Google Apps Script Execution API
      #
      # An API for managing and executing Google Apps Script projects.
      #
      # @example
      #    require 'google/apis/script_v1'
      #
      #    Script = Google::Apis::ScriptV1 # Alias the module
      #    service = Script::ScriptService.new
      #
      # @see https://developers.google.com/apps-script/execution/rest/v1/scripts/run
      class ScriptService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://script.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Runs a function in an Apps Script project. The project must be deployed
        # for use with the Apps Script Execution API.
        # This method requires authorization with an OAuth 2.0 token that includes at
        # least one of the scopes listed in the [Authorization](#authorization)
        # section; script projects that do not require authorization cannot be
        # executed through this API. To find the correct scopes to include in the
        # authentication token, open the project in the script editor, then select
        # **File > Project properties** and click the **Scopes** tab.
        # @param [String] script_id
        #   The script ID of the script to be executed. To find the script ID, open
        #   the project in the script editor and select **File > Project properties**.
        # @param [Google::Apis::ScriptV1::ExecutionRequest] execution_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ScriptV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ScriptV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_script(script_id, execution_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/scripts/{scriptId}:run', options)
          command.request_representation = Google::Apis::ScriptV1::ExecutionRequest::Representation
          command.request_object = execution_request_object
          command.response_representation = Google::Apis::ScriptV1::Operation::Representation
          command.response_class = Google::Apis::ScriptV1::Operation
          command.params['scriptId'] = script_id unless script_id.nil?
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
