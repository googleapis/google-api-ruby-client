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
    module PolicyanalyzerV1beta1
      # Policy Analyzer API
      #
      # 
      #
      # @example
      #    require 'google/apis/policyanalyzer_v1beta1'
      #
      #    Policyanalyzer = Google::Apis::PolicyanalyzerV1beta1 # Alias the module
      #    service = Policyanalyzer::PolicyAnalyzerService.new
      #
      # @see https://www.google.com
      class PolicyAnalyzerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://policyanalyzer.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-policyanalyzer_v1beta1',
                client_version: Google::Apis::PolicyanalyzerV1beta1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Queries policy activities on GCP resources.
        # @param [String] parent
        #   Required. The container resource on which to execute the request. Acceptable
        #   formats: `projects/[PROJECT_ID|PROJECT_NUMBER]/locations/[LOCATION]/
        #   activityTypes/[ACTIVITY_TYPE]` LOCATION here refers to GCP Locations: https://
        #   cloud.google.com/about/locations/
        # @param [String] filter
        #   Optional. Optional filter expression to restrict the activities returned.
        #   Supported filters are: - service_account_last_authn.full_resource_name `=` -
        #   service_account_key_last_authn.full_resource_name `=`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Max limit
        #   is 1000. Non-positive values are ignored. The presence of `nextPageToken` in
        #   the response indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. `pageToken` must be the value of `nextPageToken`
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PolicyanalyzerV1beta1::GoogleCloudPolicyanalyzerV1beta1QueryActivityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PolicyanalyzerV1beta1::GoogleCloudPolicyanalyzerV1beta1QueryActivityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_activity_type_activity(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/activities:query', options)
          command.response_representation = Google::Apis::PolicyanalyzerV1beta1::GoogleCloudPolicyanalyzerV1beta1QueryActivityResponse::Representation
          command.response_class = Google::Apis::PolicyanalyzerV1beta1::GoogleCloudPolicyanalyzerV1beta1QueryActivityResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
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
