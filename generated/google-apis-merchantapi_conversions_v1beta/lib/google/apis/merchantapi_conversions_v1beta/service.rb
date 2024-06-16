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
    module MerchantapiConversionsV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_conversions_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiConversionsV1beta # Alias the module
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
                client_name: 'google-apis-merchantapi_conversions_v1beta',
                client_version: Google::Apis::MerchantapiConversionsV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a new conversion source.
        # @param [String] parent
        #   Required. The merchant account that will own the new conversion source. Format:
        #   accounts/`account`
        # @param [Google::Apis::MerchantapiConversionsV1beta::ConversionSource] conversion_source_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiConversionsV1beta::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiConversionsV1beta::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_conversion_source(parent, conversion_source_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'conversions/v1beta/{+parent}/conversionSources', options)
          command.request_representation = Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
          command.request_object = conversion_source_object
          command.response_representation = Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
          command.response_class = Google::Apis::MerchantapiConversionsV1beta::ConversionSource
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives an existing conversion source. If the conversion source is a Merchant
        # Center Destination, it will be recoverable for 30 days. If the conversion
        # source is a Google Analytics Link, it will be deleted immediately and can be
        # restored by creating a new one.
        # @param [String] name
        #   Required. The name of the conversion source to be deleted. Format: accounts/`
        #   account`/conversionSources/`conversion_source`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiConversionsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiConversionsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_conversion_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'conversions/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiConversionsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiConversionsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a conversion source.
        # @param [String] name
        #   Required. The name of the conversion source to be fetched. Format: accounts/`
        #   account`/conversionsources/`conversion_source`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiConversionsV1beta::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiConversionsV1beta::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_conversion_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'conversions/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
          command.response_class = Google::Apis::MerchantapiConversionsV1beta::ConversionSource
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of conversion sources the caller has access to.
        # @param [String] parent
        #   Required. The merchant account who owns the collection of conversion sources.
        #   Format: accounts/`account`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of conversion sources to return in a page. If no `
        #   page_size` is specified, `100` is used as the default value. The maximum value
        #   is `200`. Values above `200` will be coerced to `200`. Regardless of
        #   pagination, at most `200` conversion sources are returned in total.
        # @param [String] page_token
        #   Optional. Page token.
        # @param [Boolean] show_deleted
        #   Optional. Show deleted (archived) option.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiConversionsV1beta::ListConversionSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiConversionsV1beta::ListConversionSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_conversion_sources(parent, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'conversions/v1beta/{+parent}/conversionSources', options)
          command.response_representation = Google::Apis::MerchantapiConversionsV1beta::ListConversionSourcesResponse::Representation
          command.response_class = Google::Apis::MerchantapiConversionsV1beta::ListConversionSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information of an existing conversion source. Available only for
        # Merchant Center Destination conversion sources.
        # @param [String] name
        #   Output only. Identifier. Generated by the Content API upon creation of a new `
        #   ConversionSource`. Format: [a-z]`4`:.+ The four characters before the colon
        #   represent the type of conversio source. Content after the colon represents the
        #   ID of the conversion source within that type. The ID of two different
        #   conversion sources might be the same across different types. The following
        #   type prefixes are supported: - galk: For GoogleAnalyticsLink sources. - mcdn:
        #   For MerchantCenterDestination sources.
        # @param [Google::Apis::MerchantapiConversionsV1beta::ConversionSource] conversion_source_object
        # @param [String] update_mask
        #   Required. List of fields being updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiConversionsV1beta::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiConversionsV1beta::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_conversion_source(name, conversion_source_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'conversions/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
          command.request_object = conversion_source_object
          command.response_representation = Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
          command.response_class = Google::Apis::MerchantapiConversionsV1beta::ConversionSource
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Re-enables an archived conversion source. Only Available for Merchant Center
        # Destination conversion sources.
        # @param [String] name
        #   Required. The name of the conversion source to be undeleted. Format: accounts/`
        #   account`/conversionSources/`conversion_source`
        # @param [Google::Apis::MerchantapiConversionsV1beta::UndeleteConversionSourceRequest] undelete_conversion_source_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiConversionsV1beta::ConversionSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiConversionsV1beta::ConversionSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_conversion_source(name, undelete_conversion_source_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'conversions/v1beta/{+name}:undelete', options)
          command.request_representation = Google::Apis::MerchantapiConversionsV1beta::UndeleteConversionSourceRequest::Representation
          command.request_object = undelete_conversion_source_request_object
          command.response_representation = Google::Apis::MerchantapiConversionsV1beta::ConversionSource::Representation
          command.response_class = Google::Apis::MerchantapiConversionsV1beta::ConversionSource
          command.params['name'] = name unless name.nil?
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
