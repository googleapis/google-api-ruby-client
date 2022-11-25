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
    module MybusinessbusinesscallsV1
      # My Business Business Calls API
      #
      # The My Business Business Calls API manages business calls information of a
      #  location on Google and collect insights like the number of missed calls to
      #  their location. Additional information about Business calls can be found at
      #  https://support.google.com/business/answer/9688285?p=call_history. If the
      #  Google Business Profile links to a Google Ads account and call history is
      #  turned on, calls that last longer than a specific time, and that can be
      #  attributed to an ad interaction, will show in the linked Google Ads account
      #  under the "Calls from Ads" conversion. If smart bidding and call conversions
      #  are used in the optimization strategy, there could be a change in ad spend.
      #  Learn more about smart bidding. To view and perform actions on a location's
      #  calls, you need to be a `OWNER`, `CO_OWNER` or `MANAGER` of the location. Note
      #  - If you have a quota of 0 after enabling the API, please request for GBP API
      #  access.
      #
      # @example
      #    require 'google/apis/mybusinessbusinesscalls_v1'
      #
      #    Mybusinessbusinesscalls = Google::Apis::MybusinessbusinesscallsV1 # Alias the module
      #    service = Mybusinessbusinesscalls::MyBusinessBusinessCallsService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessBusinessCallsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinessbusinesscalls.googleapis.com/', '',
                client_name: 'google-apis-mybusinessbusinesscalls_v1',
                client_version: Google::Apis::MybusinessbusinesscallsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns the Business calls settings resource for the given location.
        # @param [String] name
        #   Required. The BusinessCallsSettings to get. The `name` field is used to
        #   identify the business call settings to get. Format: locations/`location_id`/
        #   businesscallssettings.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_businesscallssettings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings::Representation
          command.response_class = Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Business call settings for the specified location.
        # @param [String] name
        #   Required. The resource name of the calls settings. Format: locations/`location`
        #   /businesscallssettings
        # @param [Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings] business_calls_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_location_businesscallssettings(name, business_calls_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings::Representation
          command.request_object = business_calls_settings_object
          command.response_representation = Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings::Representation
          command.response_class = Google::Apis::MybusinessbusinesscallsV1::BusinessCallsSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns insights for Business calls for a location.
        # @param [String] parent
        #   Required. The parent location to fetch calls insights for. Format: locations/`
        #   location_id`
        # @param [String] filter
        #   Optional. A filter constraining the calls insights to return. The response
        #   includes only entries that match the filter. If the MetricType is not provided,
        #   AGGREGATE_COUNT is returned. If no end_date is provided, the last date for
        #   which data is available is used. If no start_date is provided, we will default
        #   to the first date for which data is available, which is currently 6 months. If
        #   start_date is before the date when data is available, data is returned
        #   starting from the date when it is available. At this time we support following
        #   filters. 1. start_date="DATE" where date is in YYYY-MM-DD format. 2. end_date="
        #   DATE" where date is in YYYY-MM-DD format. 3. metric_type=XYZ where XYZ is a
        #   valid MetricType. 4. Conjunctions(AND) of all of the above. e.g., "start_date=
        #   2021-08-01 AND end_date=2021-08-10 AND metric_type=AGGREGATE_COUNT" The
        #   AGGREGATE_COUNT metric_type ignores the DD part of the date.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of BusinessCallsInsights to return. If
        #   unspecified, at most 20 will be returned. Some of the metric_types(e.g,
        #   AGGREGATE_COUNT) returns a single page. For these metrics, the page_size is
        #   ignored.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListBusinessCallsInsights`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListBusinessCallsInsights` must match the call that
        #   provided the page token. Some of the metric_types (e.g, AGGREGATE_COUNT)
        #   returns a single page. For these metrics, the pake_token is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinesscallsV1::ListBusinessCallsInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinesscallsV1::ListBusinessCallsInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_businesscallsinsights(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/businesscallsinsights', options)
          command.response_representation = Google::Apis::MybusinessbusinesscallsV1::ListBusinessCallsInsightsResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinesscallsV1::ListBusinessCallsInsightsResponse
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
