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
    module DocumentaiV1
      
      # Metadata of the auto-labeling documents operation.
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The list of individual auto-labeling statuses of the dataset documents.
        # Corresponds to the JSON property `individualAutoLabelStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus>]
        attr_accessor :individual_auto_label_statuses
      
        # Total number of the auto-labeling documents.
        # Corresponds to the JSON property `totalDocumentCount`
        # @return [Fixnum]
        attr_accessor :total_document_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @individual_auto_label_statuses = args[:individual_auto_label_statuses] if args.key?(:individual_auto_label_statuses)
          @total_document_count = args[:total_document_count] if args.key?(:total_document_count)
        end
      end
      
      # The status of individual documents in the auto-labeling process.
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus
        include Google::Apis::Core::Hashable
      
        # The gcs_uri of the auto-labeling document, which uniquely identifies a dataset
        # document.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The response proto of AutoLabelDocuments method.
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # Total number of documents that failed to be deleted in storage.
        # Corresponds to the JSON property `errorDocumentCount`
        # @return [Fixnum]
        attr_accessor :error_document_count
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualBatchDeleteStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus>]
        attr_accessor :individual_batch_delete_statuses
      
        # Total number of documents deleting from dataset.
        # Corresponds to the JSON property `totalDocumentCount`
        # @return [Fixnum]
        attr_accessor :total_document_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @error_document_count = args[:error_document_count] if args.key?(:error_document_count)
          @individual_batch_delete_statuses = args[:individual_batch_delete_statuses] if args.key?(:individual_batch_delete_statuses)
          @total_document_count = args[:total_document_count] if args.key?(:total_document_count)
        end
      end
      
      # The status of each individual document in the batch delete process.
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus
        include Google::Apis::Core::Hashable
      
        # Document Identifier.
        # Corresponds to the JSON property `documentId`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId]
        attr_accessor :document_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response of the delete documents operation.
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The destination dataset split type.
        # Corresponds to the JSON property `destDatasetType`
        # @return [String]
        attr_accessor :dest_dataset_type
      
        # The destination dataset split type.
        # Corresponds to the JSON property `destSplitType`
        # @return [String]
        attr_accessor :dest_split_type
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualBatchMoveStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus>]
        attr_accessor :individual_batch_move_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @dest_dataset_type = args[:dest_dataset_type] if args.key?(:dest_dataset_type)
          @dest_split_type = args[:dest_split_type] if args.key?(:dest_split_type)
          @individual_batch_move_statuses = args[:individual_batch_move_statuses] if args.key?(:individual_batch_move_statuses)
        end
      end
      
      # The status of each individual document in the batch move process.
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus
        include Google::Apis::Core::Hashable
      
        # Document Identifier.
        # Corresponds to the JSON property `documentId`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId]
        attr_accessor :document_id
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response of the batch move documents operation.
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The common metadata for long running operations.
      class GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A related resource to this operation.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @resource = args[:resource] if args.key?(:resource)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The long-running operation metadata for the CreateLabelerPool method.
      class GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for DeleteLabelerPool.
      class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeleteProcessor method.
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeleteProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long-running operation metadata for the DisableProcessor method.
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the DisableProcessor method. Intentionally empty proto
      # for adding fields in future.
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Document Identifier.
      class GoogleCloudDocumentaiUiv1beta3DocumentId
        include Google::Apis::Core::Hashable
      
        # Identifies a document uniquely within the scope of a dataset in the Cloud
        # Storage option.
        # Corresponds to the JSON property `gcsManagedDocId`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId]
        attr_accessor :gcs_managed_doc_id
      
        # The revision reference specifies which revision on the document to read.
        # Corresponds to the JSON property `revisionRef`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3RevisionRef]
        attr_accessor :revision_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_managed_doc_id = args[:gcs_managed_doc_id] if args.key?(:gcs_managed_doc_id)
          @revision_ref = args[:revision_ref] if args.key?(:revision_ref)
        end
      end
      
      # Identifies a document uniquely within the scope of a dataset in the Cloud
      # Storage option.
      class GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId
        include Google::Apis::Core::Hashable
      
        # Id of the document (indexed) managed by Content Warehouse.
        # Corresponds to the JSON property `cwDocId`
        # @return [String]
        attr_accessor :cw_doc_id
      
        # Required. The Cloud Storage uri where the actual document is stored.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cw_doc_id = args[:cw_doc_id] if args.key?(:cw_doc_id)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # The long-running operation metadata for the EnableProcessor method.
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the EnableProcessor method. Intentionally empty proto for
      # adding fields in future.
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata of the EvaluateProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response of the EvaluateProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the created evaluation.
        # Corresponds to the JSON property `evaluation`
        # @return [String]
        attr_accessor :evaluation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation = args[:evaluation] if args.key?(:evaluation)
        end
      end
      
      # Metadata of the batch export documents operation.
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualExportStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus>]
        attr_accessor :individual_export_statuses
      
        # The list of statistics for each dataset split type.
        # Corresponds to the JSON property `splitExportStats`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat>]
        attr_accessor :split_export_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @individual_export_statuses = args[:individual_export_statuses] if args.key?(:individual_export_statuses)
          @split_export_stats = args[:split_export_stats] if args.key?(:split_export_stats)
        end
      end
      
      # The status of each individual document in the export process.
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus
        include Google::Apis::Core::Hashable
      
        # Document Identifier.
        # Corresponds to the JSON property `documentId`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId]
        attr_accessor :document_id
      
        # The output_gcs_destination of the exported document if it was successful,
        # otherwise empty.
        # Corresponds to the JSON property `outputGcsDestination`
        # @return [String]
        attr_accessor :output_gcs_destination
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @output_gcs_destination = args[:output_gcs_destination] if args.key?(:output_gcs_destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The statistic representing a dataset split type for this export.
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat
        include Google::Apis::Core::Hashable
      
        # The dataset split type.
        # Corresponds to the JSON property `splitType`
        # @return [String]
        attr_accessor :split_type
      
        # Total number of documents with the given dataset split type to be exported.
        # Corresponds to the JSON property `totalDocumentCount`
        # @return [Fixnum]
        attr_accessor :total_document_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @split_type = args[:split_type] if args.key?(:split_type)
          @total_document_count = args[:total_document_count] if args.key?(:total_document_count)
        end
      end
      
      # The response proto of ExportDocuments method.
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata message associated with the ExportProcessorVersion operation.
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message associated with the ExportProcessorVersion operation.
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage URI containing the output artifacts.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
        end
      end
      
      # Metadata of the import document operation.
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # Validation statuses of the batch documents import config.
        # Corresponds to the JSON property `importConfigValidationResults`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult>]
        attr_accessor :import_config_validation_results
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualImportStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus>]
        attr_accessor :individual_import_statuses
      
        # Total number of the documents that are qualified for importing.
        # Corresponds to the JSON property `totalDocumentCount`
        # @return [Fixnum]
        attr_accessor :total_document_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @import_config_validation_results = args[:import_config_validation_results] if args.key?(:import_config_validation_results)
          @individual_import_statuses = args[:individual_import_statuses] if args.key?(:individual_import_statuses)
          @total_document_count = args[:total_document_count] if args.key?(:total_document_count)
        end
      end
      
      # The validation status of each import config. Status is set to errors if there
      # is no documents to import in the import_config, or OK if the operation will
      # try to proceed at least one document.
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult
        include Google::Apis::Core::Hashable
      
        # The source Cloud Storage URI specified in the import config.
        # Corresponds to the JSON property `inputGcsSource`
        # @return [String]
        attr_accessor :input_gcs_source
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_gcs_source = args[:input_gcs_source] if args.key?(:input_gcs_source)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The status of each individual document in the import process.
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus
        include Google::Apis::Core::Hashable
      
        # The source Cloud Storage URI of the document.
        # Corresponds to the JSON property `inputGcsSource`
        # @return [String]
        attr_accessor :input_gcs_source
      
        # The output_gcs_destination of the processed document if it was successful,
        # otherwise empty.
        # Corresponds to the JSON property `outputGcsDestination`
        # @return [String]
        attr_accessor :output_gcs_destination
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_gcs_source = args[:input_gcs_source] if args.key?(:input_gcs_source)
          @output_gcs_destination = args[:output_gcs_destination] if args.key?(:output_gcs_destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response of the import document operation.
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long-running operation metadata for the ImportProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The response message for the ImportProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The destination processor version name.
        # Corresponds to the JSON property `processorVersion`
        # @return [String]
        attr_accessor :processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor_version = args[:processor_version] if args.key?(:processor_version)
        end
      end
      
      # The metadata proto of ResyncDataset method.
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The list of dataset resync statuses. Not checked when `dataset_documents` is
        # specified in ResyncRequest.
        # Corresponds to the JSON property `datasetResyncStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus>]
        attr_accessor :dataset_resync_statuses
      
        # The list of document resync statuses. The same document could have multiple `
        # individual_document_resync_statuses` if it has multiple inconsistencies.
        # Corresponds to the JSON property `individualDocumentResyncStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus>]
        attr_accessor :individual_document_resync_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @dataset_resync_statuses = args[:dataset_resync_statuses] if args.key?(:dataset_resync_statuses)
          @individual_document_resync_statuses = args[:individual_document_resync_statuses] if args.key?(:individual_document_resync_statuses)
        end
      end
      
      # Resync status against inconsistency types on the dataset level.
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus
        include Google::Apis::Core::Hashable
      
        # The type of the inconsistency of the dataset.
        # Corresponds to the JSON property `datasetInconsistencyType`
        # @return [String]
        attr_accessor :dataset_inconsistency_type
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_inconsistency_type = args[:dataset_inconsistency_type] if args.key?(:dataset_inconsistency_type)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Resync status for each document per inconsistency type.
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus
        include Google::Apis::Core::Hashable
      
        # Document Identifier.
        # Corresponds to the JSON property `documentId`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId]
        attr_accessor :document_id
      
        # The type of document inconsistency.
        # Corresponds to the JSON property `documentInconsistencyType`
        # @return [String]
        attr_accessor :document_inconsistency_type
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_id = args[:document_id] if args.key?(:document_id)
          @document_inconsistency_type = args[:document_inconsistency_type] if args.key?(:document_inconsistency_type)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The response proto of ResyncDataset method.
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The revision reference specifies which revision on the document to read.
      class GoogleCloudDocumentaiUiv1beta3RevisionRef
        include Google::Apis::Core::Hashable
      
        # Reads the revision generated by the processor version. The format takes the
        # full resource name of processor version. `projects/`project`/locations/`
        # location`/processors/`processor`/processorVersions/`processorVersion``
        # Corresponds to the JSON property `latestProcessorVersion`
        # @return [String]
        attr_accessor :latest_processor_version
      
        # Reads the revision by the predefined case.
        # Corresponds to the JSON property `revisionCase`
        # @return [String]
        attr_accessor :revision_case
      
        # Reads the revision given by the id.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_processor_version = args[:latest_processor_version] if args.key?(:latest_processor_version)
          @revision_case = args[:revision_case] if args.key?(:revision_case)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # The long-running operation metadata for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata that represents a processor version being created.
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The dataset validation information. This includes any and all errors with
        # documents and the dataset.
        # Corresponds to the JSON property `testDatasetValidation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation]
        attr_accessor :test_dataset_validation
      
        # The dataset validation information. This includes any and all errors with
        # documents and the dataset.
        # Corresponds to the JSON property `trainingDatasetValidation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation]
        attr_accessor :training_dataset_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @test_dataset_validation = args[:test_dataset_validation] if args.key?(:test_dataset_validation)
          @training_dataset_validation = args[:training_dataset_validation] if args.key?(:training_dataset_validation)
        end
      end
      
      # The dataset validation information. This includes any and all errors with
      # documents and the dataset.
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
        include Google::Apis::Core::Hashable
      
        # The total number of dataset errors.
        # Corresponds to the JSON property `datasetErrorCount`
        # @return [Fixnum]
        attr_accessor :dataset_error_count
      
        # Error information for the dataset as a whole. A maximum of 10 dataset errors
        # will be returned. A single dataset error is terminal for training.
        # Corresponds to the JSON property `datasetErrors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleRpcStatus>]
        attr_accessor :dataset_errors
      
        # The total number of document errors.
        # Corresponds to the JSON property `documentErrorCount`
        # @return [Fixnum]
        attr_accessor :document_error_count
      
        # Error information pertaining to specific documents. A maximum of 10 document
        # errors will be returned. Any document with errors will not be used throughout
        # training.
        # Corresponds to the JSON property `documentErrors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleRpcStatus>]
        attr_accessor :document_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_error_count = args[:dataset_error_count] if args.key?(:dataset_error_count)
          @dataset_errors = args[:dataset_errors] if args.key?(:dataset_errors)
          @document_error_count = args[:document_error_count] if args.key?(:document_error_count)
          @document_errors = args[:document_errors] if args.key?(:document_errors)
        end
      end
      
      # The response for TrainProcessorVersion.
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the processor version produced by training.
        # Corresponds to the JSON property `processorVersion`
        # @return [String]
        attr_accessor :processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor_version = args[:processor_version] if args.key?(:processor_version)
        end
      end
      
      # The long-running operation metadata for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for updating the human review
      # configuration.
      class GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for UpdateLabelerPool.
      class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Encodes the detailed information of a barcode.
      class GoogleCloudDocumentaiV1Barcode
        include Google::Apis::Core::Hashable
      
        # Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. -
        # `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type.
        # - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13
        # type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A
        # type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code
        # type. - `DATABAR`: GS1 DataBar code type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https:/
        # /www.google.com;;'`.
        # Corresponds to the JSON property `rawValue`
        # @return [String]
        attr_accessor :raw_value
      
        # Value format describes the format of the value that a barcode encodes. The
        # supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email
        # address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`:
        # Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `
        # WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`:
        # Calendar event. - `DRIVER_LICENSE`: Driver's license.
        # Corresponds to the JSON property `valueFormat`
        # @return [String]
        attr_accessor :value_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @raw_value = args[:raw_value] if args.key?(:raw_value)
          @value_format = args[:value_format] if args.key?(:value_format)
        end
      end
      
      # The common config to specify a set of documents used as input.
      class GoogleCloudDocumentaiV1BatchDocumentsInputConfig
        include Google::Apis::Core::Hashable
      
        # Specifies a set of documents on Cloud Storage.
        # Corresponds to the JSON property `gcsDocuments`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsDocuments]
        attr_accessor :gcs_documents
      
        # Specifies all documents on Cloud Storage with a common prefix.
        # Corresponds to the JSON property `gcsPrefix`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsPrefix]
        attr_accessor :gcs_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_documents = args[:gcs_documents] if args.key?(:gcs_documents)
          @gcs_prefix = args[:gcs_prefix] if args.key?(:gcs_prefix)
        end
      end
      
      # The long-running operation metadata for BatchProcessDocuments.
      class GoogleCloudDocumentaiV1BatchProcessMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualProcessStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>]
        attr_accessor :individual_process_statuses
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @individual_process_statuses = args[:individual_process_statuses] if args.key?(:individual_process_statuses)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The status of a each individual document in the batch process.
      class GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
        include Google::Apis::Core::Hashable
      
        # The status of human review on a processed document.
        # Corresponds to the JSON property `humanReviewStatus`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1HumanReviewStatus]
        attr_accessor :human_review_status
      
        # The source of the document, same as the input_gcs_source field in the request
        # when the batch process started.
        # Corresponds to the JSON property `inputGcsSource`
        # @return [String]
        attr_accessor :input_gcs_source
      
        # The Cloud Storage output destination (in the request as DocumentOutputConfig.
        # GcsOutputConfig.gcs_uri) of the processed document if it was successful,
        # otherwise empty.
        # Corresponds to the JSON property `outputGcsDestination`
        # @return [String]
        attr_accessor :output_gcs_destination
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_review_status = args[:human_review_status] if args.key?(:human_review_status)
          @input_gcs_source = args[:input_gcs_source] if args.key?(:input_gcs_source)
          @output_gcs_destination = args[:output_gcs_destination] if args.key?(:output_gcs_destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Request message for BatchProcessDocuments.
      class GoogleCloudDocumentaiV1BatchProcessRequest
        include Google::Apis::Core::Hashable
      
        # Config that controls the output of documents. All documents will be written as
        # a JSON file.
        # Corresponds to the JSON property `documentOutputConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfig]
        attr_accessor :document_output_config
      
        # The common config to specify a set of documents used as input.
        # Corresponds to the JSON property `inputDocuments`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchDocumentsInputConfig]
        attr_accessor :input_documents
      
        # Whether Human Review feature should be skipped for this request. Default to
        # false.
        # Corresponds to the JSON property `skipHumanReview`
        # @return [Boolean]
        attr_accessor :skip_human_review
        alias_method :skip_human_review?, :skip_human_review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_output_config = args[:document_output_config] if args.key?(:document_output_config)
          @input_documents = args[:input_documents] if args.key?(:input_documents)
          @skip_human_review = args[:skip_human_review] if args.key?(:skip_human_review)
        end
      end
      
      # Response message for BatchProcessDocuments.
      class GoogleCloudDocumentaiV1BatchProcessResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class GoogleCloudDocumentaiV1BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # The common metadata for long running operations.
      class GoogleCloudDocumentaiV1CommonOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A related resource to this operation.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @resource = args[:resource] if args.key?(:resource)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The long-running operation metadata for the DeleteProcessor method.
      class GoogleCloudDocumentaiV1DeleteProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeleteProcessorVersion method.
      class GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiV1DeployProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Request message for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiV1DeployProcessorVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiV1DeployProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long-running operation metadata for the DisableProcessor method.
      class GoogleCloudDocumentaiV1DisableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Request message for the DisableProcessor method.
      class GoogleCloudDocumentaiV1DisableProcessorRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the DisableProcessor method. Intentionally empty proto
      # for adding fields in future.
      class GoogleCloudDocumentaiV1DisableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Document represents the canonical document resource in Document AI. It is an
      # interchange format that provides insights into documents and allows for
      # collaboration between users and Document AI to iterate and optimize for
      # quality.
      class GoogleCloudDocumentaiV1Document
        include Google::Apis::Core::Hashable
      
        # Optional. Inline document content, represented as a stream of bytes. Note: As
        # with all `bytes` fields, protobuffers use a pure binary representation,
        # whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards, entities in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntity>]
        attr_accessor :entities
      
        # Placeholder. Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :error
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see https://www.iana.org/assignments/media-types/media-types.
        # xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPage>]
        attr_accessor :pages
      
        # Placeholder. Revision history of this document.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentRevision>]
        attr_accessor :revisions
      
        # For a large document, sharding may be performed to produce several document
        # shards. Each document shard contains this field to detail which shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentShardInfo]
        attr_accessor :shard_info
      
        # Optional. UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Placeholder. A list of text corrections made to Document.text. This is usually
        # used for annotating corrections to OCR mistakes. Text changes for a given
        # revision may not overlap with each other.
        # Corresponds to the JSON property `textChanges`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextChange>]
        attr_accessor :text_changes
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentStyle>]
        attr_accessor :text_styles
      
        # Optional. Currently supports Google Cloud Storage URI of the form `gs://
        # bucket_name/object_name`. Object versioning is not supported. For more
        # information, refer to [Google Cloud Storage Request URIs](https://cloud.google.
        # com/storage/docs/reference-uris).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @entities = args[:entities] if args.key?(:entities)
          @entity_relations = args[:entity_relations] if args.key?(:entity_relations)
          @error = args[:error] if args.key?(:error)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @pages = args[:pages] if args.key?(:pages)
          @revisions = args[:revisions] if args.key?(:revisions)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_changes = args[:text_changes] if args.key?(:text_changes)
          @text_styles = args[:text_styles] if args.key?(:text_styles)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An entity that could be a phrase in the text or a property that belongs to the
      # document. It is a known entity type, such as a person, an organization, or
      # location.
      class GoogleCloudDocumentaiV1DocumentEntity
        include Google::Apis::Core::Hashable
      
        # Optional. Confidence of detected Schema entity. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Canonical id. This will be a unique value in the entity list for
        # this document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Deprecated. Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Parsed and normalized entity value.
        # Corresponds to the JSON property `normalizedValue`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntityNormalizedValue]
        attr_accessor :normalized_value
      
        # Referencing the visual context of the entity in the Document.pages. Page
        # anchors can be cross-page, consist of multiple bounding polygons and
        # optionally reference specific layout element types.
        # Corresponds to the JSON property `pageAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageAnchor]
        attr_accessor :page_anchor
      
        # Optional. Entities can be nested to form a hierarchical data structure
        # representing the content in the document.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntity>]
        attr_accessor :properties
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # Optional. Whether the entity will be redacted for de-identification purposes.
        # Corresponds to the JSON property `redacted`
        # @return [Boolean]
        attr_accessor :redacted
        alias_method :redacted?, :redacted
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Required. Entity type from a schema e.g. `Address`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @id = args[:id] if args.key?(:id)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @normalized_value = args[:normalized_value] if args.key?(:normalized_value)
          @page_anchor = args[:page_anchor] if args.key?(:page_anchor)
          @properties = args[:properties] if args.key?(:properties)
          @provenance = args[:provenance] if args.key?(:provenance)
          @redacted = args[:redacted] if args.key?(:redacted)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parsed and normalized entity value.
      class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `addressValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypePostalAddress]
        attr_accessor :address_value
      
        # Boolean value. Can be used for entities with binary values, or for checkboxes.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeDate]
        attr_accessor :date_value
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Float value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeMoney]
        attr_accessor :money_value
      
        # Optional. An optional field to store a normalized string. For some entity
        # types, one of respective `structured_value` fields may also be populated. Also
        # not all the types of `structured_value` will be normalized. For example, some
        # processors may not generate `float` or `integer` normalized text by default.
        # Below are sample formats mapped to structured values. - Money/Currency type (`
        # money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in
        # the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO
        # 8601 text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_value = args[:address_value] if args.key?(:address_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Relationship between Entities.
      class GoogleCloudDocumentaiV1DocumentEntityRelation
        include Google::Apis::Core::Hashable
      
        # Object entity id.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Relationship description.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Subject entity id.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @relation = args[:relation] if args.key?(:relation)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # Config that controls the output of documents. All documents will be written as
      # a JSON file.
      class GoogleCloudDocumentaiV1DocumentOutputConfig
        include Google::Apis::Core::Hashable
      
        # The configuration used when outputting documents.
        # Corresponds to the JSON property `gcsOutputConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig]
        attr_accessor :gcs_output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_output_config = args[:gcs_output_config] if args.key?(:gcs_output_config)
        end
      end
      
      # The configuration used when outputting documents.
      class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
        include Google::Apis::Core::Hashable
      
        # Specifies which fields to include in the output documents. Only supports top
        # level document and pages field so it must be in the form of ``
        # document_field_name`` or `pages.`page_field_name``.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # The Cloud Storage uri (a directory) of the output.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # The sharding config for the output document.
        # Corresponds to the JSON property `shardingConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig]
        attr_accessor :sharding_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @sharding_config = args[:sharding_config] if args.key?(:sharding_config)
        end
      end
      
      # The sharding config for the output document.
      class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
        include Google::Apis::Core::Hashable
      
        # The number of overlapping pages between consecutive shards.
        # Corresponds to the JSON property `pagesOverlap`
        # @return [Fixnum]
        attr_accessor :pages_overlap
      
        # The number of pages per shard.
        # Corresponds to the JSON property `pagesPerShard`
        # @return [Fixnum]
        attr_accessor :pages_per_shard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pages_overlap = args[:pages_overlap] if args.key?(:pages_overlap)
          @pages_per_shard = args[:pages_per_shard] if args.key?(:pages_per_shard)
        end
      end
      
      # A page in a Document.
      class GoogleCloudDocumentaiV1DocumentPage
        include Google::Apis::Core::Hashable
      
        # A list of visually detected text blocks on the page. A block has a set of
        # lines (collected into paragraphs) that have a common line-spacing and
        # orientation.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageBlock>]
        attr_accessor :blocks
      
        # A list of detected barcodes.
        # Corresponds to the JSON property `detectedBarcodes`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>]
        attr_accessor :detected_barcodes
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Dimension for the page.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDimension]
        attr_accessor :dimension
      
        # A list of visually detected form fields on the page.
        # Corresponds to the JSON property `formFields`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageFormField>]
        attr_accessor :form_fields
      
        # Rendered image contents for this page.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImage]
        attr_accessor :image
      
        # Image Quality Scores for the page image
        # Corresponds to the JSON property `imageQualityScores`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScores]
        attr_accessor :image_quality_scores
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page. A collection of tokens
        # that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document. Useful when a page is
        # taken out of a Document for individual processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page. A collection of lines
        # that a human would perceive as a paragraph.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageParagraph>]
        attr_accessor :paragraphs
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # A list of visually detected symbols on the page.
        # Corresponds to the JSON property `symbols`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageSymbol>]
        attr_accessor :symbols
      
        # A list of visually detected tables on the page.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTable>]
        attr_accessor :tables
      
        # A list of visually detected tokens on the page.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageToken>]
        attr_accessor :tokens
      
        # Transformation matrices that were applied to the original document image to
        # produce Page.image.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageMatrix>]
        attr_accessor :transforms
      
        # A list of detected non-text visual elements e.g. checkbox, signature etc. on
        # the page.
        # Corresponds to the JSON property `visualElements`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageVisualElement>]
        attr_accessor :visual_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @detected_barcodes = args[:detected_barcodes] if args.key?(:detected_barcodes)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @dimension = args[:dimension] if args.key?(:dimension)
          @form_fields = args[:form_fields] if args.key?(:form_fields)
          @image = args[:image] if args.key?(:image)
          @image_quality_scores = args[:image_quality_scores] if args.key?(:image_quality_scores)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @provenance = args[:provenance] if args.key?(:provenance)
          @symbols = args[:symbols] if args.key?(:symbols)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @transforms = args[:transforms] if args.key?(:transforms)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # Referencing the visual context of the entity in the Document.pages. Page
      # anchors can be cross-page, consist of multiple bounding polygons and
      # optionally reference specific layout element types.
      class GoogleCloudDocumentaiV1DocumentPageAnchor
        include Google::Apis::Core::Hashable
      
        # One or more references to visual page elements
        # Corresponds to the JSON property `pageRefs`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>]
        attr_accessor :page_refs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_refs = args[:page_refs] if args.key?(:page_refs)
        end
      end
      
      # Represents a weak reference to a page element within a document.
      class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Deprecated. Use PageRef.bounding_poly instead.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        # Optional. The type of the layout element that is being referenced if any.
        # Corresponds to the JSON property `layoutType`
        # @return [String]
        attr_accessor :layout_type
      
        # Required. Index into the Document.pages element, for example using `Document.
        # pages` to locate the related page element. This field is skipped when its
        # value is the default `0`. See https://developers.google.com/protocol-buffers/
        # docs/proto3#json.
        # Corresponds to the JSON property `page`
        # @return [Fixnum]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
          @layout_type = args[:layout_type] if args.key?(:layout_type)
          @page = args[:page] if args.key?(:page)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a common line-
      # spacing and orientation.
      class GoogleCloudDocumentaiV1DocumentPageBlock
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected barcode.
      class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
        include Google::Apis::Core::Hashable
      
        # Encodes the detailed information of a barcode.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Barcode]
        attr_accessor :barcode
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @barcode = args[:barcode] if args.key?(:barcode)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information,
        # see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Dimension for the page.
      class GoogleCloudDocumentaiV1DocumentPageDimension
        include Google::Apis::Core::Hashable
      
        # Page height.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Dimension unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Page width.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @unit = args[:unit] if args.key?(:unit)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A form field detected on the page.
      class GoogleCloudDocumentaiV1DocumentPageFormField
        include Google::Apis::Core::Hashable
      
        # Created for Labeling UI to export key text. If corrections were made to the
        # text identified by the `field_name.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedKeyText`
        # @return [String]
        attr_accessor :corrected_key_text
      
        # Created for Labeling UI to export value text. If corrections were made to the
        # text identified by the `field_value.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedValueText`
        # @return [String]
        attr_accessor :corrected_value_text
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldName`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :field_name
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldValue`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :field_value
      
        # A list of detected languages for name together with confidence.
        # Corresponds to the JSON property `nameDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :name_detected_languages
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # A list of detected languages for value together with confidence.
        # Corresponds to the JSON property `valueDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :value_detected_languages
      
        # If the value is non-textual, this field represents the type. Current valid
        # values are: - blank (this indicates the `field_value` is normal text) - `
        # unfilled_checkbox` - `filled_checkbox`
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrected_key_text = args[:corrected_key_text] if args.key?(:corrected_key_text)
          @corrected_value_text = args[:corrected_value_text] if args.key?(:corrected_value_text)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_value = args[:field_value] if args.key?(:field_value)
          @name_detected_languages = args[:name_detected_languages] if args.key?(:name_detected_languages)
          @provenance = args[:provenance] if args.key?(:provenance)
          @value_detected_languages = args[:value_detected_languages] if args.key?(:value_detected_languages)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Rendered image contents for this page.
      class GoogleCloudDocumentaiV1DocumentPageImage
        include Google::Apis::Core::Hashable
      
        # Raw byte content of the image.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Encoding mime type for the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Image Quality Scores for the page image
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScores
        include Google::Apis::Core::Hashable
      
        # A list of detected defects.
        # Corresponds to the JSON property `detectedDefects`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>]
        attr_accessor :detected_defects
      
        # The overall quality score. Range `[0, 1]` where 1 is perfect quality.
        # Corresponds to the JSON property `qualityScore`
        # @return [Float]
        attr_accessor :quality_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_defects = args[:detected_defects] if args.key?(:detected_defects)
          @quality_score = args[:quality_score] if args.key?(:quality_score)
        end
      end
      
      # Image Quality Defects
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
        include Google::Apis::Core::Hashable
      
        # Confidence of detected defect. Range `[0, 1]` where 1 indicates strong
        # confidence of that the defect exists.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the defect type. Supported values are: - `quality/defect_blurry` - `
        # quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `
        # quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/
        # defect_text_cutoff` - `quality/defect_glare`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this layout is
        # for. e.g. confidence can be for a single token, a table, a visual element, etc.
        # depending on context. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Detected orientation for the Layout.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @orientation = args[:orientation] if args.key?(:orientation)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A collection of tokens that a human would perceive as a line. Does not cross
      # column boundaries, can be horizontal, vertical, etc.
      class GoogleCloudDocumentaiV1DocumentPageLine
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Representation for transformation matrix, intended to be compatible and used
      # with OpenCV format for image manipulation.
      class GoogleCloudDocumentaiV1DocumentPageMatrix
        include Google::Apis::Core::Hashable
      
        # Number of columns in the matrix.
        # Corresponds to the JSON property `cols`
        # @return [Fixnum]
        attr_accessor :cols
      
        # The matrix data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Number of rows in the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # This encodes information about what data type the matrix uses. For example, 0 (
        # CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data
        # types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/
        # group__core__hal__interface.html
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
          @data = args[:data] if args.key?(:data)
          @rows = args[:rows] if args.key?(:rows)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A collection of lines that a human would perceive as a paragraph.
      class GoogleCloudDocumentaiV1DocumentPageParagraph
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected symbol.
      class GoogleCloudDocumentaiV1DocumentPageSymbol
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A table representation similar to HTML table structure.
      class GoogleCloudDocumentaiV1DocumentPageTable
        include Google::Apis::Core::Hashable
      
        # Body rows of the table.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow>]
        attr_accessor :body_rows
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Header rows of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow>]
        attr_accessor :header_rows
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A cell representation inside the table.
      class GoogleCloudDocumentaiV1DocumentPageTableTableCell
        include Google::Apis::Core::Hashable
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @col_span = args[:col_span] if args.key?(:col_span)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # A row of table cells.
      class GoogleCloudDocumentaiV1DocumentPageTableTableRow
        include Google::Apis::Core::Hashable
      
        # Cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # A detected token.
      class GoogleCloudDocumentaiV1DocumentPageToken
        include Google::Apis::Core::Hashable
      
        # Detected break at the end of a Token.
        # Corresponds to the JSON property `detectedBreak`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak]
        attr_accessor :detected_break
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance]
        attr_accessor :provenance
      
        # Font and other text style attributes.
        # Corresponds to the JSON property `styleInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo]
        attr_accessor :style_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
          @style_info = args[:style_info] if args.key?(:style_info)
        end
      end
      
      # Detected break at the end of a Token.
      class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
        include Google::Apis::Core::Hashable
      
        # Detected break type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Font and other text style attributes.
      class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Whether the text is bold (equivalent to font_weight is at least `700`).
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # Font size in points (`1` point is `¹⁄₇₂` inches).
        # Corresponds to the JSON property `fontSize`
        # @return [Fixnum]
        attr_accessor :font_size
      
        # Name or style of the font.
        # Corresponds to the JSON property `fontType`
        # @return [String]
        attr_accessor :font_type
      
        # TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `
        # 400`, bold is `700`.
        # Corresponds to the JSON property `fontWeight`
        # @return [Fixnum]
        attr_accessor :font_weight
      
        # Whether the text is handwritten.
        # Corresponds to the JSON property `handwritten`
        # @return [Boolean]
        attr_accessor :handwritten
        alias_method :handwritten?, :handwritten
      
        # Whether the text is italic.
        # Corresponds to the JSON property `italic`
        # @return [Boolean]
        attr_accessor :italic
        alias_method :italic?, :italic
      
        # Letter spacing in points.
        # Corresponds to the JSON property `letterSpacing`
        # @return [Float]
        attr_accessor :letter_spacing
      
        # Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
        # Corresponds to the JSON property `pixelFontSize`
        # @return [Float]
        attr_accessor :pixel_font_size
      
        # Whether the text is in small caps.
        # Corresponds to the JSON property `smallcaps`
        # @return [Boolean]
        attr_accessor :smallcaps
        alias_method :smallcaps?, :smallcaps
      
        # Whether the text is strikethrough.
        # Corresponds to the JSON property `strikeout`
        # @return [Boolean]
        attr_accessor :strikeout
        alias_method :strikeout?, :strikeout
      
        # Whether the text is a subscript.
        # Corresponds to the JSON property `subscript`
        # @return [Boolean]
        attr_accessor :subscript
        alias_method :subscript?, :subscript
      
        # Whether the text is a superscript.
        # Corresponds to the JSON property `superscript`
        # @return [Boolean]
        attr_accessor :superscript
        alias_method :superscript?, :superscript
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `textColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :text_color
      
        # Whether the text is underlined.
        # Corresponds to the JSON property `underlined`
        # @return [Boolean]
        attr_accessor :underlined
        alias_method :underlined?, :underlined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @bold = args[:bold] if args.key?(:bold)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_type = args[:font_type] if args.key?(:font_type)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @handwritten = args[:handwritten] if args.key?(:handwritten)
          @italic = args[:italic] if args.key?(:italic)
          @letter_spacing = args[:letter_spacing] if args.key?(:letter_spacing)
          @pixel_font_size = args[:pixel_font_size] if args.key?(:pixel_font_size)
          @smallcaps = args[:smallcaps] if args.key?(:smallcaps)
          @strikeout = args[:strikeout] if args.key?(:strikeout)
          @subscript = args[:subscript] if args.key?(:subscript)
          @superscript = args[:superscript] if args.key?(:superscript)
          @text_color = args[:text_color] if args.key?(:text_color)
          @underlined = args[:underlined] if args.key?(:underlined)
        end
      end
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the page.
      class GoogleCloudDocumentaiV1DocumentPageVisualElement
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout]
        attr_accessor :layout
      
        # Type of the VisualElement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Structure to identify provenance relationships between annotations in
      # different revisions.
      class GoogleCloudDocumentaiV1DocumentProvenance
        include Google::Apis::Core::Hashable
      
        # The Id of this operation. Needs to be unique within the scope of the revision.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # References to the original elements that are replaced.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenanceParent>]
        attr_accessor :parents
      
        # The index of the revision that produced this element.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The type of provenance operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parents = args[:parents] if args.key?(:parents)
          @revision = args[:revision] if args.key?(:revision)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The parent element the current element is based on. Used for referencing/
      # aligning, removal and replacement operations.
      class GoogleCloudDocumentaiV1DocumentProvenanceParent
        include Google::Apis::Core::Hashable
      
        # The id of the parent provenance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The index of the parent item in the corresponding item list (eg. list of
        # entities, properties within entities, etc.) in the parent revision.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The index of the index into current revision's parent_ids list.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @index = args[:index] if args.key?(:index)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Contains past or forward revisions of this document.
      class GoogleCloudDocumentaiV1DocumentRevision
        include Google::Apis::Core::Hashable
      
        # If the change was made by a person specify the name or id of that person.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # The time that the revision was created, internally generated by doc proto
        # storage at the time of create.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human Review information of the document.
        # Corresponds to the JSON property `humanReview`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentRevisionHumanReview]
        attr_accessor :human_review
      
        # Id of the revision, internally generated by doc proto storage. Unique within
        # the context of the document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The revisions that this revision is based on. This can include one or more
        # parent (when documents are merged.) This field represents the index into the `
        # revisions` field.
        # Corresponds to the JSON property `parent`
        # @return [Array<Fixnum>]
        attr_accessor :parent
      
        # The revisions that this revision is based on. Must include all the ids that
        # have anything to do with this revision - eg. there are `provenance.parent.
        # revision` fields that index into this field.
        # Corresponds to the JSON property `parentIds`
        # @return [Array<String>]
        attr_accessor :parent_ids
      
        # If the annotation was made by processor identify the processor by its resource
        # name.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @create_time = args[:create_time] if args.key?(:create_time)
          @human_review = args[:human_review] if args.key?(:human_review)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @parent_ids = args[:parent_ids] if args.key?(:parent_ids)
          @processor = args[:processor] if args.key?(:processor)
        end
      end
      
      # Human Review information of the document.
      class GoogleCloudDocumentaiV1DocumentRevisionHumanReview
        include Google::Apis::Core::Hashable
      
        # Human review state. e.g. `requested`, `succeeded`, `rejected`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the rejection reason when the state is `rejected`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # The schema defines the output of the processed document by a processor.
      class GoogleCloudDocumentaiV1DocumentSchema
        include Google::Apis::Core::Hashable
      
        # Description of the schema.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name to show to users.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Entity types of the schema.
        # Corresponds to the JSON property `entityTypes`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityType>]
        attr_accessor :entity_types
      
        # Metadata for global schema behavior.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @entity_types = args[:entity_types] if args.key?(:entity_types)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # EntityType is the wrapper of a label of the corresponding model with detailed
      # attributes and limitations for entity-based processors. Multiple types can
      # also compose a dependency tree to represent nested types.
      class GoogleCloudDocumentaiV1DocumentSchemaEntityType
        include Google::Apis::Core::Hashable
      
        # The entity type that this type is derived from. For now, one and only one
        # should be set.
        # Corresponds to the JSON property `baseTypes`
        # @return [Array<String>]
        attr_accessor :base_types
      
        # User defined name for the type.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Defines the a list of enum values.
        # Corresponds to the JSON property `enumValues`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues]
        attr_accessor :enum_values
      
        # Name of the type. It must be unique within the schema file and cannot be a '
        # Common Type'. Besides that we use the following naming conventions: - *use `
        # snake_casing`* - name matching is case-sensitive - Maximum 64 characters. -
        # Must start with a letter. - Allowed characters: ASCII letters `[a-z0-9_-]`. (
        # For backward compatibility internal infrastructure and tooling can handle any
        # ascii character) - The `/` is sometimes used to denote a property of a type.
        # For example `line_item/amount`. This convention is deprecated, but will still
        # be honored for backward compatibility.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Description the nested structure, or composition of an entity.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_types = args[:base_types] if args.key?(:base_types)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Defines the a list of enum values.
      class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
        include Google::Apis::Core::Hashable
      
        # The individual values that this enum values type can include.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Defines properties that can be part of the entity type.
      class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty
        include Google::Apis::Core::Hashable
      
        # The name of the property. Follows the same guidelines as the EntityType name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Occurrence type limits the number of instances an entity type appears in the
        # document.
        # Corresponds to the JSON property `occurrenceType`
        # @return [String]
        attr_accessor :occurrence_type
      
        # A reference to the value type of the property. This type is subject to the
        # same conventions as the `Entity.base_types` field.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @occurrence_type = args[:occurrence_type] if args.key?(:occurrence_type)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Metadata for global schema behavior.
      class GoogleCloudDocumentaiV1DocumentSchemaMetadata
        include Google::Apis::Core::Hashable
      
        # If true, on a given page, there can be multiple `document` annotations
        # covering it.
        # Corresponds to the JSON property `documentAllowMultipleLabels`
        # @return [Boolean]
        attr_accessor :document_allow_multiple_labels
        alias_method :document_allow_multiple_labels?, :document_allow_multiple_labels
      
        # If true, a `document` entity type can be applied to subdocument ( splitting).
        # Otherwise, it can only be applied to the entire document (classification).
        # Corresponds to the JSON property `documentSplitter`
        # @return [Boolean]
        attr_accessor :document_splitter
        alias_method :document_splitter?, :document_splitter
      
        # If set, all the nested entities must be prefixed with the parents.
        # Corresponds to the JSON property `prefixedNamingOnProperties`
        # @return [Boolean]
        attr_accessor :prefixed_naming_on_properties
        alias_method :prefixed_naming_on_properties?, :prefixed_naming_on_properties
      
        # If set, we will skip the naming format validation in the schema. So the string
        # values in `DocumentSchema.EntityType.name` and `DocumentSchema.EntityType.
        # Property.name` will not be checked.
        # Corresponds to the JSON property `skipNamingValidation`
        # @return [Boolean]
        attr_accessor :skip_naming_validation
        alias_method :skip_naming_validation?, :skip_naming_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_allow_multiple_labels = args[:document_allow_multiple_labels] if args.key?(:document_allow_multiple_labels)
          @document_splitter = args[:document_splitter] if args.key?(:document_splitter)
          @prefixed_naming_on_properties = args[:prefixed_naming_on_properties] if args.key?(:prefixed_naming_on_properties)
          @skip_naming_validation = args[:skip_naming_validation] if args.key?(:skip_naming_validation)
        end
      end
      
      # For a large document, sharding may be performed to produce several document
      # shards. Each document shard contains this field to detail which shard it is.
      class GoogleCloudDocumentaiV1DocumentShardInfo
        include Google::Apis::Core::Hashable
      
        # Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # The 0-based index of this shard.
        # Corresponds to the JSON property `shardIndex`
        # @return [Fixnum]
        attr_accessor :shard_index
      
        # The index of the first character in Document.text in the overall document
        # global text.
        # Corresponds to the JSON property `textOffset`
        # @return [Fixnum]
        attr_accessor :text_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @shard_index = args[:shard_index] if args.key?(:shard_index)
          @text_offset = args[:text_offset] if args.key?(:text_offset)
        end
      end
      
      # Annotation for common text style attributes. This adheres to CSS conventions
      # as much as possible.
      class GoogleCloudDocumentaiV1DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :color
      
        # Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/
        # cssref/pr_font_font-family.asp
        # Corresponds to the JSON property `fontFamily`
        # @return [String]
        attr_accessor :font_family
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter. https://
        # www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/
        # pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique. https://www.
        # w3schools.com/cssref/pr_font_font-style.asp
        # Corresponds to the JSON property `textStyle`
        # @return [String]
        attr_accessor :text_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @color = args[:color] if args.key?(:color)
          @font_family = args[:font_family] if args.key?(:font_family)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @text_decoration = args[:text_decoration] if args.key?(:text_decoration)
          @text_style = args[:text_style] if args.key?(:text_style)
        end
      end
      
      # Font size with unit.
      class GoogleCloudDocumentaiV1DocumentStyleFontSize
        include Google::Apis::Core::Hashable
      
        # Font size for the text.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        # Unit for the font size. Follows CSS naming (in, px, pt, etc.).
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Text reference indexing into the Document.text.
      class GoogleCloudDocumentaiV1DocumentTextAnchor
        include Google::Apis::Core::Hashable
      
        # Contains the content of the text span so that users do not have to look it up
        # in the text_segments. It is always populated for formFields.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds which
      # indicate that the text extends into another document shard for large sharded
      # documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # TextSegment start UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # This message is used for text changes aka. OCR corrections.
      class GoogleCloudDocumentaiV1DocumentTextChange
        include Google::Apis::Core::Hashable
      
        # The text that replaces the text identified in the `text_anchor`.
        # Corresponds to the JSON property `changedText`
        # @return [String]
        attr_accessor :changed_text
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance>]
        attr_accessor :provenance
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_text = args[:changed_text] if args.key?(:changed_text)
          @provenance = args[:provenance] if args.key?(:provenance)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # The long-running operation metadata for the EnableProcessor method.
      class GoogleCloudDocumentaiV1EnableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Request message for the EnableProcessor method.
      class GoogleCloudDocumentaiV1EnableProcessorRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the EnableProcessor method. Intentionally empty proto for
      # adding fields in future.
      class GoogleCloudDocumentaiV1EnableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata of the EvaluateProcessorVersion method.
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Evaluates the given ProcessorVersion against the supplied documents.
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest
        include Google::Apis::Core::Hashable
      
        # The common config to specify a set of documents used as input.
        # Corresponds to the JSON property `evaluationDocuments`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchDocumentsInputConfig]
        attr_accessor :evaluation_documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_documents = args[:evaluation_documents] if args.key?(:evaluation_documents)
        end
      end
      
      # Response of the EvaluateProcessorVersion method.
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the created evaluation.
        # Corresponds to the JSON property `evaluation`
        # @return [String]
        attr_accessor :evaluation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation = args[:evaluation] if args.key?(:evaluation)
        end
      end
      
      # An evaluation of a ProcessorVersion's performance.
      class GoogleCloudDocumentaiV1Evaluation
        include Google::Apis::Core::Hashable
      
        # Metrics across multiple confidence levels.
        # Corresponds to the JSON property `allEntitiesMetrics`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics]
        attr_accessor :all_entities_metrics
      
        # The time that the evaluation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Evaluation counters for the documents that were used.
        # Corresponds to the JSON property `documentCounters`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationCounters]
        attr_accessor :document_counters
      
        # Metrics across confidence levels, for different entities.
        # Corresponds to the JSON property `entityMetrics`
        # @return [Hash<String,Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics>]
        attr_accessor :entity_metrics
      
        # The KMS key name used for encryption.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # The KMS key version with which data is encrypted.
        # Corresponds to the JSON property `kmsKeyVersionName`
        # @return [String]
        attr_accessor :kms_key_version_name
      
        # The resource name of the evaluation. Format: `projects/`project`/locations/`
        # location`/processors/`processor`/processorVersions/`processor_version`/
        # evaluations/`evaluation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_entities_metrics = args[:all_entities_metrics] if args.key?(:all_entities_metrics)
          @create_time = args[:create_time] if args.key?(:create_time)
          @document_counters = args[:document_counters] if args.key?(:document_counters)
          @entity_metrics = args[:entity_metrics] if args.key?(:entity_metrics)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_version_name = args[:kms_key_version_name] if args.key?(:kms_key_version_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Evaluations metrics, at a specific confidence level.
      class GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics
        include Google::Apis::Core::Hashable
      
        # The confidence level.
        # Corresponds to the JSON property `confidenceLevel`
        # @return [Float]
        attr_accessor :confidence_level
      
        # Evaluation metrics, either in aggregate or about a specific entity.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationMetrics]
        attr_accessor :metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_level = args[:confidence_level] if args.key?(:confidence_level)
          @metrics = args[:metrics] if args.key?(:metrics)
        end
      end
      
      # Evaluation counters for the documents that were used.
      class GoogleCloudDocumentaiV1EvaluationCounters
        include Google::Apis::Core::Hashable
      
        # How many documents were used in the evaluation.
        # Corresponds to the JSON property `evaluatedDocumentsCount`
        # @return [Fixnum]
        attr_accessor :evaluated_documents_count
      
        # How many documents were not included in the evaluation as Document AI failed
        # to process them.
        # Corresponds to the JSON property `failedDocumentsCount`
        # @return [Fixnum]
        attr_accessor :failed_documents_count
      
        # How many documents were sent for evaluation.
        # Corresponds to the JSON property `inputDocumentsCount`
        # @return [Fixnum]
        attr_accessor :input_documents_count
      
        # How many documents were not included in the evaluation as they didn't pass
        # validation.
        # Corresponds to the JSON property `invalidDocumentsCount`
        # @return [Fixnum]
        attr_accessor :invalid_documents_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluated_documents_count = args[:evaluated_documents_count] if args.key?(:evaluated_documents_count)
          @failed_documents_count = args[:failed_documents_count] if args.key?(:failed_documents_count)
          @input_documents_count = args[:input_documents_count] if args.key?(:input_documents_count)
          @invalid_documents_count = args[:invalid_documents_count] if args.key?(:invalid_documents_count)
        end
      end
      
      # Evaluation metrics, either in aggregate or about a specific entity.
      class GoogleCloudDocumentaiV1EvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # The calculated f1 score.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # The amount of false negatives.
        # Corresponds to the JSON property `falseNegativesCount`
        # @return [Fixnum]
        attr_accessor :false_negatives_count
      
        # The amount of false positives.
        # Corresponds to the JSON property `falsePositivesCount`
        # @return [Fixnum]
        attr_accessor :false_positives_count
      
        # The amount of documents with a ground truth occurrence.
        # Corresponds to the JSON property `groundTruthDocumentCount`
        # @return [Fixnum]
        attr_accessor :ground_truth_document_count
      
        # The amount of occurrences in ground truth documents.
        # Corresponds to the JSON property `groundTruthOccurrencesCount`
        # @return [Fixnum]
        attr_accessor :ground_truth_occurrences_count
      
        # The calculated precision.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # The amount of documents with a predicted occurrence.
        # Corresponds to the JSON property `predictedDocumentCount`
        # @return [Fixnum]
        attr_accessor :predicted_document_count
      
        # The amount of occurrences in predicted documents.
        # Corresponds to the JSON property `predictedOccurrencesCount`
        # @return [Fixnum]
        attr_accessor :predicted_occurrences_count
      
        # The calculated recall.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        # The amount of documents that had an occurrence of this label.
        # Corresponds to the JSON property `totalDocumentsCount`
        # @return [Fixnum]
        attr_accessor :total_documents_count
      
        # The amount of true positives.
        # Corresponds to the JSON property `truePositivesCount`
        # @return [Fixnum]
        attr_accessor :true_positives_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @false_negatives_count = args[:false_negatives_count] if args.key?(:false_negatives_count)
          @false_positives_count = args[:false_positives_count] if args.key?(:false_positives_count)
          @ground_truth_document_count = args[:ground_truth_document_count] if args.key?(:ground_truth_document_count)
          @ground_truth_occurrences_count = args[:ground_truth_occurrences_count] if args.key?(:ground_truth_occurrences_count)
          @precision = args[:precision] if args.key?(:precision)
          @predicted_document_count = args[:predicted_document_count] if args.key?(:predicted_document_count)
          @predicted_occurrences_count = args[:predicted_occurrences_count] if args.key?(:predicted_occurrences_count)
          @recall = args[:recall] if args.key?(:recall)
          @total_documents_count = args[:total_documents_count] if args.key?(:total_documents_count)
          @true_positives_count = args[:true_positives_count] if args.key?(:true_positives_count)
        end
      end
      
      # Metrics across multiple confidence levels.
      class GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics
        include Google::Apis::Core::Hashable
      
        # The calculated area under the precision recall curve (AUPRC), computed by
        # integrating over all confidence thresholds.
        # Corresponds to the JSON property `auprc`
        # @return [Float]
        attr_accessor :auprc
      
        # The AUPRC for metrics with fuzzy matching disabled, i.e., exact matching only.
        # Corresponds to the JSON property `auprcExact`
        # @return [Float]
        attr_accessor :auprc_exact
      
        # Metrics across confidence levels with fuzzy matching enabled.
        # Corresponds to the JSON property `confidenceLevelMetrics`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>]
        attr_accessor :confidence_level_metrics
      
        # Metrics across confidence levels with only exact matching.
        # Corresponds to the JSON property `confidenceLevelMetricsExact`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>]
        attr_accessor :confidence_level_metrics_exact
      
        # The Estimated Calibration Error (ECE) of the confidence of the predicted
        # entities.
        # Corresponds to the JSON property `estimatedCalibrationError`
        # @return [Float]
        attr_accessor :estimated_calibration_error
      
        # The ECE for the predicted entities with fuzzy matching disabled, i.e., exact
        # matching only.
        # Corresponds to the JSON property `estimatedCalibrationErrorExact`
        # @return [Float]
        attr_accessor :estimated_calibration_error_exact
      
        # The metrics type for the label.
        # Corresponds to the JSON property `metricsType`
        # @return [String]
        attr_accessor :metrics_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auprc = args[:auprc] if args.key?(:auprc)
          @auprc_exact = args[:auprc_exact] if args.key?(:auprc_exact)
          @confidence_level_metrics = args[:confidence_level_metrics] if args.key?(:confidence_level_metrics)
          @confidence_level_metrics_exact = args[:confidence_level_metrics_exact] if args.key?(:confidence_level_metrics_exact)
          @estimated_calibration_error = args[:estimated_calibration_error] if args.key?(:estimated_calibration_error)
          @estimated_calibration_error_exact = args[:estimated_calibration_error_exact] if args.key?(:estimated_calibration_error_exact)
          @metrics_type = args[:metrics_type] if args.key?(:metrics_type)
        end
      end
      
      # Gives a short summary of an evaluation, and links to the evaluation itself.
      class GoogleCloudDocumentaiV1EvaluationReference
        include Google::Apis::Core::Hashable
      
        # Evaluation metrics, either in aggregate or about a specific entity.
        # Corresponds to the JSON property `aggregateMetrics`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationMetrics]
        attr_accessor :aggregate_metrics
      
        # Evaluation metrics, either in aggregate or about a specific entity.
        # Corresponds to the JSON property `aggregateMetricsExact`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationMetrics]
        attr_accessor :aggregate_metrics_exact
      
        # The resource name of the evaluation.
        # Corresponds to the JSON property `evaluation`
        # @return [String]
        attr_accessor :evaluation
      
        # The resource name of the Long Running Operation for the evaluation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_metrics = args[:aggregate_metrics] if args.key?(:aggregate_metrics)
          @aggregate_metrics_exact = args[:aggregate_metrics_exact] if args.key?(:aggregate_metrics_exact)
          @evaluation = args[:evaluation] if args.key?(:evaluation)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Response message for the FetchProcessorTypes method.
      class GoogleCloudDocumentaiV1FetchProcessorTypesResponse
        include Google::Apis::Core::Hashable
      
        # The list of processor types.
        # Corresponds to the JSON property `processorTypes`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType>]
        attr_accessor :processor_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor_types = args[:processor_types] if args.key?(:processor_types)
        end
      end
      
      # Specifies a document stored on Cloud Storage.
      class GoogleCloudDocumentaiV1GcsDocument
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage object uri.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # An IANA MIME type (RFC6838) of the content.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Specifies a set of documents on Cloud Storage.
      class GoogleCloudDocumentaiV1GcsDocuments
        include Google::Apis::Core::Hashable
      
        # The list of documents.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsDocument>]
        attr_accessor :documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
        end
      end
      
      # Specifies all documents on Cloud Storage with a common prefix.
      class GoogleCloudDocumentaiV1GcsPrefix
        include Google::Apis::Core::Hashable
      
        # The URI prefix.
        # Corresponds to the JSON property `gcsUriPrefix`
        # @return [String]
        attr_accessor :gcs_uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri_prefix = args[:gcs_uri_prefix] if args.key?(:gcs_uri_prefix)
        end
      end
      
      # The status of human review on a processed document.
      class GoogleCloudDocumentaiV1HumanReviewStatus
        include Google::Apis::Core::Hashable
      
        # The name of the operation triggered by the processed document. This field is
        # populated only when the state is `HUMAN_REVIEW_IN_PROGRESS`. It has the same
        # response type and metadata as the long-running operation returned by
        # ReviewDocument.
        # Corresponds to the JSON property `humanReviewOperation`
        # @return [String]
        attr_accessor :human_review_operation
      
        # The state of human review on the processing request.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the human review state.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_review_operation = args[:human_review_operation] if args.key?(:human_review_operation)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # The response from `ListEvaluations`.
      class GoogleCloudDocumentaiV1ListEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # The evaluations requested.
        # Corresponds to the JSON property `evaluations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Evaluation>]
        attr_accessor :evaluations
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluations = args[:evaluations] if args.key?(:evaluations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for the ListProcessorTypes method.
      class GoogleCloudDocumentaiV1ListProcessorTypesResponse
        include Google::Apis::Core::Hashable
      
        # Points to the next page, otherwise empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The processor types.
        # Corresponds to the JSON property `processorTypes`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType>]
        attr_accessor :processor_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @processor_types = args[:processor_types] if args.key?(:processor_types)
        end
      end
      
      # Response message for the ListProcessorVersions method.
      class GoogleCloudDocumentaiV1ListProcessorVersionsResponse
        include Google::Apis::Core::Hashable
      
        # Points to the next processor, otherwise empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of processors.
        # Corresponds to the JSON property `processorVersions`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion>]
        attr_accessor :processor_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @processor_versions = args[:processor_versions] if args.key?(:processor_versions)
        end
      end
      
      # Response message for the ListProcessors method.
      class GoogleCloudDocumentaiV1ListProcessorsResponse
        include Google::Apis::Core::Hashable
      
        # Points to the next processor, otherwise empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of processors.
        # Corresponds to the JSON property `processors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor>]
        attr_accessor :processors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @processors = args[:processors] if args.key?(:processors)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
      class GoogleCloudDocumentaiV1NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Request message for the ProcessDocument method.
      class GoogleCloudDocumentaiV1ProcessRequest
        include Google::Apis::Core::Hashable
      
        # Specifies which fields to include in the ProcessResponse.document output. Only
        # supports top-level document and pages field, so it must be in the form of ``
        # document_field_name`` or `pages.`page_field_name``.
        # Corresponds to the JSON property `fieldMask`
        # @return [String]
        attr_accessor :field_mask
      
        # Document represents the canonical document resource in Document AI. It is an
        # interchange format that provides insights into documents and allows for
        # collaboration between users and Document AI to iterate and optimize for
        # quality.
        # Corresponds to the JSON property `inlineDocument`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document]
        attr_accessor :inline_document
      
        # Payload message of raw document content (bytes).
        # Corresponds to the JSON property `rawDocument`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1RawDocument]
        attr_accessor :raw_document
      
        # Whether Human Review feature should be skipped for this request. Default to
        # false.
        # Corresponds to the JSON property `skipHumanReview`
        # @return [Boolean]
        attr_accessor :skip_human_review
        alias_method :skip_human_review?, :skip_human_review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_mask = args[:field_mask] if args.key?(:field_mask)
          @inline_document = args[:inline_document] if args.key?(:inline_document)
          @raw_document = args[:raw_document] if args.key?(:raw_document)
          @skip_human_review = args[:skip_human_review] if args.key?(:skip_human_review)
        end
      end
      
      # Response message for the ProcessDocument method.
      class GoogleCloudDocumentaiV1ProcessResponse
        include Google::Apis::Core::Hashable
      
        # Document represents the canonical document resource in Document AI. It is an
        # interchange format that provides insights into documents and allows for
        # collaboration between users and Document AI to iterate and optimize for
        # quality.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document]
        attr_accessor :document
      
        # The status of human review on a processed document.
        # Corresponds to the JSON property `humanReviewStatus`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1HumanReviewStatus]
        attr_accessor :human_review_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @human_review_status = args[:human_review_status] if args.key?(:human_review_status)
        end
      end
      
      # The first-class citizen for Document AI. Each processor defines how to extract
      # structural information from a document.
      class GoogleCloudDocumentaiV1Processor
        include Google::Apis::Core::Hashable
      
        # The time the processor was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The default processor version.
        # Corresponds to the JSON property `defaultProcessorVersion`
        # @return [String]
        attr_accessor :default_processor_version
      
        # The display name of the processor.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The KMS key used for encryption/decryption in CMEK scenarios. See https://
        # cloud.google.com/security-key-management.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Output only. Immutable. The resource name of the processor. Format: `projects/`
        # project`/locations/`location`/processors/`processor``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Immutable. The http endpoint that can be called to invoke
        # processing.
        # Corresponds to the JSON property `processEndpoint`
        # @return [String]
        attr_accessor :process_endpoint
      
        # Output only. The state of the processor.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a
        # list of processor types, see FetchProcessorTypes.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_processor_version = args[:default_processor_version] if args.key?(:default_processor_version)
          @display_name = args[:display_name] if args.key?(:display_name)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @name = args[:name] if args.key?(:name)
          @process_endpoint = args[:process_endpoint] if args.key?(:process_endpoint)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A processor type is responsible for performing a certain document
      # understanding task on a certain type of document.
      class GoogleCloudDocumentaiV1ProcessorType
        include Google::Apis::Core::Hashable
      
        # Whether the processor type allows creation. If true, users can create a
        # processor of this processor type. Otherwise, users need to request access.
        # Corresponds to the JSON property `allowCreation`
        # @return [Boolean]
        attr_accessor :allow_creation
        alias_method :allow_creation?, :allow_creation
      
        # The locations in which this processor is available.
        # Corresponds to the JSON property `availableLocations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorTypeLocationInfo>]
        attr_accessor :available_locations
      
        # The processor category, used by UI to group processor types.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Launch stage of the processor type
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The resource name of the processor type. Format: `projects/`project`/
        # processorTypes/`processor_type``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A set of Cloud Storage URIs of sample documents for this processor.
        # Corresponds to the JSON property `sampleDocumentUris`
        # @return [Array<String>]
        attr_accessor :sample_document_uris
      
        # The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_creation = args[:allow_creation] if args.key?(:allow_creation)
          @available_locations = args[:available_locations] if args.key?(:available_locations)
          @category = args[:category] if args.key?(:category)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @sample_document_uris = args[:sample_document_uris] if args.key?(:sample_document_uris)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The location information about where the processor is available.
      class GoogleCloudDocumentaiV1ProcessorTypeLocationInfo
        include Google::Apis::Core::Hashable
      
        # The location id, currently must be one of [us, eu].
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_id = args[:location_id] if args.key?(:location_id)
        end
      end
      
      # A processor version is an implementation of a processor. Each processor can
      # have multiple versions, pre-trained by Google internally or up-trained by the
      # customer. At a time, a processor can only have one default version version. So
      # the processor's behavior (when processing documents) is defined by a default
      # version
      class GoogleCloudDocumentaiV1ProcessorVersion
        include Google::Apis::Core::Hashable
      
        # The time the processor version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information about the upcoming deprecation of this processor version.
        # Corresponds to the JSON property `deprecationInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo]
        attr_accessor :deprecation_info
      
        # The display name of the processor version.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The schema defines the output of the processed document by a processor.
        # Corresponds to the JSON property `documentSchema`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema]
        attr_accessor :document_schema
      
        # Denotes that this ProcessorVersion is managed by google.
        # Corresponds to the JSON property `googleManaged`
        # @return [Boolean]
        attr_accessor :google_managed
        alias_method :google_managed?, :google_managed
      
        # The KMS key name used for encryption.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # The KMS key version with which data is encrypted.
        # Corresponds to the JSON property `kmsKeyVersionName`
        # @return [String]
        attr_accessor :kms_key_version_name
      
        # Gives a short summary of an evaluation, and links to the evaluation itself.
        # Corresponds to the JSON property `latestEvaluation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1EvaluationReference]
        attr_accessor :latest_evaluation
      
        # The resource name of the processor version. Format: `projects/`project`/
        # locations/`location`/processors/`processor`/processorVersions/`
        # processor_version``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The state of the processor version.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deprecation_info = args[:deprecation_info] if args.key?(:deprecation_info)
          @display_name = args[:display_name] if args.key?(:display_name)
          @document_schema = args[:document_schema] if args.key?(:document_schema)
          @google_managed = args[:google_managed] if args.key?(:google_managed)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_version_name = args[:kms_key_version_name] if args.key?(:kms_key_version_name)
          @latest_evaluation = args[:latest_evaluation] if args.key?(:latest_evaluation)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about the upcoming deprecation of this processor version.
      class GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo
        include Google::Apis::Core::Hashable
      
        # The time at which this processor version will be deprecated.
        # Corresponds to the JSON property `deprecationTime`
        # @return [String]
        attr_accessor :deprecation_time
      
        # If set, the processor version that will be used as a replacement.
        # Corresponds to the JSON property `replacementProcessorVersion`
        # @return [String]
        attr_accessor :replacement_processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecation_time = args[:deprecation_time] if args.key?(:deprecation_time)
          @replacement_processor_version = args[:replacement_processor_version] if args.key?(:replacement_processor_version)
        end
      end
      
      # Payload message of raw document content (bytes).
      class GoogleCloudDocumentaiV1RawDocument
        include Google::Apis::Core::Hashable
      
        # Inline document content.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # An IANA MIME type (RFC6838) indicating the nature and format of the content.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # The long-running operation metadata for the ReviewDocument method.
      class GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The Crowd Compute question ID.
        # Corresponds to the JSON property `questionId`
        # @return [String]
        attr_accessor :question_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @question_id = args[:question_id] if args.key?(:question_id)
        end
      end
      
      # Request message for the ReviewDocument method.
      class GoogleCloudDocumentaiV1ReviewDocumentRequest
        include Google::Apis::Core::Hashable
      
        # The schema defines the output of the processed document by a processor.
        # Corresponds to the JSON property `documentSchema`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema]
        attr_accessor :document_schema
      
        # Whether the validation should be performed on the ad-hoc review request.
        # Corresponds to the JSON property `enableSchemaValidation`
        # @return [Boolean]
        attr_accessor :enable_schema_validation
        alias_method :enable_schema_validation?, :enable_schema_validation
      
        # Document represents the canonical document resource in Document AI. It is an
        # interchange format that provides insights into documents and allows for
        # collaboration between users and Document AI to iterate and optimize for
        # quality.
        # Corresponds to the JSON property `inlineDocument`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document]
        attr_accessor :inline_document
      
        # The priority of the human review task.
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_schema = args[:document_schema] if args.key?(:document_schema)
          @enable_schema_validation = args[:enable_schema_validation] if args.key?(:enable_schema_validation)
          @inline_document = args[:inline_document] if args.key?(:inline_document)
          @priority = args[:priority] if args.key?(:priority)
        end
      end
      
      # Response message for the ReviewDocument method.
      class GoogleCloudDocumentaiV1ReviewDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage uri for the human reviewed document if the review is
        # succeeded.
        # Corresponds to the JSON property `gcsDestination`
        # @return [String]
        attr_accessor :gcs_destination
      
        # The reason why the review is rejected by reviewer.
        # Corresponds to the JSON property `rejectionReason`
        # @return [String]
        attr_accessor :rejection_reason
      
        # The state of the review operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @rejection_reason = args[:rejection_reason] if args.key?(:rejection_reason)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The long-running operation metadata for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Request message for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of child ProcessorVersion to use as default.
        # Format: `projects/`project`/locations/`location`/processors/`processor`/
        # processorVersions/`version``
        # Corresponds to the JSON property `defaultProcessorVersion`
        # @return [String]
        attr_accessor :default_processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_processor_version = args[:default_processor_version] if args.key?(:default_processor_version)
        end
      end
      
      # Response message for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata that represents a processor version being created.
      class GoogleCloudDocumentaiV1TrainProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The dataset validation information. This includes any and all errors with
        # documents and the dataset.
        # Corresponds to the JSON property `testDatasetValidation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation]
        attr_accessor :test_dataset_validation
      
        # The dataset validation information. This includes any and all errors with
        # documents and the dataset.
        # Corresponds to the JSON property `trainingDatasetValidation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation]
        attr_accessor :training_dataset_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @test_dataset_validation = args[:test_dataset_validation] if args.key?(:test_dataset_validation)
          @training_dataset_validation = args[:training_dataset_validation] if args.key?(:training_dataset_validation)
        end
      end
      
      # The dataset validation information. This includes any and all errors with
      # documents and the dataset.
      class GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation
        include Google::Apis::Core::Hashable
      
        # The total number of dataset errors.
        # Corresponds to the JSON property `datasetErrorCount`
        # @return [Fixnum]
        attr_accessor :dataset_error_count
      
        # Error information for the dataset as a whole. A maximum of 10 dataset errors
        # will be returned. A single dataset error is terminal for training.
        # Corresponds to the JSON property `datasetErrors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleRpcStatus>]
        attr_accessor :dataset_errors
      
        # The total number of document errors.
        # Corresponds to the JSON property `documentErrorCount`
        # @return [Fixnum]
        attr_accessor :document_error_count
      
        # Error information pertaining to specific documents. A maximum of 10 document
        # errors will be returned. Any document with errors will not be used throughout
        # training.
        # Corresponds to the JSON property `documentErrors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleRpcStatus>]
        attr_accessor :document_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_error_count = args[:dataset_error_count] if args.key?(:dataset_error_count)
          @dataset_errors = args[:dataset_errors] if args.key?(:dataset_errors)
          @document_error_count = args[:document_error_count] if args.key?(:document_error_count)
          @document_errors = args[:document_errors] if args.key?(:document_errors)
        end
      end
      
      # Request message for the TrainProcessorVersion method.
      class GoogleCloudDocumentaiV1TrainProcessorVersionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The processor version to use as a base for training. This processor
        # version must be a child of `parent`. Format: `projects/`project`/locations/`
        # location`/processors/`processor`/processorVersions/`processorVersion``.
        # Corresponds to the JSON property `baseProcessorVersion`
        # @return [String]
        attr_accessor :base_processor_version
      
        # The schema defines the output of the processed document by a processor.
        # Corresponds to the JSON property `documentSchema`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema]
        attr_accessor :document_schema
      
        # The input data used to train a new ProcessorVersion.
        # Corresponds to the JSON property `inputData`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData]
        attr_accessor :input_data
      
        # A processor version is an implementation of a processor. Each processor can
        # have multiple versions, pre-trained by Google internally or up-trained by the
        # customer. At a time, a processor can only have one default version version. So
        # the processor's behavior (when processing documents) is defined by a default
        # version
        # Corresponds to the JSON property `processorVersion`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion]
        attr_accessor :processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_processor_version = args[:base_processor_version] if args.key?(:base_processor_version)
          @document_schema = args[:document_schema] if args.key?(:document_schema)
          @input_data = args[:input_data] if args.key?(:input_data)
          @processor_version = args[:processor_version] if args.key?(:processor_version)
        end
      end
      
      # The input data used to train a new ProcessorVersion.
      class GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData
        include Google::Apis::Core::Hashable
      
        # The common config to specify a set of documents used as input.
        # Corresponds to the JSON property `testDocuments`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchDocumentsInputConfig]
        attr_accessor :test_documents
      
        # The common config to specify a set of documents used as input.
        # Corresponds to the JSON property `trainingDocuments`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchDocumentsInputConfig]
        attr_accessor :training_documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @test_documents = args[:test_documents] if args.key?(:test_documents)
          @training_documents = args[:training_documents] if args.key?(:training_documents)
        end
      end
      
      # The response for TrainProcessorVersion.
      class GoogleCloudDocumentaiV1TrainProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the processor version produced by training.
        # Corresponds to the JSON property `processorVersion`
        # @return [String]
        attr_accessor :processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor_version = args[:processor_version] if args.key?(:processor_version)
        end
      end
      
      # The long-running operation metadata for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Request message for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
      class GoogleCloudDocumentaiV1Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Encodes the detailed information of a barcode.
      class GoogleCloudDocumentaiV1beta1Barcode
        include Google::Apis::Core::Hashable
      
        # Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. -
        # `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type.
        # - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13
        # type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A
        # type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code
        # type. - `DATABAR`: GS1 DataBar code type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https:/
        # /www.google.com;;'`.
        # Corresponds to the JSON property `rawValue`
        # @return [String]
        attr_accessor :raw_value
      
        # Value format describes the format of the value that a barcode encodes. The
        # supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email
        # address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`:
        # Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `
        # WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`:
        # Calendar event. - `DRIVER_LICENSE`: Driver's license.
        # Corresponds to the JSON property `valueFormat`
        # @return [String]
        attr_accessor :value_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @raw_value = args[:raw_value] if args.key?(:raw_value)
          @value_format = args[:value_format] if args.key?(:value_format)
        end
      end
      
      # Response to an batch document processing request. This is returned in the LRO
      # Operation after the operation is complete.
      class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Responses for each individual document.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class GoogleCloudDocumentaiV1beta1BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Document represents the canonical document resource in Document AI. It is an
      # interchange format that provides insights into documents and allows for
      # collaboration between users and Document AI to iterate and optimize for
      # quality.
      class GoogleCloudDocumentaiV1beta1Document
        include Google::Apis::Core::Hashable
      
        # Optional. Inline document content, represented as a stream of bytes. Note: As
        # with all `bytes` fields, protobuffers use a pure binary representation,
        # whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards, entities in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntity>]
        attr_accessor :entities
      
        # Placeholder. Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :error
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see https://www.iana.org/assignments/media-types/media-types.
        # xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPage>]
        attr_accessor :pages
      
        # Placeholder. Revision history of this document.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentRevision>]
        attr_accessor :revisions
      
        # For a large document, sharding may be performed to produce several document
        # shards. Each document shard contains this field to detail which shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentShardInfo]
        attr_accessor :shard_info
      
        # Optional. UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Placeholder. A list of text corrections made to Document.text. This is usually
        # used for annotating corrections to OCR mistakes. Text changes for a given
        # revision may not overlap with each other.
        # Corresponds to the JSON property `textChanges`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextChange>]
        attr_accessor :text_changes
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentStyle>]
        attr_accessor :text_styles
      
        # Optional. Currently supports Google Cloud Storage URI of the form `gs://
        # bucket_name/object_name`. Object versioning is not supported. For more
        # information, refer to [Google Cloud Storage Request URIs](https://cloud.google.
        # com/storage/docs/reference-uris).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @entities = args[:entities] if args.key?(:entities)
          @entity_relations = args[:entity_relations] if args.key?(:entity_relations)
          @error = args[:error] if args.key?(:error)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @pages = args[:pages] if args.key?(:pages)
          @revisions = args[:revisions] if args.key?(:revisions)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_changes = args[:text_changes] if args.key?(:text_changes)
          @text_styles = args[:text_styles] if args.key?(:text_styles)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An entity that could be a phrase in the text or a property that belongs to the
      # document. It is a known entity type, such as a person, an organization, or
      # location.
      class GoogleCloudDocumentaiV1beta1DocumentEntity
        include Google::Apis::Core::Hashable
      
        # Optional. Confidence of detected Schema entity. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Canonical id. This will be a unique value in the entity list for
        # this document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Deprecated. Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Parsed and normalized entity value.
        # Corresponds to the JSON property `normalizedValue`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue]
        attr_accessor :normalized_value
      
        # Referencing the visual context of the entity in the Document.pages. Page
        # anchors can be cross-page, consist of multiple bounding polygons and
        # optionally reference specific layout element types.
        # Corresponds to the JSON property `pageAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageAnchor]
        attr_accessor :page_anchor
      
        # Optional. Entities can be nested to form a hierarchical data structure
        # representing the content in the document.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntity>]
        attr_accessor :properties
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        # Optional. Whether the entity will be redacted for de-identification purposes.
        # Corresponds to the JSON property `redacted`
        # @return [Boolean]
        attr_accessor :redacted
        alias_method :redacted?, :redacted
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Required. Entity type from a schema e.g. `Address`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @id = args[:id] if args.key?(:id)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @normalized_value = args[:normalized_value] if args.key?(:normalized_value)
          @page_anchor = args[:page_anchor] if args.key?(:page_anchor)
          @properties = args[:properties] if args.key?(:properties)
          @provenance = args[:provenance] if args.key?(:provenance)
          @redacted = args[:redacted] if args.key?(:redacted)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parsed and normalized entity value.
      class GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `addressValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypePostalAddress]
        attr_accessor :address_value
      
        # Boolean value. Can be used for entities with binary values, or for checkboxes.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeDate]
        attr_accessor :date_value
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Float value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeMoney]
        attr_accessor :money_value
      
        # Optional. An optional field to store a normalized string. For some entity
        # types, one of respective `structured_value` fields may also be populated. Also
        # not all the types of `structured_value` will be normalized. For example, some
        # processors may not generate `float` or `integer` normalized text by default.
        # Below are sample formats mapped to structured values. - Money/Currency type (`
        # money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in
        # the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO
        # 8601 text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_value = args[:address_value] if args.key?(:address_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Relationship between Entities.
      class GoogleCloudDocumentaiV1beta1DocumentEntityRelation
        include Google::Apis::Core::Hashable
      
        # Object entity id.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Relationship description.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Subject entity id.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @relation = args[:relation] if args.key?(:relation)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # A page in a Document.
      class GoogleCloudDocumentaiV1beta1DocumentPage
        include Google::Apis::Core::Hashable
      
        # A list of visually detected text blocks on the page. A block has a set of
        # lines (collected into paragraphs) that have a common line-spacing and
        # orientation.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageBlock>]
        attr_accessor :blocks
      
        # A list of detected barcodes.
        # Corresponds to the JSON property `detectedBarcodes`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode>]
        attr_accessor :detected_barcodes
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Dimension for the page.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDimension]
        attr_accessor :dimension
      
        # A list of visually detected form fields on the page.
        # Corresponds to the JSON property `formFields`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageFormField>]
        attr_accessor :form_fields
      
        # Rendered image contents for this page.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImage]
        attr_accessor :image
      
        # Image Quality Scores for the page image
        # Corresponds to the JSON property `imageQualityScores`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores]
        attr_accessor :image_quality_scores
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page. A collection of tokens
        # that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document. Useful when a page is
        # taken out of a Document for individual processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page. A collection of lines
        # that a human would perceive as a paragraph.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageParagraph>]
        attr_accessor :paragraphs
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        # A list of visually detected symbols on the page.
        # Corresponds to the JSON property `symbols`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageSymbol>]
        attr_accessor :symbols
      
        # A list of visually detected tables on the page.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTable>]
        attr_accessor :tables
      
        # A list of visually detected tokens on the page.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageToken>]
        attr_accessor :tokens
      
        # Transformation matrices that were applied to the original document image to
        # produce Page.image.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageMatrix>]
        attr_accessor :transforms
      
        # A list of detected non-text visual elements e.g. checkbox, signature etc. on
        # the page.
        # Corresponds to the JSON property `visualElements`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>]
        attr_accessor :visual_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @detected_barcodes = args[:detected_barcodes] if args.key?(:detected_barcodes)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @dimension = args[:dimension] if args.key?(:dimension)
          @form_fields = args[:form_fields] if args.key?(:form_fields)
          @image = args[:image] if args.key?(:image)
          @image_quality_scores = args[:image_quality_scores] if args.key?(:image_quality_scores)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @provenance = args[:provenance] if args.key?(:provenance)
          @symbols = args[:symbols] if args.key?(:symbols)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @transforms = args[:transforms] if args.key?(:transforms)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # Referencing the visual context of the entity in the Document.pages. Page
      # anchors can be cross-page, consist of multiple bounding polygons and
      # optionally reference specific layout element types.
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchor
        include Google::Apis::Core::Hashable
      
        # One or more references to visual page elements
        # Corresponds to the JSON property `pageRefs`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>]
        attr_accessor :page_refs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_refs = args[:page_refs] if args.key?(:page_refs)
        end
      end
      
      # Represents a weak reference to a page element within a document.
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Deprecated. Use PageRef.bounding_poly instead.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        # Optional. The type of the layout element that is being referenced if any.
        # Corresponds to the JSON property `layoutType`
        # @return [String]
        attr_accessor :layout_type
      
        # Required. Index into the Document.pages element, for example using `Document.
        # pages` to locate the related page element. This field is skipped when its
        # value is the default `0`. See https://developers.google.com/protocol-buffers/
        # docs/proto3#json.
        # Corresponds to the JSON property `page`
        # @return [Fixnum]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
          @layout_type = args[:layout_type] if args.key?(:layout_type)
          @page = args[:page] if args.key?(:page)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a common line-
      # spacing and orientation.
      class GoogleCloudDocumentaiV1beta1DocumentPageBlock
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected barcode.
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode
        include Google::Apis::Core::Hashable
      
        # Encodes the detailed information of a barcode.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1Barcode]
        attr_accessor :barcode
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @barcode = args[:barcode] if args.key?(:barcode)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information,
        # see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Dimension for the page.
      class GoogleCloudDocumentaiV1beta1DocumentPageDimension
        include Google::Apis::Core::Hashable
      
        # Page height.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Dimension unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Page width.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @unit = args[:unit] if args.key?(:unit)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A form field detected on the page.
      class GoogleCloudDocumentaiV1beta1DocumentPageFormField
        include Google::Apis::Core::Hashable
      
        # Created for Labeling UI to export key text. If corrections were made to the
        # text identified by the `field_name.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedKeyText`
        # @return [String]
        attr_accessor :corrected_key_text
      
        # Created for Labeling UI to export value text. If corrections were made to the
        # text identified by the `field_value.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedValueText`
        # @return [String]
        attr_accessor :corrected_value_text
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldName`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :field_name
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldValue`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :field_value
      
        # A list of detected languages for name together with confidence.
        # Corresponds to the JSON property `nameDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :name_detected_languages
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        # A list of detected languages for value together with confidence.
        # Corresponds to the JSON property `valueDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :value_detected_languages
      
        # If the value is non-textual, this field represents the type. Current valid
        # values are: - blank (this indicates the `field_value` is normal text) - `
        # unfilled_checkbox` - `filled_checkbox`
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrected_key_text = args[:corrected_key_text] if args.key?(:corrected_key_text)
          @corrected_value_text = args[:corrected_value_text] if args.key?(:corrected_value_text)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_value = args[:field_value] if args.key?(:field_value)
          @name_detected_languages = args[:name_detected_languages] if args.key?(:name_detected_languages)
          @provenance = args[:provenance] if args.key?(:provenance)
          @value_detected_languages = args[:value_detected_languages] if args.key?(:value_detected_languages)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Rendered image contents for this page.
      class GoogleCloudDocumentaiV1beta1DocumentPageImage
        include Google::Apis::Core::Hashable
      
        # Raw byte content of the image.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Encoding mime type for the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Image Quality Scores for the page image
      class GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores
        include Google::Apis::Core::Hashable
      
        # A list of detected defects.
        # Corresponds to the JSON property `detectedDefects`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect>]
        attr_accessor :detected_defects
      
        # The overall quality score. Range `[0, 1]` where 1 is perfect quality.
        # Corresponds to the JSON property `qualityScore`
        # @return [Float]
        attr_accessor :quality_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_defects = args[:detected_defects] if args.key?(:detected_defects)
          @quality_score = args[:quality_score] if args.key?(:quality_score)
        end
      end
      
      # Image Quality Defects
      class GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect
        include Google::Apis::Core::Hashable
      
        # Confidence of detected defect. Range `[0, 1]` where 1 indicates strong
        # confidence of that the defect exists.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the defect type. Supported values are: - `quality/defect_blurry` - `
        # quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `
        # quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/
        # defect_text_cutoff` - `quality/defect_glare`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this layout is
        # for. e.g. confidence can be for a single token, a table, a visual element, etc.
        # depending on context. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Detected orientation for the Layout.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @orientation = args[:orientation] if args.key?(:orientation)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A collection of tokens that a human would perceive as a line. Does not cross
      # column boundaries, can be horizontal, vertical, etc.
      class GoogleCloudDocumentaiV1beta1DocumentPageLine
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Representation for transformation matrix, intended to be compatible and used
      # with OpenCV format for image manipulation.
      class GoogleCloudDocumentaiV1beta1DocumentPageMatrix
        include Google::Apis::Core::Hashable
      
        # Number of columns in the matrix.
        # Corresponds to the JSON property `cols`
        # @return [Fixnum]
        attr_accessor :cols
      
        # The matrix data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Number of rows in the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # This encodes information about what data type the matrix uses. For example, 0 (
        # CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data
        # types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/
        # group__core__hal__interface.html
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
          @data = args[:data] if args.key?(:data)
          @rows = args[:rows] if args.key?(:rows)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A collection of lines that a human would perceive as a paragraph.
      class GoogleCloudDocumentaiV1beta1DocumentPageParagraph
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected symbol.
      class GoogleCloudDocumentaiV1beta1DocumentPageSymbol
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A table representation similar to HTML table structure.
      class GoogleCloudDocumentaiV1beta1DocumentPageTable
        include Google::Apis::Core::Hashable
      
        # Body rows of the table.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>]
        attr_accessor :body_rows
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Header rows of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>]
        attr_accessor :header_rows
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A cell representation inside the table.
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
        include Google::Apis::Core::Hashable
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @col_span = args[:col_span] if args.key?(:col_span)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # A row of table cells.
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
        include Google::Apis::Core::Hashable
      
        # Cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # A detected token.
      class GoogleCloudDocumentaiV1beta1DocumentPageToken
        include Google::Apis::Core::Hashable
      
        # Detected break at the end of a Token.
        # Corresponds to the JSON property `detectedBreak`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak]
        attr_accessor :detected_break
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance]
        attr_accessor :provenance
      
        # Font and other text style attributes.
        # Corresponds to the JSON property `styleInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTokenStyleInfo]
        attr_accessor :style_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
          @style_info = args[:style_info] if args.key?(:style_info)
        end
      end
      
      # Detected break at the end of a Token.
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
        include Google::Apis::Core::Hashable
      
        # Detected break type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Font and other text style attributes.
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenStyleInfo
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Whether the text is bold (equivalent to font_weight is at least `700`).
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # Font size in points (`1` point is `¹⁄₇₂` inches).
        # Corresponds to the JSON property `fontSize`
        # @return [Fixnum]
        attr_accessor :font_size
      
        # Name or style of the font.
        # Corresponds to the JSON property `fontType`
        # @return [String]
        attr_accessor :font_type
      
        # TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `
        # 400`, bold is `700`.
        # Corresponds to the JSON property `fontWeight`
        # @return [Fixnum]
        attr_accessor :font_weight
      
        # Whether the text is handwritten.
        # Corresponds to the JSON property `handwritten`
        # @return [Boolean]
        attr_accessor :handwritten
        alias_method :handwritten?, :handwritten
      
        # Whether the text is italic.
        # Corresponds to the JSON property `italic`
        # @return [Boolean]
        attr_accessor :italic
        alias_method :italic?, :italic
      
        # Letter spacing in points.
        # Corresponds to the JSON property `letterSpacing`
        # @return [Float]
        attr_accessor :letter_spacing
      
        # Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
        # Corresponds to the JSON property `pixelFontSize`
        # @return [Float]
        attr_accessor :pixel_font_size
      
        # Whether the text is in small caps.
        # Corresponds to the JSON property `smallcaps`
        # @return [Boolean]
        attr_accessor :smallcaps
        alias_method :smallcaps?, :smallcaps
      
        # Whether the text is strikethrough.
        # Corresponds to the JSON property `strikeout`
        # @return [Boolean]
        attr_accessor :strikeout
        alias_method :strikeout?, :strikeout
      
        # Whether the text is a subscript.
        # Corresponds to the JSON property `subscript`
        # @return [Boolean]
        attr_accessor :subscript
        alias_method :subscript?, :subscript
      
        # Whether the text is a superscript.
        # Corresponds to the JSON property `superscript`
        # @return [Boolean]
        attr_accessor :superscript
        alias_method :superscript?, :superscript
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `textColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :text_color
      
        # Whether the text is underlined.
        # Corresponds to the JSON property `underlined`
        # @return [Boolean]
        attr_accessor :underlined
        alias_method :underlined?, :underlined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @bold = args[:bold] if args.key?(:bold)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_type = args[:font_type] if args.key?(:font_type)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @handwritten = args[:handwritten] if args.key?(:handwritten)
          @italic = args[:italic] if args.key?(:italic)
          @letter_spacing = args[:letter_spacing] if args.key?(:letter_spacing)
          @pixel_font_size = args[:pixel_font_size] if args.key?(:pixel_font_size)
          @smallcaps = args[:smallcaps] if args.key?(:smallcaps)
          @strikeout = args[:strikeout] if args.key?(:strikeout)
          @subscript = args[:subscript] if args.key?(:subscript)
          @superscript = args[:superscript] if args.key?(:superscript)
          @text_color = args[:text_color] if args.key?(:text_color)
          @underlined = args[:underlined] if args.key?(:underlined)
        end
      end
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the page.
      class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout]
        attr_accessor :layout
      
        # Type of the VisualElement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Structure to identify provenance relationships between annotations in
      # different revisions.
      class GoogleCloudDocumentaiV1beta1DocumentProvenance
        include Google::Apis::Core::Hashable
      
        # The Id of this operation. Needs to be unique within the scope of the revision.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # References to the original elements that are replaced.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>]
        attr_accessor :parents
      
        # The index of the revision that produced this element.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The type of provenance operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parents = args[:parents] if args.key?(:parents)
          @revision = args[:revision] if args.key?(:revision)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The parent element the current element is based on. Used for referencing/
      # aligning, removal and replacement operations.
      class GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
        include Google::Apis::Core::Hashable
      
        # The id of the parent provenance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The index of the parent item in the corresponding item list (eg. list of
        # entities, properties within entities, etc.) in the parent revision.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The index of the index into current revision's parent_ids list.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @index = args[:index] if args.key?(:index)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Contains past or forward revisions of this document.
      class GoogleCloudDocumentaiV1beta1DocumentRevision
        include Google::Apis::Core::Hashable
      
        # If the change was made by a person specify the name or id of that person.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # The time that the revision was created, internally generated by doc proto
        # storage at the time of create.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human Review information of the document.
        # Corresponds to the JSON property `humanReview`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview]
        attr_accessor :human_review
      
        # Id of the revision, internally generated by doc proto storage. Unique within
        # the context of the document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The revisions that this revision is based on. This can include one or more
        # parent (when documents are merged.) This field represents the index into the `
        # revisions` field.
        # Corresponds to the JSON property `parent`
        # @return [Array<Fixnum>]
        attr_accessor :parent
      
        # The revisions that this revision is based on. Must include all the ids that
        # have anything to do with this revision - eg. there are `provenance.parent.
        # revision` fields that index into this field.
        # Corresponds to the JSON property `parentIds`
        # @return [Array<String>]
        attr_accessor :parent_ids
      
        # If the annotation was made by processor identify the processor by its resource
        # name.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @create_time = args[:create_time] if args.key?(:create_time)
          @human_review = args[:human_review] if args.key?(:human_review)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @parent_ids = args[:parent_ids] if args.key?(:parent_ids)
          @processor = args[:processor] if args.key?(:processor)
        end
      end
      
      # Human Review information of the document.
      class GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
        include Google::Apis::Core::Hashable
      
        # Human review state. e.g. `requested`, `succeeded`, `rejected`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the rejection reason when the state is `rejected`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # For a large document, sharding may be performed to produce several document
      # shards. Each document shard contains this field to detail which shard it is.
      class GoogleCloudDocumentaiV1beta1DocumentShardInfo
        include Google::Apis::Core::Hashable
      
        # Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # The 0-based index of this shard.
        # Corresponds to the JSON property `shardIndex`
        # @return [Fixnum]
        attr_accessor :shard_index
      
        # The index of the first character in Document.text in the overall document
        # global text.
        # Corresponds to the JSON property `textOffset`
        # @return [Fixnum]
        attr_accessor :text_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @shard_index = args[:shard_index] if args.key?(:shard_index)
          @text_offset = args[:text_offset] if args.key?(:text_offset)
        end
      end
      
      # Annotation for common text style attributes. This adheres to CSS conventions
      # as much as possible.
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :color
      
        # Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/
        # cssref/pr_font_font-family.asp
        # Corresponds to the JSON property `fontFamily`
        # @return [String]
        attr_accessor :font_family
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter. https://
        # www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/
        # pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique. https://www.
        # w3schools.com/cssref/pr_font_font-style.asp
        # Corresponds to the JSON property `textStyle`
        # @return [String]
        attr_accessor :text_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @color = args[:color] if args.key?(:color)
          @font_family = args[:font_family] if args.key?(:font_family)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @text_decoration = args[:text_decoration] if args.key?(:text_decoration)
          @text_style = args[:text_style] if args.key?(:text_style)
        end
      end
      
      # Font size with unit.
      class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
        include Google::Apis::Core::Hashable
      
        # Font size for the text.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        # Unit for the font size. Follows CSS naming (in, px, pt, etc.).
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Text reference indexing into the Document.text.
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchor
        include Google::Apis::Core::Hashable
      
        # Contains the content of the text span so that users do not have to look it up
        # in the text_segments. It is always populated for formFields.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds which
      # indicate that the text extends into another document shard for large sharded
      # documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # TextSegment start UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # This message is used for text changes aka. OCR corrections.
      class GoogleCloudDocumentaiV1beta1DocumentTextChange
        include Google::Apis::Core::Hashable
      
        # The text that replaces the text identified in the `text_anchor`.
        # Corresponds to the JSON property `changedText`
        # @return [String]
        attr_accessor :changed_text
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance>]
        attr_accessor :provenance
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_text = args[:changed_text] if args.key?(:changed_text)
          @provenance = args[:provenance] if args.key?(:provenance)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # The Google Cloud Storage location where the output file will be written to.
      class GoogleCloudDocumentaiV1beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The Google Cloud Storage location where the input file will be read from.
      class GoogleCloudDocumentaiV1beta1GcsSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The desired input location and metadata.
      class GoogleCloudDocumentaiV1beta1InputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location where the input file will be read from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1GcsSource]
        attr_accessor :gcs_source
      
        # Required. Mimetype of the input. Current supported mimetypes are application/
        # pdf, image/tiff, and image/gif. In addition, application/json type is
        # supported for requests with ProcessDocumentRequest.automl_params field set.
        # The JSON file needs to be in Document format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
      class GoogleCloudDocumentaiV1beta1NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Contains metadata for the BatchProcessDocuments operation.
      class GoogleCloudDocumentaiV1beta1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The desired output location and metadata.
      class GoogleCloudDocumentaiV1beta1OutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location where the output file will be written to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1GcsDestination]
        attr_accessor :gcs_destination
      
        # The max number of pages to include into each output Document shard JSON on
        # Google Cloud Storage. The valid range is [1, 100]. If not specified, the
        # default value is 20. For example, for one pdf file with 100 pages, 100 parsed
        # pages will be produced. If `pages_per_shard` = 20, then 5 Document shard JSON
        # files each containing 20 parsed pages will be written under the prefix
        # OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and y
        # are 1-indexed page numbers. Example GCS outputs with 157 pages and
        # pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json pages-101-to-
        # 150.json pages-151-to-157.json
        # Corresponds to the JSON property `pagesPerShard`
        # @return [Fixnum]
        attr_accessor :pages_per_shard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @pages_per_shard = args[:pages_per_shard] if args.key?(:pages_per_shard)
        end
      end
      
      # Response to a single document processing request.
      class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The desired input location and metadata.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1InputConfig]
        attr_accessor :input_config
      
        # The desired output location and metadata.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1OutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
      class GoogleCloudDocumentaiV1beta1Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Encodes the detailed information of a barcode.
      class GoogleCloudDocumentaiV1beta2Barcode
        include Google::Apis::Core::Hashable
      
        # Format of a barcode. The supported formats are: - `CODE_128`: Code 128 type. -
        # `CODE_39`: Code 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type.
        # - `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13
        # type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`: UPC-A
        # type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D Aztec code
        # type. - `DATABAR`: GS1 DataBar code type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Raw value encoded in the barcode. For example: `'MEBKM:TITLE:Google;URL:https:/
        # /www.google.com;;'`.
        # Corresponds to the JSON property `rawValue`
        # @return [String]
        attr_accessor :raw_value
      
        # Value format describes the format of the value that a barcode encodes. The
        # supported formats are: - `CONTACT_INFO`: Contact information. - `EMAIL`: Email
        # address. - `ISBN`: ISBN identifier. - `PHONE`: Phone number. - `PRODUCT`:
        # Product. - `SMS`: SMS message. - `TEXT`: Text string. - `URL`: URL address. - `
        # WIFI`: Wifi information. - `GEO`: Geo-localization. - `CALENDAR_EVENT`:
        # Calendar event. - `DRIVER_LICENSE`: Driver's license.
        # Corresponds to the JSON property `valueFormat`
        # @return [String]
        attr_accessor :value_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @raw_value = args[:raw_value] if args.key?(:raw_value)
          @value_format = args[:value_format] if args.key?(:value_format)
        end
      end
      
      # Response to an batch document processing request. This is returned in the LRO
      # Operation after the operation is complete.
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Responses for each individual document.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # A bounding polygon for the detected image annotation.
      class GoogleCloudDocumentaiV1beta2BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Document represents the canonical document resource in Document AI. It is an
      # interchange format that provides insights into documents and allows for
      # collaboration between users and Document AI to iterate and optimize for
      # quality.
      class GoogleCloudDocumentaiV1beta2Document
        include Google::Apis::Core::Hashable
      
        # Optional. Inline document content, represented as a stream of bytes. Note: As
        # with all `bytes` fields, protobuffers use a pure binary representation,
        # whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # A list of entities detected on Document.text. For document shards, entities in
        # this list may cross shard boundaries.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntity>]
        attr_accessor :entities
      
        # Placeholder. Relationship among Document.entities.
        # Corresponds to the JSON property `entityRelations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntityRelation>]
        attr_accessor :entity_relations
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Labels for this document.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentLabel>]
        attr_accessor :labels
      
        # An IANA published MIME type (also referred to as media type). For more
        # information, see https://www.iana.org/assignments/media-types/media-types.
        # xhtml.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Visual page layout for the Document.
        # Corresponds to the JSON property `pages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPage>]
        attr_accessor :pages
      
        # Placeholder. Revision history of this document.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentRevision>]
        attr_accessor :revisions
      
        # For a large document, sharding may be performed to produce several document
        # shards. Each document shard contains this field to detail which shard it is.
        # Corresponds to the JSON property `shardInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentShardInfo]
        attr_accessor :shard_info
      
        # Optional. UTF-8 encoded text in reading order from the document.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Placeholder. A list of text corrections made to Document.text. This is usually
        # used for annotating corrections to OCR mistakes. Text changes for a given
        # revision may not overlap with each other.
        # Corresponds to the JSON property `textChanges`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextChange>]
        attr_accessor :text_changes
      
        # Styles for the Document.text.
        # Corresponds to the JSON property `textStyles`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentStyle>]
        attr_accessor :text_styles
      
        # Optional. Currently supports Google Cloud Storage URI of the form `gs://
        # bucket_name/object_name`. Object versioning is not supported. For more
        # information, refer to [Google Cloud Storage Request URIs](https://cloud.google.
        # com/storage/docs/reference-uris).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @entities = args[:entities] if args.key?(:entities)
          @entity_relations = args[:entity_relations] if args.key?(:entity_relations)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @pages = args[:pages] if args.key?(:pages)
          @revisions = args[:revisions] if args.key?(:revisions)
          @shard_info = args[:shard_info] if args.key?(:shard_info)
          @text = args[:text] if args.key?(:text)
          @text_changes = args[:text_changes] if args.key?(:text_changes)
          @text_styles = args[:text_styles] if args.key?(:text_styles)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An entity that could be a phrase in the text or a property that belongs to the
      # document. It is a known entity type, such as a person, an organization, or
      # location.
      class GoogleCloudDocumentaiV1beta2DocumentEntity
        include Google::Apis::Core::Hashable
      
        # Optional. Confidence of detected Schema entity. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Canonical id. This will be a unique value in the entity list for
        # this document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Deprecated. Use `id` field instead.
        # Corresponds to the JSON property `mentionId`
        # @return [String]
        attr_accessor :mention_id
      
        # Optional. Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
        # Corresponds to the JSON property `mentionText`
        # @return [String]
        attr_accessor :mention_text
      
        # Parsed and normalized entity value.
        # Corresponds to the JSON property `normalizedValue`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue]
        attr_accessor :normalized_value
      
        # Referencing the visual context of the entity in the Document.pages. Page
        # anchors can be cross-page, consist of multiple bounding polygons and
        # optionally reference specific layout element types.
        # Corresponds to the JSON property `pageAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageAnchor]
        attr_accessor :page_anchor
      
        # Optional. Entities can be nested to form a hierarchical data structure
        # representing the content in the document.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntity>]
        attr_accessor :properties
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        # Optional. Whether the entity will be redacted for de-identification purposes.
        # Corresponds to the JSON property `redacted`
        # @return [Boolean]
        attr_accessor :redacted
        alias_method :redacted?, :redacted
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Required. Entity type from a schema e.g. `Address`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @id = args[:id] if args.key?(:id)
          @mention_id = args[:mention_id] if args.key?(:mention_id)
          @mention_text = args[:mention_text] if args.key?(:mention_text)
          @normalized_value = args[:normalized_value] if args.key?(:normalized_value)
          @page_anchor = args[:page_anchor] if args.key?(:page_anchor)
          @properties = args[:properties] if args.key?(:properties)
          @provenance = args[:provenance] if args.key?(:provenance)
          @redacted = args[:redacted] if args.key?(:redacted)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parsed and normalized entity value.
      class GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
        include Google::Apis::Core::Hashable
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar. It is not intended to model geographical locations (roads,
        # towns, mountains). In typical usage an address would be created via user input
        # or from importing existing data, depending on the type of process. Advice on
        # address input / editing: - Use an internationalization-ready address widget
        # such as https://github.com/google/libaddressinput) - Users should not be
        # presented with UI elements for input or editing of fields outside countries
        # where that field is used. For more guidance on how to use this schema, please
        # see: https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `addressValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypePostalAddress]
        attr_accessor :address_value
      
        # Boolean value. Can be used for entities with binary values, or for checkboxes.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `dateValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeDate]
        attr_accessor :date_value
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `datetimeValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeDateTime]
        attr_accessor :datetime_value
      
        # Float value.
        # Corresponds to the JSON property `floatValue`
        # @return [Float]
        attr_accessor :float_value
      
        # Integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `moneyValue`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeMoney]
        attr_accessor :money_value
      
        # Optional. An optional field to store a normalized string. For some entity
        # types, one of respective `structured_value` fields may also be populated. Also
        # not all the types of `structured_value` will be normalized. For example, some
        # processors may not generate `float` or `integer` normalized text by default.
        # Below are sample formats mapped to structured values. - Money/Currency type (`
        # money_value`) is in the ISO 4217 text format. - Date type (`date_value`) is in
        # the ISO 8601 text format. - Datetime type (`datetime_value`) is in the ISO
        # 8601 text format.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_value = args[:address_value] if args.key?(:address_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_value = args[:date_value] if args.key?(:date_value)
          @datetime_value = args[:datetime_value] if args.key?(:datetime_value)
          @float_value = args[:float_value] if args.key?(:float_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @money_value = args[:money_value] if args.key?(:money_value)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Relationship between Entities.
      class GoogleCloudDocumentaiV1beta2DocumentEntityRelation
        include Google::Apis::Core::Hashable
      
        # Object entity id.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # Relationship description.
        # Corresponds to the JSON property `relation`
        # @return [String]
        attr_accessor :relation
      
        # Subject entity id.
        # Corresponds to the JSON property `subjectId`
        # @return [String]
        attr_accessor :subject_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @relation = args[:relation] if args.key?(:relation)
          @subject_id = args[:subject_id] if args.key?(:subject_id)
        end
      end
      
      # Label attaches schema information and/or other metadata to segments within a
      # Document. Multiple Labels on a single field can denote either different labels,
      # different instances of the same label created at different times, or some
      # combination of both.
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        include Google::Apis::Core::Hashable
      
        # Label is generated AutoML model. This field stores the full resource name of
        # the AutoML model. Format: `projects/`project-id`/locations/`location-id`/
        # models/`model-id``
        # Corresponds to the JSON property `automlModel`
        # @return [String]
        attr_accessor :automl_model
      
        # Confidence score between 0 and 1 for label assignment.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the label. When the label is generated from AutoML Text Classification
        # model, this field represents the name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automl_model = args[:automl_model] if args.key?(:automl_model)
          @confidence = args[:confidence] if args.key?(:confidence)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A page in a Document.
      class GoogleCloudDocumentaiV1beta2DocumentPage
        include Google::Apis::Core::Hashable
      
        # A list of visually detected text blocks on the page. A block has a set of
        # lines (collected into paragraphs) that have a common line-spacing and
        # orientation.
        # Corresponds to the JSON property `blocks`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageBlock>]
        attr_accessor :blocks
      
        # A list of detected barcodes.
        # Corresponds to the JSON property `detectedBarcodes`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode>]
        attr_accessor :detected_barcodes
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Dimension for the page.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDimension]
        attr_accessor :dimension
      
        # A list of visually detected form fields on the page.
        # Corresponds to the JSON property `formFields`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageFormField>]
        attr_accessor :form_fields
      
        # Rendered image contents for this page.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImage]
        attr_accessor :image
      
        # Image Quality Scores for the page image
        # Corresponds to the JSON property `imageQualityScores`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores]
        attr_accessor :image_quality_scores
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # A list of visually detected text lines on the page. A collection of tokens
        # that a human would perceive as a line.
        # Corresponds to the JSON property `lines`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLine>]
        attr_accessor :lines
      
        # 1-based index for current Page in a parent Document. Useful when a page is
        # taken out of a Document for individual processing.
        # Corresponds to the JSON property `pageNumber`
        # @return [Fixnum]
        attr_accessor :page_number
      
        # A list of visually detected text paragraphs on the page. A collection of lines
        # that a human would perceive as a paragraph.
        # Corresponds to the JSON property `paragraphs`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageParagraph>]
        attr_accessor :paragraphs
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        # A list of visually detected symbols on the page.
        # Corresponds to the JSON property `symbols`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageSymbol>]
        attr_accessor :symbols
      
        # A list of visually detected tables on the page.
        # Corresponds to the JSON property `tables`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTable>]
        attr_accessor :tables
      
        # A list of visually detected tokens on the page.
        # Corresponds to the JSON property `tokens`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageToken>]
        attr_accessor :tokens
      
        # Transformation matrices that were applied to the original document image to
        # produce Page.image.
        # Corresponds to the JSON property `transforms`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageMatrix>]
        attr_accessor :transforms
      
        # A list of detected non-text visual elements e.g. checkbox, signature etc. on
        # the page.
        # Corresponds to the JSON property `visualElements`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>]
        attr_accessor :visual_elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocks = args[:blocks] if args.key?(:blocks)
          @detected_barcodes = args[:detected_barcodes] if args.key?(:detected_barcodes)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @dimension = args[:dimension] if args.key?(:dimension)
          @form_fields = args[:form_fields] if args.key?(:form_fields)
          @image = args[:image] if args.key?(:image)
          @image_quality_scores = args[:image_quality_scores] if args.key?(:image_quality_scores)
          @layout = args[:layout] if args.key?(:layout)
          @lines = args[:lines] if args.key?(:lines)
          @page_number = args[:page_number] if args.key?(:page_number)
          @paragraphs = args[:paragraphs] if args.key?(:paragraphs)
          @provenance = args[:provenance] if args.key?(:provenance)
          @symbols = args[:symbols] if args.key?(:symbols)
          @tables = args[:tables] if args.key?(:tables)
          @tokens = args[:tokens] if args.key?(:tokens)
          @transforms = args[:transforms] if args.key?(:transforms)
          @visual_elements = args[:visual_elements] if args.key?(:visual_elements)
        end
      end
      
      # Referencing the visual context of the entity in the Document.pages. Page
      # anchors can be cross-page, consist of multiple bounding polygons and
      # optionally reference specific layout element types.
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchor
        include Google::Apis::Core::Hashable
      
        # One or more references to visual page elements
        # Corresponds to the JSON property `pageRefs`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>]
        attr_accessor :page_refs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_refs = args[:page_refs] if args.key?(:page_refs)
        end
      end
      
      # Represents a weak reference to a page element within a document.
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2BoundingPoly]
        attr_accessor :bounding_poly
      
        # Optional. Confidence of detected page element, if applicable. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Optional. Deprecated. Use PageRef.bounding_poly instead.
        # Corresponds to the JSON property `layoutId`
        # @return [String]
        attr_accessor :layout_id
      
        # Optional. The type of the layout element that is being referenced if any.
        # Corresponds to the JSON property `layoutType`
        # @return [String]
        attr_accessor :layout_type
      
        # Required. Index into the Document.pages element, for example using `Document.
        # pages` to locate the related page element. This field is skipped when its
        # value is the default `0`. See https://developers.google.com/protocol-buffers/
        # docs/proto3#json.
        # Corresponds to the JSON property `page`
        # @return [Fixnum]
        attr_accessor :page
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @layout_id = args[:layout_id] if args.key?(:layout_id)
          @layout_type = args[:layout_type] if args.key?(:layout_type)
          @page = args[:page] if args.key?(:page)
        end
      end
      
      # A block has a set of lines (collected into paragraphs) that have a common line-
      # spacing and orientation.
      class GoogleCloudDocumentaiV1beta2DocumentPageBlock
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected barcode.
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode
        include Google::Apis::Core::Hashable
      
        # Encodes the detailed information of a barcode.
        # Corresponds to the JSON property `barcode`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2Barcode]
        attr_accessor :barcode
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @barcode = args[:barcode] if args.key?(:barcode)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Detected language for a structural component.
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        include Google::Apis::Core::Hashable
      
        # Confidence of detected language. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code, such as `en-US` or `sr-Latn`. For more information,
        # see https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Dimension for the page.
      class GoogleCloudDocumentaiV1beta2DocumentPageDimension
        include Google::Apis::Core::Hashable
      
        # Page height.
        # Corresponds to the JSON property `height`
        # @return [Float]
        attr_accessor :height
      
        # Dimension unit.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Page width.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @unit = args[:unit] if args.key?(:unit)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # A form field detected on the page.
      class GoogleCloudDocumentaiV1beta2DocumentPageFormField
        include Google::Apis::Core::Hashable
      
        # Created for Labeling UI to export key text. If corrections were made to the
        # text identified by the `field_name.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedKeyText`
        # @return [String]
        attr_accessor :corrected_key_text
      
        # Created for Labeling UI to export value text. If corrections were made to the
        # text identified by the `field_value.text_anchor`, this field will contain the
        # correction.
        # Corresponds to the JSON property `correctedValueText`
        # @return [String]
        attr_accessor :corrected_value_text
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldName`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :field_name
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `fieldValue`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :field_value
      
        # A list of detected languages for name together with confidence.
        # Corresponds to the JSON property `nameDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :name_detected_languages
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        # A list of detected languages for value together with confidence.
        # Corresponds to the JSON property `valueDetectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :value_detected_languages
      
        # If the value is non-textual, this field represents the type. Current valid
        # values are: - blank (this indicates the `field_value` is normal text) - `
        # unfilled_checkbox` - `filled_checkbox`
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrected_key_text = args[:corrected_key_text] if args.key?(:corrected_key_text)
          @corrected_value_text = args[:corrected_value_text] if args.key?(:corrected_value_text)
          @field_name = args[:field_name] if args.key?(:field_name)
          @field_value = args[:field_value] if args.key?(:field_value)
          @name_detected_languages = args[:name_detected_languages] if args.key?(:name_detected_languages)
          @provenance = args[:provenance] if args.key?(:provenance)
          @value_detected_languages = args[:value_detected_languages] if args.key?(:value_detected_languages)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Rendered image contents for this page.
      class GoogleCloudDocumentaiV1beta2DocumentPageImage
        include Google::Apis::Core::Hashable
      
        # Raw byte content of the image.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # Height of the image in pixels.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # Encoding mime type for the image.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Width of the image in pixels.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @height = args[:height] if args.key?(:height)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Image Quality Scores for the page image
      class GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores
        include Google::Apis::Core::Hashable
      
        # A list of detected defects.
        # Corresponds to the JSON property `detectedDefects`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect>]
        attr_accessor :detected_defects
      
        # The overall quality score. Range `[0, 1]` where 1 is perfect quality.
        # Corresponds to the JSON property `qualityScore`
        # @return [Float]
        attr_accessor :quality_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_defects = args[:detected_defects] if args.key?(:detected_defects)
          @quality_score = args[:quality_score] if args.key?(:quality_score)
        end
      end
      
      # Image Quality Defects
      class GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect
        include Google::Apis::Core::Hashable
      
        # Confidence of detected defect. Range `[0, 1]` where 1 indicates strong
        # confidence of that the defect exists.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Name of the defect type. Supported values are: - `quality/defect_blurry` - `
        # quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `
        # quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/
        # defect_text_cutoff` - `quality/defect_glare`
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Visual element describing a layout unit on a page.
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        include Google::Apis::Core::Hashable
      
        # A bounding polygon for the detected image annotation.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2BoundingPoly]
        attr_accessor :bounding_poly
      
        # Confidence of the current Layout within context of the object this layout is
        # for. e.g. confidence can be for a single token, a table, a visual element, etc.
        # depending on context. Range `[0, 1]`.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Detected orientation for the Layout.
        # Corresponds to the JSON property `orientation`
        # @return [String]
        attr_accessor :orientation
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @confidence = args[:confidence] if args.key?(:confidence)
          @orientation = args[:orientation] if args.key?(:orientation)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # A collection of tokens that a human would perceive as a line. Does not cross
      # column boundaries, can be horizontal, vertical, etc.
      class GoogleCloudDocumentaiV1beta2DocumentPageLine
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # Representation for transformation matrix, intended to be compatible and used
      # with OpenCV format for image manipulation.
      class GoogleCloudDocumentaiV1beta2DocumentPageMatrix
        include Google::Apis::Core::Hashable
      
        # Number of columns in the matrix.
        # Corresponds to the JSON property `cols`
        # @return [Fixnum]
        attr_accessor :cols
      
        # The matrix data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Number of rows in the matrix.
        # Corresponds to the JSON property `rows`
        # @return [Fixnum]
        attr_accessor :rows
      
        # This encodes information about what data type the matrix uses. For example, 0 (
        # CV_8U) is an unsigned 8-bit image. For the full list of OpenCV primitive data
        # types, please refer to https://docs.opencv.org/4.3.0/d1/d1b/
        # group__core__hal__interface.html
        # Corresponds to the JSON property `type`
        # @return [Fixnum]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cols = args[:cols] if args.key?(:cols)
          @data = args[:data] if args.key?(:data)
          @rows = args[:rows] if args.key?(:rows)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A collection of lines that a human would perceive as a paragraph.
      class GoogleCloudDocumentaiV1beta2DocumentPageParagraph
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A detected symbol.
      class GoogleCloudDocumentaiV1beta2DocumentPageSymbol
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # A table representation similar to HTML table structure.
      class GoogleCloudDocumentaiV1beta2DocumentPageTable
        include Google::Apis::Core::Hashable
      
        # Body rows of the table.
        # Corresponds to the JSON property `bodyRows`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>]
        attr_accessor :body_rows
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Header rows of the table.
        # Corresponds to the JSON property `headerRows`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>]
        attr_accessor :header_rows
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body_rows = args[:body_rows] if args.key?(:body_rows)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
        end
      end
      
      # A cell representation inside the table.
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
        include Google::Apis::Core::Hashable
      
        # How many columns this cell spans.
        # Corresponds to the JSON property `colSpan`
        # @return [Fixnum]
        attr_accessor :col_span
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # How many rows this cell spans.
        # Corresponds to the JSON property `rowSpan`
        # @return [Fixnum]
        attr_accessor :row_span
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @col_span = args[:col_span] if args.key?(:col_span)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @row_span = args[:row_span] if args.key?(:row_span)
        end
      end
      
      # A row of table cells.
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
        include Google::Apis::Core::Hashable
      
        # Cells that make up this row.
        # Corresponds to the JSON property `cells`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>]
        attr_accessor :cells
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cells = args[:cells] if args.key?(:cells)
        end
      end
      
      # A detected token.
      class GoogleCloudDocumentaiV1beta2DocumentPageToken
        include Google::Apis::Core::Hashable
      
        # Detected break at the end of a Token.
        # Corresponds to the JSON property `detectedBreak`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak]
        attr_accessor :detected_break
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Structure to identify provenance relationships between annotations in
        # different revisions.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance]
        attr_accessor :provenance
      
        # Font and other text style attributes.
        # Corresponds to the JSON property `styleInfo`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTokenStyleInfo]
        attr_accessor :style_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_break = args[:detected_break] if args.key?(:detected_break)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @provenance = args[:provenance] if args.key?(:provenance)
          @style_info = args[:style_info] if args.key?(:style_info)
        end
      end
      
      # Detected break at the end of a Token.
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
        include Google::Apis::Core::Hashable
      
        # Detected break type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Font and other text style attributes.
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenStyleInfo
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Whether the text is bold (equivalent to font_weight is at least `700`).
        # Corresponds to the JSON property `bold`
        # @return [Boolean]
        attr_accessor :bold
        alias_method :bold?, :bold
      
        # Font size in points (`1` point is `¹⁄₇₂` inches).
        # Corresponds to the JSON property `fontSize`
        # @return [Fixnum]
        attr_accessor :font_size
      
        # Name or style of the font.
        # Corresponds to the JSON property `fontType`
        # @return [String]
        attr_accessor :font_type
      
        # TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `
        # 400`, bold is `700`.
        # Corresponds to the JSON property `fontWeight`
        # @return [Fixnum]
        attr_accessor :font_weight
      
        # Whether the text is handwritten.
        # Corresponds to the JSON property `handwritten`
        # @return [Boolean]
        attr_accessor :handwritten
        alias_method :handwritten?, :handwritten
      
        # Whether the text is italic.
        # Corresponds to the JSON property `italic`
        # @return [Boolean]
        attr_accessor :italic
        alias_method :italic?, :italic
      
        # Letter spacing in points.
        # Corresponds to the JSON property `letterSpacing`
        # @return [Float]
        attr_accessor :letter_spacing
      
        # Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
        # Corresponds to the JSON property `pixelFontSize`
        # @return [Float]
        attr_accessor :pixel_font_size
      
        # Whether the text is in small caps.
        # Corresponds to the JSON property `smallcaps`
        # @return [Boolean]
        attr_accessor :smallcaps
        alias_method :smallcaps?, :smallcaps
      
        # Whether the text is strikethrough.
        # Corresponds to the JSON property `strikeout`
        # @return [Boolean]
        attr_accessor :strikeout
        alias_method :strikeout?, :strikeout
      
        # Whether the text is a subscript.
        # Corresponds to the JSON property `subscript`
        # @return [Boolean]
        attr_accessor :subscript
        alias_method :subscript?, :subscript
      
        # Whether the text is a superscript.
        # Corresponds to the JSON property `superscript`
        # @return [Boolean]
        attr_accessor :superscript
        alias_method :superscript?, :superscript
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `textColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :text_color
      
        # Whether the text is underlined.
        # Corresponds to the JSON property `underlined`
        # @return [Boolean]
        attr_accessor :underlined
        alias_method :underlined?, :underlined
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @bold = args[:bold] if args.key?(:bold)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_type = args[:font_type] if args.key?(:font_type)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @handwritten = args[:handwritten] if args.key?(:handwritten)
          @italic = args[:italic] if args.key?(:italic)
          @letter_spacing = args[:letter_spacing] if args.key?(:letter_spacing)
          @pixel_font_size = args[:pixel_font_size] if args.key?(:pixel_font_size)
          @smallcaps = args[:smallcaps] if args.key?(:smallcaps)
          @strikeout = args[:strikeout] if args.key?(:strikeout)
          @subscript = args[:subscript] if args.key?(:subscript)
          @superscript = args[:superscript] if args.key?(:superscript)
          @text_color = args[:text_color] if args.key?(:text_color)
          @underlined = args[:underlined] if args.key?(:underlined)
        end
      end
      
      # Detected non-text visual elements e.g. checkbox, signature etc. on the page.
      class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
        include Google::Apis::Core::Hashable
      
        # A list of detected languages together with confidence.
        # Corresponds to the JSON property `detectedLanguages`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>]
        attr_accessor :detected_languages
      
        # Visual element describing a layout unit on a page.
        # Corresponds to the JSON property `layout`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout]
        attr_accessor :layout
      
        # Type of the VisualElement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_languages = args[:detected_languages] if args.key?(:detected_languages)
          @layout = args[:layout] if args.key?(:layout)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Structure to identify provenance relationships between annotations in
      # different revisions.
      class GoogleCloudDocumentaiV1beta2DocumentProvenance
        include Google::Apis::Core::Hashable
      
        # The Id of this operation. Needs to be unique within the scope of the revision.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # References to the original elements that are replaced.
        # Corresponds to the JSON property `parents`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>]
        attr_accessor :parents
      
        # The index of the revision that produced this element.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The type of provenance operation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @parents = args[:parents] if args.key?(:parents)
          @revision = args[:revision] if args.key?(:revision)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The parent element the current element is based on. Used for referencing/
      # aligning, removal and replacement operations.
      class GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
        include Google::Apis::Core::Hashable
      
        # The id of the parent provenance.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The index of the parent item in the corresponding item list (eg. list of
        # entities, properties within entities, etc.) in the parent revision.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The index of the index into current revision's parent_ids list.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @index = args[:index] if args.key?(:index)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Contains past or forward revisions of this document.
      class GoogleCloudDocumentaiV1beta2DocumentRevision
        include Google::Apis::Core::Hashable
      
        # If the change was made by a person specify the name or id of that person.
        # Corresponds to the JSON property `agent`
        # @return [String]
        attr_accessor :agent
      
        # The time that the revision was created, internally generated by doc proto
        # storage at the time of create.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human Review information of the document.
        # Corresponds to the JSON property `humanReview`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview]
        attr_accessor :human_review
      
        # Id of the revision, internally generated by doc proto storage. Unique within
        # the context of the document.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The revisions that this revision is based on. This can include one or more
        # parent (when documents are merged.) This field represents the index into the `
        # revisions` field.
        # Corresponds to the JSON property `parent`
        # @return [Array<Fixnum>]
        attr_accessor :parent
      
        # The revisions that this revision is based on. Must include all the ids that
        # have anything to do with this revision - eg. there are `provenance.parent.
        # revision` fields that index into this field.
        # Corresponds to the JSON property `parentIds`
        # @return [Array<String>]
        attr_accessor :parent_ids
      
        # If the annotation was made by processor identify the processor by its resource
        # name.
        # Corresponds to the JSON property `processor`
        # @return [String]
        attr_accessor :processor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent = args[:agent] if args.key?(:agent)
          @create_time = args[:create_time] if args.key?(:create_time)
          @human_review = args[:human_review] if args.key?(:human_review)
          @id = args[:id] if args.key?(:id)
          @parent = args[:parent] if args.key?(:parent)
          @parent_ids = args[:parent_ids] if args.key?(:parent_ids)
          @processor = args[:processor] if args.key?(:processor)
        end
      end
      
      # Human Review information of the document.
      class GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
        include Google::Apis::Core::Hashable
      
        # Human review state. e.g. `requested`, `succeeded`, `rejected`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the rejection reason when the state is `rejected`.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # For a large document, sharding may be performed to produce several document
      # shards. Each document shard contains this field to detail which shard it is.
      class GoogleCloudDocumentaiV1beta2DocumentShardInfo
        include Google::Apis::Core::Hashable
      
        # Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # The 0-based index of this shard.
        # Corresponds to the JSON property `shardIndex`
        # @return [Fixnum]
        attr_accessor :shard_index
      
        # The index of the first character in Document.text in the overall document
        # global text.
        # Corresponds to the JSON property `textOffset`
        # @return [Fixnum]
        attr_accessor :text_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @shard_index = args[:shard_index] if args.key?(:shard_index)
          @text_offset = args[:text_offset] if args.key?(:text_offset)
        end
      end
      
      # Annotation for common text style attributes. This adheres to CSS conventions
      # as much as possible.
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        include Google::Apis::Core::Hashable
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `backgroundColor`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :background_color
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeColor]
        attr_accessor :color
      
        # Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/
        # cssref/pr_font_font-family.asp
        # Corresponds to the JSON property `fontFamily`
        # @return [String]
        attr_accessor :font_family
      
        # Font size with unit.
        # Corresponds to the JSON property `fontSize`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize]
        attr_accessor :font_size
      
        # Font weight. Possible values are normal, bold, bolder, and lighter. https://
        # www.w3schools.com/cssref/pr_font_weight.asp
        # Corresponds to the JSON property `fontWeight`
        # @return [String]
        attr_accessor :font_weight
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        # Text decoration. Follows CSS standard. https://www.w3schools.com/cssref/
        # pr_text_text-decoration.asp
        # Corresponds to the JSON property `textDecoration`
        # @return [String]
        attr_accessor :text_decoration
      
        # Text style. Possible values are normal, italic, and oblique. https://www.
        # w3schools.com/cssref/pr_font_font-style.asp
        # Corresponds to the JSON property `textStyle`
        # @return [String]
        attr_accessor :text_style
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @background_color = args[:background_color] if args.key?(:background_color)
          @color = args[:color] if args.key?(:color)
          @font_family = args[:font_family] if args.key?(:font_family)
          @font_size = args[:font_size] if args.key?(:font_size)
          @font_weight = args[:font_weight] if args.key?(:font_weight)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
          @text_decoration = args[:text_decoration] if args.key?(:text_decoration)
          @text_style = args[:text_style] if args.key?(:text_style)
        end
      end
      
      # Font size with unit.
      class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
        include Google::Apis::Core::Hashable
      
        # Font size for the text.
        # Corresponds to the JSON property `size`
        # @return [Float]
        attr_accessor :size
      
        # Unit for the font size. Follows CSS naming (in, px, pt, etc.).
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size = args[:size] if args.key?(:size)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Text reference indexing into the Document.text.
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchor
        include Google::Apis::Core::Hashable
      
        # Contains the content of the text span so that users do not have to look it up
        # in the text_segments. It is always populated for formFields.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # The text segments from the Document.text.
        # Corresponds to the JSON property `textSegments`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>]
        attr_accessor :text_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @text_segments = args[:text_segments] if args.key?(:text_segments)
        end
      end
      
      # A text segment in the Document.text. The indices may be out of bounds which
      # indicate that the text extends into another document shard for large sharded
      # documents. See ShardInfo.text_offset
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        include Google::Apis::Core::Hashable
      
        # TextSegment half open end UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `endIndex`
        # @return [Fixnum]
        attr_accessor :end_index
      
        # TextSegment start UTF-8 char index in the Document.text.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_index = args[:end_index] if args.key?(:end_index)
          @start_index = args[:start_index] if args.key?(:start_index)
        end
      end
      
      # This message is used for text changes aka. OCR corrections.
      class GoogleCloudDocumentaiV1beta2DocumentTextChange
        include Google::Apis::Core::Hashable
      
        # The text that replaces the text identified in the `text_anchor`.
        # Corresponds to the JSON property `changedText`
        # @return [String]
        attr_accessor :changed_text
      
        # The history of this annotation.
        # Corresponds to the JSON property `provenance`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance>]
        attr_accessor :provenance
      
        # Text reference indexing into the Document.text.
        # Corresponds to the JSON property `textAnchor`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor]
        attr_accessor :text_anchor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changed_text = args[:changed_text] if args.key?(:changed_text)
          @provenance = args[:provenance] if args.key?(:provenance)
          @text_anchor = args[:text_anchor] if args.key?(:text_anchor)
        end
      end
      
      # The Google Cloud Storage location where the output file will be written to.
      class GoogleCloudDocumentaiV1beta2GcsDestination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The Google Cloud Storage location where the input file will be read from.
      class GoogleCloudDocumentaiV1beta2GcsSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The desired input location and metadata.
      class GoogleCloudDocumentaiV1beta2InputConfig
        include Google::Apis::Core::Hashable
      
        # Content in bytes, represented as a stream of bytes. Note: As with all `bytes`
        # fields, proto buffer messages use a pure binary representation, whereas JSON
        # representations use base64. This field only works for synchronous
        # ProcessDocument method.
        # Corresponds to the JSON property `contents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :contents
      
        # The Google Cloud Storage location where the input file will be read from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2GcsSource]
        attr_accessor :gcs_source
      
        # Required. Mimetype of the input. Current supported mimetypes are application/
        # pdf, image/tiff, and image/gif. In addition, application/json type is
        # supported for requests with ProcessDocumentRequest.automl_params field set.
        # The JSON file needs to be in Document format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
      class GoogleCloudDocumentaiV1beta2NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # Contains metadata for the BatchProcessDocuments operation.
      class GoogleCloudDocumentaiV1beta2OperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The desired output location and metadata.
      class GoogleCloudDocumentaiV1beta2OutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location where the output file will be written to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2GcsDestination]
        attr_accessor :gcs_destination
      
        # The max number of pages to include into each output Document shard JSON on
        # Google Cloud Storage. The valid range is [1, 100]. If not specified, the
        # default value is 20. For example, for one pdf file with 100 pages, 100 parsed
        # pages will be produced. If `pages_per_shard` = 20, then 5 Document shard JSON
        # files each containing 20 parsed pages will be written under the prefix
        # OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and y
        # are 1-indexed page numbers. Example GCS outputs with 157 pages and
        # pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json pages-101-to-
        # 150.json pages-151-to-157.json
        # Corresponds to the JSON property `pagesPerShard`
        # @return [Fixnum]
        attr_accessor :pages_per_shard
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @pages_per_shard = args[:pages_per_shard] if args.key?(:pages_per_shard)
        end
      end
      
      # Response to a single document processing request.
      class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The desired input location and metadata.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2InputConfig]
        attr_accessor :input_config
      
        # The desired output location and metadata.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2OutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
      class GoogleCloudDocumentaiV1beta2Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate (starts from the top of the image).
        # Corresponds to the JSON property `y`
        # @return [Fixnum]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # The long-running operation metadata for BatchProcessDocuments.
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The list of response details of each document.
        # Corresponds to the JSON property `individualProcessStatuses`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>]
        attr_accessor :individual_process_statuses
      
        # The state of the current batch processing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @individual_process_statuses = args[:individual_process_statuses] if args.key?(:individual_process_statuses)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The status of a each individual document in the batch process.
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        include Google::Apis::Core::Hashable
      
        # The name of the operation triggered by the processed document. If the human
        # review process isn't triggered, this field will be empty. It has the same
        # response type and metadata as the long-running operation returned by the
        # ReviewDocument method.
        # Corresponds to the JSON property `humanReviewOperation`
        # @return [String]
        attr_accessor :human_review_operation
      
        # The status of human review on a processed document.
        # Corresponds to the JSON property `humanReviewStatus`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3HumanReviewStatus]
        attr_accessor :human_review_status
      
        # The source of the document, same as the input_gcs_source field in the request
        # when the batch process started.
        # Corresponds to the JSON property `inputGcsSource`
        # @return [String]
        attr_accessor :input_gcs_source
      
        # The Cloud Storage output destination (in the request as DocumentOutputConfig.
        # GcsOutputConfig.gcs_uri) of the processed document if it was successful,
        # otherwise empty.
        # Corresponds to the JSON property `outputGcsDestination`
        # @return [String]
        attr_accessor :output_gcs_destination
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_review_operation = args[:human_review_operation] if args.key?(:human_review_operation)
          @human_review_status = args[:human_review_status] if args.key?(:human_review_status)
          @input_gcs_source = args[:input_gcs_source] if args.key?(:input_gcs_source)
          @output_gcs_destination = args[:output_gcs_destination] if args.key?(:output_gcs_destination)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Response message for BatchProcessDocuments.
      class GoogleCloudDocumentaiV1beta3BatchProcessResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The common metadata for long running operations.
      class GoogleCloudDocumentaiV1beta3CommonOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A related resource to this operation.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @resource = args[:resource] if args.key?(:resource)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The long-running operation metadata for the DeleteProcessor method.
      class GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeleteProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The long-running operation metadata for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the DeployProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long-running operation metadata for the DisableProcessor method.
      class GoogleCloudDocumentaiV1beta3DisableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the DisableProcessor method. Intentionally empty proto
      # for adding fields in future.
      class GoogleCloudDocumentaiV1beta3DisableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The long-running operation metadata for the EnableProcessor method.
      class GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the EnableProcessor method. Intentionally empty proto for
      # adding fields in future.
      class GoogleCloudDocumentaiV1beta3EnableProcessorResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata of the EvaluateProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response of the EvaluateProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the created evaluation.
        # Corresponds to the JSON property `evaluation`
        # @return [String]
        attr_accessor :evaluation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation = args[:evaluation] if args.key?(:evaluation)
        end
      end
      
      # The status of human review on a processed document.
      class GoogleCloudDocumentaiV1beta3HumanReviewStatus
        include Google::Apis::Core::Hashable
      
        # The name of the operation triggered by the processed document. This field is
        # populated only when the state is `HUMAN_REVIEW_IN_PROGRESS`. It has the same
        # response type and metadata as the long-running operation returned by
        # ReviewDocument.
        # Corresponds to the JSON property `humanReviewOperation`
        # @return [String]
        attr_accessor :human_review_operation
      
        # The state of human review on the processing request.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the human review state.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_review_operation = args[:human_review_operation] if args.key?(:human_review_operation)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # The long-running operation metadata for the ImportProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # The response message for the ImportProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The destination processor version name.
        # Corresponds to the JSON property `processorVersion`
        # @return [String]
        attr_accessor :processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor_version = args[:processor_version] if args.key?(:processor_version)
        end
      end
      
      # The long-running operation metadata for the ReviewDocument method.
      class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The creation time of the operation.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The Crowd Compute question ID.
        # Corresponds to the JSON property `questionId`
        # @return [String]
        attr_accessor :question_id
      
        # Used only when Operation.done is false.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A message providing more details about the current state of processing. For
        # example, the error message if the operation is failed.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The last update time of the operation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @create_time = args[:create_time] if args.key?(:create_time)
          @question_id = args[:question_id] if args.key?(:question_id)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for the ReviewDocument method.
      class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage uri for the human reviewed document if the review is
        # succeeded.
        # Corresponds to the JSON property `gcsDestination`
        # @return [String]
        attr_accessor :gcs_destination
      
        # The reason why the review is rejected by reviewer.
        # Corresponds to the JSON property `rejectionReason`
        # @return [String]
        attr_accessor :rejection_reason
      
        # The state of the review operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @rejection_reason = args[:rejection_reason] if args.key?(:rejection_reason)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The long-running operation metadata for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the SetDefaultProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata that represents a processor version being created.
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        # The dataset validation information. This includes any and all errors with
        # documents and the dataset.
        # Corresponds to the JSON property `testDatasetValidation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation]
        attr_accessor :test_dataset_validation
      
        # The dataset validation information. This includes any and all errors with
        # documents and the dataset.
        # Corresponds to the JSON property `trainingDatasetValidation`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation]
        attr_accessor :training_dataset_validation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
          @test_dataset_validation = args[:test_dataset_validation] if args.key?(:test_dataset_validation)
          @training_dataset_validation = args[:training_dataset_validation] if args.key?(:training_dataset_validation)
        end
      end
      
      # The dataset validation information. This includes any and all errors with
      # documents and the dataset.
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation
        include Google::Apis::Core::Hashable
      
        # The total number of dataset errors.
        # Corresponds to the JSON property `datasetErrorCount`
        # @return [Fixnum]
        attr_accessor :dataset_error_count
      
        # Error information for the dataset as a whole. A maximum of 10 dataset errors
        # will be returned. A single dataset error is terminal for training.
        # Corresponds to the JSON property `datasetErrors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleRpcStatus>]
        attr_accessor :dataset_errors
      
        # The total number of document errors.
        # Corresponds to the JSON property `documentErrorCount`
        # @return [Fixnum]
        attr_accessor :document_error_count
      
        # Error information pertaining to specific documents. A maximum of 10 document
        # errors will be returned. Any document with errors will not be used throughout
        # training.
        # Corresponds to the JSON property `documentErrors`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleRpcStatus>]
        attr_accessor :document_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_error_count = args[:dataset_error_count] if args.key?(:dataset_error_count)
          @dataset_errors = args[:dataset_errors] if args.key?(:dataset_errors)
          @document_error_count = args[:document_error_count] if args.key?(:document_error_count)
          @document_errors = args[:document_errors] if args.key?(:document_errors)
        end
      end
      
      # The response for TrainProcessorVersion.
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the processor version produced by training.
        # Corresponds to the JSON property `processorVersion`
        # @return [String]
        attr_accessor :processor_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processor_version = args[:processor_version] if args.key?(:processor_version)
        end
      end
      
      # The long-running operation metadata for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionMetadata
        include Google::Apis::Core::Hashable
      
        # The common metadata for long running operations.
        # Corresponds to the JSON property `commonMetadata`
        # @return [Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata]
        attr_accessor :common_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_metadata = args[:common_metadata] if args.key?(:common_metadata)
        end
      end
      
      # Response message for the UndeployProcessorVersion method.
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Locations.ListLocations.
      class GoogleCloudLocationListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleCloudLocationLocation>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class GoogleCloudLocationLocation
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DocumentaiV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DocumentaiV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't carry
      # information about the absolute color space that should be used to interpret
      # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most
      # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
      # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
      # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
      # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
      # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
      # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
      # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
      # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
      # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
      # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
      # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
      # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
      # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
      # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
      # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
      # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
      # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
      # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
      # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
      # autorelease]; return result; ` // ... Example (JavaScript): // ... var
      # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
      # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
      # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
      # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
      # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
      # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
      # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
      # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
      # / ...
      class GoogleTypeColor
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is, the
        # final pixel color is defined by the equation: `pixel color = alpha * (this
        # color) + (1.0 - alpha) * (background color)` This means that a value of 1.0
        # corresponds to a solid color, whereas a value of 0.0 corresponds to a
        # completely transparent color. This uses a wrapper message rather than a simple
        # float scalar so that it is possible to distinguish between a default value and
        # the value being unset. If omitted, this color object is rendered as a solid
        # color (as if the alpha value had been explicitly given a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class GoogleTypeDateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::DocumentaiV1::GoogleTypeTimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents an amount of money with its currency type.
      class GoogleTypeMoney
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar. It is not intended to model geographical locations (roads,
      # towns, mountains). In typical usage an address would be created via user input
      # or from importing existing data, depending on the type of process. Advice on
      # address input / editing: - Use an internationalization-ready address widget
      # such as https://github.com/google/libaddressinput) - Users should not be
      # presented with UI elements for input or editing of fields outside countries
      # where that field is used. For more guidance on how to use this schema, please
      # see: https://support.google.com/business/answer/6397478
      class GoogleTypePostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address. Because
        # values in address_lines do not have type information and may sometimes contain
        # multiple values in a single field (e.g. "Austin, TX"), it is important that
        # the line order is clear. The order of address lines should be "envelope order"
        # for the country/region of the address. In places where this can vary (e.g.
        # Japan), address_language is used to make it explicit (e.g. "ja" for large-to-
        # small ordering and "ja-Latn" or "en" for small-to-large). This way, the most
        # specific line of an address can be selected based on the language. The minimum
        # permitted structural representation of an address consists of a region_code
        # with all remaining information placed in the address_lines. It would be
        # possible to format such an address very approximately without geocoding, but
        # no semantic reasoning could be made about any of the address components until
        # it was at least partially resolved. Creating an address only containing a
        # region_code and address_lines, and then geocoding is the recommended way to
        # handle completely unstructured addresses (as opposed to guessing which parts
        # of the address should be localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region. For example, this can be a state, a province,
        # an oblast, or a prefecture. Specifically, for Spain this is the province and
        # not the autonomous community (e.g. "Barcelona" and not "Catalonia"). Many
        # countries don't use an administrative area in postal addresses. E.g. in
        # Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if known).
        # This is often the UI language of the input form or is expected to match one of
        # the languages used in the address' country/region, or their transliterated
        # equivalents. This can affect formatting in certain countries, but is not
        # critical to the correctness of the data and will never affect any validation
        # or other non-formatting related operations. If this value is not known, it
        # should be omitted (rather than specifying a possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address. Examples:
        # US city, IT comune, UK post town. In regions of the world where localities are
        # not well defined or do not fit into this structure well, leave locality empty
        # and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require postal
        # codes to be present, but where they are used, they may trigger additional
        # validation with other parts of the address (e.g. state/zip validation in the U.
        # S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address. This field may, under certain
        # circumstances, contain multiline information. For example, it might contain "
        # care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This is never
        # inferred and it is up to the user to ensure the value is correct. See https://
        # cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/
        # territory_information.html for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision. All new revisions **must** be backward compatible with
        # old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used in most
        # regions. Where it is used, the value is either a string like "CEDEX",
        # optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
        # representing the "sector code" (Jamaica), "delivery area indicator" (Malawi)
        # or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address. For example, this can be neighborhoods,
        # boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class GoogleTypeTimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
    end
  end
end
