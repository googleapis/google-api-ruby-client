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
      
      class Empty
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
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::FirestoreV1::Location, decorator: Google::Apis::FirestoreV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
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
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
