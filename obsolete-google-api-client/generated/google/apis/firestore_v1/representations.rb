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
    module FirestoreV1
      
      class ArrayValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchGetDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchWriteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchWriteResponse
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
      
      class CollectionSelector
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
      
      class Cursor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentDelete
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentMask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentRemove
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentTransform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentsTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExistenceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldTransform
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ExportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ExportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ExportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1FieldOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1Index
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1IndexConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1IndexConfigDelta
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1IndexField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1IndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ListFieldsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1ListIndexesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1LocationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirestoreAdminV1Progress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCollectionIdsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCollectionIdsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MapValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Order
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartitionQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Precondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Projection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadOnly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReadWrite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackRequest
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
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StructuredQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Target
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TransactionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UnaryFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Write
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArrayValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
        end
      end
      
      class BatchGetDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents'
          property :mask, as: 'mask', class: Google::Apis::FirestoreV1::DocumentMask, decorator: Google::Apis::FirestoreV1::DocumentMask::Representation
      
          property :new_transaction, as: 'newTransaction', class: Google::Apis::FirestoreV1::TransactionOptions, decorator: Google::Apis::FirestoreV1::TransactionOptions::Representation
      
          property :read_time, as: 'readTime'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class BatchGetDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :found, as: 'found', class: Google::Apis::FirestoreV1::Document, decorator: Google::Apis::FirestoreV1::Document::Representation
      
          property :missing, as: 'missing'
          property :read_time, as: 'readTime'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class BatchWriteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          collection :writes, as: 'writes', class: Google::Apis::FirestoreV1::Write, decorator: Google::Apis::FirestoreV1::Write::Representation
      
        end
      end
      
      class BatchWriteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :status, as: 'status', class: Google::Apis::FirestoreV1::Status, decorator: Google::Apis::FirestoreV1::Status::Representation
      
          collection :write_results, as: 'writeResults', class: Google::Apis::FirestoreV1::WriteResult, decorator: Google::Apis::FirestoreV1::WriteResult::Representation
      
        end
      end
      
      class BeginTransactionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::FirestoreV1::TransactionOptions, decorator: Google::Apis::FirestoreV1::TransactionOptions::Representation
      
        end
      end
      
      class BeginTransactionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class CollectionSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_descendants, as: 'allDescendants'
          property :collection_id, as: 'collectionId'
        end
      end
      
      class CommitRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction, :base64 => true, as: 'transaction'
          collection :writes, as: 'writes', class: Google::Apis::FirestoreV1::Write, decorator: Google::Apis::FirestoreV1::Write::Representation
      
        end
      end
      
      class CommitResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_time, as: 'commitTime'
          collection :write_results, as: 'writeResults', class: Google::Apis::FirestoreV1::WriteResult, decorator: Google::Apis::FirestoreV1::WriteResult::Representation
      
        end
      end
      
      class CompositeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::FirestoreV1::Filter, decorator: Google::Apis::FirestoreV1::Filter::Representation
      
          property :op, as: 'op'
        end
      end
      
      class Cursor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :before, as: 'before'
          collection :values, as: 'values', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
        end
      end
      
      class Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          hash :fields, as: 'fields', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DocumentChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::FirestoreV1::Document, decorator: Google::Apis::FirestoreV1::Document::Representation
      
          collection :removed_target_ids, as: 'removedTargetIds'
          collection :target_ids, as: 'targetIds'
        end
      end
      
      class DocumentDelete
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :read_time, as: 'readTime'
          collection :removed_target_ids, as: 'removedTargetIds'
        end
      end
      
      class DocumentMask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_paths, as: 'fieldPaths'
        end
      end
      
      class DocumentRemove
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :read_time, as: 'readTime'
          collection :removed_target_ids, as: 'removedTargetIds'
        end
      end
      
      class DocumentTransform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          collection :field_transforms, as: 'fieldTransforms', class: Google::Apis::FirestoreV1::FieldTransform, decorator: Google::Apis::FirestoreV1::FieldTransform::Representation
      
        end
      end
      
      class DocumentsTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExistenceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :target_id, as: 'targetId'
        end
      end
      
      class FieldFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::FirestoreV1::FieldReference, decorator: Google::Apis::FirestoreV1::FieldReference::Representation
      
          property :op, as: 'op'
          property :value, as: 'value', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
        end
      end
      
      class FieldReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
        end
      end
      
      class FieldTransform
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append_missing_elements, as: 'appendMissingElements', class: Google::Apis::FirestoreV1::ArrayValue, decorator: Google::Apis::FirestoreV1::ArrayValue::Representation
      
          property :field_path, as: 'fieldPath'
          property :increment, as: 'increment', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
          property :maximum, as: 'maximum', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
          property :minimum, as: 'minimum', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
          property :remove_all_from_array, as: 'removeAllFromArray', class: Google::Apis::FirestoreV1::ArrayValue, decorator: Google::Apis::FirestoreV1::ArrayValue::Representation
      
          property :set_to_server_value, as: 'setToServerValue'
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :composite_filter, as: 'compositeFilter', class: Google::Apis::FirestoreV1::CompositeFilter, decorator: Google::Apis::FirestoreV1::CompositeFilter::Representation
      
          property :field_filter, as: 'fieldFilter', class: Google::Apis::FirestoreV1::FieldFilter, decorator: Google::Apis::FirestoreV1::FieldFilter::Representation
      
          property :unary_filter, as: 'unaryFilter', class: Google::Apis::FirestoreV1::UnaryFilter, decorator: Google::Apis::FirestoreV1::UnaryFilter::Representation
      
        end
      end
      
      class GoogleFirestoreAdminV1ExportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_ids, as: 'collectionIds'
          property :end_time, as: 'endTime'
          property :operation_state, as: 'operationState'
          property :output_uri_prefix, as: 'outputUriPrefix'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :progress_documents, as: 'progressDocuments', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleFirestoreAdminV1ExportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_ids, as: 'collectionIds'
          property :output_uri_prefix, as: 'outputUriPrefix'
        end
      end
      
      class GoogleFirestoreAdminV1ExportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri_prefix, as: 'outputUriPrefix'
        end
      end
      
      class GoogleFirestoreAdminV1Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index_config, as: 'indexConfig', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexConfig, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleFirestoreAdminV1FieldOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :field, as: 'field'
          collection :index_config_deltas, as: 'indexConfigDeltas', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexConfigDelta, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexConfigDelta::Representation
      
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :progress_documents, as: 'progressDocuments', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleFirestoreAdminV1ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_ids, as: 'collectionIds'
          property :end_time, as: 'endTime'
          property :input_uri_prefix, as: 'inputUriPrefix'
          property :operation_state, as: 'operationState'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :progress_documents, as: 'progressDocuments', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleFirestoreAdminV1ImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_ids, as: 'collectionIds'
          property :input_uri_prefix, as: 'inputUriPrefix'
        end
      end
      
      class GoogleFirestoreAdminV1Index
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexField, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexField::Representation
      
          property :name, as: 'name'
          property :query_scope, as: 'queryScope'
          property :state, as: 'state'
        end
      end
      
      class GoogleFirestoreAdminV1IndexConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ancestor_field, as: 'ancestorField'
          collection :indexes, as: 'indexes', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index::Representation
      
          property :reverting, as: 'reverting'
          property :uses_ancestor_config, as: 'usesAncestorConfig'
        end
      end
      
      class GoogleFirestoreAdminV1IndexConfigDelta
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :change_type, as: 'changeType'
          property :index, as: 'index', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index::Representation
      
        end
      end
      
      class GoogleFirestoreAdminV1IndexField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_config, as: 'arrayConfig'
          property :field_path, as: 'fieldPath'
          property :order, as: 'order'
        end
      end
      
      class GoogleFirestoreAdminV1IndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :index, as: 'index'
          property :progress_bytes, as: 'progressBytes', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :progress_documents, as: 'progressDocuments', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleFirestoreAdminV1ListFieldsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleFirestoreAdminV1ListIndexesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :indexes, as: 'indexes', class: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index, decorator: Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleFirestoreAdminV1LocationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleFirestoreAdminV1Progress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completed_work, :numeric_string => true, as: 'completedWork'
          property :estimated_work, :numeric_string => true, as: 'estimatedWork'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::FirestoreV1::GoogleLongrunningOperation, decorator: Google::Apis::FirestoreV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::FirestoreV1::Status, decorator: Google::Apis::FirestoreV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListCollectionIdsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class ListCollectionIdsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collection_ids, as: 'collectionIds'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::FirestoreV1::Document, decorator: Google::Apis::FirestoreV1::Document::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FirestoreV1::Location, decorator: Google::Apis::FirestoreV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :add_target, as: 'addTarget', class: Google::Apis::FirestoreV1::Target, decorator: Google::Apis::FirestoreV1::Target::Representation
      
          hash :labels, as: 'labels'
          property :remove_target, as: 'removeTarget'
        end
      end
      
      class ListenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_change, as: 'documentChange', class: Google::Apis::FirestoreV1::DocumentChange, decorator: Google::Apis::FirestoreV1::DocumentChange::Representation
      
          property :document_delete, as: 'documentDelete', class: Google::Apis::FirestoreV1::DocumentDelete, decorator: Google::Apis::FirestoreV1::DocumentDelete::Representation
      
          property :document_remove, as: 'documentRemove', class: Google::Apis::FirestoreV1::DocumentRemove, decorator: Google::Apis::FirestoreV1::DocumentRemove::Representation
      
          property :filter, as: 'filter', class: Google::Apis::FirestoreV1::ExistenceFilter, decorator: Google::Apis::FirestoreV1::ExistenceFilter::Representation
      
          property :target_change, as: 'targetChange', class: Google::Apis::FirestoreV1::TargetChange, decorator: Google::Apis::FirestoreV1::TargetChange::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class MapValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fields, as: 'fields', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
        end
      end
      
      class Order
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :direction, as: 'direction'
          property :field, as: 'field', class: Google::Apis::FirestoreV1::FieldReference, decorator: Google::Apis::FirestoreV1::FieldReference::Representation
      
        end
      end
      
      class PartitionQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :partition_count, :numeric_string => true, as: 'partitionCount'
          property :structured_query, as: 'structuredQuery', class: Google::Apis::FirestoreV1::StructuredQuery, decorator: Google::Apis::FirestoreV1::StructuredQuery::Representation
      
        end
      end
      
      class PartitionQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :partitions, as: 'partitions', class: Google::Apis::FirestoreV1::Cursor, decorator: Google::Apis::FirestoreV1::Cursor::Representation
      
        end
      end
      
      class Precondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exists, as: 'exists'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Projection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fields, as: 'fields', class: Google::Apis::FirestoreV1::FieldReference, decorator: Google::Apis::FirestoreV1::FieldReference::Representation
      
        end
      end
      
      class QueryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :structured_query, as: 'structuredQuery', class: Google::Apis::FirestoreV1::StructuredQuery, decorator: Google::Apis::FirestoreV1::StructuredQuery::Representation
      
        end
      end
      
      class ReadOnly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_time, as: 'readTime'
        end
      end
      
      class ReadWrite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retry_transaction, :base64 => true, as: 'retryTransaction'
        end
      end
      
      class RollbackRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class RunQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_transaction, as: 'newTransaction', class: Google::Apis::FirestoreV1::TransactionOptions, decorator: Google::Apis::FirestoreV1::TransactionOptions::Representation
      
          property :read_time, as: 'readTime'
          property :structured_query, as: 'structuredQuery', class: Google::Apis::FirestoreV1::StructuredQuery, decorator: Google::Apis::FirestoreV1::StructuredQuery::Representation
      
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class RunQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::FirestoreV1::Document, decorator: Google::Apis::FirestoreV1::Document::Representation
      
          property :read_time, as: 'readTime'
          property :skipped_results, as: 'skippedResults'
          property :transaction, :base64 => true, as: 'transaction'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StructuredQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_at, as: 'endAt', class: Google::Apis::FirestoreV1::Cursor, decorator: Google::Apis::FirestoreV1::Cursor::Representation
      
          collection :from, as: 'from', class: Google::Apis::FirestoreV1::CollectionSelector, decorator: Google::Apis::FirestoreV1::CollectionSelector::Representation
      
          property :limit, as: 'limit'
          property :offset, as: 'offset'
          collection :order_by, as: 'orderBy', class: Google::Apis::FirestoreV1::Order, decorator: Google::Apis::FirestoreV1::Order::Representation
      
          property :select, as: 'select', class: Google::Apis::FirestoreV1::Projection, decorator: Google::Apis::FirestoreV1::Projection::Representation
      
          property :start_at, as: 'startAt', class: Google::Apis::FirestoreV1::Cursor, decorator: Google::Apis::FirestoreV1::Cursor::Representation
      
          property :where, as: 'where', class: Google::Apis::FirestoreV1::Filter, decorator: Google::Apis::FirestoreV1::Filter::Representation
      
        end
      end
      
      class Target
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :documents, as: 'documents', class: Google::Apis::FirestoreV1::DocumentsTarget, decorator: Google::Apis::FirestoreV1::DocumentsTarget::Representation
      
          property :once, as: 'once'
          property :query, as: 'query', class: Google::Apis::FirestoreV1::QueryTarget, decorator: Google::Apis::FirestoreV1::QueryTarget::Representation
      
          property :read_time, as: 'readTime'
          property :resume_token, :base64 => true, as: 'resumeToken'
          property :target_id, as: 'targetId'
        end
      end
      
      class TargetChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause', class: Google::Apis::FirestoreV1::Status, decorator: Google::Apis::FirestoreV1::Status::Representation
      
          property :read_time, as: 'readTime'
          property :resume_token, :base64 => true, as: 'resumeToken'
          property :target_change_type, as: 'targetChangeType'
          collection :target_ids, as: 'targetIds'
        end
      end
      
      class TransactionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :read_only, as: 'readOnly', class: Google::Apis::FirestoreV1::ReadOnly, decorator: Google::Apis::FirestoreV1::ReadOnly::Representation
      
          property :read_write, as: 'readWrite', class: Google::Apis::FirestoreV1::ReadWrite, decorator: Google::Apis::FirestoreV1::ReadWrite::Representation
      
        end
      end
      
      class UnaryFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::FirestoreV1::FieldReference, decorator: Google::Apis::FirestoreV1::FieldReference::Representation
      
          property :op, as: 'op'
        end
      end
      
      class Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_value, as: 'arrayValue', class: Google::Apis::FirestoreV1::ArrayValue, decorator: Google::Apis::FirestoreV1::ArrayValue::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :bytes_value, :base64 => true, as: 'bytesValue'
          property :double_value, as: 'doubleValue'
          property :geo_point_value, as: 'geoPointValue', class: Google::Apis::FirestoreV1::LatLng, decorator: Google::Apis::FirestoreV1::LatLng::Representation
      
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :map_value, as: 'mapValue', class: Google::Apis::FirestoreV1::MapValue, decorator: Google::Apis::FirestoreV1::MapValue::Representation
      
          property :null_value, as: 'nullValue'
          property :reference_value, as: 'referenceValue'
          property :string_value, as: 'stringValue'
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class Write
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_document, as: 'currentDocument', class: Google::Apis::FirestoreV1::Precondition, decorator: Google::Apis::FirestoreV1::Precondition::Representation
      
          property :delete, as: 'delete'
          property :transform, as: 'transform', class: Google::Apis::FirestoreV1::DocumentTransform, decorator: Google::Apis::FirestoreV1::DocumentTransform::Representation
      
          property :update, as: 'update', class: Google::Apis::FirestoreV1::Document, decorator: Google::Apis::FirestoreV1::Document::Representation
      
          property :update_mask, as: 'updateMask', class: Google::Apis::FirestoreV1::DocumentMask, decorator: Google::Apis::FirestoreV1::DocumentMask::Representation
      
          collection :update_transforms, as: 'updateTransforms', class: Google::Apis::FirestoreV1::FieldTransform, decorator: Google::Apis::FirestoreV1::FieldTransform::Representation
      
        end
      end
      
      class WriteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :stream_id, as: 'streamId'
          property :stream_token, :base64 => true, as: 'streamToken'
          collection :writes, as: 'writes', class: Google::Apis::FirestoreV1::Write, decorator: Google::Apis::FirestoreV1::Write::Representation
      
        end
      end
      
      class WriteResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_time, as: 'commitTime'
          property :stream_id, as: 'streamId'
          property :stream_token, :base64 => true, as: 'streamToken'
          collection :write_results, as: 'writeResults', class: Google::Apis::FirestoreV1::WriteResult, decorator: Google::Apis::FirestoreV1::WriteResult::Representation
      
        end
      end
      
      class WriteResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transform_results, as: 'transformResults', class: Google::Apis::FirestoreV1::Value, decorator: Google::Apis::FirestoreV1::Value::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
