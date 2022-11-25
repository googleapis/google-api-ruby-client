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
    module MybusinessbusinessinformationV1
      # My Business Business Information API
      #
      # The My Business Business Information API provides an interface for managing
      #  business information. Note - If you have a quota of 0 after enabling the API,
      #  please request for GBP API access.
      #
      # @example
      #    require 'google/apis/mybusinessbusinessinformation_v1'
      #
      #    Mybusinessbusinessinformation = Google::Apis::MybusinessbusinessinformationV1 # Alias the module
      #    service = Mybusinessbusinessinformation::MyBusinessBusinessInformationService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessBusinessInformationService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinessbusinessinformation.googleapis.com/', '',
                client_name: 'google-apis-mybusinessbusinessinformation_v1',
                client_version: Google::Apis::MybusinessbusinessinformationV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a new Location that will be owned by the logged in user.
        # @param [String] parent
        #   Required. The name of the account in which to create this location.
        # @param [Google::Apis::MybusinessbusinessinformationV1::Location] location_object
        # @param [String] request_id
        #   Optional. A unique request ID for the server to detect duplicated requests. We
        #   recommend using UUIDs. Max length is 50 characters.
        # @param [Boolean] validate_only
        #   Optional. If true, the request is validated without actually creating the
        #   location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_location(parent, location_object = nil, request_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/locations', options)
          command.request_representation = Google::Apis::MybusinessbusinessinformationV1::Location::Representation
          command.request_object = location_object
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Location::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Location
          command.params['parent'] = parent unless parent.nil?
          command.query['requestId'] = request_id unless request_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the locations for the specified account.
        # @param [String] parent
        #   Required. The name of the account to fetch locations from. If the parent
        #   Account is of AccountType PERSONAL, only Locations that are directly owned by
        #   the Account are returned, otherwise it will return all accessible locations
        #   from the Account, either directly or indirectly.
        # @param [String] filter
        #   Optional. A filter constraining the locations to return. The response includes
        #   only entries that match the filter. If `filter` is empty, then constraints are
        #   applied and all locations (paginated) are retrieved for the requested account.
        #   For more information about valid fields and example usage, see [Work with
        #   Location Data Guide](https://developers.google.com/my-business/content/
        #   location-data#filter_results_when_you_list_locations).
        # @param [String] order_by
        #   Optional. Sorting order for the request. Multiple fields should be comma-
        #   separated, following SQL syntax. The default sorting order is ascending. To
        #   specify descending order, a suffix " desc" should be added. Valid fields to
        #   order_by are title and store_code. For example: "title, store_code desc" or "
        #   title" or "store_code desc"
        # @param [Fixnum] page_size
        #   Optional. How many locations to fetch per page. Default value is 10 if not set.
        #   Minimum is 1, and maximum page size is 100.
        # @param [String] page_token
        #   Optional. If specified, it fetches the next `page` of locations. The page
        #   token is returned by previous calls to `ListLocations` when there were more
        #   locations than could fit in the requested page size.
        # @param [String] read_mask
        #   Required. Read mask to specify what fields will be returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_locations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/locations', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::ListLocationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of attributes that would be available for a location with the
        # given primary category and country.
        # @param [String] category_name
        #   The primary category stable ID to find available attributes. Must be of the
        #   format categories/`category_id`.
        # @param [String] language_code
        #   The BCP 47 code of language to get attribute display names in. If this
        #   language is not available, they will be provided in English.
        # @param [Fixnum] page_size
        #   How many attributes to include per page. Default is 200, minimum is 1.
        # @param [String] page_token
        #   If specified, the next page of attribute metadata is retrieved.
        # @param [String] parent
        #   Resource name of the location to look up available attributes. If this field
        #   is set, category_name, region_code, language_code and show_all are not
        #   required and must not be set.
        # @param [String] region_code
        #   The ISO 3166-1 alpha-2 country code to find available attributes.
        # @param [Boolean] show_all
        #   Metadata for all available attributes are returned when this field is set to
        #   true, disregarding parent and category_name fields. language_code and
        #   region_code are required when show_all is set to true.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::ListAttributeMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::ListAttributeMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_attributes(category_name: nil, language_code: nil, page_size: nil, page_token: nil, parent: nil, region_code: nil, show_all: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/attributes', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::ListAttributeMetadataResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::ListAttributeMetadataResponse
          command.query['categoryName'] = category_name unless category_name.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['showAll'] = show_all unless show_all.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of business categories for the provided language and GConcept
        # ids.
        # @param [String] language_code
        #   Required. The BCP 47 code of language that the category names should be
        #   returned in.
        # @param [Array<String>, String] names
        #   Required. At least one name must be set. The GConcept ids the localized
        #   category names should be returned for. To return details for more than one
        #   category, repeat this parameter in the request.
        # @param [String] region_code
        #   Optional. The ISO 3166-1 alpha-2 country code used to infer non-standard
        #   language.
        # @param [String] view
        #   Required. Specifies which parts to the Category resource should be returned in
        #   the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::BatchGetCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::BatchGetCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_category_get(language_code: nil, names: nil, region_code: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/categories:batchGet', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::BatchGetCategoriesResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::BatchGetCategoriesResponse
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['names'] = names unless names.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of business categories. Search will match the category name but
        # not the category ID. Search only matches the front of a category name (that is,
        # 'food' may return 'Food Court' but not 'Fast Food Restaurant').
        # @param [String] filter
        #   Optional. Filter string from user. The only field that supported is `
        #   displayName`. Eg: `filter=displayName=foo`.
        # @param [String] language_code
        #   Required. The BCP 47 code of language.
        # @param [Fixnum] page_size
        #   Optional. How many categories to fetch per page. Default is 100, minimum is 1,
        #   and maximum page size is 100.
        # @param [String] page_token
        #   Optional. If specified, the next page of categories will be fetched.
        # @param [String] region_code
        #   Required. The ISO 3166-1 alpha-2 country code.
        # @param [String] view
        #   Required. Specifies which parts to the Category resource should be returned in
        #   the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::ListCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::ListCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_categories(filter: nil, language_code: nil, page_size: nil, page_token: nil, region_code: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/categories', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::ListCategoriesResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::ListCategoriesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified chain. Returns `NOT_FOUND` if the chain does not exist.
        # @param [String] name
        #   Required. The chain's resource name, in the format `chains/`chain_place_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Chain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Chain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_chain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Chain::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Chain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches the chain based on chain name.
        # @param [String] chain_name
        #   Required. Search for a chain by its name. Exact/partial/fuzzy/related queries
        #   are supported. Examples: "walmart", "wal-mart", "walmmmart", "沃尔玛"
        # @param [Fixnum] page_size
        #   The maximum number of matched chains to return from this query. The default is
        #   10. The maximum possible value is 500.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::SearchChainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::SearchChainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_chains(chain_name: nil, page_size: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/chains:search', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::SearchChainsResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::SearchChainsResponse
          command.query['chainName'] = chain_name unless chain_name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Search all of the possible locations that are a match to the specified request.
        # @param [Google::Apis::MybusinessbusinessinformationV1::SearchGoogleLocationsRequest] search_google_locations_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::SearchGoogleLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::SearchGoogleLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_google_locations(search_google_locations_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/googleLocations:search', options)
          command.request_representation = Google::Apis::MybusinessbusinessinformationV1::SearchGoogleLocationsRequest::Representation
          command.request_object = search_google_locations_request_object
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::SearchGoogleLocationsResponse::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::SearchGoogleLocationsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Associates a location to a place ID. Any previous association is overwritten.
        # This operation is only valid if the location is unverified. The association
        # must be valid, that is, it appears in the list of `SearchGoogleLocations`.
        # @param [String] name
        #   Required. The resource name of the location to associate.
        # @param [Google::Apis::MybusinessbusinessinformationV1::AssociateLocationRequest] associate_location_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def associate_location(name, associate_location_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:associate', options)
          command.request_representation = Google::Apis::MybusinessbusinessinformationV1::AssociateLocationRequest::Representation
          command.request_object = associate_location_request_object
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Clears an association between a location and its place ID. This operation is
        # only valid if the location is unverified.
        # @param [String] name
        #   Required. The resource name of the location to disassociate.
        # @param [Google::Apis::MybusinessbusinessinformationV1::ClearLocationAssociationRequest] clear_location_association_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def clear_location_association(name, clear_location_association_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:clearLocationAssociation', options)
          command.request_representation = Google::Apis::MybusinessbusinessinformationV1::ClearLocationAssociationRequest::Representation
          command.request_object = clear_location_association_request_object
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a location. If this location cannot be deleted using the API and it is
        # marked so in the `google.mybusiness.businessinformation.v1.LocationState`, use
        # the [Google Business Profile](https://business.google.com/manage/) website.
        # @param [String] name
        #   Required. The name of the location to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified location.
        # @param [String] name
        #   Required. The name of the location to fetch.
        # @param [String] read_mask
        #   Required. Read mask to specify what fields will be returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Location::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Location
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up all the attributes set for a given location.
        # @param [String] name
        #   Required. Google identifier for this location in the form of `locations/`
        #   location_id`/attributes`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_attributes(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Attributes::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Attributes
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Google-updated version of the specified location.
        # @param [String] name
        #   Required. The name of the location to fetch.
        # @param [String] read_mask
        #   Required. Read mask to specify what fields will be returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::GoogleUpdatedLocation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::GoogleUpdatedLocation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_google_updated(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getGoogleUpdated', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::GoogleUpdatedLocation::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::GoogleUpdatedLocation
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified location.
        # @param [String] name
        #   Google identifier for this location in the form: `locations/`location_id``.
        # @param [Google::Apis::MybusinessbusinessinformationV1::Location] location_object
        # @param [String] update_mask
        #   Required. The specific fields to update.
        # @param [Boolean] validate_only
        #   Optional. If true, the request is validated without actually updating the
        #   location. When this field is set, we will only return validation errors if
        #   there were any. The response will be empty if no errors were found.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_location(name, location_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessbusinessinformationV1::Location::Representation
          command.request_object = location_object
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Location::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Location
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update attributes for a given location.
        # @param [String] name
        #   Required. Google identifier for this location in the form of `locations/`
        #   location_id`/attributes`.
        # @param [Google::Apis::MybusinessbusinessinformationV1::Attributes] attributes_object
        # @param [String] attribute_mask
        #   Required. Attribute name of attributes that you'd like to update. Represented
        #   by `attributes/`attribute``. Updates: All attributes provided in the
        #   attributes field that you would like to update must be set in the `
        #   attribute_mask`. Attributes set in the above list but not in the `
        #   attribute_mask` will be ignored. Deletes: If you'd like to delete certain
        #   attributes, they must be specified in the `attribute_mask` with no matching
        #   entry in the attributes list. If you'd like to delete all attributes set on a
        #   location, you should look up all the applicable attributes for the location
        #   and then add them to the `attribute_mask` with an empty attributes field.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_location_attributes(name, attributes_object = nil, attribute_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessbusinessinformationV1::Attributes::Representation
          command.request_object = attributes_object
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Attributes::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Attributes
          command.params['name'] = name unless name.nil?
          command.query['attributeMask'] = attribute_mask unless attribute_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Google-updated version of the specified location.
        # @param [String] name
        #   Required. Google identifier for this location in the form of `locations/`
        #   location_id`/attributes`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessbusinessinformationV1::Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessbusinessinformationV1::Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_attribute_google_updated(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getGoogleUpdated', options)
          command.response_representation = Google::Apis::MybusinessbusinessinformationV1::Attributes::Representation
          command.response_class = Google::Apis::MybusinessbusinessinformationV1::Attributes
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
