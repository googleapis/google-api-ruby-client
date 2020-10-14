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
    module LocalservicesV1
      # Local Services API
      #
      # 
      #
      # @example
      #    require 'google/apis/localservices_v1'
      #
      #    Localservices = Google::Apis::LocalservicesV1 # Alias the module
      #    service = Localservices::LocalservicesService.new
      #
      # @see https://ads.google.com/local-services-ads/
      class LocalservicesService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://localservices.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Get account reports containing aggregate account data of all linked GLS
        # accounts. Caller needs to provide their manager customer id and the associated
        # auth credential that allows them read permissions on their linked accounts.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] page_size
        #   The maximum number of accounts to return. If the page size is unset, page size
        #   will default to 1000. Maximum page_size is 10000. Optional.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous request to
        #   SearchAccountReports that indicates where listing should continue. Optional.
        # @param [String] query
        #   A query string for searching for account reports. Caller must provide a
        #   customer id of their MCC account with an associated Gaia Mint that allows read
        #   permission on their linked accounts. Search expressions are case insensitive.
        #   Example query: | Query | Description | |-------------------------|-------------
        #   ----------------------------------| | manager_customer_id:123 | Get Account
        #   Report for Manager with id 123. | Required.
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_account_reports(end_date_day: nil, end_date_month: nil, end_date_year: nil, page_size: nil, page_token: nil, query: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/accountReports:search', options)
          command.response_representation = Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse::Representation
          command.response_class = Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchAccountReportsResponse
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get detailed lead reports containing leads that have been received by all
        # linked GLS accounts. Caller needs to provide their manager customer id and the
        # associated auth credential that allows them read permissions on their linked
        # accounts.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] page_size
        #   The maximum number of accounts to return. If the page size is unset, page size
        #   will default to 1000. Maximum page_size is 10000. Optional.
        # @param [String] page_token
        #   The `next_page_token` value returned from a previous request to
        #   SearchDetailedLeadReports that indicates where listing should continue.
        #   Optional.
        # @param [String] query
        #   A query string for searching for account reports. Caller must provide a
        #   customer id of their MCC account with an associated Gaia Mint that allows read
        #   permission on their linked accounts. Search expressions are case insensitive.
        #   Example query: | Query | Description | |-------------------------|-------------
        #   ----------------------------------| | manager_customer_id:123 | Get Detailed
        #   Lead Report for Manager with id | | | 123. | Required.
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_detailed_lead_reports(end_date_day: nil, end_date_month: nil, end_date_year: nil, page_size: nil, page_token: nil, query: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/detailedLeadReports:search', options)
          command.response_representation = Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse::Representation
          command.response_class = Google::Apis::LocalservicesV1::GoogleAdsHomeservicesLocalservicesV1SearchDetailedLeadReportsResponse
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
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
