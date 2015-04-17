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
      class AllocateIdsRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AllocateIdsResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BeginTransactionRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BeginTransactionResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CommitRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CommitResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CompositeFilterRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EntityRepresentation < Google::Apis::Core::JsonRepresentation; end
      class EntityResultRepresentation < Google::Apis::Core::JsonRepresentation; end
      class FilterRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GqlQueryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GqlQueryArgRepresentation < Google::Apis::Core::JsonRepresentation; end
      class KeyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class KeyPathElementRepresentation < Google::Apis::Core::JsonRepresentation; end
      class KindExpressionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LookupRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LookupResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MutationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MutationResultRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PartitionIdRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PropertyRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PropertyExpressionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PropertyFilterRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PropertyOrderRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PropertyReferenceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class QueryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class QueryResultBatchRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReadOptionsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ResponseHeaderRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RollbackRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RollbackResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RunQueryRequestRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RunQueryResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ValueRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AllocateIdsRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :keys, as: 'keys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
      end

      # @private
      class AllocateIdsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeaderRepresentation
        
        collection :keys, as: 'keys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
      end

      # @private
      class BeginTransactionRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :isolation_level, as: 'isolationLevel'
      end

      # @private
      class BeginTransactionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeaderRepresentation
        
        property :transaction, as: 'transaction'
      end

      # @private
      class CommitRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :ignore_read_only, as: 'ignoreReadOnly'
        property :mode, as: 'mode'
        property :mutation, as: 'mutation', class: Google::Apis::DatastoreV1beta2::Mutation, decorator: Google::Apis::DatastoreV1beta2::MutationRepresentation
        
        property :transaction, as: 'transaction'
      end

      # @private
      class CommitResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeaderRepresentation
        
        property :mutation_result, as: 'mutationResult', class: Google::Apis::DatastoreV1beta2::MutationResult, decorator: Google::Apis::DatastoreV1beta2::MutationResultRepresentation
      end

      # @private
      class CompositeFilterRepresentation < Google::Apis::Core::JsonRepresentation
        collection :filters, as: 'filters', class: Google::Apis::DatastoreV1beta2::Filter, decorator: Google::Apis::DatastoreV1beta2::FilterRepresentation
        
        
        property :operator, as: 'operator'
      end

      # @private
      class EntityRepresentation < Google::Apis::Core::JsonRepresentation
        property :key, as: 'key', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
        
        hash :properties, as: 'properties', class: Google::Apis::DatastoreV1beta2::Property, decorator: Google::Apis::DatastoreV1beta2::PropertyRepresentation
      end

      # @private
      class EntityResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :entity, as: 'entity', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
      end

      # @private
      class FilterRepresentation < Google::Apis::Core::JsonRepresentation
        property :composite_filter, as: 'compositeFilter', class: Google::Apis::DatastoreV1beta2::CompositeFilter, decorator: Google::Apis::DatastoreV1beta2::CompositeFilterRepresentation
        
        property :property_filter, as: 'propertyFilter', class: Google::Apis::DatastoreV1beta2::PropertyFilter, decorator: Google::Apis::DatastoreV1beta2::PropertyFilterRepresentation
      end

      # @private
      class GqlQueryRepresentation < Google::Apis::Core::JsonRepresentation
        property :allow_literal, as: 'allowLiteral'
        collection :name_args, as: 'nameArgs', class: Google::Apis::DatastoreV1beta2::GqlQueryArg, decorator: Google::Apis::DatastoreV1beta2::GqlQueryArgRepresentation
        
        
        collection :number_args, as: 'numberArgs', class: Google::Apis::DatastoreV1beta2::GqlQueryArg, decorator: Google::Apis::DatastoreV1beta2::GqlQueryArgRepresentation
        
        
        property :query_string, as: 'queryString'
      end

      # @private
      class GqlQueryArgRepresentation < Google::Apis::Core::JsonRepresentation
        property :cursor, as: 'cursor'
        property :name, as: 'name'
        property :value, as: 'value', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::ValueRepresentation
      end

      # @private
      class KeyRepresentation < Google::Apis::Core::JsonRepresentation
        property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1beta2::PartitionId, decorator: Google::Apis::DatastoreV1beta2::PartitionIdRepresentation
        
        collection :path, as: 'path', class: Google::Apis::DatastoreV1beta2::KeyPathElement, decorator: Google::Apis::DatastoreV1beta2::KeyPathElementRepresentation
      end

      # @private
      class KeyPathElementRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :name, as: 'name'
      end

      # @private
      class KindExpressionRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
      end

      # @private
      class LookupRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :keys, as: 'keys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
        
        
        property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1beta2::ReadOptions, decorator: Google::Apis::DatastoreV1beta2::ReadOptionsRepresentation
      end

      # @private
      class LookupResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :deferred, as: 'deferred', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
        
        
        collection :found, as: 'found', class: Google::Apis::DatastoreV1beta2::EntityResult, decorator: Google::Apis::DatastoreV1beta2::EntityResultRepresentation
        
        
        property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeaderRepresentation
        
        collection :missing, as: 'missing', class: Google::Apis::DatastoreV1beta2::EntityResult, decorator: Google::Apis::DatastoreV1beta2::EntityResultRepresentation
      end

      # @private
      class MutationRepresentation < Google::Apis::Core::JsonRepresentation
        collection :delete, as: 'delete', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
        
        
        property :force, as: 'force'
        collection :insert, as: 'insert', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
        
        
        collection :insert_auto_id, as: 'insertAutoId', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
        
        
        collection :update, as: 'update', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
        
        
        collection :upsert, as: 'upsert', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
      end

      # @private
      class MutationResultRepresentation < Google::Apis::Core::JsonRepresentation
        property :index_updates, as: 'indexUpdates'
        collection :insert_auto_id_keys, as: 'insertAutoIdKeys', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
      end

      # @private
      class PartitionIdRepresentation < Google::Apis::Core::JsonRepresentation
        property :dataset_id, as: 'datasetId'
        property :namespace, as: 'namespace'
      end

      # @private
      class PropertyRepresentation < Google::Apis::Core::JsonRepresentation
        property :blob_key_value, as: 'blobKeyValue'
        property :blob_value, as: 'blobValue'
        property :boolean_value, as: 'booleanValue'
        property :date_time_value, as: 'dateTimeValue', type: DateTime
        property :double_value, as: 'doubleValue'
        property :entity_value, as: 'entityValue', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
        
        property :indexed, as: 'indexed'
        property :integer_value, as: 'integerValue'
        property :key_value, as: 'keyValue', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
        
        collection :list_value, as: 'listValue', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::ValueRepresentation
        
        
        property :meaning, as: 'meaning'
        property :string_value, as: 'stringValue'
      end

      # @private
      class PropertyExpressionRepresentation < Google::Apis::Core::JsonRepresentation
        property :aggregation_function, as: 'aggregationFunction'
        property :property, as: 'property', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReferenceRepresentation
      end

      # @private
      class PropertyFilterRepresentation < Google::Apis::Core::JsonRepresentation
        property :operator, as: 'operator'
        property :property, as: 'property', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReferenceRepresentation
        
        property :value, as: 'value', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::ValueRepresentation
      end

      # @private
      class PropertyOrderRepresentation < Google::Apis::Core::JsonRepresentation
        property :direction, as: 'direction'
        property :property, as: 'property', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReferenceRepresentation
      end

      # @private
      class PropertyReferenceRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
      end

      # @private
      class QueryRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_cursor, as: 'endCursor'
        property :filter, as: 'filter', class: Google::Apis::DatastoreV1beta2::Filter, decorator: Google::Apis::DatastoreV1beta2::FilterRepresentation
        
        collection :group_by, as: 'groupBy', class: Google::Apis::DatastoreV1beta2::PropertyReference, decorator: Google::Apis::DatastoreV1beta2::PropertyReferenceRepresentation
        
        
        collection :kinds, as: 'kinds', class: Google::Apis::DatastoreV1beta2::KindExpression, decorator: Google::Apis::DatastoreV1beta2::KindExpressionRepresentation
        
        
        property :limit, as: 'limit'
        property :offset, as: 'offset'
        collection :order, as: 'order', class: Google::Apis::DatastoreV1beta2::PropertyOrder, decorator: Google::Apis::DatastoreV1beta2::PropertyOrderRepresentation
        
        
        collection :projection, as: 'projection', class: Google::Apis::DatastoreV1beta2::PropertyExpression, decorator: Google::Apis::DatastoreV1beta2::PropertyExpressionRepresentation
        
        
        property :start_cursor, as: 'startCursor'
      end

      # @private
      class QueryResultBatchRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_cursor, as: 'endCursor'
        property :entity_result_type, as: 'entityResultType'
        collection :entity_results, as: 'entityResults', class: Google::Apis::DatastoreV1beta2::EntityResult, decorator: Google::Apis::DatastoreV1beta2::EntityResultRepresentation
        
        
        property :more_results, as: 'moreResults'
        property :skipped_results, as: 'skippedResults'
      end

      # @private
      class ReadOptionsRepresentation < Google::Apis::Core::JsonRepresentation
        property :read_consistency, as: 'readConsistency'
        property :transaction, as: 'transaction'
      end

      # @private
      class ResponseHeaderRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end

      # @private
      class RollbackRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :transaction, as: 'transaction'
      end

      # @private
      class RollbackResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeaderRepresentation
      end

      # @private
      class RunQueryRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :gql_query, as: 'gqlQuery', class: Google::Apis::DatastoreV1beta2::GqlQuery, decorator: Google::Apis::DatastoreV1beta2::GqlQueryRepresentation
        
        property :partition_id, as: 'partitionId', class: Google::Apis::DatastoreV1beta2::PartitionId, decorator: Google::Apis::DatastoreV1beta2::PartitionIdRepresentation
        
        property :query, as: 'query', class: Google::Apis::DatastoreV1beta2::Query, decorator: Google::Apis::DatastoreV1beta2::QueryRepresentation
        
        property :read_options, as: 'readOptions', class: Google::Apis::DatastoreV1beta2::ReadOptions, decorator: Google::Apis::DatastoreV1beta2::ReadOptionsRepresentation
      end

      # @private
      class RunQueryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :batch, as: 'batch', class: Google::Apis::DatastoreV1beta2::QueryResultBatch, decorator: Google::Apis::DatastoreV1beta2::QueryResultBatchRepresentation
        
        property :header, as: 'header', class: Google::Apis::DatastoreV1beta2::ResponseHeader, decorator: Google::Apis::DatastoreV1beta2::ResponseHeaderRepresentation
      end

      # @private
      class ValueRepresentation < Google::Apis::Core::JsonRepresentation
        property :blob_key_value, as: 'blobKeyValue'
        property :blob_value, as: 'blobValue'
        property :boolean_value, as: 'booleanValue'
        property :date_time_value, as: 'dateTimeValue', type: DateTime
        property :double_value, as: 'doubleValue'
        property :entity_value, as: 'entityValue', class: Google::Apis::DatastoreV1beta2::Entity, decorator: Google::Apis::DatastoreV1beta2::EntityRepresentation
        
        property :indexed, as: 'indexed'
        property :integer_value, as: 'integerValue'
        property :key_value, as: 'keyValue', class: Google::Apis::DatastoreV1beta2::Key, decorator: Google::Apis::DatastoreV1beta2::KeyRepresentation
        
        collection :list_value, as: 'listValue', class: Google::Apis::DatastoreV1beta2::Value, decorator: Google::Apis::DatastoreV1beta2::ValueRepresentation
        
        
        property :meaning, as: 'meaning'
        property :string_value, as: 'stringValue'
      end
    end
  end
end
