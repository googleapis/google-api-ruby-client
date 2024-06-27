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
    module MerchantapiDatasourcesV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_datasources_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiDatasourcesV1beta # Alias the module
      #    service = Merchantapi::MerchantService.new
      #
      # @see https://developers.devsite.corp.google.com/merchant/api
      class MerchantService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://merchantapi.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-merchantapi_datasources_v1beta',
                client_version: Google::Apis::MerchantapiDatasourcesV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates the new data source configuration for the given account.
        # @param [String] parent
        #   Required. The account where this data source will be created. Format: `
        #   accounts/`account``
        # @param [Google::Apis::MerchantapiDatasourcesV1beta::DataSource] data_source_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiDatasourcesV1beta::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_data_source(parent, data_source_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'datasources/v1beta/{+parent}/dataSources', options)
          command.request_representation = Google::Apis::MerchantapiDatasourcesV1beta::DataSource::Representation
          command.request_object = data_source_object
          command.response_representation = Google::Apis::MerchantapiDatasourcesV1beta::DataSource::Representation
          command.response_class = Google::Apis::MerchantapiDatasourcesV1beta::DataSource
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a data source from your Merchant Center account.
        # @param [String] name
        #   Required. The name of the data source to delete. Format: `accounts/`account`/
        #   dataSources/`datasource``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiDatasourcesV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_data_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'datasources/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiDatasourcesV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiDatasourcesV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs the data fetch immediately (even outside fetch schedule) on a data
        # source from your Merchant Center Account. If you need to call this method more
        # than once per day, you should use the Products service to update your product
        # data instead. This method only works on data sources with a file input set.
        # @param [String] name
        #   Required. The name of the data source resource to fetch. Format: `accounts/`
        #   account`/dataSources/`datasource``
        # @param [Google::Apis::MerchantapiDatasourcesV1beta::FetchDataSourceRequest] fetch_data_source_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiDatasourcesV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_data_source(name, fetch_data_source_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'datasources/v1beta/{+name}:fetch', options)
          command.request_representation = Google::Apis::MerchantapiDatasourcesV1beta::FetchDataSourceRequest::Representation
          command.request_object = fetch_data_source_request_object
          command.response_representation = Google::Apis::MerchantapiDatasourcesV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiDatasourcesV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the data source configuration for the given account.
        # @param [String] name
        #   Required. The name of the data source to retrieve. Format: `accounts/`account`/
        #   dataSources/`datasource``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiDatasourcesV1beta::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_data_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'datasources/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiDatasourcesV1beta::DataSource::Representation
          command.response_class = Google::Apis::MerchantapiDatasourcesV1beta::DataSource
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the configurations for data sources for the given account.
        # @param [String] parent
        #   Required. The account to list data sources for. Format: `accounts/`account``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of data sources to return. The service may return
        #   fewer than this value. The maximum value is 1000; values above 1000 will be
        #   coerced to 1000. If unspecified, the maximum number of data sources will be
        #   returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListDataSources` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDataSources` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiDatasourcesV1beta::ListDataSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::ListDataSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_data_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'datasources/v1beta/{+parent}/dataSources', options)
          command.response_representation = Google::Apis::MerchantapiDatasourcesV1beta::ListDataSourcesResponse::Representation
          command.response_class = Google::Apis::MerchantapiDatasourcesV1beta::ListDataSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the existing data source configuration. The fields that are set in the
        # update mask but not provided in the resource will be deleted.
        # @param [String] name
        #   Identifier. The name of the data source. Format: ``datasource.name=accounts/`
        #   account`/dataSources/`datasource```
        # @param [Google::Apis::MerchantapiDatasourcesV1beta::DataSource] data_source_object
        # @param [String] update_mask
        #   Required. The list of data source fields to be updated. Fields specified in
        #   the update mask without a value specified in the body will be deleted from the
        #   data source. Providing special "*" value for full data source replacement is
        #   not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiDatasourcesV1beta::DataSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::DataSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_data_source(name, data_source_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'datasources/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiDatasourcesV1beta::DataSource::Representation
          command.request_object = data_source_object
          command.response_representation = Google::Apis::MerchantapiDatasourcesV1beta::DataSource::Representation
          command.response_class = Google::Apis::MerchantapiDatasourcesV1beta::DataSource
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
