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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DatastoreV1beta2
      
      class AllocateIdsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocateIdsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeginTransactionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BeginTransactionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompositeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GqlQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GqlQueryArg
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyPathElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KindExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LookupResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Mutation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MutationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Property
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyOrder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PropertyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Query
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResultBatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocateIdsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
        end
      end
      
      class AllocateIdsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeader::Representation
      
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
        end
      end
      
      class BeginTransactionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :isolation_level, as: 'isolationLevel'
        end
      end
      
      class BeginTransactionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeader::Representation
      
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class CommitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_read_only, as: 'ignoreReadOnly'
          property :mode, as: 'mode'
          property :mutation, as: 'mutation', class: Google::Apis::DatastoreV1beta2::Mutation, decorator: Google::Apis::DatastoreV1beta2::Mutation::Representation
      
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class CommitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeader::Representation
      
          property :mutation_result, as: 'mutationResult', class: Google::Apis::DatastoreV1beta2::MutationResult, decorator: Google::Apis::DatastoreV1beta2::MutationResult::Representation
      
        end
      end
      
      class CompositeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::DatastoreV1beta2::Filter, decorator: Google::Apis::DatastoreV1beta2::Filter::Representation
      
          property :operator, as: 'operator'
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
          hash :properties, as: 'properties', class: Google::Apis::DatastoreV1beta2::Property, decorator: Google::Apis::DatastoreV1beta2::Property::Representation
      
        end
      end
      
      class EntityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :composite_filter, as: 'compositeFilter', class: Google::Apis::DatastoreV1beta2::CompositeFilter, decorator: Google::Apis::DatastoreV1beta2::CompositeFilter::Representation
      
          property :property_filter, as: 'propertyFilter', class: Google::Apis::DatastoreV1beta2::PropertyFilter, decorator: Google::Apis::DatastoreV1beta2::PropertyFilter::Representation
      
        end
      end
      
      class GqlQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_literal, as: 'allowLiteral'
          collection :name_args, as: 'nameArgs', class: Google::Apis::DatastoreV1beta2::GqlQueryArg, decorator: Google::Apis::DatastoreV1beta2::GqlQueryArg::Representation
      
          collection :number_args, as: 'numberArgs', class: Google::Apis::DatastoreV1beta2::GqlQueryArg, decorator: Google::Apis::DatastoreV1beta2::GqlQueryArg::Representation
      
          property :query_string, as: 'queryString'
        end
      end
      
      class GqlQueryArg
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cursor, :base64 => true, as: 'cursor'
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::Value::Representation
      
        end
      end
      
      class Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1beta2::PartitionId, decorator: Google::Apis::DatastoreV1beta2::PartitionId::Representation
      
          collection :path, as: 'path', class: Google::Apis::DatastoreV1beta2::KeyPathElement, decorator: Google::Apis::DatastoreV1beta2::KeyPathElement::Representation
      
        end
      end
      
      class KeyPathElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class KindExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class LookupRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
          property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1beta2::ReadOptions, decorator: Google::Apis::DatastoreV1beta2::ReadOptions::Representation
      
        end
      end
      
      class LookupResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deferred, as: 'deferred', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
          collection :found, as: 'found', class: Google::Apis::DatastoreV1beta2::EntityResult, decorator: Google::Apis::DatastoreV1beta2::EntityResult::Representation
      
          property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeader::Representation
      
          collection :missing, as: 'missing', class: Google::Apis::DatastoreV1beta2::EntityResult, decorator: Google::Apis::DatastoreV1beta2::EntityResult::Representation
      
        end
      end
      
      class Mutation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :delete, as: 'delete', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
          property :force, as: 'force'
          collection :insert, as: 'insert', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
          collection :insert_auto_id, as: 'insertAutoId', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
          collection :update, as: 'update', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
          collection :upsert, as: 'upsert', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
        end
      end
      
      class MutationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index_updates, as: 'indexUpdates'
          collection :insert_auto_id_keys, as: 'insertAutoIdKeys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
        end
      end
      
      class PartitionId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :namespace, as: 'namespace'
        end
      end
      
      class Property
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_key_value, as: 'blobKeyValue'
          property :blob_value, :base64 => true, as: 'blobValue'
          property :boolean_value, as: 'booleanValue'
          property :date_time_value, as: 'dateTimeValue', type: DateTime
      
          property :double_value, as: 'doubleValue'
          property :entity_value, as: 'entityValue', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
          property :indexed, as: 'indexed'
          property :integer_value, as: 'integerValue'
          property :key_value, as: 'keyValue', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
          collection :list_value, as: 'listValue', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::Value::Representation
      
          property :meaning, as: 'meaning'
          property :string_value, as: 'stringValue'
        end
      end
      
      class PropertyExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_function, as: 'aggregationFunction'
          property :property, as: 'property', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReference::Representation
      
        end
      end
      
      class PropertyFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator, as: 'operator'
          property :property, as: 'property', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReference::Representation
      
          property :value, as: 'value', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::Value::Representation
      
        end
      end
      
      class PropertyOrder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direction, as: 'direction'
          property :property, as: 'property', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReference::Representation
      
        end
      end
      
      class PropertyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Query
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_cursor, :base64 => true, as: 'endCursor'
          property :filter, as: 'filter', class: Google::Apis::DatastoreV1beta2::Filter, decorator: Google::Apis::DatastoreV1beta2::Filter::Representation
      
          collection :group_by, as: 'groupBy', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReference::Representation
      
          collection :kinds, as: 'kinds', class: Google::Apis::DatastoreV1beta2::KindExpression, decorator: Google::Apis::DatastoreV1beta2::KindExpression::Representation
      
          property :limit, as: 'limit'
          property :offset, as: 'offset'
          collection :order, as: 'order', class: Google::Apis::DatastoreV1beta2::PropertyOrder, decorator: Google::Apis::DatastoreV1beta2::PropertyOrder::Representation
      
          collection :projection, as: 'projection', class: Google::Apis::DatastoreV1beta2::PropertyExpression, decorator: Google::Apis::DatastoreV1beta2::PropertyExpression::Representation
      
          property :start_cursor, :base64 => true, as: 'startCursor'
        end
      end
      
      class QueryResultBatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_cursor, :base64 => true, as: 'endCursor'
          property :entity_result_type, as: 'entityResultType'
          collection :entity_results, as: 'entityResults', class: Google::Apis::DatastoreV1beta2::EntityResult, decorator: Google::Apis::DatastoreV1beta2::EntityResult::Representation
      
          property :more_results, as: 'moreResults'
          property :skipped_results, as: 'skippedResults'
        end
      end
      
      class ReadOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_consistency, as: 'readConsistency'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class ResponseHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class RollbackRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class RollbackResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeader::Representation
      
        end
      end
      
      class RunQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gql_query, as: 'gqlQuery', class: Google::Apis::DatastoreV1beta2::GqlQuery, decorator: Google::Apis::DatastoreV1beta2::GqlQuery::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1beta2::PartitionId, decorator: Google::Apis::DatastoreV1beta2::PartitionId::Representation
      
          property :query, as: 'query', class: Google::Apis::DatastoreV1beta2::Query, decorator: Google::Apis::DatastoreV1beta2::Query::Representation
      
          property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1beta2::ReadOptions, decorator: Google::Apis::DatastoreV1beta2::ReadOptions::Representation
      
        end
      end
      
      class RunQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch, as: 'batch', class: Google::Apis::DatastoreV1beta2::QueryResultBatch, decorator: Google::Apis::DatastoreV1beta2::QueryResultBatch::Representation
      
          property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeader::Representation
      
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_key_value, as: 'blobKeyValue'
          property :blob_value, :base64 => true, as: 'blobValue'
          property :boolean_value, as: 'booleanValue'
          property :date_time_value, as: 'dateTimeValue', type: DateTime
      
          property :double_value, as: 'doubleValue'
          property :entity_value, as: 'entityValue', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::Entity::Representation
      
          property :indexed, as: 'indexed'
          property :integer_value, as: 'integerValue'
          property :key_value, as: 'keyValue', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::Key::Representation
      
          collection :list_value, as: 'listValue', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::Value::Representation
      
          property :meaning, as: 'meaning'
          property :string_value, as: 'stringValue'
        end
      end
    end
  end
end
