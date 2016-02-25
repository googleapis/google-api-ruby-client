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
    module PeopleV1
      # Google People API
      #
      # The Google People API service gives access to information about profiles and
      #  contacts.
      #
      # @example
      #    require 'google/apis/people_v1'
      #
      #    People = Google::Apis::PeopleV1 # Alias the module
      #    service = People::PeopleService.new
      #
      # @see https://developers.google.com/people/
      class PeopleService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://people.googleapis.com/', '')
        end
        
        # Provides information about a person resource for a resource name. Use `people/
        # me` to indicate the authenticated user.
        # @param [String] resource_name
        #   The resource name of the person to provide information about. - To get
        #   information about the authenticated user, specify `people/me`. - To get
        #   information about any user, specify the resource name that identifies the user,
        #   such as the resource names returned by [`people.connections.list`](/people/
        #   api/rest/v1/people.connections/list).
        # @param [String] request_mask_include_field
        #   Comma-separated list of fields to be included in the response. Omitting this
        #   field will include all fields. Each path should start with `person.`: for
        #   example, `person.names` or `person.photos`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::Person] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::Person]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_person(resource_name, request_mask_include_field: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+resourceName}', options)
          command.response_representation = Google::Apis::PeopleV1::Person::Representation
          command.response_class = Google::Apis::PeopleV1::Person
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['requestMask.includeField'] = request_mask_include_field unless request_mask_include_field.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides information about a list of specific people by specifying a list of
        # requested resource names. Use `people/me` to indicate the authenticated user.
        # @param [Array<String>, String] resource_names
        #   The resource name, such as one returned by [`people.connections.list`](/people/
        #   api/rest/v1/people.connections/list), of one of the people to provide
        #   information about. You can include this parameter up to 50 times in one
        #   request.
        # @param [String] request_mask_include_field
        #   Comma-separated list of fields to be included in the response. Omitting this
        #   field will include all fields. Each path should start with `person.`: for
        #   example, `person.names` or `person.photos`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::GetPeopleResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::GetPeopleResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_people(resource_names: nil, request_mask_include_field: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/people:batchGet', options)
          command.response_representation = Google::Apis::PeopleV1::GetPeopleResponse::Representation
          command.response_class = Google::Apis::PeopleV1::GetPeopleResponse
          command.query['resourceNames'] = resource_names unless resource_names.nil?
          command.query['requestMask.includeField'] = request_mask_include_field unless request_mask_include_field.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provides a list of the authenticated user's contacts merged with any linked
        # profiles.
        # @param [String] resource_name
        #   The resource name to return connections for. Only `people/me` is valid.
        # @param [String] page_token
        #   The token of the page to be returned.
        # @param [Fixnum] page_size
        #   The number of connections to include in the response. Valid values are between
        #   1 and 500, inclusive. Defaults to 100.
        # @param [String] sort_order
        #   The order in which the connections should be sorted. Defaults to `
        #   LAST_MODIFIED_ASCENDING`.
        # @param [String] sync_token
        #   A sync token, returned by a previous call to `people.connections.list`. Only
        #   resources changed since the sync token was created are returned.
        # @param [String] request_mask_include_field
        #   Comma-separated list of fields to be included in the response. Omitting this
        #   field will include all fields. Each path should start with `person.`: for
        #   example, `person.names` or `person.photos`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PeopleV1::ListConnectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PeopleV1::ListConnectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_person_connections(resource_name, page_token: nil, page_size: nil, sort_order: nil, sync_token: nil, request_mask_include_field: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+resourceName}/connections', options)
          command.response_representation = Google::Apis::PeopleV1::ListConnectionsResponse::Representation
          command.response_class = Google::Apis::PeopleV1::ListConnectionsResponse
          command.params['resourceName'] = resource_name unless resource_name.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['sortOrder'] = sort_order unless sort_order.nil?
          command.query['syncToken'] = sync_token unless sync_token.nil?
          command.query['requestMask.includeField'] = request_mask_include_field unless request_mask_include_field.nil?
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
