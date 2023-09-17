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
    module ConnectorsV2
      # Connectors API
      #
      # Enables users to create and manage connections to Google Cloud services and
      #  third-party business applications using the Connectors interface.
      #
      # @example
      #    require 'google/apis/connectors_v2'
      #
      #    Connectors = Google::Apis::ConnectorsV2 # Alias the module
      #    service = Connectors::ConnectorsService.new
      #
      # @see https://cloud.google.com/apigee/docs/api-platform/connectors/about-connectors
      class ConnectorsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://connectors.googleapis.com/', '',
                client_name: 'google-apis-connectors_v2',
                client_version: Google::Apis::ConnectorsV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Executes a SQL statement specified in the body of the request. An example of
        # this SQL statement in the case of Salesforce connector would be 'select * from
        # Account a, Order o where a.Id = o.AccountId'.
        # @param [String] connection
        #   Required. Resource name of the Connection. Format: projects/`project`/
        #   locations/`location`/connections/`connection`
        # @param [Google::Apis::ConnectorsV2::ExecuteSqlQueryRequest] execute_sql_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::ExecuteSqlQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::ExecuteSqlQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_connection_sql_query(connection, execute_sql_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+connection}:executeSqlQuery', options)
          command.request_representation = Google::Apis::ConnectorsV2::ExecuteSqlQueryRequest::Representation
          command.request_object = execute_sql_query_request_object
          command.response_representation = Google::Apis::ConnectorsV2::ExecuteSqlQueryResponse::Representation
          command.response_class = Google::Apis::ConnectorsV2::ExecuteSqlQueryResponse
          command.params['connection'] = connection unless connection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes an action with the name specified in the request. The input
        # parameters for executing the action are passed through the body of the
        # ExecuteAction request.
        # @param [String] name
        #   Required. Resource name of the Action. Format: projects/`project`/locations/`
        #   location`/connections/`connection`/actions/`action`
        # @param [Google::Apis::ConnectorsV2::ExecuteActionRequest] execute_action_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::ExecuteActionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::ExecuteActionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_action(name, execute_action_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:execute', options)
          command.request_representation = Google::Apis::ConnectorsV2::ExecuteActionRequest::Representation
          command.request_object = execute_action_request_object
          command.response_representation = Google::Apis::ConnectorsV2::ExecuteActionResponse::Representation
          command.response_class = Google::Apis::ConnectorsV2::ExecuteActionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the schema of the given action.
        # @param [String] name
        #   Required. Resource name of the Action. Format: projects/`project`/locations/`
        #   location`/connections/`connection`/actions/`action`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::Action] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::Action]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_action(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ConnectorsV2::Action::Representation
          command.response_class = Google::Apis::ConnectorsV2::Action
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the schema of all the actions supported by the connector.
        # @param [String] parent
        #   Required. Parent resource name of the Action. Format: projects/`project`/
        #   locations/`location`/connections/`connection`
        # @param [Fixnum] page_size
        #   Number of Actions to return. Defaults to 25.
        # @param [String] page_token
        #   Page token, return from a previous ListActions call, that can be used retrieve
        #   the next page of content. If unspecified, the request returns the first page
        #   of actions.
        # @param [String] view
        #   Specifies which fields of the Action are returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::ListActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::ListActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_actions(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/actions', options)
          command.response_representation = Google::Apis::ConnectorsV2::ListActionsResponse::Representation
          command.response_class = Google::Apis::ConnectorsV2::ListActionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata of given entity type
        # @param [String] name
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`entityType`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::EntityType] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::EntityType]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_entity_type(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ConnectorsV2::EntityType::Representation
          command.response_class = Google::Apis::ConnectorsV2::EntityType
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists metadata related to all entity types present in the external system.
        # @param [String] parent
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`
        # @param [Fixnum] page_size
        #   Number of entity types to return. Defaults to 25.
        # @param [String] page_token
        #   Page token, return from a previous ListEntityTypes call, that can be used
        #   retrieve the next page of content. If unspecified, the request returns the
        #   first page of entity types.
        # @param [String] view
        #   Specifies which fields of the Entity Type are returned in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::ListEntityTypesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::ListEntityTypesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_entity_types(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entityTypes', options)
          command.response_representation = Google::Apis::ConnectorsV2::ListEntityTypesResponse::Representation
          command.response_class = Google::Apis::ConnectorsV2::ListEntityTypesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new entity row of the specified entity type in the external system.
        # The field values for creating the row are contained in the body of the request.
        # The response message contains a `Entity` message object returned as a
        # response by the external system.
        # @param [String] parent
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`type`
        # @param [Google::Apis::ConnectorsV2::Entity] entity_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::Entity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::Entity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_connection_entity_type_entity(parent, entity_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/entities', options)
          command.request_representation = Google::Apis::ConnectorsV2::Entity::Representation
          command.request_object = entity_object
          command.response_representation = Google::Apis::ConnectorsV2::Entity::Representation
          command.response_class = Google::Apis::ConnectorsV2::Entity
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing entity row matching the entity type and entity id
        # specified in the request.
        # @param [String] name
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`type`/entities/`id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection_entity_type_entity(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ConnectorsV2::Empty::Representation
          command.response_class = Google::Apis::ConnectorsV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes entities based on conditions specified in the request and not on
        # entity id.
        # @param [String] entity_type
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`type`
        # @param [String] conditions
        #   Required. Conditions to be used when deleting entities. From a proto
        #   standpoint, There are no restrictions on what can be passed using this field.
        #   The connector documentation should have information about what format of
        #   filters/conditions are supported. Note: If this conditions field is left empty,
        #   an exception is thrown. We don't want to consider 'empty conditions' to be a
        #   match-all case. Connector developers can determine and document what a match-
        #   all case constraint would be.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_connection_entity_type_entity_entities_with_conditions(entity_type, conditions: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+entityType}/entities:deleteEntitiesWithConditions', options)
          command.response_representation = Google::Apis::ConnectorsV2::Empty::Representation
          command.response_class = Google::Apis::ConnectorsV2::Empty
          command.params['entityType'] = entity_type unless entity_type.nil?
          command.query['conditions'] = conditions unless conditions.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single entity row matching the entity type and entity id specified in
        # the request.
        # @param [String] name
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`type`/entities/`id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::Entity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::Entity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_connection_entity_type_entity(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::ConnectorsV2::Entity::Representation
          command.response_class = Google::Apis::ConnectorsV2::Entity
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists entity rows of a particular entity type contained in the request. Note:
        # 1. Currently, only max of one 'sort_by' column is supported. 2. If no 'sort_by'
        # column is provided, the primary key of the table is used. If zero or more
        # than one primary key is available, we default to the unpaginated list entities
        # logic which only returns the first page. 3. The values of the 'sort_by'
        # columns must uniquely identify an entity row, otherwise undefined behaviors
        # may be observed during pagination. 4. Since transactions are not supported,
        # any updates, inserts or deletes during pagination can lead to stale data being
        # returned or other unexpected behaviors.
        # @param [String] parent
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`type`
        # @param [String] conditions
        #   Conditions to be used when listing entities. From a proto standpoint, There
        #   are no restrictions on what can be passed using this field. The connector
        #   documentation should have information about what format of filters/conditions
        #   are supported.
        # @param [Fixnum] page_size
        #   Number of entity rows to return. Defaults page size = 25. Max page size = 200.
        # @param [String] page_token
        #   Page token value if available from a previous request.
        # @param [Array<String>, String] sort_by
        #   List of 'sort_by' columns to use when returning the results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::ListEntitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::ListEntitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_connection_entity_type_entities(parent, conditions: nil, page_size: nil, page_token: nil, sort_by: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/entities', options)
          command.response_representation = Google::Apis::ConnectorsV2::ListEntitiesResponse::Representation
          command.response_class = Google::Apis::ConnectorsV2::ListEntitiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['conditions'] = conditions unless conditions.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['sortBy'] = sort_by unless sort_by.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing entity row matching the entity type and entity id
        # specified in the request. The fields in the entity row that need to be
        # modified are contained in the body of the request. All unspecified fields are
        # left unchanged. The response message contains a `Entity` message object
        # returned as a response by the external system.
        # @param [String] name
        #   Output only. Resource name of the Entity. Format: projects/`project`/locations/
        #   `location`/connections/`connection`/entityTypes/`type`/entities/`id`
        # @param [Google::Apis::ConnectorsV2::Entity] entity_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::Entity] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::Entity]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_connection_entity_type_entity(name, entity_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::ConnectorsV2::Entity::Representation
          command.request_object = entity_object
          command.response_representation = Google::Apis::ConnectorsV2::Entity::Representation
          command.response_class = Google::Apis::ConnectorsV2::Entity
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates entities based on conditions specified in the request and not on
        # entity id.
        # @param [String] entity_type
        #   Required. Resource name of the Entity Type. Format: projects/`project`/
        #   locations/`location`/connections/`connection`/entityTypes/`type`
        # @param [Google::Apis::ConnectorsV2::Entity] entity_object
        # @param [String] conditions
        #   Required. Conditions to be used when updating entities. From a proto
        #   standpoint, There are no restrictions on what can be passed using this field.
        #   The connector documentation should have information about what format of
        #   filters/conditions are supported. Note: If this conditions field is left empty,
        #   an exception is thrown. We don't want to consider 'empty conditions' to be a
        #   match-all case. Connector developers can determine and document what a match-
        #   all case constraint would be.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ConnectorsV2::UpdateEntitiesWithConditionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ConnectorsV2::UpdateEntitiesWithConditionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_connection_entity_type_entity_entities_with_conditions(entity_type, entity_object = nil, conditions: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+entityType}/entities:updateEntitiesWithConditions', options)
          command.request_representation = Google::Apis::ConnectorsV2::Entity::Representation
          command.request_object = entity_object
          command.response_representation = Google::Apis::ConnectorsV2::UpdateEntitiesWithConditionsResponse::Representation
          command.response_class = Google::Apis::ConnectorsV2::UpdateEntitiesWithConditionsResponse
          command.params['entityType'] = entity_type unless entity_type.nil?
          command.query['conditions'] = conditions unless conditions.nil?
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
