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
    module Searchads360V23
      # Search Ads 360 Reporting API
      #
      # The Search Ads 360 API allows developers to automate downloading reports from
      #  Search Ads 360.
      #
      # @example
      #    require 'google/apis/searchads360_v23'
      #
      #    Searchads360 = Google::Apis::Searchads360V23 # Alias the module
      #    service = Searchads360::SA360Service.new
      #
      # @see https://developers.google.com/search-ads/reporting
      class SA360Service < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://searchads360.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-searchads360_v23',
                client_version: Google::Apis::Searchads360V23::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists date ranges for which audience insights data can be requested. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [FieldError]() [
        # HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInsightsEligibleDatesRequest] google_ads_searchads360_v23_services__list_insights_eligible_dates_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInsightsEligibleDatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInsightsEligibleDatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_audience_insight_insights_eligible_dates(google_ads_searchads360_v23_services__list_insights_eligible_dates_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/audienceInsights:listInsightsEligibleDates', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInsightsEligibleDatesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_insights_eligible_dates_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInsightsEligibleDatesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInsightsEligibleDatesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new client under manager. The new client customer is returned. List
        # of thrown errors: [AccessInvitationError]() [AuthenticationError]() [
        # AuthorizationError]() [CurrencyCodeError]() [HeaderError]() [InternalError]() [
        # ManagerLinkError]() [QuotaError]() [RequestError]() [StringLengthError]() [
        # TimeZoneError]()
        # @param [String] customer_id
        #   Required. The ID of the Manager under whom client customer is being created.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateCustomerClientRequest] google_ads_searchads360_v23_services__create_customer_client_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateCustomerClientResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateCustomerClientResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_customer_client(customer_id, google_ads_searchads360_v23_services__create_customer_client_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:createCustomerClient', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateCustomerClientRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__create_customer_client_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateCustomerClientResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateCustomerClientResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of suggested AdGroups and suggested modifications (text, match
        # type) for the given keywords. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [CollectionSizeError]() [HeaderError]() [InternalError]()
        # [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAdGroupThemesRequest] google_ads_searchads360_v23_services__generate_ad_group_themes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAdGroupThemesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAdGroupThemesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_ad_group_themes(customer_id, google_ads_searchads360_v23_services__generate_ad_group_themes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateAdGroupThemes', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAdGroupThemesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_ad_group_themes_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAdGroupThemesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAdGroupThemesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of attributes that are represented in an audience of
        # interest, with metrics that compare each attribute's share of the audience
        # with its share of a baseline audience. List of thrown errors: [
        # AudienceInsightsError]() [AuthenticationError]() [AuthorizationError]() [
        # FieldError]() [HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceCompositionInsightsRequest] google_ads_searchads360_v23_services__generate_audience_composition_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceCompositionInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceCompositionInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_audience_composition_insights(customer_id, google_ads_searchads360_v23_services__generate_audience_composition_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateAudienceCompositionInsights', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceCompositionInsightsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_audience_composition_insights_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceCompositionInsightsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceCompositionInsightsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of audience attributes using generative AI based on the
        # provided audience description. List of thrown errors: [AudienceInsightsError]()
        # [AuthenticationError]() [AuthorizationError]() [FieldError]() [HeaderError]()
        # [InternalError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceDefinitionRequest] google_ads_searchads360_v23_services__generate_audience_definition_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceDefinitionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceDefinitionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_audience_definition(customer_id, google_ads_searchads360_v23_services__generate_audience_definition_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateAudienceDefinition', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceDefinitionRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_audience_definition_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceDefinitionResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceDefinitionResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of audience attributes along with estimates of the
        # overlap between their potential YouTube reach and that of a given input
        # attribute. List of thrown errors: [AudienceInsightsError]() [
        # AuthenticationError]() [AuthorizationError]() [FieldError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RangeError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceOverlapInsightsRequest] google_ads_searchads360_v23_services__generate_audience_overlap_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceOverlapInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceOverlapInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_audience_overlap_insights(customer_id, google_ads_searchads360_v23_services__generate_audience_overlap_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateAudienceOverlapInsights', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceOverlapInsightsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_audience_overlap_insights_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceOverlapInsightsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateAudienceOverlapInsightsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns YouTube advertisement metrics for the given client against industry
        # benchmarks. List of thrown errors: [AuthenticationError]() [AuthorizationError]
        # () [BenchmarksError]() [FieldError]() [HeaderError]() [InternalError]() [
        # QuotaError]() [RangeError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer. Supply a client customer ID to generate
        #   metrics for the customer. A manager account customer ID will not return
        #   customer metrics since it does not have any associated direct ad campaigns.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateBenchmarksMetricsRequest] google_ads_searchads360_v23_services__generate_benchmarks_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateBenchmarksMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateBenchmarksMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_benchmarks_metrics(customer_id, google_ads_searchads360_v23_services__generate_benchmarks_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateBenchmarksMetrics', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateBenchmarksMetricsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_benchmarks_metrics_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateBenchmarksMetricsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateBenchmarksMetricsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a saved report that can be viewed in the Insights Finder tool. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [FieldError]() [
        # HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateInsightsFinderReportRequest] google_ads_searchads360_v23_services__generate_insights_finder_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateInsightsFinderReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateInsightsFinderReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_insights_finder_report(customer_id, google_ads_searchads360_v23_services__generate_insights_finder_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateInsightsFinderReport', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateInsightsFinderReportRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_insights_finder_report_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateInsightsFinderReportResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateInsightsFinderReportResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns metrics (such as impressions, clicks, total cost) of a keyword
        # forecast for the given campaign. List of thrown errors: [AuthenticationError]()
        # [AuthorizationError]() [CollectionSizeError]() [HeaderError]() [InternalError]
        # () [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordForecastMetricsRequest] google_ads_searchads360_v23_services__generate_keyword_forecast_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordForecastMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordForecastMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_keyword_forecast_metrics(customer_id, google_ads_searchads360_v23_services__generate_keyword_forecast_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateKeywordForecastMetrics', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordForecastMetricsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_keyword_forecast_metrics_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordForecastMetricsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordForecastMetricsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of keyword historical metrics. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [CollectionSizeError]() [
        # HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   The ID of the customer with the recommendation.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordHistoricalMetricsRequest] google_ads_searchads360_v23_services__generate_keyword_historical_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordHistoricalMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordHistoricalMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_keyword_historical_metrics(customer_id, google_ads_searchads360_v23_services__generate_keyword_historical_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateKeywordHistoricalMetrics', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordHistoricalMetricsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_keyword_historical_metrics_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordHistoricalMetricsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordHistoricalMetricsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of keyword ideas. List of thrown errors: [AuthenticationError]()
        # [AuthorizationError]() [CollectionSizeError]() [HeaderError]() [InternalError]
        # () [KeywordPlanIdeaError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   The ID of the customer with the recommendation.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordIdeasRequest] google_ads_searchads360_v23_services__generate_keyword_ideas_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordIdeaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordIdeaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_keyword_ideas(customer_id, google_ads_searchads360_v23_services__generate_keyword_ideas_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateKeywordIdeas', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordIdeasRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_keyword_ideas_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordIdeaResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateKeywordIdeaResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a reach forecast for a given targeting / product mix. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [FieldError]() [
        # HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [ReachPlanError]
        # () [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateReachForecastRequest] google_ads_searchads360_v23_services__generate_reach_forecast_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateReachForecastResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateReachForecastResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_reach_forecast(customer_id, google_ads_searchads360_v23_services__generate_reach_forecast_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateReachForecast', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateReachForecastRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_reach_forecast_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateReachForecastResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateReachForecastResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of targeting insights (e.g. targetable audiences) that
        # are relevant to the requested audience. List of thrown errors: [
        # AudienceInsightsError]() [AuthenticationError]() [AuthorizationError]() [
        # FieldError]() [HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateSuggestedTargetingInsightsRequest] google_ads_searchads360_v23_services__generate_suggested_targeting_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateSuggestedTargetingInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateSuggestedTargetingInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_suggested_targeting_insights(customer_id, google_ads_searchads360_v23_services__generate_suggested_targeting_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateSuggestedTargetingInsights', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateSuggestedTargetingInsightsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_suggested_targeting_insights_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateSuggestedTargetingInsightsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateSuggestedTargetingInsightsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns potential reach metrics for targetable audiences. This method helps
        # answer questions like "How many Men aged 18+ interested in Camping can be
        # reached on YouTube?" List of thrown errors: [AudienceInsightsError]() [
        # AuthenticationError]() [AuthorizationError]() [FieldError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RangeError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateTargetingSuggestionMetricsRequest] google_ads_searchads360_v23_services__generate_targeting_suggestion_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateTargetingSuggestionMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateTargetingSuggestionMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_targeting_suggestion_metrics(customer_id, google_ads_searchads360_v23_services__generate_targeting_suggestion_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:generateTargetingSuggestionMetrics', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateTargetingSuggestionMetricsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_targeting_suggestion_metrics_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateTargetingSuggestionMetricsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateTargetingSuggestionMetricsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns Identity Verification information. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]()
        # [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer for whom we are requesting verification
        #   information.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetIdentityVerificationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetIdentityVerificationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_identity_verification(customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/customers/{+customerId}/getIdentityVerification', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetIdentityVerificationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetIdentityVerificationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns resource names of customers directly accessible by the user
        # authenticating the call. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAccessibleCustomersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAccessibleCustomersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_accessible_customers(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/customers:listAccessibleCustomers', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAccessibleCustomersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAccessibleCustomersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a customer. Operation statuses are returned. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [DatabaseError]() [
        # FieldMaskError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]() [UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the customer being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerRequest] google_ads_searchads360_v23_services__mutate_customer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer(customer_id, google_ads_searchads360_v23_services__mutate_customer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes automatically created assets from a campaign. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [ContextError]() [FieldError]() [
        # InternalError]() [MutateError]() [PartialFailureError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose assets are being removed.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveCampaignAutomaticallyCreatedAssetRequest] google_ads_searchads360_v23_services__remove_campaign_automatically_created_asset_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveCampaignAutomaticallyCreatedAssetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveCampaignAutomaticallyCreatedAssetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_customer_campaign_automatically_created_asset(customer_id, google_ads_searchads360_v23_services__remove_campaign_automatically_created_asset_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:removeCampaignAutomaticallyCreatedAsset', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveCampaignAutomaticallyCreatedAssetRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__remove_campaign_automatically_created_asset_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveCampaignAutomaticallyCreatedAssetResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveCampaignAutomaticallyCreatedAssetResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for audience attributes that can be used to generate insights. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [FieldError]()
        # [HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [RequestError]
        # ()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAudienceInsightsAttributesRequest] google_ads_searchads360_v23_services__list_audience_insights_attributes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAudienceInsightsAttributesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAudienceInsightsAttributesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_customer_audience_insights_attributes(customer_id, google_ads_searchads360_v23_services__list_audience_insights_attributes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:searchAudienceInsightsAttributes', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAudienceInsightsAttributesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_audience_insights_attributes_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAudienceInsightsAttributesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListAudienceInsightsAttributesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts Identity Verification for a given verification program type. Statuses
        # are returned. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The Id of the customer for whom we are creating this verification.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesStartIdentityVerificationRequest] google_ads_searchads360_v23_services__start_identity_verification_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_customer_identity_verification(customer_id, google_ads_searchads360_v23_services__start_identity_verification_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:startIdentityVerification', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesStartIdentityVerificationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__start_identity_verification_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleProtobufEmpty
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suggests keyword themes to advertise on.
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemesRequest] google_ads_searchads360_v23_services__suggest_keyword_themes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_customer_keyword_themes(customer_id, google_ads_searchads360_v23_services__suggest_keyword_themes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:suggestKeywordThemes', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__suggest_keyword_themes_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suggests a Smart campaign ad compatible with the Ad family of resources, based
        # on data points such as targeting and the business to advertise.
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignAdRequest] google_ads_searchads360_v23_services__suggest_smart_campaign_ad_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignAdResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignAdResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_customer_smart_campaign_ad(customer_id, google_ads_searchads360_v23_services__suggest_smart_campaign_ad_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:suggestSmartCampaignAd', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignAdRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__suggest_smart_campaign_ad_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignAdResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignAdResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns BudgetOption suggestions.
        # @param [String] customer_id
        #   Required. The ID of the customer whose budget options are to be suggested.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignBudgetOptionsRequest] google_ads_searchads360_v23_services__suggest_smart_campaign_budget_options_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignBudgetOptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignBudgetOptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_customer_smart_campaign_budget_options(customer_id, google_ads_searchads360_v23_services__suggest_smart_campaign_budget_options_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:suggestSmartCampaignBudgetOptions', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignBudgetOptionsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__suggest_smart_campaign_budget_options_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignBudgetOptionsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestSmartCampaignBudgetOptionsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns Travel Asset suggestions. Asset suggestions are returned on a best-
        # effort basis. There are no guarantees that all possible asset types will be
        # returned for any given hotel property.
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestTravelAssetsRequest] google_ads_searchads360_v23_services__suggest_travel_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestTravelAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestTravelAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_customer_travel_assets(customer_id, google_ads_searchads360_v23_services__suggest_travel_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:suggestTravelAssets', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestTravelAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__suggest_travel_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestTravelAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestTravelAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads the given user data. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [CollectionSizeError]() [FieldError]() [HeaderError]() [
        # InternalError]() [MutateError]() [OfflineUserDataJobError]() [QuotaError]() [
        # RequestError]() [UserDataError]()
        # @param [String] customer_id
        #   Required. The ID of the customer for which to update the user data.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUploadUserDataRequest] google_ads_searchads360_v23_services__upload_user_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUploadUserDataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUploadUserDataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_customer_user_data(customer_id, google_ads_searchads360_v23_services__upload_user_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}:uploadUserData', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUploadUserDataRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__upload_user_data_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUploadUserDataResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUploadUserDataResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes ad group criterion customizers. Operation statuses
        # are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose ad group criterion customizers are
        #   being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionCustomizersRequest] google_ads_searchads360_v23_services__mutate_ad_group_criterion_customizers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionCustomizersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionCustomizersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_criterion_customizer(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_criterion_customizers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/AdGroupCriterionCustomizers:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionCustomizersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_criterion_customizers_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionCustomizersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionCustomizersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create or update campaign goal configs. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]()
        # [QuotaError]() [RequestError]() [CampaignGoalConfigError]() [
        # GoalServicesError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign goal configs are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGoalConfigsRequest] google_ads_searchads360_v23_services__mutate_campaign_goal_configs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGoalConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGoalConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_goal_config(customer_id, google_ads_searchads360_v23_services__mutate_campaign_goal_configs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/CampaignGoalConfigs:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGoalConfigsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_goal_configs_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGoalConfigsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGoalConfigsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes customer customizers. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose customer customizers are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerCustomizersRequest] google_ads_searchads360_v23_services__mutate_customer_customizers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerCustomizersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerCustomizersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_customizer(customer_id, google_ads_searchads360_v23_services__mutate_customer_customizers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/CustomerCustomizers:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerCustomizersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_customizers_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerCustomizersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerCustomizersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create or update goals. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]() [GoalError]() [GoalServicesError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose goals are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateGoalsRequest] google_ads_searchads360_v23_services__mutate_goals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateGoalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateGoalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_goal(customer_id, google_ads_searchads360_v23_services__mutate_goals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/Goals:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateGoalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_goals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateGoalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateGoalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes account budget proposals. Operation statuses are
        # returned. List of thrown errors: [AccountBudgetProposalError]() [
        # AuthenticationError]() [AuthorizationError]() [DatabaseError]() [DateError]() [
        # FieldError]() [FieldMaskError]() [HeaderError]() [InternalError]() [
        # MutateError]() [QuotaError]() [RequestError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountBudgetProposalRequest] google_ads_searchads360_v23_services__mutate_account_budget_proposal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountBudgetProposalResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountBudgetProposalResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_account_budget_proposal(customer_id, google_ads_searchads360_v23_services__mutate_account_budget_proposal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/accountBudgetProposals:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountBudgetProposalRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_account_budget_proposal_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountBudgetProposalResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountBudgetProposalResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an account link. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [MutateError]() [QuotaError]() [RequestError]() [
        # ThirdPartyAppAnalyticsLinkError]()
        # @param [String] customer_id
        #   Required. The ID of the customer for which the account link is created.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateAccountLinkRequest] google_ads_searchads360_v23_services__create_account_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateAccountLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateAccountLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_account_link(customer_id, google_ads_searchads360_v23_services__create_account_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/accountLinks:create', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateAccountLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__create_account_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateAccountLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateAccountLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes an account link. From V5, create is not supported through
        # AccountLinkService.MutateAccountLink. Use AccountLinkService.CreateAccountLink
        # instead. List of thrown errors: [AccountLinkError]() [AuthenticationError]() [
        # AuthorizationError]() [FieldMaskError]() [HeaderError]() [InternalError]() [
        # MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountLinkRequest] google_ads_searchads360_v23_services__mutate_account_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_account_link(customer_id, google_ads_searchads360_v23_services__mutate_account_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/accountLinks:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_account_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAccountLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and removes ad group ad labels. Operation statuses are returned. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # DatabaseError]() [HeaderError]() [InternalError]() [LabelError]() [MutateError]
        # () [NewResourceCreationError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose ad group ad labels are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdLabelsRequest] google_ads_searchads360_v23_services__mutate_ad_group_ad_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_ad_label(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_ad_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupAdLabels:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdLabelsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_ad_labels_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdLabelsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdLabelsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes ads. Operation statuses are returned. List of
        # thrown errors: [AdCustomizerError]() [AdError]() [AdGroupAdError]() [
        # AdSharingError]() [AdxError]() [AssetError]() [AssetLinkError]() [
        # AuthenticationError]() [AuthorizationError]() [CollectionSizeError]() [
        # ContextError]() [DatabaseError]() [DateError]() [DistinctError]() [
        # FeedAttributeReferenceError]() [FieldError]() [FieldMaskError]() [
        # FunctionError]() [FunctionParsingError]() [HeaderError]() [IdError]() [
        # ImageError]() [InternalError]() [ListOperationError]() [MediaBundleError]() [
        # MediaFileError]() [MutateError]() [NewResourceCreationError]() [NotEmptyError](
        # ) [NullError]() [OperationAccessDeniedError]() [OperatorError]() [
        # PolicyFindingError]() [PolicyValidationParameterError]() [PolicyViolationError]
        # () [QuotaError]() [RangeError]() [RequestError]() [
        # ResourceCountLimitExceededError]() [SizeLimitError]() [StringFormatError]() [
        # StringLengthError]() [UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose ads are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdsRequest] google_ads_searchads360_v23_services__mutate_ad_group_ads_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_ad(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_ads_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupAds:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_ads_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAdsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove automatically created assets from an ad. List of thrown errors: [
        # AdError]() [AuthenticationError]() [AuthorizationError]() [
        # AutomaticallyCreatedAssetRemovalError]() [HeaderError]() [InternalError]() [
        # MutateError]() [QuotaError]() [RequestError]()
        # @param [String] ad_group_ad
        #   Required. The resource name of the AdGroupAd from which to remove
        #   automatically created assets.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveAutomaticallyCreatedAssetsRequest] google_ads_searchads360_v23_services__remove_automatically_created_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_customer_ad_group_ad_automatically_created_assets(ad_group_ad, google_ads_searchads360_v23_services__remove_automatically_created_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+adGroupAd}:removeAutomaticallyCreatedAssets', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveAutomaticallyCreatedAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__remove_automatically_created_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleProtobufEmpty
          command.params['adGroupAd'] = ad_group_ad unless ad_group_ad.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, or removes ad group asset sets. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose ad group asset sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetSetsRequest] google_ads_searchads360_v23_services__mutate_ad_group_asset_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_asset_set(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_asset_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupAssetSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_asset_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes ad group assets. Operation statuses are returned.
        # List of thrown errors: [AssetLinkError]() [AuthenticationError]() [
        # AuthorizationError]() [ContextError]() [FieldError]() [HeaderError]() [
        # InternalError]() [MutateError]() [NotAllowlistedError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose ad group assets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetsRequest] google_ads_searchads360_v23_services__mutate_ad_group_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_asset(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupAssets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes ad group bid modifiers. Operation statuses are
        # returned. List of thrown errors: [AdGroupBidModifierError]() [
        # AuthenticationError]() [AuthorizationError]() [ContextError]() [CriterionError]
        # () [DatabaseError]() [DistinctError]() [FieldError]() [FieldMaskError]() [
        # HeaderError]() [IdError]() [InternalError]() [MutateError]() [
        # NewResourceCreationError]() [NotEmptyError]() [OperatorError]() [QuotaError]()
        # [RangeError]() [RequestError]() [ResourceCountLimitExceededError]() [
        # SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose ad group bid modifiers are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupBidModifiersRequest] google_ads_searchads360_v23_services__mutate_ad_group_bid_modifiers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupBidModifiersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupBidModifiersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_bid_modifier(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_bid_modifiers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupBidModifiers:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupBidModifiersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_bid_modifiers_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupBidModifiersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupBidModifiersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes criteria. Operation statuses are returned. List
        # of thrown errors: [AdGroupCriterionError]() [AdxError]() [AuthenticationError](
        # ) [AuthorizationError]() [BiddingError]() [BiddingStrategyError]() [
        # CollectionSizeError]() [ContextError]() [CriterionError]() [DatabaseError]() [
        # DateError]() [DistinctError]() [FieldError]() [FieldMaskError]() [HeaderError](
        # ) [IdError]() [InternalError]() [MultiplierError]() [MutateError]() [
        # NewResourceCreationError]() [NotEmptyError]() [NullError]() [
        # OperationAccessDeniedError]() [OperatorError]() [PolicyViolationError]() [
        # QuotaError]() [RangeError]() [RequestError]() [ResourceCountLimitExceededError]
        # () [SizeLimitError]() [StringFormatError]() [StringLengthError]() [
        # UrlFieldError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose criteria are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriteriaRequest] google_ads_searchads360_v23_services__mutate_ad_group_criteria_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriteriaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriteriaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_criterium(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_criteria_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupCriteria:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriteriaRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_criteria_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriteriaResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriteriaResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and removes ad group criterion labels. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # DatabaseError]() [FieldError]() [HeaderError]() [InternalError]() [QuotaError](
        # ) [RequestError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose ad group criterion labels are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionLabelsRequest] google_ads_searchads360_v23_services__mutate_ad_group_criterion_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_criterion_label(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_criterion_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupCriterionLabels:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionLabelsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_criterion_labels_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionLabelsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCriterionLabelsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes ad group customizers. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose ad group customizers are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCustomizersRequest] google_ads_searchads360_v23_services__mutate_ad_group_customizers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCustomizersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCustomizersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_customizer(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_customizers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupCustomizers:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCustomizersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_customizers_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCustomizersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupCustomizersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and removes ad group labels. Operation statuses are returned. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]()
        # [FieldError]() [HeaderError]() [InternalError]() [LabelError]() [MutateError](
        # ) [NewResourceCreationError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose ad group labels are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupLabelsRequest] google_ads_searchads360_v23_services__mutate_ad_group_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group_label(customer_id, google_ads_searchads360_v23_services__mutate_ad_group_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroupLabels:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupLabelsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_group_labels_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupLabelsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupLabelsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes ad groups. Operation statuses are returned. List
        # of thrown errors: [AdGroupError]() [AdxError]() [AuthenticationError]() [
        # AuthorizationError]() [BiddingError]() [BiddingStrategyError]() [DatabaseError]
        # () [DateError]() [DistinctError]() [FieldError]() [FieldMaskError]() [
        # HeaderError]() [IdError]() [InternalError]() [ListOperationError]() [
        # MultiplierError]() [MutateError]() [NewResourceCreationError]() [NotEmptyError]
        # () [NullError]() [OperationAccessDeniedError]() [OperatorError]() [QuotaError](
        # ) [RangeError]() [RequestError]() [ResourceCountLimitExceededError]() [
        # SettingError]() [SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # [UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose ad groups are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupsRequest] google_ads_searchads360_v23_services__mutate_ad_groups_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_group(customer_id, google_ads_searchads360_v23_services__mutate_ad_groups_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adGroups:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_groups_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdGroupsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes ad parameters. Operation statuses are returned.
        # List of thrown errors: [AdParameterError]() [AuthenticationError]() [
        # AuthorizationError]() [ContextError]() [DatabaseError]() [FieldError]() [
        # FieldMaskError]() [HeaderError]() [InternalError]() [MutateError]() [
        # QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose ad parameters are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdParametersRequest] google_ads_searchads360_v23_services__mutate_ad_parameters_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdParametersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdParametersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad_parameter(customer_id, google_ads_searchads360_v23_services__mutate_ad_parameters_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/adParameters:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdParametersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ad_parameters_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdParametersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdParametersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates ads. Operation statuses are returned. Updating ads is not supported
        # for TextAd, ExpandedDynamicSearchAd, GmailAd and ImageAd. List of thrown
        # errors: [AdCustomizerError]() [AdError]() [AdSharingError]() [AdxError]() [
        # AssetError]() [AssetLinkError]() [AuthenticationError]() [AuthorizationError]()
        # [CollectionSizeError]() [DatabaseError]() [DateError]() [DistinctError]() [
        # FeedAttributeReferenceError]() [FieldError]() [FieldMaskError]() [
        # FunctionError]() [FunctionParsingError]() [HeaderError]() [IdError]() [
        # ImageError]() [InternalError]() [ListOperationError]() [MediaBundleError]() [
        # MediaFileError]() [MutateError]() [NewResourceCreationError]() [NotEmptyError](
        # ) [NullError]() [OperatorError]() [PolicyFindingError]() [PolicyViolationError]
        # () [QuotaError]() [RangeError]() [RequestError]() [SizeLimitError]() [
        # StringFormatError]() [StringLengthError]() [UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose ads are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdsRequest] google_ads_searchads360_v23_services__mutate_ads_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_ad(customer_id, google_ads_searchads360_v23_services__mutate_ads_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/ads:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_ads_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAdsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes asset group assets. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose asset group assets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupAssetsRequest] google_ads_searchads360_v23_services__mutate_asset_group_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset_group_asset(customer_id, google_ads_searchads360_v23_services__mutate_asset_group_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assetGroupAssets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_asset_group_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes asset group listing group filters. Operation
        # statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose asset group listing group filters are
        #   being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupListingGroupFiltersRequest] google_ads_searchads360_v23_services__mutate_asset_group_listing_group_filters_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupListingGroupFiltersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupListingGroupFiltersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset_group_listing_group_filter(customer_id, google_ads_searchads360_v23_services__mutate_asset_group_listing_group_filters_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assetGroupListingGroupFilters:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupListingGroupFiltersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_asset_group_listing_group_filters_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupListingGroupFiltersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupListingGroupFiltersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes asset group signals. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose asset group signals are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupSignalsRequest] google_ads_searchads360_v23_services__mutate_asset_group_signals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupSignalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupSignalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset_group_signal(customer_id, google_ads_searchads360_v23_services__mutate_asset_group_signals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assetGroupSignals:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupSignalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_asset_group_signals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupSignalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupSignalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes asset groups. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose asset groups are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupsRequest] google_ads_searchads360_v23_services__mutate_asset_groups_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset_group(customer_id, google_ads_searchads360_v23_services__mutate_asset_groups_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assetGroups:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_asset_groups_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetGroupsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes asset set assets. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose asset set assets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetAssetsRequest] google_ads_searchads360_v23_services__mutate_asset_set_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset_set_asset(customer_id, google_ads_searchads360_v23_services__mutate_asset_set_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assetSetAssets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_asset_set_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes asset sets. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose asset sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetsRequest] google_ads_searchads360_v23_services__mutate_asset_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset_set(customer_id, google_ads_searchads360_v23_services__mutate_asset_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assetSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_asset_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates assets. Operation statuses are returned. List of thrown errors: [
        # AssetError]() [AuthenticationError]() [AuthorizationError]() [
        # CollectionSizeError]() [CurrencyCodeError]() [DatabaseError]() [DateError]() [
        # DistinctError]() [FieldError]() [FieldMaskError]() [HeaderError]() [IdError]()
        # [InternalError]() [ListOperationError]() [MediaUploadError]() [MutateError]() [
        # NotAllowlistedError]() [NotEmptyError]() [OperatorError]() [QuotaError]() [
        # RangeError]() [RequestError]() [SizeLimitError]() [StringFormatError]() [
        # StringLengthError]() [UrlFieldError]() [YoutubeVideoRegistrationError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose assets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetsRequest] google_ads_searchads360_v23_services__mutate_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_asset(customer_id, google_ads_searchads360_v23_services__mutate_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/assets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates audiences. Operation statuses are returned. List of thrown errors: [
        # AudienceError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose audiences are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAudiencesRequest] google_ads_searchads360_v23_services__mutate_audiences_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAudiencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAudiencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_audience(customer_id, google_ads_searchads360_v23_services__mutate_audiences_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/audiences:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAudiencesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_audiences_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAudiencesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateAudiencesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add operations to the batch job. List of thrown errors: [AuthenticationError]()
        # [AuthorizationError]() [BatchJobError]() [HeaderError]() [InternalError]() [
        # QuotaError]() [RequestError]() [ResourceCountLimitExceededError]()
        # @param [String] resource_name
        #   Required. The resource name of the batch job.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddBatchJobOperationsRequest] google_ads_searchads360_v23_services__add_batch_job_operations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddBatchJobOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddBatchJobOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_customer_batch_job_operations(resource_name, google_ads_searchads360_v23_services__add_batch_job_operations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:addOperations', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddBatchJobOperationsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__add_batch_job_operations_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddBatchJobOperationsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddBatchJobOperationsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the results of the batch job. The job must be done. Supports standard
        # list paging. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [BatchJobError]() [HeaderError]() [InternalError]() [
        # QuotaError]() [RequestError]()
        # @param [String] resource_name
        #   Required. The resource name of the batch job whose results are being listed.
        # @param [Fixnum] page_size
        # @param [String] page_token
        #   Token of the page to retrieve. If not specified, the first page of results
        #   will be returned. Use the value obtained from `next_page_token` in the
        #   previous response in order to request the next page of results.
        # @param [String] response_content_type
        #   The response content type setting. Determines whether the mutable resource or
        #   just the resource name should be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBatchJobResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBatchJobResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_batch_job_results(resource_name, page_size: nil, page_token: nil, response_content_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/{+resourceName}:listResults', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBatchJobResultsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBatchJobResultsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['responseContentType'] = response_content_type unless response_content_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutates a batch job. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]() [ResourceCountLimitExceededError]()
        # @param [String] customer_id
        #   Required. The ID of the customer for which to create a batch job.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBatchJobRequest] google_ads_searchads360_v23_services__mutate_batch_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBatchJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBatchJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_batch_job(customer_id, google_ads_searchads360_v23_services__mutate_batch_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/batchJobs:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBatchJobRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_batch_job_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBatchJobResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBatchJobResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs the batch job. The Operation.metadata field type is BatchJobMetadata.
        # When finished, the long running operation will not contain errors or a
        # response. Instead, use ListBatchJobResults to get the results of the job. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # BatchJobError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] resource_name
        #   Required. The resource name of the BatchJob to run.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRunBatchJobRequest] google_ads_searchads360_v23_services__run_batch_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_customer_batch_job(resource_name, google_ads_searchads360_v23_services__run_batch_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:run', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRunBatchJobRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__run_batch_job_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleLongrunningOperation
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes data exclusions. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. ID of the customer whose data exclusions are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingDataExclusionsRequest] google_ads_searchads360_v23_services__mutate_bidding_data_exclusions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingDataExclusionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingDataExclusionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_bidding_data_exclusion(customer_id, google_ads_searchads360_v23_services__mutate_bidding_data_exclusions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/biddingDataExclusions:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingDataExclusionsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_bidding_data_exclusions_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingDataExclusionsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingDataExclusionsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes seasonality adjustments. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. ID of the customer whose seasonality adjustments are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingSeasonalityAdjustmentsRequest] google_ads_searchads360_v23_services__mutate_bidding_seasonality_adjustments_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingSeasonalityAdjustmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingSeasonalityAdjustmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_bidding_seasonality_adjustment(customer_id, google_ads_searchads360_v23_services__mutate_bidding_seasonality_adjustments_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/biddingSeasonalityAdjustments:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingSeasonalityAdjustmentsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_bidding_seasonality_adjustments_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingSeasonalityAdjustmentsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingSeasonalityAdjustmentsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes bidding strategies. Operation statuses are
        # returned. List of thrown errors: [AdxError]() [AuthenticationError]() [
        # AuthorizationError]() [BiddingError]() [BiddingStrategyError]() [ContextError](
        # ) [DatabaseError]() [DateError]() [DistinctError]() [FieldError]() [
        # FieldMaskError]() [HeaderError]() [IdError]() [InternalError]() [MutateError]()
        # [NewResourceCreationError]() [NotEmptyError]() [NullError]() [
        # OperationAccessDeniedError]() [OperatorError]() [QuotaError]() [RangeError]() [
        # RequestError]() [SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose bidding strategies are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingStrategiesRequest] google_ads_searchads360_v23_services__mutate_bidding_strategies_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingStrategiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingStrategiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_bidding_strategy(customer_id, google_ads_searchads360_v23_services__mutate_bidding_strategies_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/biddingStrategies:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingStrategiesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_bidding_strategies_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingStrategiesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBiddingStrategiesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a billing setup, or cancels an existing billing setup. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [BillingSetupError]() [
        # DateError]() [FieldError]() [HeaderError]() [InternalError]() [MutateError]() [
        # QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. Id of the customer to apply the billing setup mutate operation to.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBillingSetupRequest] google_ads_searchads360_v23_services__mutate_billing_setup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBillingSetupResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBillingSetupResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_billing_setup(customer_id, google_ads_searchads360_v23_services__mutate_billing_setup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/billingSetups:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBillingSetupRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_billing_setup_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBillingSetupResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateBillingSetupResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes campaign asset sets. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign asset sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetSetsRequest] google_ads_searchads360_v23_services__mutate_campaign_asset_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_asset_set(customer_id, google_ads_searchads360_v23_services__mutate_campaign_asset_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignAssetSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_asset_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes campaign assets. Operation statuses are returned. List of
        # thrown errors: [AssetLinkError]() [AuthenticationError]() [AuthorizationError](
        # ) [ContextError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [MutateError]() [NotAllowlistedError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign assets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetsRequest] google_ads_searchads360_v23_services__mutate_campaign_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_asset(customer_id, google_ads_searchads360_v23_services__mutate_campaign_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignAssets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes campaign bid modifiers. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [ContextError]() [CriterionError]() [DatabaseError]() [DateError]() [
        # DistinctError]() [FieldError]() [HeaderError]() [IdError]() [InternalError]() [
        # MutateError]() [NewResourceCreationError]() [NotEmptyError]() [NullError]() [
        # OperatorError]() [QuotaError]() [RangeError]() [RequestError]() [
        # SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose campaign bid modifiers are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBidModifiersRequest] google_ads_searchads360_v23_services__mutate_campaign_bid_modifiers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBidModifiersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBidModifiersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_bid_modifier(customer_id, google_ads_searchads360_v23_services__mutate_campaign_bid_modifiers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignBidModifiers:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBidModifiersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_bid_modifiers_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBidModifiersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBidModifiersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes campaign budgets. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # CampaignBudgetError]() [DatabaseError]() [DistinctError]() [FieldError]() [
        # FieldMaskError]() [HeaderError]() [InternalError]() [MutateError]() [
        # NewResourceCreationError]() [OperationAccessDeniedError]() [QuotaError]() [
        # RangeError]() [RequestError]() [ResourceCountLimitExceededError]() [
        # StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign budgets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBudgetsRequest] google_ads_searchads360_v23_services__mutate_campaign_budgets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBudgetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBudgetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_budget(customer_id, google_ads_searchads360_v23_services__mutate_campaign_budgets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignBudgets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBudgetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_budgets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBudgetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignBudgetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes campaign conversion goals. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign conversion goals are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignConversionGoalsRequest] google_ads_searchads360_v23_services__mutate_campaign_conversion_goals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignConversionGoalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignConversionGoalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_conversion_goal(customer_id, google_ads_searchads360_v23_services__mutate_campaign_conversion_goals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignConversionGoals:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignConversionGoalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_conversion_goals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignConversionGoalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignConversionGoalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes criteria. Operation statuses are returned. List
        # of thrown errors: [AdxError]() [AuthenticationError]() [AuthorizationError]() [
        # CampaignCriterionError]() [CollectionSizeError]() [ContextError]() [
        # CriterionError]() [DatabaseError]() [DistinctError]() [FieldError]() [
        # FieldMaskError]() [FunctionError]() [HeaderError]() [IdError]() [InternalError]
        # () [MutateError]() [NewResourceCreationError]() [NotEmptyError]() [NullError]()
        # [OperationAccessDeniedError]() [OperatorError]() [QuotaError]() [RangeError]()
        # [RegionCodeError]() [RequestError]() [ResourceCountLimitExceededError]() [
        # SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose criteria are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCriteriaRequest] google_ads_searchads360_v23_services__mutate_campaign_criteria_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCriteriaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCriteriaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_criterium(customer_id, google_ads_searchads360_v23_services__mutate_campaign_criteria_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignCriteria:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCriteriaRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_criteria_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCriteriaResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCriteriaResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes campaign customizers. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign customizers are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCustomizersRequest] google_ads_searchads360_v23_services__mutate_campaign_customizers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCustomizersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCustomizersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_customizer(customer_id, google_ads_searchads360_v23_services__mutate_campaign_customizers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignCustomizers:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCustomizersRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_customizers_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCustomizersResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignCustomizersResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all errors that occurred during CampaignDraft promote. Throws an error
        # if called before campaign draft is promoted. Supports standard list paging.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [String] resource_name
        #   Required. The name of the campaign draft from which to retrieve the async
        #   errors.
        # @param [Fixnum] page_size
        #   Number of elements to retrieve in a single page. When a page request is too
        #   large, the server may decide to further limit the number of returned resources.
        # @param [String] page_token
        #   Token of the page to retrieve. If not specified, the first page of results
        #   will be returned. Use the value obtained from `next_page_token` in the
        #   previous response in order to request the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCampaignDraftAsyncErrorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCampaignDraftAsyncErrorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_campaign_draft_async_errors(resource_name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/{+resourceName}:listAsyncErrors', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCampaignDraftAsyncErrorsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCampaignDraftAsyncErrorsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes campaign drafts. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # CampaignDraftError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign drafts are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignDraftsRequest] google_ads_searchads360_v23_services__mutate_campaign_drafts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignDraftsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignDraftsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_draft(customer_id, google_ads_searchads360_v23_services__mutate_campaign_drafts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignDrafts:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignDraftsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_drafts_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignDraftsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignDraftsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Promotes the changes in a draft back to the base campaign. This method returns
        # a Long Running Operation (LRO) indicating if the Promote is done. Use google.
        # longrunning.Operations.GetOperation to poll the LRO until it is done. Only a
        # done status is returned in the response. See the status in the Campaign Draft
        # resource to determine if the promotion was successful. If the LRO failed, use
        # CampaignDraftService.ListCampaignDraftAsyncErrors to view the list of error
        # reasons. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [CampaignDraftError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] campaign_draft
        #   Required. The resource name of the campaign draft to promote.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesPromoteCampaignDraftRequest] google_ads_searchads360_v23_services__promote_campaign_draft_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def promote_customer_campaign_draft(campaign_draft, google_ads_searchads360_v23_services__promote_campaign_draft_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+campaignDraft}:promote', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesPromoteCampaignDraftRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__promote_campaign_draft_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleLongrunningOperation
          command.params['campaignDraft'] = campaign_draft unless campaign_draft.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes campaign groups. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign groups are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGroupsRequest] google_ads_searchads360_v23_services__mutate_campaign_groups_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_group(customer_id, google_ads_searchads360_v23_services__mutate_campaign_groups_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignGroups:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGroupsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_groups_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGroupsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignGroupsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and removes campaign-label relationships. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [DatabaseError]() [FieldError]() [HeaderError]() [InternalError]() [
        # LabelError]() [MutateError]() [NewResourceCreationError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose campaign-label relationships are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignLabelsRequest] google_ads_searchads360_v23_services__mutate_campaign_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_label(customer_id, google_ads_searchads360_v23_services__mutate_campaign_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignLabels:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignLabelsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_labels_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignLabelsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignLabelsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Process the given campaign lifecycle configurations. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [
        # CampaignLifecycleGoalConfigError]() [HeaderError]() [InternalError]() [
        # QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer performing the upload.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCampaignLifecycleGoalsRequest] google_ads_searchads360_v23_services__configure_campaign_lifecycle_goals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCampaignLifecycleGoalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCampaignLifecycleGoalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configure_customer_campaign_lifecycle_goal_campaign_lifecycle_goals(customer_id, google_ads_searchads360_v23_services__configure_campaign_lifecycle_goals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignLifecycleGoal:configureCampaignLifecycleGoals', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCampaignLifecycleGoalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__configure_campaign_lifecycle_goals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCampaignLifecycleGoalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCampaignLifecycleGoalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes campaign shared sets. Operation statuses are returned. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # CampaignSharedSetError]() [ContextError]() [DatabaseError]() [DateError]() [
        # DistinctError]() [FieldError]() [HeaderError]() [IdError]() [InternalError]() [
        # MutateError]() [NewResourceCreationError]() [NotEmptyError]() [NullError]() [
        # OperatorError]() [QuotaError]() [RangeError]() [RequestError]() [
        # SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign shared sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignSharedSetsRequest] google_ads_searchads360_v23_services__mutate_campaign_shared_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignSharedSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignSharedSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign_shared_set(customer_id, google_ads_searchads360_v23_services__mutate_campaign_shared_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaignSharedSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignSharedSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaign_shared_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignSharedSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignSharedSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables Brand Guidelines for Performance Max campaigns. List of thrown errors:
        # [AuthenticationError]() [AssetError]() [AssetLinkError]() [AuthorizationError](
        # ) [BrandGuidelinesMigrationError]() [CampaignError]() [HeaderError]() [
        # InternalError]() [MutateError]() [QuotaError]() [RequestError]() [
        # ResourceCountLimitExceededError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaigns are being enabled.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEnablePMaxBrandGuidelinesRequest] google_ads_searchads360_v23_services__enable_p_max_brand_guidelines_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEnablePMaxBrandGuidelinesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEnablePMaxBrandGuidelinesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_customer_campaign_p_max_brand_guidelines(customer_id, google_ads_searchads360_v23_services__enable_p_max_brand_guidelines_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaigns:enablePMaxBrandGuidelines', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEnablePMaxBrandGuidelinesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__enable_p_max_brand_guidelines_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEnablePMaxBrandGuidelinesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEnablePMaxBrandGuidelinesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes campaigns. Operation statuses are returned. List
        # of thrown errors: [AdxError]() [AuthenticationError]() [AuthorizationError]() [
        # BiddingError]() [BiddingStrategyError]() [CampaignBudgetError]() [
        # CampaignError]() [ContextError]() [DatabaseError]() [DateError]() [
        # DateRangeError]() [DistinctError]() [FieldError]() [FieldMaskError]() [
        # HeaderError]() [IdError]() [InternalError]() [ListOperationError]() [
        # MutateError]() [NewResourceCreationError]() [NotAllowlistedError]() [
        # NotEmptyError]() [NullError]() [OperationAccessDeniedError]() [OperatorError]()
        # [QuotaError]() [RangeError]() [RegionCodeError]() [RequestError]() [
        # ResourceCountLimitExceededError]() [SettingError]() [SizeLimitError]() [
        # StringFormatError]() [StringLengthError]() [UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaigns are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignsRequest] google_ads_searchads360_v23_services__mutate_campaigns_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_campaign(customer_id, google_ads_searchads360_v23_services__mutate_campaigns_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/campaigns:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_campaigns_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCampaignsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes conversion actions. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [ConversionActionError]() [CurrencyCodeError]() [DatabaseError]() [FieldError]
        # () [FieldMaskError]() [HeaderError]() [InternalError]() [MutateError]() [
        # NewResourceCreationError]() [QuotaError]() [RangeError]() [RequestError]() [
        # ResourceCountLimitExceededError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose conversion actions are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionActionsRequest] google_ads_searchads360_v23_services__mutate_conversion_actions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_conversion_action(customer_id, google_ads_searchads360_v23_services__mutate_conversion_actions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/conversionActions:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionActionsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_conversion_actions_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionActionsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionActionsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates conversion custom variables. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [ConversionCustomVariableError]() [DatabaseError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose conversion custom variables are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionCustomVariablesRequest] google_ads_searchads360_v23_services__mutate_conversion_custom_variables_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionCustomVariablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionCustomVariablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_conversion_custom_variable(customer_id, google_ads_searchads360_v23_services__mutate_conversion_custom_variables_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/conversionCustomVariables:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionCustomVariablesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_conversion_custom_variables_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionCustomVariablesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionCustomVariablesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes conversion goal campaign config. Operation
        # statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose custom conversion goals are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionGoalCampaignConfigsRequest] google_ads_searchads360_v23_services__mutate_conversion_goal_campaign_configs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionGoalCampaignConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionGoalCampaignConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_conversion_goal_campaign_config(customer_id, google_ads_searchads360_v23_services__mutate_conversion_goal_campaign_configs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/conversionGoalCampaignConfigs:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionGoalCampaignConfigsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_conversion_goal_campaign_configs_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionGoalCampaignConfigsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionGoalCampaignConfigsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes conversion value rule sets. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose conversion value rule sets are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRuleSetsRequest] google_ads_searchads360_v23_services__mutate_conversion_value_rule_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRuleSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRuleSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_conversion_value_rule_set(customer_id, google_ads_searchads360_v23_services__mutate_conversion_value_rule_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/conversionValueRuleSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRuleSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_conversion_value_rule_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRuleSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRuleSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes conversion value rules. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose conversion value rules are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRulesRequest] google_ads_searchads360_v23_services__mutate_conversion_value_rules_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_conversion_value_rule(customer_id, google_ads_searchads360_v23_services__mutate_conversion_value_rules_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/conversionValueRules:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRulesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_conversion_value_rules_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRulesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateConversionValueRulesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates custom audiences. Operation statuses are returned. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # CustomAudienceError]() [CustomInterestError]() [FieldError]() [FieldMaskError](
        # ) [HeaderError]() [InternalError]() [MutateError]() [
        # OperationAccessDeniedError]() [PolicyViolationError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose custom audiences are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomAudiencesRequest] google_ads_searchads360_v23_services__mutate_custom_audiences_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomAudiencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomAudiencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_custom_audience(customer_id, google_ads_searchads360_v23_services__mutate_custom_audiences_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customAudiences:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomAudiencesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_custom_audiences_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomAudiencesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomAudiencesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the requested custom column in full detail.
        # @param [String] resource_name
        #   Required. The resource name of the custom column to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesCustomColumn] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesCustomColumn]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_custom_column(resource_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/{+resourceName}', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesCustomColumn::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesCustomColumn
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all the custom columns associated with the customer in full detail.
        # @param [String] customer_id
        #   Required. The ID of the customer to apply the CustomColumn list operation to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCustomColumnsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCustomColumnsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_custom_columns(customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/customers/{+customerId}/customColumns', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCustomColumnsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListCustomColumnsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes custom conversion goals. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose custom conversion goals are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomConversionGoalsRequest] google_ads_searchads360_v23_services__mutate_custom_conversion_goals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomConversionGoalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomConversionGoalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_custom_conversion_goal(customer_id, google_ads_searchads360_v23_services__mutate_custom_conversion_goals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customConversionGoals:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomConversionGoalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_custom_conversion_goals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomConversionGoalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomConversionGoalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates custom interests. Operation statuses are returned. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [CriterionError](
        # ) [CustomInterestError]() [HeaderError]() [InternalError]() [MutateError]() [
        # PolicyViolationError]() [QuotaError]() [RequestError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose custom interests are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomInterestsRequest] google_ads_searchads360_v23_services__mutate_custom_interests_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomInterestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomInterestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_custom_interest(customer_id, google_ads_searchads360_v23_services__mutate_custom_interests_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customInterests:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomInterestsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_custom_interests_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomInterestsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomInterestsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, or removes customer asset sets. Operation statuses are returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose customer asset sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetSetsRequest] google_ads_searchads360_v23_services__mutate_customer_asset_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_asset_set(customer_id, google_ads_searchads360_v23_services__mutate_customer_asset_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerAssetSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_asset_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes customer assets. Operation statuses are returned.
        # List of thrown errors: [AssetLinkError]() [AuthenticationError]() [
        # AuthorizationError]() [FieldError]() [HeaderError]() [InternalError]() [
        # MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose customer assets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetsRequest] google_ads_searchads360_v23_services__mutate_customer_assets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_asset(customer_id, google_ads_searchads360_v23_services__mutate_customer_assets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerAssets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_assets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerAssetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a customer client link. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # DatabaseError]() [FieldError]() [FieldMaskError]() [HeaderError]() [
        # InternalError]() [ManagerLinkError]() [MutateError]() [
        # NewResourceCreationError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose customer link are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerClientLinkRequest] google_ads_searchads360_v23_services__mutate_customer_client_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerClientLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerClientLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_client_link(customer_id, google_ads_searchads360_v23_services__mutate_customer_client_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerClientLinks:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerClientLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_client_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerClientLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerClientLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes customer conversion goals. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose customer conversion goals are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerConversionGoalsRequest] google_ads_searchads360_v23_services__mutate_customer_conversion_goals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerConversionGoalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerConversionGoalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_conversion_goal(customer_id, google_ads_searchads360_v23_services__mutate_customer_conversion_goals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerConversionGoals:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerConversionGoalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_conversion_goals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerConversionGoalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerConversionGoalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and removes customer-label relationships. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [DatabaseError]() [HeaderError]() [InternalError]() [LabelError]() [
        # MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose customer-label relationships are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerLabelsRequest] google_ads_searchads360_v23_services__mutate_customer_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_label(customer_id, google_ads_searchads360_v23_services__mutate_customer_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerLabels:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerLabelsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_labels_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerLabelsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerLabelsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Process the given customer lifecycle configurations. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [
        # CustomerLifecycleGoalConfigError]() [HeaderError]() [InternalError]() [
        # QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer performing the upload.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCustomerLifecycleGoalsRequest] google_ads_searchads360_v23_services__configure_customer_lifecycle_goals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCustomerLifecycleGoalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCustomerLifecycleGoalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def configure_customer_customer_lifecycle_goal_customer_lifecycle_goals(customer_id, google_ads_searchads360_v23_services__configure_customer_lifecycle_goals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerLifecycleGoal:configureCustomerLifecycleGoals', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCustomerLifecycleGoalsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__configure_customer_lifecycle_goals_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCustomerLifecycleGoalsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesConfigureCustomerLifecycleGoalsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a client customer to a new manager customer. This simplifies the complex
        # request that requires two operations to move a client customer to a new
        # manager, for example: 1. Update operation with Status INACTIVE (previous
        # manager) and, 2. Update operation with Status ACTIVE (new manager). List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]()
        # [FieldError]() [HeaderError]() [InternalError]() [MutateError]() [QuotaError](
        # ) [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the client customer that is being moved.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMoveManagerLinkRequest] google_ads_searchads360_v23_services__move_manager_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMoveManagerLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMoveManagerLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_customer_customer_manager_link_manager_link(customer_id, google_ads_searchads360_v23_services__move_manager_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerManagerLinks:moveManagerLink', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMoveManagerLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__move_manager_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMoveManagerLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMoveManagerLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates customer manager links. Operation statuses are returned. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]()
        # [FieldError]() [FieldMaskError]() [HeaderError]() [InternalError]() [
        # ManagerLinkError]() [MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose customer manager links are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerManagerLinkRequest] google_ads_searchads360_v23_services__mutate_customer_manager_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerManagerLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerManagerLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_manager_link(customer_id, google_ads_searchads360_v23_services__mutate_customer_manager_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerManagerLinks:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerManagerLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_manager_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerManagerLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerManagerLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes criteria. Operation statuses are returned. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [CriterionError]() [
        # DatabaseError]() [FieldError]() [HeaderError]() [InternalError]() [MutateError]
        # () [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose criteria are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerNegativeCriteriaRequest] google_ads_searchads360_v23_services__mutate_customer_negative_criteria_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerNegativeCriteriaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerNegativeCriteriaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_negative_criterium(customer_id, google_ads_searchads360_v23_services__mutate_customer_negative_criteria_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerNegativeCriteria:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerNegativeCriteriaRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_negative_criteria_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerNegativeCriteriaResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerNegativeCriteriaResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates the CustomerSkAdNetworkConversionValueSchema. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [FieldError]() [
        # InternalError]() [MutateError]()
        # @param [String] customer_id
        #   The ID of the customer whose shared sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerSkAdNetworkConversionValueSchemaRequest] google_ads_searchads360_v23_services__mutate_customer_sk_ad_network_conversion_value_schema_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerSkAdNetworkConversionValueSchemaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerSkAdNetworkConversionValueSchemaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_sk_ad_network_conversion_value_schema(customer_id, google_ads_searchads360_v23_services__mutate_customer_sk_ad_network_conversion_value_schema_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerSkAdNetworkConversionValueSchemas:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerSkAdNetworkConversionValueSchemaRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_sk_ad_network_conversion_value_schema_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerSkAdNetworkConversionValueSchemaResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerSkAdNetworkConversionValueSchemaResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes an access invitation. List of thrown errors: [
        # AccessInvitationError]() [AuthenticationError]() [AuthorizationError]() [
        # HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose access invitation is being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessInvitationRequest] google_ads_searchads360_v23_services__mutate_customer_user_access_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessInvitationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessInvitationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_user_access_invitation(customer_id, google_ads_searchads360_v23_services__mutate_customer_user_access_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerUserAccessInvitations:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessInvitationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_user_access_invitation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessInvitationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessInvitationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates, removes permission of a user on a given customer. Operation statuses
        # are returned. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [CustomerUserAccessError]() [FieldMaskError]() [
        # HeaderError]() [InternalError]() [MutateError]() [QuotaError]() [RequestError](
        # )
        # @param [String] customer_id
        #   Required. The ID of the customer being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessRequest] google_ads_searchads360_v23_services__mutate_customer_user_access_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customer_user_access(customer_id, google_ads_searchads360_v23_services__mutate_customer_user_access_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customerUserAccesses:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customer_user_access_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomerUserAccessResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates or removes customizer attributes. Operation statuses are
        # returned.
        # @param [String] customer_id
        #   Required. The ID of the customer whose customizer attributes are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomizerAttributesRequest] google_ads_searchads360_v23_services__mutate_customizer_attributes_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomizerAttributesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomizerAttributesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_customizer_attribute(customer_id, google_ads_searchads360_v23_services__mutate_customizer_attributes_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/customizerAttributes:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomizerAttributesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_customizer_attributes_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomizerAttributesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateCustomizerAttributesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a data link. The requesting Google Ads account name and account ID
        # will be shared with the third party (such as YouTube creators for video links)
        # to whom you are creating the link with. Only customers on the allow-list can
        # create data links. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [DataLinkError]() [FieldError]() [
        # HeaderError]() [InternalError]() [MutateError]() [QuotaError]() [RequestError](
        # )
        # @param [String] customer_id
        #   Required. The ID of the customer for which the data link is created.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateDataLinkRequest] google_ads_searchads360_v23_services__create_data_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateDataLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateDataLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_data_link(customer_id, google_ads_searchads360_v23_services__create_data_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/dataLinks:create', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateDataLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__create_data_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateDataLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateDataLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove a data link. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [DataLinkError]() [FieldError]() [
        # HeaderError]() [InternalError]() [MutateError]() [QuotaError]() [RequestError](
        # )
        # @param [String] customer_id
        #   Required. The ID of the customer for which the data link is updated.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveDataLinkRequest] google_ads_searchads360_v23_services__remove_data_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveDataLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveDataLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_customer_data_link(customer_id, google_ads_searchads360_v23_services__remove_data_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/dataLinks:remove', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveDataLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__remove_data_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveDataLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveDataLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a data link. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [DataLinkError]() [FieldError]() [
        # HeaderError]() [InternalError]() [MutateError]() [QuotaError]() [RequestError](
        # )
        # @param [String] customer_id
        #   Required. The ID of the customer for which the data link is created.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateDataLinkRequest] google_ads_searchads360_v23_services__update_data_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateDataLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateDataLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_customer_data_link(customer_id, google_ads_searchads360_v23_services__update_data_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/dataLinks:update', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateDataLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__update_data_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateDataLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateDataLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes experiment arms. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # ExperimentArmError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose experiments are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentArmsRequest] google_ads_searchads360_v23_services__mutate_experiment_arms_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentArmsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentArmsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_experiment_arm(customer_id, google_ads_searchads360_v23_services__mutate_experiment_arms_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/experimentArms:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentArmsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_experiment_arms_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentArmsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentArmsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Immediately ends an experiment, changing the experiment's scheduled end date
        # and without waiting for end of day. End date is updated to be the time of the
        # request. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [ExperimentError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] experiment
        #   Required. The resource name of the campaign experiment to end.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEndExperimentRequest] google_ads_searchads360_v23_services__end_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def end_customer_experiment_experiment(experiment, google_ads_searchads360_v23_services__end_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+experiment}:endExperiment', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesEndExperimentRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__end_experiment_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleProtobufEmpty
          command.params['experiment'] = experiment unless experiment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Graduates an experiment to a full campaign. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [ExperimentError]() [HeaderError]
        # () [InternalError]() [MutateError]() [QuotaError]() [RequestError]()
        # @param [String] experiment
        #   Required. The experiment to be graduated.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGraduateExperimentRequest] google_ads_searchads360_v23_services__graduate_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def graduate_customer_experiment_experiment(experiment, google_ads_searchads360_v23_services__graduate_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+experiment}:graduateExperiment', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGraduateExperimentRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__graduate_experiment_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleProtobufEmpty
          command.params['experiment'] = experiment unless experiment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all errors that occurred during the last Experiment update (either
        # scheduling or promotion). Supports standard list paging. List of thrown errors:
        # [AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]
        # () [QuotaError]() [RequestError]()
        # @param [String] resource_name
        #   Required. The name of the experiment from which to retrieve the async errors.
        # @param [Fixnum] page_size
        #   Number of elements to retrieve in a single page. When a page request is too
        #   large, the server may decide to further limit the number of returned resources.
        #   The maximum page size is 1000.
        # @param [String] page_token
        #   Token of the page to retrieve. If not specified, the first page of results
        #   will be returned. Use the value obtained from `next_page_token` in the
        #   previous response in order to request the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListExperimentAsyncErrorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListExperimentAsyncErrorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_experiment_experiment_async_errors(resource_name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/{+resourceName}:listExperimentAsyncErrors', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListExperimentAsyncErrorsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListExperimentAsyncErrorsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes experiments. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # ExperimentError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose experiments are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentsRequest] google_ads_searchads360_v23_services__mutate_experiments_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_experiment(customer_id, google_ads_searchads360_v23_services__mutate_experiments_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/experiments:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_experiments_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateExperimentsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Promotes the trial campaign thus applying changes in the trial campaign to the
        # base campaign. This method returns a long running operation that tracks the
        # promotion of the experiment campaign. If it fails, a list of errors can be
        # retrieved using the ListExperimentAsyncErrors method. The operation's metadata
        # will be a string containing the resource name of the created experiment. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # ExperimentError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] resource_name
        #   Required. The resource name of the experiment to promote.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesPromoteExperimentRequest] google_ads_searchads360_v23_services__promote_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def promote_customer_experiment_experiment(resource_name, google_ads_searchads360_v23_services__promote_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:promoteExperiment', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesPromoteExperimentRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__promote_experiment_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleLongrunningOperation
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Schedule an experiment. The in design campaign will be converted into a real
        # campaign (called the experiment campaign) that will begin serving ads if
        # successfully created. The experiment is scheduled immediately with status
        # INITIALIZING. This method returns a long running operation that tracks the
        # forking of the in design campaign. If the forking fails, a list of errors can
        # be retrieved using the ListExperimentAsyncErrors method. The operation's
        # metadata will be a string containing the resource name of the created
        # experiment. List of thrown errors: [AuthenticationError]() [AuthorizationError]
        # () [ExperimentError]() [DatabaseError]() [DateError]() [DateRangeError]() [
        # FieldError]() [HeaderError]() [InternalError]() [QuotaError]() [RangeError]() [
        # RequestError]()
        # @param [String] resource_name
        #   Required. The scheduled experiment.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesScheduleExperimentRequest] google_ads_searchads360_v23_services__schedule_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def schedule_customer_experiment_experiment(resource_name, google_ads_searchads360_v23_services__schedule_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:scheduleExperiment', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesScheduleExperimentRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__schedule_experiment_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleLongrunningOperation
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies the incentive for the ads customer.
        # @param [String] customer_id
        #   The customer ID of the account that the incentive is being applied to.
        # @param [Fixnum] selected_incentive_id
        #   The incentive ID of this incentive. This is used to identify which incentive
        #   is selected by the user in the CYO flow.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyIncentiveRequest] google_ads_searchads360_v23_services__apply_incentive_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyIncentiveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyIncentiveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def apply_customer_incentive_incentive(customer_id, selected_incentive_id, google_ads_searchads360_v23_services__apply_incentive_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/incentives/{+selectedIncentiveId}:applyIncentive', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyIncentiveRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__apply_incentive_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyIncentiveResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyIncentiveResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['selectedIncentiveId'] = selected_incentive_id unless selected_incentive_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all invoices associated with a billing setup, for a given month. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [FieldError]()
        # [HeaderError]() [InternalError]() [InvoiceError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer to fetch invoices for.
        # @param [String] billing_setup
        #   Required. The billing setup resource name of the requested invoices. `
        #   customers/`customer_id`/billingSetups/`billing_setup_id``
        # @param [Boolean] include_granular_level_invoice_details
        #   Optional. When true, the response will include more granular level invoice
        #   details such as campaign level cost breakdown, itemized regulatory costs and
        #   adjustments. The default value is false.
        # @param [String] issue_month
        #   Required. The issue month to retrieve invoices.
        # @param [String] issue_year
        #   Required. The issue year to retrieve invoices, in yyyy format. Only invoices
        #   issued in 2019 or later can be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInvoicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInvoicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_invoices(customer_id, billing_setup: nil, include_granular_level_invoice_details: nil, issue_month: nil, issue_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/customers/{+customerId}/invoices', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInvoicesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListInvoicesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['billingSetup'] = billing_setup unless billing_setup.nil?
          command.query['includeGranularLevelInvoiceDetails'] = include_granular_level_invoice_details unless include_granular_level_invoice_details.nil?
          command.query['issueMonth'] = issue_month unless issue_month.nil?
          command.query['issueYear'] = issue_year unless issue_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes Keyword Plan ad group keywords. Operation
        # statuses are returned. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [KeywordPlanAdGroupKeywordError]() [KeywordPlanError]() [
        # MutateError]() [QuotaError]() [RequestError]() [
        # ResourceCountLimitExceededError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose Keyword Plan ad group keywords are
        #   being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupKeywordsRequest] google_ads_searchads360_v23_services__mutate_keyword_plan_ad_group_keywords_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupKeywordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupKeywordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_keyword_plan_ad_group_keyword(customer_id, google_ads_searchads360_v23_services__mutate_keyword_plan_ad_group_keywords_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/keywordPlanAdGroupKeywords:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupKeywordsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_keyword_plan_ad_group_keywords_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupKeywordsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupKeywordsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes Keyword Plan ad groups. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [DatabaseError]() [FieldError]() [FieldMaskError]() [HeaderError]() [
        # InternalError]() [KeywordPlanAdGroupError]() [KeywordPlanError]() [MutateError]
        # () [NewResourceCreationError]() [QuotaError]() [RequestError]() [
        # ResourceCountLimitExceededError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose Keyword Plan ad groups are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupsRequest] google_ads_searchads360_v23_services__mutate_keyword_plan_ad_groups_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_keyword_plan_ad_group(customer_id, google_ads_searchads360_v23_services__mutate_keyword_plan_ad_groups_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/keywordPlanAdGroups:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_keyword_plan_ad_groups_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanAdGroupsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes Keyword Plan campaign keywords. Operation
        # statuses are returned. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [KeywordPlanAdGroupKeywordError]() [
        # KeywordPlanCampaignKeywordError]() [QuotaError]() [RequestError]() [
        # ResourceCountLimitExceededError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose campaign keywords are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignKeywordsRequest] google_ads_searchads360_v23_services__mutate_keyword_plan_campaign_keywords_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignKeywordsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignKeywordsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_keyword_plan_campaign_keyword(customer_id, google_ads_searchads360_v23_services__mutate_keyword_plan_campaign_keywords_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/keywordPlanCampaignKeywords:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignKeywordsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_keyword_plan_campaign_keywords_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignKeywordsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignKeywordsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes Keyword Plan campaigns. Operation statuses are
        # returned. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [DatabaseError]() [FieldError]() [FieldMaskError]() [HeaderError]() [
        # InternalError]() [KeywordPlanCampaignError]() [KeywordPlanError]() [
        # ListOperationError]() [MutateError]() [QuotaError]() [RangeError]() [
        # RequestError]() [ResourceCountLimitExceededError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose Keyword Plan campaigns are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignsRequest] google_ads_searchads360_v23_services__mutate_keyword_plan_campaigns_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_keyword_plan_campaign(customer_id, google_ads_searchads360_v23_services__mutate_keyword_plan_campaigns_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/keywordPlanCampaigns:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_keyword_plan_campaigns_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlanCampaignsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes keyword plans. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # DatabaseError]() [FieldError]() [HeaderError]() [InternalError]() [
        # KeywordPlanError]() [MutateError]() [NewResourceCreationError]() [QuotaError]()
        # [RequestError]() [ResourceCountLimitExceededError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose keyword plans are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlansRequest] google_ads_searchads360_v23_services__mutate_keyword_plans_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlansResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlansResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_keyword_plan(customer_id, google_ads_searchads360_v23_services__mutate_keyword_plans_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/keywordPlans:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlansRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_keyword_plans_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlansResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateKeywordPlansResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes labels. Operation statuses are returned. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]()
        # [DateError]() [DistinctError]() [FieldError]() [FieldMaskError]() [
        # HeaderError]() [IdError]() [InternalError]() [LabelError]() [MutateError]() [
        # NewResourceCreationError]() [NotEmptyError]() [NullError]() [OperatorError]() [
        # QuotaError]() [RangeError]() [RequestError]() [ResourceCountLimitExceededError]
        # () [SizeLimitError]() [StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. ID of the customer whose labels are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateLabelsRequest] google_ads_searchads360_v23_services__mutate_labels_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateLabelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateLabelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_label(customer_id, google_ads_searchads360_v23_services__mutate_labels_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/labels:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateLabelsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_labels_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateLabelsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateLabelsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RPC to append Local Services Lead Conversation resources to Local Services
        # Lead resources.
        # @param [String] customer_id
        #   Required. The Id of the customer which owns the leads onto which the
        #   conversations will be appended.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAppendLeadConversationRequest] google_ads_searchads360_v23_services__append_lead_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAppendLeadConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAppendLeadConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def append_customer_local_service_lead_conversation(customer_id, google_ads_searchads360_v23_services__append_lead_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/localServices:appendLeadConversation', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAppendLeadConversationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__append_lead_conversation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAppendLeadConversationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAppendLeadConversationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # RPC to provide feedback on Local Services Lead resources.
        # @param [String] resource_name
        #   Required. The resource name of the local services lead that for which the
        #   feedback is being provided.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesProvideLeadFeedbackRequest] google_ads_searchads360_v23_services__provide_lead_feedback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesProvideLeadFeedbackResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesProvideLeadFeedbackResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provide_customer_local_services_lead_lead_feedback(resource_name, google_ads_searchads360_v23_services__provide_lead_feedback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:provideLeadFeedback', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesProvideLeadFeedbackRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__provide_lead_feedback_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesProvideLeadFeedbackResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesProvideLeadFeedbackResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds operations to the offline user data job. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [DatabaseError]() [FieldError]()
        # [HeaderError]() [InternalError]() [MutateError]() [OfflineUserDataJobError]() [
        # QuotaError]() [RequestError]()
        # @param [String] resource_name
        #   Required. The resource name of the OfflineUserDataJob.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddOfflineUserDataJobOperationsRequest] google_ads_searchads360_v23_services__add_offline_user_data_job_operations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddOfflineUserDataJobOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddOfflineUserDataJobOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_customer_offline_user_data_job_operations(resource_name, google_ads_searchads360_v23_services__add_offline_user_data_job_operations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:addOperations', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddOfflineUserDataJobOperationsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__add_offline_user_data_job_operations_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddOfflineUserDataJobOperationsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesAddOfflineUserDataJobOperationsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an offline user data job. List of thrown errors: [AuthenticationError](
        # ) [AuthorizationError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [NotAllowlistedError]() [OfflineUserDataJobError]() [
        # QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer for which to create an offline user data job.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateOfflineUserDataJobRequest] google_ads_searchads360_v23_services__create_offline_user_data_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateOfflineUserDataJobResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateOfflineUserDataJobResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_offline_user_data_job(customer_id, google_ads_searchads360_v23_services__create_offline_user_data_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/offlineUserDataJobs:create', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateOfflineUserDataJobRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__create_offline_user_data_job_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateOfflineUserDataJobResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateOfflineUserDataJobResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs the offline user data job. When finished, the long running operation will
        # contain the processing result or failure information, if any. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]() [
        # HeaderError]() [InternalError]() [OfflineUserDataJobError]() [QuotaError]() [
        # RequestError]()
        # @param [String] resource_name
        #   Required. The resource name of the OfflineUserDataJob to run.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRunOfflineUserDataJobRequest] google_ads_searchads360_v23_services__run_offline_user_data_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_customer_offline_user_data_job(resource_name, google_ads_searchads360_v23_services__run_offline_user_data_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:run', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRunOfflineUserDataJobRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__run_offline_user_data_job_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleLongrunningOperation
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all payments accounts associated with all managers between the login
        # customer ID and specified serving customer in the hierarchy, inclusive. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError](
        # ) [InternalError]() [PaymentsAccountError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer to apply the PaymentsAccount list operation
        #   to.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPaymentsAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPaymentsAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_payments_accounts(customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/customers/{+customerId}/paymentsAccounts', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPaymentsAccountsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPaymentsAccountsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a product link invitation.
        # @param [String] customer_id
        #   Required. The ID of the customer being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkInvitationRequest] google_ads_searchads360_v23_services__create_product_link_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkInvitationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkInvitationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_product_link_invitation(customer_id, google_ads_searchads360_v23_services__create_product_link_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/productLinkInvitations:create', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkInvitationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__create_product_link_invitation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkInvitationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkInvitationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Remove a product link invitation.
        # @param [String] customer_id
        #   Required. The ID of the product link invitation being removed.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkInvitationRequest] google_ads_searchads360_v23_services__remove_product_link_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkInvitationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkInvitationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_customer_product_link_invitation(customer_id, google_ads_searchads360_v23_services__remove_product_link_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/productLinkInvitations:remove', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkInvitationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__remove_product_link_invitation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkInvitationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkInvitationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a product link invitation.
        # @param [String] customer_id
        #   Required. The ID of the customer being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateProductLinkInvitationRequest] google_ads_searchads360_v23_services__update_product_link_invitation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateProductLinkInvitationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateProductLinkInvitationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_customer_product_link_invitation(customer_id, google_ads_searchads360_v23_services__update_product_link_invitation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/productLinkInvitations:update', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateProductLinkInvitationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__update_product_link_invitation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateProductLinkInvitationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesUpdateProductLinkInvitationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a product link. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [DatabaseError]() [FieldError]() [HeaderError]() [
        # InternalError]() [MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer for which the product link is created.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkRequest] google_ads_searchads360_v23_services__create_product_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_product_link(customer_id, google_ads_searchads360_v23_services__create_product_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/productLinks:create', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__create_product_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesCreateProductLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a product link. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [FieldMaskError]() [HeaderError]() [InternalError]() [
        # MutateError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkRequest] google_ads_searchads360_v23_services__remove_product_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_customer_product_link(customer_id, google_ads_searchads360_v23_services__remove_product_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/productLinks:remove', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__remove_product_link_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRemoveProductLinkResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Mutates given subscription with corresponding apply parameters. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]() [
        # FieldError]() [HeaderError]() [InternalError]() [MutateError]() [QuotaError]()
        # [RecommendationError]() [RecommendationSubscriptionError]() [RequestError]() [
        # UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the subscribing customer.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRecommendationSubscriptionRequest] google_ads_searchads360_v23_services__mutate_recommendation_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRecommendationSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRecommendationSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_recommendation_subscription_recommendation_subscription(customer_id, google_ads_searchads360_v23_services__mutate_recommendation_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/recommendationSubscriptions:mutateRecommendationSubscription', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRecommendationSubscriptionRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_recommendation_subscription_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRecommendationSubscriptionResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRecommendationSubscriptionResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Applies given recommendations with corresponding apply parameters. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [DatabaseError]()
        # [FieldError]() [HeaderError]() [InternalError]() [MutateError]() [QuotaError](
        # ) [RecommendationError]() [RequestError]() [UrlFieldError]()
        # @param [String] customer_id
        #   Required. The ID of the customer with the recommendation.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyRecommendationRequest] google_ads_searchads360_v23_services__apply_recommendation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyRecommendationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyRecommendationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def apply_customer_recommendation(customer_id, google_ads_searchads360_v23_services__apply_recommendation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/recommendations:apply', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyRecommendationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__apply_recommendation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyRecommendationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesApplyRecommendationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Dismisses given recommendations. List of thrown errors: [AuthenticationError]()
        # [AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RecommendationError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer with the recommendation.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesDismissRecommendationRequest] google_ads_searchads360_v23_services__dismiss_recommendation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesDismissRecommendationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesDismissRecommendationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def dismiss_customer_recommendation(customer_id, google_ads_searchads360_v23_services__dismiss_recommendation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/recommendations:dismiss', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesDismissRecommendationRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__dismiss_recommendation_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesDismissRecommendationResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesDismissRecommendationResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates Recommendations based off the requested recommendation_types. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError](
        # ) [InternalError]() [QuotaError]() [RecommendationError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer generating recommendations.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateRecommendationsRequest] google_ads_searchads360_v23_services__generate_recommendations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateRecommendationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateRecommendationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_customer_recommendation(customer_id, google_ads_searchads360_v23_services__generate_recommendations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/recommendations:generate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateRecommendationsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_recommendations_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateRecommendationsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateRecommendationsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates remarketing actions. Operation statuses are returned. List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # ConversionActionError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose remarketing actions are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRemarketingActionsRequest] google_ads_searchads360_v23_services__mutate_remarketing_actions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRemarketingActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRemarketingActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_remarketing_action(customer_id, google_ads_searchads360_v23_services__mutate_remarketing_actions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/remarketingActions:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRemarketingActionsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_remarketing_actions_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRemarketingActionsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateRemarketingActionsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method is essentially a wrapper around a series of mutate methods. The
        # only features it offers over calling those methods directly are: - Atomic
        # transactions - Temp resource names (described below) - Somewhat reduced
        # latency over making a series of mutate calls Note: Only resources that support
        # atomic transactions are included, so this method can't replace all calls to
        # individual services. ## Atomic Transaction Benefits Atomicity makes error
        # handling much easier. If you're making a series of changes and one fails, it
        # can leave your account in an inconsistent state. With atomicity, you either
        # reach the chosen state directly, or the request fails and you can retry. ##
        # Temp Resource Names Temp resource names are a special type of resource name
        # used to create a resource and reference that resource in the same request. For
        # example, if a is created with `resource_name` equal to ``, that resource name
        # can be reused in the `` field in the same request. That way, the two resources
        # are created and linked atomically. To create a temp resource name, put a
        # negative number in the part of the name that the server would normally
        # allocate. Note: - Resources must be created with a temp name before the name
        # can be reused. For example, the previous example would fail if the mutate
        # order was reversed. - Temp names are not remembered across requests. - There's
        # no limit to the number of temp names in a request. - Each temp name must use a
        # unique negative number, even if the resource types differ. ## Latency It's
        # important to group mutates by resource type or the request may time out and
        # fail. Latency is roughly equal to a series of calls to individual mutate
        # methods, where each change in resource type is a new call. For example,
        # mutating is like 2 calls, while mutating is like 4 calls. List of thrown
        # errors: [AdCustomizerError]() [AdError]() [AdGroupAdError]() [
        # AdGroupCriterionError]() [AdGroupError]() [AssetError]() [AuthenticationError](
        # ) [AuthorizationError]() [BiddingError]() [CampaignBudgetError]() [
        # CampaignCriterionError]() [CampaignError]() [CampaignExperimentError]() [
        # CampaignSharedSetError]() [CollectionSizeError]() [ContextError]() [
        # ConversionActionError]() [CriterionError]() [CustomerFeedError]() [
        # DatabaseError]() [DateError]() [DateRangeError]() [DistinctError]() [
        # ExtensionFeedItemError]() [ExtensionSettingError]() [
        # FeedAttributeReferenceError]() [FeedError]() [FeedItemError]() [
        # FeedItemSetError]() [FieldError]() [FieldMaskError]() [FunctionParsingError]()
        # [HeaderError]() [ImageError]() [InternalError]() [
        # KeywordPlanAdGroupKeywordError]() [KeywordPlanCampaignError]() [
        # KeywordPlanError]() [LabelError]() [ListOperationError]() [MediaUploadError]()
        # [MutateError]() [NewResourceCreationError]() [NullError]() [
        # OperationAccessDeniedError]() [PolicyFindingError]() [PolicyViolationError]() [
        # QuotaError]() [RangeError]() [RequestError]() [ResourceCountLimitExceededError]
        # () [SettingError]() [SharedSetError]() [SizeLimitError]() [StringFormatError]()
        # [StringLengthError]() [UrlFieldError]() [UserListError]() [
        # YoutubeVideoRegistrationError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose resources are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSearchAds360Request] google_ads_searchads360_v23_services__mutate_search_ads360_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSearchAds360Response] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSearchAds360Response]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_search_ads360(customer_id, google_ads_searchads360_v23_services__mutate_search_ads360_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/searchAds360:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSearchAds360Request::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_search_ads360_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSearchAds360Response::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSearchAds360Response
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all rows that match the search query. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [ChangeEventError]() [
        # ChangeStatusError]() [ClickViewError]() [HeaderError]() [InternalError]() [
        # QueryError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer being queried.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360Request] google_ads_searchads360_v23_services__search_search_ads360_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360Response] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360Response]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_customer_search_ads360s(customer_id, google_ads_searchads360_v23_services__search_search_ads360_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/searchAds360:search', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360Request::Representation
          command.request_object = google_ads_searchads360_v23_services__search_search_ads360_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360Response::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360Response
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or removes shared criteria. Operation statuses are returned. List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [CriterionError](
        # ) [DatabaseError]() [DistinctError]() [FieldError]() [HeaderError]() [IdError](
        # ) [InternalError]() [MutateError]() [NotEmptyError]() [NullError]() [
        # OperatorError]() [QuotaError]() [RangeError]() [RequestError]() [
        # ResourceCountLimitExceededError]() [SizeLimitError]() [StringFormatError]() [
        # StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose shared criteria are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedCriteriaRequest] google_ads_searchads360_v23_services__mutate_shared_criteria_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedCriteriaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedCriteriaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_shared_criterium(customer_id, google_ads_searchads360_v23_services__mutate_shared_criteria_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/sharedCriteria:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedCriteriaRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_shared_criteria_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedCriteriaResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedCriteriaResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates, updates, or removes shared sets. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # DatabaseError]() [DateError]() [DistinctError]() [FieldError]() [
        # FieldMaskError]() [HeaderError]() [IdError]() [InternalError]() [MutateError]()
        # [NewResourceCreationError]() [NotEmptyError]() [NullError]() [OperatorError]()
        # [QuotaError]() [RangeError]() [RequestError]() [
        # ResourceCountLimitExceededError]() [SharedSetError]() [SizeLimitError]() [
        # StringFormatError]() [StringLengthError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose shared sets are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedSetsRequest] google_ads_searchads360_v23_services__mutate_shared_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_shared_set(customer_id, google_ads_searchads360_v23_services__mutate_shared_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/sharedSets:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedSetsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_shared_sets_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedSetsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSharedSetsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the status of the requested Smart campaign.
        # @param [String] resource_name
        #   Required. The resource name of the Smart campaign setting belonging to the
        #   Smart campaign to fetch the status of.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetSmartCampaignStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetSmartCampaignStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_smart_campaign_setting_smart_campaign_status(resource_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/{+resourceName}:getSmartCampaignStatus', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetSmartCampaignStatusResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGetSmartCampaignStatusResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates Smart campaign settings for campaigns.
        # @param [String] customer_id
        #   Required. The ID of the customer whose Smart campaign settings are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSmartCampaignSettingsRequest] google_ads_searchads360_v23_services__mutate_smart_campaign_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSmartCampaignSettingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSmartCampaignSettingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_smart_campaign_setting(customer_id, google_ads_searchads360_v23_services__mutate_smart_campaign_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/smartCampaignSettings:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSmartCampaignSettingsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_smart_campaign_settings_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSmartCampaignSettingsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateSmartCampaignSettingsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Regenerate ThirdPartyAppAnalyticsLink.shareable_link_id that should be
        # provided to the third party when setting up app analytics. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RequestError]()
        # @param [String] resource_name
        #   Resource name of the third party app analytics link.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRegenerateShareableLinkIdRequest] google_ads_searchads360_v23_services__regenerate_shareable_link_id_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRegenerateShareableLinkIdResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRegenerateShareableLinkIdResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def regenerate_customer_third_party_app_analytics_link_shareable_link_id(resource_name, google_ads_searchads360_v23_services__regenerate_shareable_link_id_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/{+resourceName}:regenerateShareableLinkId', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRegenerateShareableLinkIdRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__regenerate_shareable_link_id_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRegenerateShareableLinkIdResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesRegenerateShareableLinkIdResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Attach or remove user list customer types. Operation statuses are returned.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # UserListCustomerTypeError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose user list customer types are being
        #   modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListCustomerTypesRequest] google_ads_searchads360_v23_services__mutate_user_list_customer_types_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListCustomerTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListCustomerTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_user_list_customer_type(customer_id, google_ads_searchads360_v23_services__mutate_user_list_customer_types_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/userListCustomerTypes:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListCustomerTypesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_user_list_customer_types_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListCustomerTypesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListCustomerTypesResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates user lists. Operation statuses are returned. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [CollectionSizeError]()
        # [DatabaseError]() [DistinctError]() [FieldError]() [FieldMaskError]() [
        # HeaderError]() [InternalError]() [MutateError]() [NewResourceCreationError]() [
        # NotAllowlistedError]() [NotEmptyError]() [OperationAccessDeniedError]() [
        # QuotaError]() [RangeError]() [RequestError]() [StringFormatError]() [
        # StringLengthError]() [UserListError]()
        # @param [String] customer_id
        #   Required. The ID of the customer whose user lists are being modified.
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListsRequest] google_ads_searchads360_v23_services__mutate_user_lists_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mutate_customer_user_list(customer_id, google_ads_searchads360_v23_services__mutate_user_lists_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/customers/{+customerId}/userLists:mutate', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__mutate_user_lists_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesMutateUserListsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns GeoTargetConstant suggestions by location name or by resource name.
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # GeoTargetConstantSuggestionError]() [HeaderError]() [InternalError]() [
        # QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestGeoTargetConstantsRequest] google_ads_searchads360_v23_services__suggest_geo_target_constants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestGeoTargetConstantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestGeoTargetConstantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_geo_target_constant(google_ads_searchads360_v23_services__suggest_geo_target_constants_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/geoTargetConstants:suggest', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestGeoTargetConstantsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__suggest_geo_target_constants_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestGeoTargetConstantsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestGeoTargetConstantsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns incentives for a given user.
        # @param [String] country_code
        #   Optional. User's country code. If not provided, the server will default to "US"
        #   . Possible country codes: https://developers.google.com/google-ads/api/data/
        #   codes-formats#country_codes
        # @param [String] email
        #   Optional. Email of the user that the requested incentive is meant for. Will be
        #   used for channel partners who do NOT use OAuth to authenticate on behalf of
        #   user.
        # @param [String] language_code
        #   Optional. User's language code. If not provided, the server will default to "
        #   en". Possible language codes: https://developers.google.com/google-ads/api/
        #   data/codes-formats#languages
        # @param [String] type
        #   Optional. The type of incentive to get. Defaults to ACQUISITION.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesFetchIncentiveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesFetchIncentiveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_incentive_incentive(country_code: nil, email: nil, language_code: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/incentives:fetchIncentive', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesFetchIncentiveResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesFetchIncentiveResponse
          command.query['countryCode'] = country_code unless country_code.nil?
          command.query['email'] = email unless email.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns KeywordThemeConstant suggestions by keyword themes. List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemeConstantsRequest] google_ads_searchads360_v23_services__suggest_keyword_theme_constants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemeConstantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemeConstantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suggest_keyword_theme_constant(google_ads_searchads360_v23_services__suggest_keyword_theme_constants_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/keywordThemeConstants:suggest', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemeConstantsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__suggest_keyword_theme_constants_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemeConstantsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSuggestKeywordThemeConstantsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns just the requested field. List of thrown errors: [AuthenticationError](
        # ) [AuthorizationError]() [HeaderError]() [InternalError]() [QuotaError]() [
        # RequestError]()
        # @param [String] resource_name
        #   Required. The resource name of the field to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesSearchAds360Field] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesSearchAds360Field]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_search_ads360_field(resource_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v23/{+resourceName}', options)
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesSearchAds360Field::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ResourcesSearchAds360Field
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all fields that match the search [query](/search-ads/reporting/
        # concepts/field-service#use_a_query_to_get_field_details). List of thrown
        # errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [
        # InternalError]() [QueryError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360FieldsRequest] google_ads_searchads360_v23_services__search_search_ads360_fields_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360FieldsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360FieldsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_search_ads360_fields(google_ads_searchads360_v23_services__search_search_ads360_fields_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23/searchAds360Fields:search', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360FieldsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__search_search_ads360_fields_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360FieldsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesSearchSearchAds360FieldsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of conversion rate suggestions for supported plannable
        # products. List of thrown errors: [AuthenticationError]() [AuthorizationError]()
        # [HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateConversionRatesRequest] google_ads_searchads360_v23_services__generate_conversion_rates_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateConversionRatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateConversionRatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_conversion_rates(google_ads_searchads360_v23_services__generate_conversion_rates_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:generateConversionRates', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateConversionRatesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__generate_conversion_rates_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateConversionRatesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesGenerateConversionRatesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a date range that supports benchmarks. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [FieldError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksAvailableDatesRequest] google_ads_searchads360_v23_services__list_benchmarks_available_dates_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksAvailableDatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksAvailableDatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_benchmarks_available_dates(google_ads_searchads360_v23_services__list_benchmarks_available_dates_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listBenchmarksAvailableDates', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksAvailableDatesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_benchmarks_available_dates_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksAvailableDatesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksAvailableDatesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of locations that support benchmarks (for example, countries).
        # List of thrown errors: [AuthenticationError]() [AuthorizationError]() [
        # FieldError]() [HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksLocationsRequest] google_ads_searchads360_v23_services__list_benchmarks_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_benchmarks_locations(google_ads_searchads360_v23_services__list_benchmarks_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listBenchmarksLocations', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksLocationsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_benchmarks_locations_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksLocationsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksLocationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of products that supports benchmarks. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [FieldError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksProductsRequest] google_ads_searchads360_v23_services__list_benchmarks_products_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_benchmarks_products(google_ads_searchads360_v23_services__list_benchmarks_products_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listBenchmarksProducts', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksProductsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_benchmarks_products_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksProductsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksProductsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of benchmarks sources (for example, Industry Verticals). List
        # of thrown errors: [AuthenticationError]() [AuthorizationError]() [FieldError]()
        # [HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksSourcesRequest] google_ads_searchads360_v23_services__list_benchmarks_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_benchmarks_sources(google_ads_searchads360_v23_services__list_benchmarks_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listBenchmarksSources', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksSourcesRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_benchmarks_sources_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksSourcesResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListBenchmarksSourcesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of plannable locations (for example, countries). List of
        # thrown errors: [AuthenticationError]() [AuthorizationError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableLocationsRequest] google_ads_searchads360_v23_services__list_plannable_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_plannable_locations(google_ads_searchads360_v23_services__list_plannable_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listPlannableLocations', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableLocationsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_plannable_locations_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableLocationsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableLocationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of per-location plannable YouTube ad formats with allowed
        # targeting. List of thrown errors: [AuthenticationError]() [AuthorizationError](
        # ) [HeaderError]() [InternalError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableProductsRequest] google_ads_searchads360_v23_services__list_plannable_products_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_plannable_products(google_ads_searchads360_v23_services__list_plannable_products_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listPlannableProducts', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableProductsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_plannable_products_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableProductsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableProductsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of plannable user interests. A plannable user interest is one
        # that can be targeted in a reach forecast using ReachPlanService.
        # GenerateReachForecast. List of thrown errors: [AuthenticationError]() [
        # AuthorizationError]() [FieldError]() [HeaderError]() [InternalError]() [
        # ListOperationError]() [QuotaError]() [RequestError]() [StringLengthError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserInterestsRequest] google_ads_searchads360_v23_services__list_plannable_user_interests_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserInterestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserInterestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_plannable_user_interests(google_ads_searchads360_v23_services__list_plannable_user_interests_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listPlannableUserInterests', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserInterestsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_plannable_user_interests_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserInterestsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserInterestsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of plannable user lists with their plannable status. User
        # lists may not be plannable for a number of reasons, including: - They are less
        # than 10 days old. - They have a membership lifespan that is less than 30 days -
        # They have less than 10,000 or more than 700,000 users. List of thrown errors:
        # [AuthenticationError]() [AuthorizationError]() [FieldError]() [HeaderError]() [
        # InternalError]() [QuotaError]() [RangeError]() [ReachPlanError]() [
        # RequestError]()
        # @param [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserListsRequest] google_ads_searchads360_v23_services__list_plannable_user_lists_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_plannable_user_lists(google_ads_searchads360_v23_services__list_plannable_user_lists_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v23:listPlannableUserLists', options)
          command.request_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserListsRequest::Representation
          command.request_object = google_ads_searchads360_v23_services__list_plannable_user_lists_request_object
          command.response_representation = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserListsResponse::Representation
          command.response_class = Google::Apis::Searchads360V23::GoogleAdsSearchads360V23ServicesListPlannableUserListsResponse
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
