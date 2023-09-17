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
      
      class Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteActionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteActionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteSqlQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecuteSqlQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JsonSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListActionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateEntitiesWithConditionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_json_schema, as: 'inputJsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          collection :input_parameters, as: 'inputParameters', class: Google::Apis::ConnectorsV2::InputParameter, decorator: Google::Apis::ConnectorsV2::InputParameter::Representation
      
          property :name, as: 'name'
          property :result_json_schema, as: 'resultJsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          collection :result_metadata, as: 'resultMetadata', class: Google::Apis::ConnectorsV2::ResultMetadata, decorator: Google::Apis::ConnectorsV2::ResultMetadata::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fields, as: 'fields'
          property :name, as: 'name'
        end
      end
      
      class EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::ConnectorsV2::Field, decorator: Google::Apis::ConnectorsV2::Field::Representation
      
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ExecuteActionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :parameters, as: 'parameters'
        end
      end
      
      class ExecuteActionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results'
        end
      end
      
      class ExecuteSqlQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query', class: Google::Apis::ConnectorsV2::Query, decorator: Google::Apis::ConnectorsV2::Query::Representation
      
        end
      end
      
      class ExecuteSqlQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :key, as: 'key'
          property :name, as: 'name'
          property :nullable, as: 'nullable'
          property :reference, as: 'reference', class: Google::Apis::ConnectorsV2::Reference, decorator: Google::Apis::ConnectorsV2::Reference::Representation
      
        end
      end
      
      class InputParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :name, as: 'name'
          property :nullable, as: 'nullable'
        end
      end
      
      class JsonSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :default, as: 'default'
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :format, as: 'format'
          property :items, as: 'items', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :jdbc_type, as: 'jdbcType'
          hash :properties, as: 'properties', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          collection :required, as: 'required'
          collection :type, as: 'type'
        end
      end
      
      class ListActionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::ConnectorsV2::Action, decorator: Google::Apis::ConnectorsV2::Action::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unsupported_action_names, as: 'unsupportedActionNames'
        end
      end
      
      class ListEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::ConnectorsV2::Entity, decorator: Google::Apis::ConnectorsV2::Entity::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :types, as: 'types', class: Google::Apis::ConnectorsV2::EntityType, decorator: Google::Apis::ConnectorsV2::EntityType::Representation
      
          collection :unsupported_type_names, as: 'unsupportedTypeNames'
        end
      end
      
      class Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_rows, :numeric_string => true, as: 'maxRows'
          property :query, as: 'query'
          collection :query_parameters, as: 'queryParameters', class: Google::Apis::ConnectorsV2::QueryParameter, decorator: Google::Apis::ConnectorsV2::QueryParameter::Representation
      
          property :timeout, :numeric_string => true, as: 'timeout'
        end
      end
      
      class QueryParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :value, as: 'value'
        end
      end
      
      class Reference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class ResultMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :description, as: 'description'
          property :json_schema, as: 'jsonSchema', class: Google::Apis::ConnectorsV2::JsonSchema, decorator: Google::Apis::ConnectorsV2::JsonSchema::Representation
      
          property :name, as: 'name'
        end
      end
      
      class UpdateEntitiesWithConditionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :response, as: 'response'
        end
      end
    end
  end
end
