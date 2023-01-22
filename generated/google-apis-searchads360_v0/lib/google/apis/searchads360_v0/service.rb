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
    module Searchads360V0
      # Search Ads 360 Reporting API
      #
      # The Search Ads 360 API allows developers to automate downloading reports from
      #  Search Ads 360.
      #
      # @example
      #    require 'google/apis/searchads360_v0'
      #
      #    Searchads360 = Google::Apis::Searchads360V0 # Alias the module
      #    service = Searchads360::SA360Service.new
      #
      # @see https://developers.google.com/search-ads/reporting
      class SA360Service < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://searchads360.googleapis.com/', '',
                client_name: 'google-apis-searchads360_v0',
                client_version: Google::Apis::Searchads360V0::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_custom_column(resource_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v0/{+resourceName}', options)
          command.response_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn::Representation
          command.response_class = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesCustomColumn
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
        # @yieldparam result [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesListCustomColumnsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesListCustomColumnsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_custom_columns(customer_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v0/customers/{+customerId}/customColumns', options)
          command.response_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesListCustomColumnsResponse::Representation
          command.response_class = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesListCustomColumnsResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all rows that match the search query. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]()
        # [QueryError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer being queried.
        # @param [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360Request] google_ads_searchads360_v0_services__search_search_ads360_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360Response] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360Response]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_customer_search_ads360s(customer_id, google_ads_searchads360_v0_services__search_search_ads360_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v0/customers/{+customerId}/searchAds360:search', options)
          command.request_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360Request::Representation
          command.request_object = google_ads_searchads360_v0_services__search_search_ads360_request_object
          command.response_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360Response::Representation
          command.response_class = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360Response
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all rows that match the search stream query. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]()
        # [QueryError]() [QuotaError]() [RequestError]()
        # @param [String] customer_id
        #   Required. The ID of the customer being queried.
        # @param [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest] google_ads_searchads360_v0_services__search_search_ads360_stream_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_customer_search_ads360_stream(customer_id, google_ads_searchads360_v0_services__search_search_ads360_stream_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v0/customers/{+customerId}/searchAds360:searchStream', options)
          command.request_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamRequest::Representation
          command.request_object = google_ads_searchads360_v0_services__search_search_ads360_stream_request_object
          command.response_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse::Representation
          command.response_class = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360StreamResponse
          command.params['customerId'] = customer_id unless customer_id.nil?
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
        # @yieldparam result [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_search_ads360_field(resource_name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v0/{+resourceName}', options)
          command.response_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field::Representation
          command.response_class = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ResourcesSearchAds360Field
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all fields that match the search query. List of thrown errors: [
        # AuthenticationError]() [AuthorizationError]() [HeaderError]() [InternalError]()
        # [QueryError]() [QuotaError]() [RequestError]()
        # @param [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest] google_ads_searchads360_v0_services__search_search_ads360_fields_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_search_ads360_fields(google_ads_searchads360_v0_services__search_search_ads360_fields_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v0/searchAds360Fields:search', options)
          command.request_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsRequest::Representation
          command.request_object = google_ads_searchads360_v0_services__search_search_ads360_fields_request_object
          command.response_representation = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse::Representation
          command.response_class = Google::Apis::Searchads360V0::GoogleAdsSearchads360V0ServicesSearchSearchAds360FieldsResponse
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
