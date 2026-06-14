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
    module CloudproductregistryV1
      # Cloud Product Registry API
      #
      # cloudproductregistry.googleapis.com API.
      #
      # @example
      #    require 'google/apis/cloudproductregistry_v1'
      #
      #    Cloudproductregistry = Google::Apis::CloudproductregistryV1 # Alias the module
      #    service = Cloudproductregistry::CloudProductRegistryService.new
      #
      # @see https://docs.cloud.google.com/product-registry
      class CloudProductRegistryService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://cloudproductregistry.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-cloudproductregistry_v1',
                client_version: Google::Apis::CloudproductregistryV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets details of a LogicalProduct.
        # @param [String] name
        #   Required. The name of the LogicalProduct to retrieve. Format: logicalProducts/`
        #   logical_product`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::LogicalProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::LogicalProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_logical_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::LogicalProduct::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::LogicalProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists LogicalProducts matching given criteria.
        # @param [String] filter
        #   Optional. The filter expression for listing logical products. Filter syntax:
        #   https://google.aip.dev/160 Supported fields: suite_id
        # @param [Fixnum] page_size
        #   Optional. The maximum number of logical products to return. The service may
        #   return fewer than this value. If unspecified, at most 100 logical products
        #   will be returned. The maximum value is 500; values above 500 will be coerced
        #   to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListLogicalProducts` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListLogicalProducts` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::ListLogicalProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::ListLogicalProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_logical_products(filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/logicalProducts', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::ListLogicalProductsResponse::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::ListLogicalProductsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up entities.
        # @param [String] lookup_uri
        #   Required. Entity uri to look up. Supported Formats: logicalProducts/`
        #   logical_product` logicalProducts/`logical_product`/variants/`variant`
        #   productSuites/`product_suite`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::LookupEntityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::LookupEntityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_logical_product_entity(lookup_uri, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+lookupUri}:lookupEntity', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::LookupEntityResponse::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::LookupEntityResponse
          command.params['lookupUri'] = lookup_uri unless lookup_uri.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details of a LogicalProductVariant.
        # @param [String] name
        #   Required. The name of the LogicalProductVariant to retrieve. Format:
        #   logicalProducts/`logical_product`/variants/`variant`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::LogicalProductVariant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::LogicalProductVariant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_logical_product_variant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::LogicalProductVariant::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::LogicalProductVariant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists LogicalProductVariants matching given criteria.
        # @param [String] parent
        #   Required. Parent logical product id. Format: logicalProducts/`logical_product`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of logical product variants to return. The
        #   service may return fewer than this value. If unspecified, at most 100 logical
        #   product variants will be returned. The maximum value is 500; values above 500
        #   will be coerced to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListLogicalProductVariants`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListLogicalProductVariants` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::ListLogicalProductVariantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::ListLogicalProductVariantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_logical_product_variants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/variants', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::ListLogicalProductVariantsResponse::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::ListLogicalProductVariantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up entities.
        # @param [String] lookup_uri
        #   Required. Entity uri to look up. Supported Formats: logicalProducts/`
        #   logical_product` logicalProducts/`logical_product`/variants/`variant`
        #   productSuites/`product_suite`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::LookupEntityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::LookupEntityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_logical_product_variant_entity(lookup_uri, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+lookupUri}:lookupEntity', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::LookupEntityResponse::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::LookupEntityResponse
          command.params['lookupUri'] = lookup_uri unless lookup_uri.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get details of a ProductSuite.
        # @param [String] name
        #   Required. The name of the ProductSuite to retrieve. Format: productSuites/`
        #   product_suite`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::ProductSuite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::ProductSuite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_product_suite(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::ProductSuite::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::ProductSuite
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ProductSuites.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of suites to return. The service may return fewer
        #   than this value. If unspecified, at most 100 suites will be returned. The
        #   maximum value is 500; values above 500 will be coerced to 500.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListProductSuites` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListProductSuites` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::ListProductSuitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::ListProductSuitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_product_suites(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/productSuites', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::ListProductSuitesResponse::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::ListProductSuitesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up entities.
        # @param [String] lookup_uri
        #   Required. Entity uri to look up. Supported Formats: logicalProducts/`
        #   logical_product` logicalProducts/`logical_product`/variants/`variant`
        #   productSuites/`product_suite`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudproductregistryV1::LookupEntityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudproductregistryV1::LookupEntityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_product_suite_entity(lookup_uri, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+lookupUri}:lookupEntity', options)
          command.response_representation = Google::Apis::CloudproductregistryV1::LookupEntityResponse::Representation
          command.response_class = Google::Apis::CloudproductregistryV1::LookupEntityResponse
          command.params['lookupUri'] = lookup_uri unless lookup_uri.nil?
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
