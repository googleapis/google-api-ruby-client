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
    module MybusinessplaceactionsV1
      # My Business Place Actions API
      #
      # The My Business Place Actions API provides an interface for managing place
      #  action links of a location on Google. Note - If you have a quota of 0 after
      #  enabling the API, please request for GBP API access.
      #
      # @example
      #    require 'google/apis/mybusinessplaceactions_v1'
      #
      #    Mybusinessplaceactions = Google::Apis::MybusinessplaceactionsV1 # Alias the module
      #    service = Mybusinessplaceactions::MyBusinessPlaceActionsService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessPlaceActionsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinessplaceactions.googleapis.com/', '',
                client_name: 'google-apis-mybusinessplaceactions_v1',
                client_version: Google::Apis::MybusinessplaceactionsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a place action link associated with the specified location, and
        # returns it. The request is considered duplicate if the `parent`, `
        # place_action_link.uri` and `place_action_link.place_action_type` are the same
        # as a previous request.
        # @param [String] parent
        #   Required. The resource name of the location where to create this place action
        #   link. `locations/`location_id``.
        # @param [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink] place_action_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_place_action_link(parent, place_action_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/placeActionLinks', options)
          command.request_representation = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
          command.request_object = place_action_link_object
          command.response_representation = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
          command.response_class = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a place action link from the specified location.
        # @param [String] name
        #   Required. The resource name of the place action link to remove from the
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
        # @yieldparam result [Google::Apis::MybusinessplaceactionsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessplaceactionsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_place_action_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessplaceactionsV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessplaceactionsV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified place action link.
        # @param [String] name
        #   Required. The name of the place action link to fetch.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_place_action_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
          command.response_class = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the place action links for the specified location.
        # @param [String] parent
        #   Required. The name of the location whose place action links will be listed. `
        #   locations/`location_id``.
        # @param [String] filter
        #   Optional. A filter constraining the place action links to return. The response
        #   includes entries that match the filter. We support only the following filter:
        #   1. place_action_type=XYZ where XYZ is a valid PlaceActionType.
        # @param [Fixnum] page_size
        #   Optional. How many place action links to return per page. Default of 10. The
        #   minimum is 1.
        # @param [String] page_token
        #   Optional. If specified, returns the next page of place action links.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessplaceactionsV1::ListPlaceActionLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessplaceactionsV1::ListPlaceActionLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_place_action_links(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/placeActionLinks', options)
          command.response_representation = Google::Apis::MybusinessplaceactionsV1::ListPlaceActionLinksResponse::Representation
          command.response_class = Google::Apis::MybusinessplaceactionsV1::ListPlaceActionLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified place action link and returns it.
        # @param [String] name
        #   Optional. The resource name, in the format `locations/`location_id`/
        #   placeActionLinks/`place_action_link_id``. The name field will only be
        #   considered in UpdatePlaceActionLink and DeletePlaceActionLink requests for
        #   updating and deleting links respectively. However, it will be ignored in
        #   CreatePlaceActionLink request, where `place_action_link_id` will be assigned
        #   by the server on successful creation of a new link and returned as part of the
        #   response.
        # @param [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink] place_action_link_object
        # @param [String] update_mask
        #   Required. The specific fields to update. The only editable fields are `uri`, `
        #   place_action_type` and `is_preferred`. If the updated link already exists at
        #   the same location with the same `place_action_type` and `uri`, fails with an `
        #   ALREADY_EXISTS` error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessplaceactionsV1::PlaceActionLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_location_place_action_link(name, place_action_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
          command.request_object = place_action_link_object
          command.response_representation = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
          command.response_class = Google::Apis::MybusinessplaceactionsV1::PlaceActionLink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of available place action types for a location or country.
        # @param [String] filter
        #   Optional. A filter constraining the place action types to return metadata for.
        #   The response includes entries that match the filter. We support only the
        #   following filters: 1. location=XYZ where XYZ is a string indicating the
        #   resource name of a location, in the format `locations/`location_id``. 2.
        #   region_code=XYZ where XYZ is a Unicode CLDR region code to find available
        #   action types. If no filter is provided, all place action types are returned.
        # @param [String] language_code
        #   Optional. The IETF BCP-47 code of language to get display names in. If this
        #   language is not available, they will be provided in English.
        # @param [Fixnum] page_size
        #   Optional. How many action types to include per page. Default is 10, minimum is
        #   1.
        # @param [String] page_token
        #   Optional. If specified, the next page of place action type metadata is
        #   retrieved. The `pageToken` is returned when a call to `placeActionTypeMetadata.
        #   list` returns more results than can fit into the requested page size.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessplaceactionsV1::ListPlaceActionTypeMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessplaceactionsV1::ListPlaceActionTypeMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_place_action_type_metadata(filter: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/placeActionTypeMetadata', options)
          command.response_representation = Google::Apis::MybusinessplaceactionsV1::ListPlaceActionTypeMetadataResponse::Representation
          command.response_class = Google::Apis::MybusinessplaceactionsV1::ListPlaceActionTypeMetadataResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
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
