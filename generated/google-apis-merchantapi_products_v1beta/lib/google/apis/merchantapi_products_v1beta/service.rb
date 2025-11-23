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
    module MerchantapiProductsV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_products_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiProductsV1beta # Alias the module
      #    service = Merchantapi::MerchantService.new
      #
      # @see https://developers.google.com/merchant/api
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
                client_name: 'google-apis-merchantapi_products_v1beta',
                client_version: Google::Apis::MerchantapiProductsV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes a product input from your Merchant Center account. After inserting,
        # updating, or deleting a product input, it may take several minutes before the
        # processed product can be retrieved.
        # @param [String] name
        #   Required. The name of the product input to delete. Format: `accounts/`account`/
        #   productInputs/`productInput`` The `productInput` segment is a unique
        #   identifier for the product. This identifier must be unique within a merchant
        #   account and generally follows the structure: `content_language~feed_label~
        #   offer_id`. Example: `en~US~sku123` For legacy local products, the structure is:
        #   `local~content_language~feed_label~offer_id`. Example: `local~en~US~sku123`
        #   The format of the `productInput` segment in the URL is automatically detected
        #   by the server, supporting two options: 1. **Encoded Format**: The ``
        #   productInput`` segment is an unpadded base64url encoded string (RFC 4648
        #   Section 5). The decoded string must result in the `content_language~feed_label~
        #   offer_id` structure. This encoding MUST be used if any part of the product
        #   identifier (like `offer_id`) contains characters such as `/`, `%`, or `~`. *
        #   Example: To represent the product ID `en~US~sku/123`, the ``productInput``
        #   segment must be the base64url encoding of this string, which is `ZW5-
        #   VVMtc2t1LzEyMw`. The full resource name for the product would be `accounts/123/
        #   productInputs/ZW5-VVMtc2t1LzEyMw`. 2. **Plain Format**: The ``productInput``
        #   segment is the tilde-separated string `content_language~feed_label~offer_id`.
        #   This format is suitable only when `content_language`, `feed_label`, and `
        #   offer_id` do not contain URL-problematic characters like `/`, `%`, or `~`. We
        #   recommend using the **Encoded Format** for all product IDs to ensure correct
        #   parsing, especially those containing special characters. The presence of tilde
        #   (`~`) characters in the ``productInput`` segment is used to differentiate
        #   between the two formats. Note: For calls to the v1beta version, the plain
        #   format is `channel~content_language~feed_label~offer_id`, for example: `
        #   accounts/123/productinputs/online~en~US~sku123`.
        # @param [String] data_source
        #   Required. The primary or supplemental data source from which the product input
        #   should be deleted. Format: `accounts/`account`/dataSources/`datasource``. For
        #   example, `accounts/123456/dataSources/104628`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiProductsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiProductsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_product_input(name, data_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'products/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiProductsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiProductsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Uploads a product input to your Merchant Center account](/merchant/api/guides/
        # products/add-manage#add_a_product). You must have a products [data source](/
        # merchant/api/guides/data-sources/api-sources#create-primary-data-source) to be
        # able to insert a product. The unique identifier of the data source is passed
        # as a query parameter in the request URL. If a product input with the same
        # contentLanguage, offerId, and dataSource already exists, then the product
        # input inserted by this method replaces that entry. After inserting, updating,
        # or deleting a product input, it may take several minutes before the processed
        # product can be retrieved.
        # @param [String] parent
        #   Required. The account where this product will be inserted. Format: `accounts/`
        #   account``
        # @param [Google::Apis::MerchantapiProductsV1beta::ProductInput] product_input_object
        # @param [String] data_source
        #   Required. The primary or supplemental product data source name. If the product
        #   already exists and data source provided is different, then the product will be
        #   moved to a new data source. For more information, see [Create a primary data
        #   source](/merchant/api/guides/data-sources/api-sources#create-primary-data-
        #   source). Only API data sources are supported. Format: `accounts/`account`/
        #   dataSources/`datasource``. For example, `accounts/123456/dataSources/104628`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiProductsV1beta::ProductInput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductInput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_product_input(parent, product_input_object = nil, data_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'products/v1beta/{+parent}/productInputs:insert', options)
          command.request_representation = Google::Apis::MerchantapiProductsV1beta::ProductInput::Representation
          command.request_object = product_input_object
          command.response_representation = Google::Apis::MerchantapiProductsV1beta::ProductInput::Representation
          command.response_class = Google::Apis::MerchantapiProductsV1beta::ProductInput
          command.params['parent'] = parent unless parent.nil?
          command.query['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the existing product input in your Merchant Center account. The name
        # of the product input to update is taken from the `name` field within the `
        # ProductInput` resource. After inserting, updating, or deleting a product input,
        # it may take several minutes before the processed product can be retrieved.
        # @param [String] name
        #   Identifier. The name of the product. Format: `accounts/`account`/productInputs/
        #   `productinput`` The `productinput` segment is a unique identifier for the
        #   product. This identifier must be unique within a merchant account and
        #   generally follows the structure: `content_language~feed_label~offer_id`.
        #   Example: `en~US~sku123` For legacy local products, the structure is: `local~
        #   content_language~feed_label~offer_id`. Example: `local~en~US~sku123` The
        #   format of the `productinput` segment in the URL is automatically detected by
        #   the server, supporting two options: 1. **Encoded Format**: The ``productinput``
        #   segment is an unpadded base64url encoded string (RFC 4648 Section 5). The
        #   decoded string must result in the `content_language~feed_label~offer_id`
        #   structure. This encoding MUST be used if any part of the product identifier (
        #   like `offer_id`) contains characters such as `/`, `%`, or `~`. * Example: To
        #   represent the product ID `en~US~sku/123`, the ``productinput`` segment must be
        #   the base64url encoding of this string, which is `ZW5-VVMtc2t1LzEyMw`. The full
        #   resource name for the product would be `accounts/123/productinputs/ZW5-
        #   VVMtc2t1LzEyMw`. 2. **Plain Format**: The ``productinput`` segment is the
        #   tilde-separated string `content_language~feed_label~offer_id`. This format is
        #   suitable only when `content_language`, `feed_label`, and `offer_id` do not
        #   contain URL-problematic characters like `/`, `%`, or `~`. We recommend using
        #   the **Encoded Format** for all product IDs to ensure correct parsing,
        #   especially those containing special characters. The presence of tilde (`~`)
        #   characters in the ``productinput`` segment is used to differentiate between
        #   the two formats. Note: For calls to the v1beta version, the plain format is `
        #   channel~content_language~feed_label~offer_id`, for example: `accounts/123/
        #   productinputs/online~en~US~sku123`.
        # @param [Google::Apis::MerchantapiProductsV1beta::ProductInput] product_input_object
        # @param [String] data_source
        #   Required. The primary or supplemental product data source where `data_source`
        #   name identifies the product input to be updated. Only API data sources are
        #   supported. Format: `accounts/`account`/dataSources/`datasource``. For example,
        #   `accounts/123456/dataSources/104628`.
        # @param [String] update_mask
        #   Optional. The list of product attributes to be updated. If the update mask is
        #   omitted, then it is treated as implied field mask equivalent to all fields
        #   that are populated (have a non-empty value). Attributes specified in the
        #   update mask without a value specified in the body will be deleted from the
        #   product. Update mask can only be specified for top level fields in attributes
        #   and custom attributes. To specify the update mask for custom attributes you
        #   need to add the `custom_attribute.` prefix. Providing special "*" value for
        #   full product replacement is not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiProductsV1beta::ProductInput] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiProductsV1beta::ProductInput]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_product_input(name, product_input_object = nil, data_source: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'products/v1beta/{+name}', options)
          command.request_representation = Google::Apis::MerchantapiProductsV1beta::ProductInput::Representation
          command.request_object = product_input_object
          command.response_representation = Google::Apis::MerchantapiProductsV1beta::ProductInput::Representation
          command.response_class = Google::Apis::MerchantapiProductsV1beta::ProductInput
          command.params['name'] = name unless name.nil?
          command.query['dataSource'] = data_source unless data_source.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the processed product from your Merchant Center account. After
        # inserting, updating, or deleting a product input, it may take several minutes
        # before the updated final product can be retrieved.
        # @param [String] name
        #   Required. The name of the product. Format: `accounts/`account`/products/`
        #   product`` The ``product`` segment is a unique identifier for the product. This
        #   identifier must be unique within a merchant account and generally follows the
        #   structure: `content_language~feed_label~offer_id`. Example: `en~US~sku123` For
        #   legacy local products, the structure is: `local~content_language~feed_label~
        #   offer_id`. Example: `local~en~US~sku123` The format of the ``product`` segment
        #   in the URL is automatically detected by the server, supporting two options: 1.
        #   **Encoded Format**: The ``product`` segment is an unpadded base64url encoded
        #   string (RFC 4648 Section 5). The decoded string must result in the `
        #   content_language~feed_label~offer_id` structure. This encoding MUST be used if
        #   any part of the product identifier (like `offer_id`) contains characters such
        #   as `/`, `%`, or `~`. * Example: To represent the product ID `en~US~sku/123`,
        #   the ``product`` segment must be the base64url encoding of this string, which
        #   is `ZW5-VVMtc2t1LzEyMw`. The full resource name for the product would be `
        #   accounts/123/products/ZW5-VVMtc2t1LzEyMw`. 2. **Plain Format**: The ``product``
        #   segment is the tilde-separated string `content_language~feed_label~offer_id`.
        #   This format is suitable only when `content_language`, `feed_label`, and `
        #   offer_id` do not contain URL-problematic characters like `/`, `%`, or `~`. We
        #   recommend using the **Encoded Format** for all product IDs to ensure correct
        #   parsing, especially those containing special characters. The presence of tilde
        #   (`~`) characters in the ``product`` segment is used to differentiate between
        #   the two formats. Note: For calls to the v1beta version, the plain format is `
        #   channel~content_language~feed_label~offer_id`, for example: `accounts/123/
        #   products/online~en~US~sku123`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiProductsV1beta::Product] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiProductsV1beta::Product]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_product(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'products/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiProductsV1beta::Product::Representation
          command.response_class = Google::Apis::MerchantapiProductsV1beta::Product
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the processed products in your Merchant Center account. The response
        # might contain fewer items than specified by `pageSize`. Rely on `pageToken` to
        # determine if there are more items to be requested. After inserting, updating,
        # or deleting a product input, it may take several minutes before the updated
        # processed product can be retrieved.
        # @param [String] parent
        #   Required. The account to list processed products for. Format: `accounts/`
        #   account``
        # @param [Fixnum] page_size
        #   The maximum number of products to return. The service may return fewer than
        #   this value. The maximum value is 1000; values above 1000 will be coerced to
        #   1000. If unspecified, the default page size of 25 products will be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListProducts` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListProducts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiProductsV1beta::ListProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiProductsV1beta::ListProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_products(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'products/v1beta/{+parent}/products', options)
          command.response_representation = Google::Apis::MerchantapiProductsV1beta::ListProductsResponse::Representation
          command.response_class = Google::Apis::MerchantapiProductsV1beta::ListProductsResponse
          command.params['parent'] = parent unless parent.nil?
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
