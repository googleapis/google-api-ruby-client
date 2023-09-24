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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module ConnectorsV2
      
      # Action message contains metadata information about a single action present in
      # the external system.
      class Action
        include Google::Apis::Core::Hashable
      
        # Brief Description of action
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display Name of action to be shown on client side
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `inputJsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :input_json_schema
      
        # List containing input parameter metadata.
        # Corresponds to the JSON property `inputParameters`
        # @return [Array<Google::Apis::ConnectorsV2::InputParameter>]
        attr_accessor :input_parameters
      
        # Name of the action.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `resultJsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :result_json_schema
      
        # List containing the metadata of result fields.
        # Corresponds to the JSON property `resultMetadata`
        # @return [Array<Google::Apis::ConnectorsV2::ResultMetadata>]
        attr_accessor :result_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_json_schema = args[:input_json_schema] if args.key?(:input_json_schema)
          @input_parameters = args[:input_parameters] if args.key?(:input_parameters)
          @name = args[:name] if args.key?(:name)
          @result_json_schema = args[:result_json_schema] if args.key?(:result_json_schema)
          @result_metadata = args[:result_metadata] if args.key?(:result_metadata)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 'Entity row'/ 'Entity' refers to a single row of an entity type.
      class Entity
        include Google::Apis::Core::Hashable
      
        # Fields of the entity. The key is name of the field and the value contains the
        # applicable `google.protobuf.Value` entry for this field.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Object>]
        attr_accessor :fields
      
        # Output only. Resource name of the Entity. Format: projects/`project`/locations/
        # `location`/connections/`connection`/entityTypes/`type`/entities/`id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # EntityType message contains metadata information about a single entity type
      # present in the external system.
      class EntityType
        include Google::Apis::Core::Hashable
      
        # List containing metadata information about each field of the entity type.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::ConnectorsV2::Field>]
        attr_accessor :fields
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # The name of the entity type.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for ActionService.ExecuteAction
      class ExecuteActionRequest
        include Google::Apis::Core::Hashable
      
        # Parameters for executing the action. The parameters can be key/value pairs or
        # nested structs.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Response message for ActionService.ExecuteAction
      class ExecuteActionResponse
        include Google::Apis::Core::Hashable
      
        # In the case of successful invocation of the specified action, the results
        # Struct contains values based on the response of the action invoked. 1. If the
        # action execution produces any entities as a result, they are returned as an
        # array of Structs with the 'key' being the field name and the 'value' being the
        # value of that field in each result row. ` 'results': [`'key': 'value'`, ...] `
        # Corresponds to the JSON property `results`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # An execute sql query request containing the query and the connection to
      # execute it on.
      class ExecuteSqlQueryRequest
        include Google::Apis::Core::Hashable
      
        # A wrapper around the SQL query statement. This is needed so that the JSON
        # representation of ExecuteSqlQueryRequest has the following format: ``"query":"
        # select *"``.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::ConnectorsV2::Query]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # A response returned by the connection after executing the sql query.
      class ExecuteSqlQueryResponse
        include Google::Apis::Core::Hashable
      
        # In the case of successful execution of the query the response contains results
        # returned by the external system. For example, the result rows of the query are
        # contained in the 'results' Struct list - "results": [ ` "field1": "val1", "
        # field2": "val2",.. `,.. ] Each Struct row can contain fields any type of like
        # nested Structs or lists.
        # Corresponds to the JSON property `results`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Message contains EntityType's Field metadata.
      class Field
        include Google::Apis::Core::Hashable
      
        # The following map contains fields that are not explicitly mentioned above,this
        # give connectors the flexibility to add new metadata fields.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The data type of the Field.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The following field specifies the default value of the Field provided by the
        # external system if a value is not provided.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A brief description of the Field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # The following boolean field specifies if the current Field acts as a primary
        # key or id if the parent is of type entity.
        # Corresponds to the JSON property `key`
        # @return [Boolean]
        attr_accessor :key
        alias_method :key?, :key
      
        # Name of the Field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies whether a null value is allowed.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Reference captures the association between two different entity types. Value
        # links to the reference of another entity type.
        # Corresponds to the JSON property `reference`
        # @return [Google::Apis::ConnectorsV2::Reference]
        attr_accessor :reference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @nullable = args[:nullable] if args.key?(:nullable)
          @reference = args[:reference] if args.key?(:reference)
        end
      end
      
      # Input Parameter message contains metadata about the parameters required for
      # executing an Action.
      class InputParameter
        include Google::Apis::Core::Hashable
      
        # The following map contains fields that are not explicitly mentioned above,this
        # give connectors the flexibility to add new metadata fields.
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The data type of the Parameter
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # The following field specifies the default value of the Parameter provided by
        # the external system if a value is not provided.
        # Corresponds to the JSON property `defaultValue`
        # @return [Object]
        attr_accessor :default_value
      
        # A brief description of the Parameter.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # Name of the Parameter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies whether a null value is allowed.
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @description = args[:description] if args.key?(:description)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
          @nullable = args[:nullable] if args.key?(:nullable)
        end
      end
      
      # JsonSchema representation of schema metadata
      class JsonSchema
        include Google::Apis::Core::Hashable
      
        # Additional details apart from standard json schema fields, this gives
        # flexibility to store metadata about the schema
        # Corresponds to the JSON property `additionalDetails`
        # @return [Hash<String,Object>]
        attr_accessor :additional_details
      
        # The default value of the field or object described by this schema.
        # Corresponds to the JSON property `default`
        # @return [Object]
        attr_accessor :default
      
        # A description of this schema.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Possible values for an enumeration. This works in conjunction with `type` to
        # represent types with a fixed set of legal values
        # Corresponds to the JSON property `enum`
        # @return [Array<Object>]
        attr_accessor :enum
      
        # Format of the value as per https://json-schema.org/understanding-json-schema/
        # reference/string.html#format
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `items`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :items
      
        # JDBC datatype of the field.
        # Corresponds to the JSON property `jdbcType`
        # @return [String]
        attr_accessor :jdbc_type
      
        # The child schemas, applicable only if this is of type `object`. The key is the
        # name of the property and the value is the json schema that describes that
        # property
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::ConnectorsV2::JsonSchema>]
        attr_accessor :properties
      
        # Whether this property is required.
        # Corresponds to the JSON property `required`
        # @return [Array<String>]
        attr_accessor :required
      
        # JSON Schema Validation: A Vocabulary for Structural Validation of JSON
        # Corresponds to the JSON property `type`
        # @return [Array<String>]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_details = args[:additional_details] if args.key?(:additional_details)
          @default = args[:default] if args.key?(:default)
          @description = args[:description] if args.key?(:description)
          @enum = args[:enum] if args.key?(:enum)
          @format = args[:format] if args.key?(:format)
          @items = args[:items] if args.key?(:items)
          @jdbc_type = args[:jdbc_type] if args.key?(:jdbc_type)
          @properties = args[:properties] if args.key?(:properties)
          @required = args[:required] if args.key?(:required)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Response message for ActionService.ListActions
      class ListActionsResponse
        include Google::Apis::Core::Hashable
      
        # List of action metadata.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::ConnectorsV2::Action>]
        attr_accessor :actions
      
        # Next page token if more actions available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of actions which contain unsupported Datatypes. Check datatype.proto for
        # more information.
        # Corresponds to the JSON property `unsupportedActionNames`
        # @return [Array<String>]
        attr_accessor :unsupported_action_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unsupported_action_names = args[:unsupported_action_names] if args.key?(:unsupported_action_names)
        end
      end
      
      # Response message for EntityService.ListEntities
      class ListEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # List containing entity rows.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::ConnectorsV2::Entity>]
        attr_accessor :entities
      
        # Next page token if more records are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for EntityService.ListEntityTypes
      class ListEntityTypesResponse
        include Google::Apis::Core::Hashable
      
        # Next page token if more entity types available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of metadata related to all entity types.
        # Corresponds to the JSON property `types`
        # @return [Array<Google::Apis::ConnectorsV2::EntityType>]
        attr_accessor :types
      
        # List of entity type names which contain unsupported Datatypes. Check datatype.
        # proto for more information.
        # Corresponds to the JSON property `unsupportedTypeNames`
        # @return [Array<String>]
        attr_accessor :unsupported_type_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @types = args[:types] if args.key?(:types)
          @unsupported_type_names = args[:unsupported_type_names] if args.key?(:unsupported_type_names)
        end
      end
      
      # A wrapper around the SQL query statement. This is needed so that the JSON
      # representation of ExecuteSqlQueryRequest has the following format: ``"query":"
      # select *"``.
      class Query
        include Google::Apis::Core::Hashable
      
        # Sets the limit for the maximum number of rows returned after the query
        # execution.
        # Corresponds to the JSON property `maxRows`
        # @return [Fixnum]
        attr_accessor :max_rows
      
        # Required. Sql query to execute.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # In the struct, the value corresponds to the value of query parameter and date
        # type corresponds to the date type of the query parameter.
        # Corresponds to the JSON property `queryParameters`
        # @return [Array<Google::Apis::ConnectorsV2::QueryParameter>]
        attr_accessor :query_parameters
      
        # Sets the number of seconds the driver will wait for a query to execute.
        # Corresponds to the JSON property `timeout`
        # @return [Fixnum]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_rows = args[:max_rows] if args.key?(:max_rows)
          @query = args[:query] if args.key?(:query)
          @query_parameters = args[:query_parameters] if args.key?(:query_parameters)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
      
      # Query parameter definition
      class QueryParameter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Object]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # 
      class Reference
        include Google::Apis::Core::Hashable
      
        # Name of the reference field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Name of reference entity type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Result Metadata message contains metadata about the result returned after
      # executing an Action.
      class ResultMetadata
        include Google::Apis::Core::Hashable
      
        # The data type of the metadata field
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # A brief description of the metadata field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # JsonSchema representation of schema metadata
        # Corresponds to the JSON property `jsonSchema`
        # @return [Google::Apis::ConnectorsV2::JsonSchema]
        attr_accessor :json_schema
      
        # Name of the metadata field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_type = args[:data_type] if args.key?(:data_type)
          @description = args[:description] if args.key?(:description)
          @json_schema = args[:json_schema] if args.key?(:json_schema)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for EntityService.UpdateEntitiesWithConditions
      class UpdateEntitiesWithConditionsResponse
        include Google::Apis::Core::Hashable
      
        # Response returned by the external system.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response = args[:response] if args.key?(:response)
        end
      end
    end
  end
end
