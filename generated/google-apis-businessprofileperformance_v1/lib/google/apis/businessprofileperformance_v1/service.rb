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
    module BusinessprofileperformanceV1
      # Business Profile Performance API
      #
      # The Business Profile Performance API allows merchants to fetch performance
      #  reports about their business profile on Google. Note - If you have a quota of
      #  0 after enabling the API, please request for GBP API access.
      #
      # @example
      #    require 'google/apis/businessprofileperformance_v1'
      #
      #    Businessprofileperformance = Google::Apis::BusinessprofileperformanceV1 # Alias the module
      #    service = Businessprofileperformance::BusinessProfilePerformanceService.new
      #
      # @see https://developers.google.com/my-business/
      class BusinessProfilePerformanceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://businessprofileperformance.googleapis.com/', '',
                client_name: 'google-apis-businessprofileperformance_v1',
                client_version: Google::Apis::BusinessprofileperformanceV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns the values for each date from a given time range and optionally the
        # sub entity type, where applicable, that are associated with the specific daily
        # metrics. Example request: `GET https://businessprofileperformance.googleapis.
        # com/v1/locations/12345:fetchMultiDailyMetricsTimeSeries?dailyMetrics=
        # WEBSITE_CLICKS&dailyMetrics=CALL_CLICKS&daily_range.start_date.year=2022&
        # daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.
        # end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`
        # @param [String] location
        #   Required. The location for which the time series should be fetched. Format:
        #   locations/`location_id` where location_id is an unobfuscated listing id.
        # @param [Array<String>, String] daily_metrics
        #   Required. The metrics to retrieve time series for.
        # @param [Fixnum] daily_range_end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] daily_range_end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] daily_range_end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] daily_range_start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] daily_range_start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] daily_range_start_date_year
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
        # @yieldparam result [Google::Apis::BusinessprofileperformanceV1::FetchMultiDailyMetricsTimeSeriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BusinessprofileperformanceV1::FetchMultiDailyMetricsTimeSeriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_location_multi_daily_metrics_time_series(location, daily_metrics: nil, daily_range_end_date_day: nil, daily_range_end_date_month: nil, daily_range_end_date_year: nil, daily_range_start_date_day: nil, daily_range_start_date_month: nil, daily_range_start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+location}:fetchMultiDailyMetricsTimeSeries', options)
          command.response_representation = Google::Apis::BusinessprofileperformanceV1::FetchMultiDailyMetricsTimeSeriesResponse::Representation
          command.response_class = Google::Apis::BusinessprofileperformanceV1::FetchMultiDailyMetricsTimeSeriesResponse
          command.params['location'] = location unless location.nil?
          command.query['dailyMetrics'] = daily_metrics unless daily_metrics.nil?
          command.query['dailyRange.endDate.day'] = daily_range_end_date_day unless daily_range_end_date_day.nil?
          command.query['dailyRange.endDate.month'] = daily_range_end_date_month unless daily_range_end_date_month.nil?
          command.query['dailyRange.endDate.year'] = daily_range_end_date_year unless daily_range_end_date_year.nil?
          command.query['dailyRange.startDate.day'] = daily_range_start_date_day unless daily_range_start_date_day.nil?
          command.query['dailyRange.startDate.month'] = daily_range_start_date_month unless daily_range_start_date_month.nil?
          command.query['dailyRange.startDate.year'] = daily_range_start_date_year unless daily_range_start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the values for each date from a given time range that are associated
        # with the specific daily metric. Example request: `GET https://
        # businessprofileperformance.googleapis.com/v1/locations/12345:
        # getDailyMetricsTimeSeries?dailyMetric=WEBSITE_CLICKS&daily_range.start_date.
        # year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&
        # daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.
        # end_date.day=31`
        # @param [String] name
        #   Required. The location for which the time series should be fetched. Format:
        #   locations/`location_id` where location_id is an unobfuscated listing id.
        # @param [String] daily_metric
        #   Required. The metric to retrieve time series.
        # @param [Fixnum] daily_range_end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] daily_range_end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] daily_range_end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] daily_range_start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] daily_range_start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] daily_range_start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] daily_sub_entity_type_day_of_week
        #   Represents the day of the week. Eg: MONDAY.
        # @param [Fixnum] daily_sub_entity_type_time_of_day_hours
        #   Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        #   allow the value "24:00:00" for scenarios like business closing time.
        # @param [Fixnum] daily_sub_entity_type_time_of_day_minutes
        #   Minutes of hour of day. Must be from 0 to 59.
        # @param [Fixnum] daily_sub_entity_type_time_of_day_nanos
        #   Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # @param [Fixnum] daily_sub_entity_type_time_of_day_seconds
        #   Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        #   allow the value 60 if it allows leap-seconds.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BusinessprofileperformanceV1::GetDailyMetricsTimeSeriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BusinessprofileperformanceV1::GetDailyMetricsTimeSeriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_daily_metrics_time_series(name, daily_metric: nil, daily_range_end_date_day: nil, daily_range_end_date_month: nil, daily_range_end_date_year: nil, daily_range_start_date_day: nil, daily_range_start_date_month: nil, daily_range_start_date_year: nil, daily_sub_entity_type_day_of_week: nil, daily_sub_entity_type_time_of_day_hours: nil, daily_sub_entity_type_time_of_day_minutes: nil, daily_sub_entity_type_time_of_day_nanos: nil, daily_sub_entity_type_time_of_day_seconds: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getDailyMetricsTimeSeries', options)
          command.response_representation = Google::Apis::BusinessprofileperformanceV1::GetDailyMetricsTimeSeriesResponse::Representation
          command.response_class = Google::Apis::BusinessprofileperformanceV1::GetDailyMetricsTimeSeriesResponse
          command.params['name'] = name unless name.nil?
          command.query['dailyMetric'] = daily_metric unless daily_metric.nil?
          command.query['dailyRange.endDate.day'] = daily_range_end_date_day unless daily_range_end_date_day.nil?
          command.query['dailyRange.endDate.month'] = daily_range_end_date_month unless daily_range_end_date_month.nil?
          command.query['dailyRange.endDate.year'] = daily_range_end_date_year unless daily_range_end_date_year.nil?
          command.query['dailyRange.startDate.day'] = daily_range_start_date_day unless daily_range_start_date_day.nil?
          command.query['dailyRange.startDate.month'] = daily_range_start_date_month unless daily_range_start_date_month.nil?
          command.query['dailyRange.startDate.year'] = daily_range_start_date_year unless daily_range_start_date_year.nil?
          command.query['dailySubEntityType.dayOfWeek'] = daily_sub_entity_type_day_of_week unless daily_sub_entity_type_day_of_week.nil?
          command.query['dailySubEntityType.timeOfDay.hours'] = daily_sub_entity_type_time_of_day_hours unless daily_sub_entity_type_time_of_day_hours.nil?
          command.query['dailySubEntityType.timeOfDay.minutes'] = daily_sub_entity_type_time_of_day_minutes unless daily_sub_entity_type_time_of_day_minutes.nil?
          command.query['dailySubEntityType.timeOfDay.nanos'] = daily_sub_entity_type_time_of_day_nanos unless daily_sub_entity_type_time_of_day_nanos.nil?
          command.query['dailySubEntityType.timeOfDay.seconds'] = daily_sub_entity_type_time_of_day_seconds unless daily_sub_entity_type_time_of_day_seconds.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the search keywords used to find a business in search or maps. Each
        # search keyword is accompanied by impressions which are aggregated on a monthly
        # basis. Example request: `GET https://businessprofileperformance.googleapis.com/
        # v1/locations/12345/searchkeywords/impressions/monthly?monthly_range.
        # start_month.year=2022&monthly_range.start_month.month=1&monthly_range.
        # end_month.year=2022&monthly_range.end_month.month=3`
        # @param [String] parent
        #   Required. The location for which the time series should be fetched. Format:
        #   locations/`location_id` where location_id is an unobfuscated listing id.
        # @param [Fixnum] monthly_range_end_month_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] monthly_range_end_month_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] monthly_range_end_month_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] monthly_range_start_month_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] monthly_range_start_month_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] monthly_range_start_month_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] page_size
        #   Optional. The number of results requested. The default page size is 100. Page
        #   size can be set to a maximum of 100.
        # @param [String] page_token
        #   Optional. A token indicating the next paginated result to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BusinessprofileperformanceV1::ListSearchKeywordImpressionsMonthlyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BusinessprofileperformanceV1::ListSearchKeywordImpressionsMonthlyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_searchkeyword_impression_monthlies(parent, monthly_range_end_month_day: nil, monthly_range_end_month_month: nil, monthly_range_end_month_year: nil, monthly_range_start_month_day: nil, monthly_range_start_month_month: nil, monthly_range_start_month_year: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/searchkeywords/impressions/monthly', options)
          command.response_representation = Google::Apis::BusinessprofileperformanceV1::ListSearchKeywordImpressionsMonthlyResponse::Representation
          command.response_class = Google::Apis::BusinessprofileperformanceV1::ListSearchKeywordImpressionsMonthlyResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['monthlyRange.endMonth.day'] = monthly_range_end_month_day unless monthly_range_end_month_day.nil?
          command.query['monthlyRange.endMonth.month'] = monthly_range_end_month_month unless monthly_range_end_month_month.nil?
          command.query['monthlyRange.endMonth.year'] = monthly_range_end_month_year unless monthly_range_end_month_year.nil?
          command.query['monthlyRange.startMonth.day'] = monthly_range_start_month_day unless monthly_range_start_month_day.nil?
          command.query['monthlyRange.startMonth.month'] = monthly_range_start_month_month unless monthly_range_start_month_month.nil?
          command.query['monthlyRange.startMonth.year'] = monthly_range_start_month_year unless monthly_range_start_month_year.nil?
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
