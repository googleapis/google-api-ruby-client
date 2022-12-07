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
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteDataLabelingJobOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3RevisionReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1Barcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1BatchDocumentsInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1BatchProcessMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1BatchProcessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1BatchProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1CommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DeleteProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentEntityRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScores
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageSymbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTableTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTableTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentPageVisualElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentProvenanceParent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentRevisionHumanReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentShardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentStyleFontSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentTextAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DocumentTextChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1FetchProcessorTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1GcsDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1GcsDocuments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1GcsPrefix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1HumanReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ListProcessorTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ListProcessorVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ListProcessorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ProcessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1Processor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ProcessorType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ProcessorTypeLocationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ProcessorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1RawDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1alpha1AnalyzeHitlDataMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1alpha1CommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1Barcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntityRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageSymbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentShardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta1Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2Barcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntityRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageSymbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentShardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta2Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3CommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3HumanReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudLocationLocation
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
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeColor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypePostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          property :error_document_count, as: 'errorDocumentCount'
          collection :individual_batch_delete_statuses, as: 'individualBatchDeleteStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          property :dest_dataset_type, as: 'destDatasetType'
          property :dest_split_type, as: 'destSplitType'
          collection :individual_batch_move_statuses, as: 'individualBatchMoveStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :resource, as: 'resource'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteDataLabelingJobOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_managed_doc_id, as: 'gcsManagedDocId', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId::Representation
      
          property :revision_reference, as: 'revisionReference', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3RevisionReference, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3RevisionReference::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cw_doc_id, as: 'cwDocId'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation, as: 'evaluation'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :individual_export_statuses, as: 'individualExportStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus::Representation
      
          collection :split_export_stats, as: 'splitExportStats', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :split_type, as: 'splitType'
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :import_config_validation_results, as: 'importConfigValidationResults', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult::Representation
      
          collection :individual_import_statuses, as: 'individualImportStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_gcs_source, as: 'inputGcsSource'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :dataset_resync_statuses, as: 'datasetResyncStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus::Representation
      
          collection :individual_document_resync_statuses, as: 'individualDocumentResyncStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_inconsistency_type, as: 'datasetInconsistencyType'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :document_inconsistency_type, as: 'documentInconsistencyType'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3RevisionReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_processor_version, as: 'latestProcessorVersion'
          property :revision_case, as: 'revisionCase'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          property :test_dataset_validation, as: 'testDatasetValidation', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
          property :training_dataset_validation, as: 'trainingDatasetValidation', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_error_count, as: 'datasetErrorCount'
          collection :dataset_errors, as: 'datasetErrors', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
          property :document_error_count, as: 'documentErrorCount'
          collection :document_errors, as: 'documentErrors', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1Barcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :raw_value, as: 'rawValue'
          property :value_format, as: 'valueFormat'
        end
      end
      
      class GoogleCloudDocumentaiV1BatchDocumentsInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_documents, as: 'gcsDocuments', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsDocuments, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsDocuments::Representation
      
          property :gcs_prefix, as: 'gcsPrefix', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsPrefix, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsPrefix::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :individual_process_statuses, as: 'individualProcessStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus::Representation
      
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_review_status, as: 'humanReviewStatus', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1HumanReviewStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1HumanReviewStatus::Representation
      
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_output_config, as: 'documentOutputConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfig::Representation
      
          property :input_documents, as: 'inputDocuments', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchDocumentsInputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BatchDocumentsInputConfig::Representation
      
          property :skip_human_review, as: 'skipHumanReview'
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1NormalizedVertex, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1NormalizedVertex::Representation
      
          collection :vertices, as: 'vertices', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Vertex, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Vertex::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1CommonOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :resource, as: 'resource'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1DeleteProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntity, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntity::Representation
      
          collection :entity_relations, as: 'entityRelations', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntityRelation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntityRelation::Representation
      
          property :error, as: 'error', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
          property :mime_type, as: 'mimeType'
          collection :pages, as: 'pages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPage::Representation
      
          collection :revisions, as: 'revisions', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentRevision, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentRevision::Representation
      
          property :shard_info, as: 'shardInfo', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentShardInfo, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentShardInfo::Representation
      
          property :text, as: 'text'
          collection :text_changes, as: 'textChanges', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextChange, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextChange::Representation
      
          collection :text_styles, as: 'textStyles', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentStyle, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentStyle::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :id, as: 'id'
          property :mention_id, as: 'mentionId'
          property :mention_text, as: 'mentionText'
          property :normalized_value, as: 'normalizedValue', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntityNormalizedValue, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntityNormalizedValue::Representation
      
          property :page_anchor, as: 'pageAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageAnchor::Representation
      
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntity, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentEntity::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
          property :redacted, as: 'redacted'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_value, as: 'addressValue', class: Google::Apis::DocumentaiV1::GoogleTypePostalAddress, decorator: Google::Apis::DocumentaiV1::GoogleTypePostalAddress::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DocumentaiV1::GoogleTypeDate, decorator: Google::Apis::DocumentaiV1::GoogleTypeDate::Representation
      
          property :datetime_value, as: 'datetimeValue', class: Google::Apis::DocumentaiV1::GoogleTypeDateTime, decorator: Google::Apis::DocumentaiV1::GoogleTypeDateTime::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, as: 'integerValue'
          property :money_value, as: 'moneyValue', class: Google::Apis::DocumentaiV1::GoogleTypeMoney, decorator: Google::Apis::DocumentaiV1::GoogleTypeMoney::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentEntityRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
          property :relation, as: 'relation'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_output_config, as: 'gcsOutputConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :gcs_uri, as: 'gcsUri'
          property :sharding_config, as: 'shardingConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pages_overlap, as: 'pagesOverlap'
          property :pages_per_shard, as: 'pagesPerShard'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageBlock, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageBlock::Representation
      
          collection :detected_barcodes, as: 'detectedBarcodes', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedBarcode, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedBarcode::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :dimension, as: 'dimension', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDimension, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDimension::Representation
      
          collection :form_fields, as: 'formFields', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageFormField, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageFormField::Representation
      
          property :image, as: 'image', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImage::Representation
      
          property :image_quality_scores, as: 'imageQualityScores', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScores, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScores::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLine, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLine::Representation
      
          property :page_number, as: 'pageNumber'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageParagraph, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageParagraph::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageSymbol, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageSymbol::Representation
      
          collection :tables, as: 'tables', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTable, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTable::Representation
      
          collection :tokens, as: 'tokens', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageToken, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageToken::Representation
      
          collection :transforms, as: 'transforms', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageMatrix, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageMatrix::Representation
      
          collection :visual_elements, as: 'visualElements', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageVisualElement, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageVisualElement::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :page_refs, as: 'pageRefs', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageAnchorPageRef, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageAnchorPageRef::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BoundingPoly, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :layout_id, as: 'layoutId'
          property :layout_type, as: 'layoutType'
          property :page, :numeric_string => true, as: 'page'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :barcode, as: 'barcode', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Barcode, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Barcode::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :unit, as: 'unit'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corrected_key_text, as: 'correctedKeyText'
          property :corrected_value_text, as: 'correctedValueText'
          property :field_name, as: 'fieldName', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :field_value, as: 'fieldValue', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          collection :name_detected_languages, as: 'nameDetectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
          collection :value_detected_languages, as: 'valueDetectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :height, as: 'height'
          property :mime_type, as: 'mimeType'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScores
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_defects, as: 'detectedDefects', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect::Representation
      
          property :quality_score, as: 'qualityScore'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BoundingPoly, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :orientation, as: 'orientation'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cols, as: 'cols'
          property :data, :base64 => true, as: 'data'
          property :rows, as: 'rows'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageSymbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableRow::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTableTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :col_span, as: 'colSpan'
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTableTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableCell, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTableTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentPageVisualElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentPageLayout::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :parents, as: 'parents', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenanceParent, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenanceParent::Representation
      
          property :revision, as: 'revision'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentProvenanceParent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :index, as: 'index'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :create_time, as: 'createTime'
          property :human_review, as: 'humanReview', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentRevisionHumanReview, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentRevisionHumanReview::Representation
      
          property :id, as: 'id'
          collection :parent, as: 'parent'
          collection :parent_ids, as: 'parentIds'
          property :processor, as: 'processor'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentRevisionHumanReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityType, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityType::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :base_types, as: 'baseTypes'
          property :display_name, as: 'displayName'
          property :enum_values, as: 'enumValues', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues::Representation
      
          property :name, as: 'name'
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :occurrence_type, as: 'occurrenceType'
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_allow_multiple_labels, as: 'documentAllowMultipleLabels'
          property :document_splitter, as: 'documentSplitter'
          property :prefixed_naming_on_properties, as: 'prefixedNamingOnProperties'
          property :skip_naming_validation, as: 'skipNamingValidation'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentShardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :shard_index, :numeric_string => true, as: 'shardIndex'
          property :text_offset, :numeric_string => true, as: 'textOffset'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1::GoogleTypeColor::Representation
      
          property :color, as: 'color', class: Google::Apis::DocumentaiV1::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1::GoogleTypeColor::Representation
      
          property :font_family, as: 'fontFamily'
          property :font_size, as: 'fontSize', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentStyleFontSize, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentStyleFontSize::Representation
      
          property :font_weight, as: 'fontWeight'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor::Representation
      
          property :text_decoration, as: 'textDecoration'
          property :text_style, as: 'textStyle'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentStyleFontSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentTextAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          collection :text_segments, as: 'textSegments', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDocumentaiV1DocumentTextChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed_text, as: 'changedText'
          collection :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentProvenance::Representation
      
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1FetchProcessorTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :processor_types, as: 'processorTypes', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1GcsDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1GcsDocuments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsDocument, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1GcsDocument::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1GcsPrefix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri_prefix, as: 'gcsUriPrefix'
        end
      end
      
      class GoogleCloudDocumentaiV1HumanReviewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_review_operation, as: 'humanReviewOperation'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
        end
      end
      
      class GoogleCloudDocumentaiV1ListProcessorTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processor_types, as: 'processorTypes', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorType::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1ListProcessorVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processor_versions, as: 'processorVersions', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersion::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1ListProcessorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processors, as: 'processors', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Processor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1ProcessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :inline_document, as: 'inlineDocument', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document::Representation
      
          property :raw_document, as: 'rawDocument', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1RawDocument, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1RawDocument::Representation
      
          property :skip_human_review, as: 'skipHumanReview'
        end
      end
      
      class GoogleCloudDocumentaiV1ProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document::Representation
      
          property :human_review_status, as: 'humanReviewStatus', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1HumanReviewStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1HumanReviewStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1Processor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :default_processor_version, as: 'defaultProcessorVersion'
          property :display_name, as: 'displayName'
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
          property :process_endpoint, as: 'processEndpoint'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1ProcessorType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_creation, as: 'allowCreation'
          collection :available_locations, as: 'availableLocations', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorTypeLocationInfo, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorTypeLocationInfo::Representation
      
          property :category, as: 'category'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          collection :sample_document_uris, as: 'sampleDocumentUris'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1ProcessorTypeLocationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_id, as: 'locationId'
        end
      end
      
      class GoogleCloudDocumentaiV1ProcessorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deprecation_info, as: 'deprecationInfo', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo::Representation
      
          property :display_name, as: 'displayName'
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema::Representation
      
          property :google_managed, as: 'googleManaged'
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecation_time, as: 'deprecationTime'
          property :replacement_processor_version, as: 'replacementProcessorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1RawDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
          property :question_id, as: 'questionId'
        end
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1DocumentSchema::Representation
      
          property :enable_schema_validation, as: 'enableSchemaValidation'
          property :inline_document, as: 'inlineDocument', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1Document::Representation
      
          property :priority, as: 'priority'
        end
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination'
          property :rejection_reason, as: 'rejectionReason'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_processor_version, as: 'defaultProcessorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1alpha1AnalyzeHitlDataMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1alpha1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1alpha1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1alpha1CommonOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :resource, as: 'resource'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1Barcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :raw_value, as: 'rawValue'
          property :value_format, as: 'valueFormat'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1ProcessDocumentResponse, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1ProcessDocumentResponse::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1NormalizedVertex, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1NormalizedVertex::Representation
      
          collection :vertices, as: 'vertices', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1Vertex, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1Vertex::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntity, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntity::Representation
      
          collection :entity_relations, as: 'entityRelations', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntityRelation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntityRelation::Representation
      
          property :error, as: 'error', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
          property :mime_type, as: 'mimeType'
          collection :pages, as: 'pages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPage::Representation
      
          collection :revisions, as: 'revisions', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentRevision, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentRevision::Representation
      
          property :shard_info, as: 'shardInfo', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentShardInfo, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentShardInfo::Representation
      
          property :text, as: 'text'
          collection :text_changes, as: 'textChanges', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextChange, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextChange::Representation
      
          collection :text_styles, as: 'textStyles', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentStyle, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentStyle::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :id, as: 'id'
          property :mention_id, as: 'mentionId'
          property :mention_text, as: 'mentionText'
          property :normalized_value, as: 'normalizedValue', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue::Representation
      
          property :page_anchor, as: 'pageAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageAnchor::Representation
      
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntity, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentEntity::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
          property :redacted, as: 'redacted'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_value, as: 'addressValue', class: Google::Apis::DocumentaiV1::GoogleTypePostalAddress, decorator: Google::Apis::DocumentaiV1::GoogleTypePostalAddress::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DocumentaiV1::GoogleTypeDate, decorator: Google::Apis::DocumentaiV1::GoogleTypeDate::Representation
      
          property :datetime_value, as: 'datetimeValue', class: Google::Apis::DocumentaiV1::GoogleTypeDateTime, decorator: Google::Apis::DocumentaiV1::GoogleTypeDateTime::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, as: 'integerValue'
          property :money_value, as: 'moneyValue', class: Google::Apis::DocumentaiV1::GoogleTypeMoney, decorator: Google::Apis::DocumentaiV1::GoogleTypeMoney::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentEntityRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
          property :relation, as: 'relation'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageBlock, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageBlock::Representation
      
          collection :detected_barcodes, as: 'detectedBarcodes', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :dimension, as: 'dimension', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDimension, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDimension::Representation
      
          collection :form_fields, as: 'formFields', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageFormField, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageFormField::Representation
      
          property :image, as: 'image', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImage::Representation
      
          property :image_quality_scores, as: 'imageQualityScores', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLine, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLine::Representation
      
          property :page_number, as: 'pageNumber'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageParagraph, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageParagraph::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageSymbol, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageSymbol::Representation
      
          collection :tables, as: 'tables', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTable, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTable::Representation
      
          collection :tokens, as: 'tokens', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageToken, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageToken::Representation
      
          collection :transforms, as: 'transforms', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageMatrix, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageMatrix::Representation
      
          collection :visual_elements, as: 'visualElements', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageVisualElement, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageVisualElement::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :page_refs, as: 'pageRefs', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1BoundingPoly, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :layout_id, as: 'layoutId'
          property :layout_type, as: 'layoutType'
          property :page, :numeric_string => true, as: 'page'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedBarcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :barcode, as: 'barcode', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1Barcode, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1Barcode::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :unit, as: 'unit'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corrected_key_text, as: 'correctedKeyText'
          property :corrected_value_text, as: 'correctedValueText'
          property :field_name, as: 'fieldName', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :field_value, as: 'fieldValue', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          collection :name_detected_languages, as: 'nameDetectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
          collection :value_detected_languages, as: 'valueDetectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :height, as: 'height'
          property :mime_type, as: 'mimeType'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScores
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_defects, as: 'detectedDefects', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect::Representation
      
          property :quality_score, as: 'qualityScore'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageImageQualityScoresDetectedDefect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1BoundingPoly, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :orientation, as: 'orientation'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cols, as: 'cols'
          property :data, :base64 => true, as: 'data'
          property :rows, as: 'rows'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageSymbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :col_span, as: 'colSpan'
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentPageLayout::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :parents, as: 'parents', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenanceParent, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenanceParent::Representation
      
          property :revision, as: 'revision'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :index, as: 'index'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :create_time, as: 'createTime'
          property :human_review, as: 'humanReview', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview::Representation
      
          property :id, as: 'id'
          collection :parent, as: 'parent'
          collection :parent_ids, as: 'parentIds'
          property :processor, as: 'processor'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentShardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :shard_index, :numeric_string => true, as: 'shardIndex'
          property :text_offset, :numeric_string => true, as: 'textOffset'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1::GoogleTypeColor::Representation
      
          property :color, as: 'color', class: Google::Apis::DocumentaiV1::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1::GoogleTypeColor::Representation
      
          property :font_family, as: 'fontFamily'
          property :font_size, as: 'fontSize', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentStyleFontSize::Representation
      
          property :font_weight, as: 'fontWeight'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
          property :text_decoration, as: 'textDecoration'
          property :text_style, as: 'textStyle'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          collection :text_segments, as: 'textSegments', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1DocumentTextChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed_text, as: 'changedText'
          collection :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentProvenance::Representation
      
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1GcsSource, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1GcsSource::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1GcsDestination, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1GcsDestination::Representation
      
          property :pages_per_shard, as: 'pagesPerShard'
        end
      end
      
      class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1InputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1InputConfig::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1OutputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta1OutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta1Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2Barcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :raw_value, as: 'rawValue'
          property :value_format, as: 'valueFormat'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :responses, as: 'responses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2ProcessDocumentResponse, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2ProcessDocumentResponse::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2NormalizedVertex, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2NormalizedVertex::Representation
      
          collection :vertices, as: 'vertices', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2Vertex, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2Vertex::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntity, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntity::Representation
      
          collection :entity_relations, as: 'entityRelations', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntityRelation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntityRelation::Representation
      
          property :error, as: 'error', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
          collection :labels, as: 'labels', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentLabel, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentLabel::Representation
      
          property :mime_type, as: 'mimeType'
          collection :pages, as: 'pages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPage::Representation
      
          collection :revisions, as: 'revisions', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentRevision, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentRevision::Representation
      
          property :shard_info, as: 'shardInfo', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentShardInfo, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentShardInfo::Representation
      
          property :text, as: 'text'
          collection :text_changes, as: 'textChanges', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextChange, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextChange::Representation
      
          collection :text_styles, as: 'textStyles', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentStyle, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentStyle::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :id, as: 'id'
          property :mention_id, as: 'mentionId'
          property :mention_text, as: 'mentionText'
          property :normalized_value, as: 'normalizedValue', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue::Representation
      
          property :page_anchor, as: 'pageAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageAnchor::Representation
      
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntity, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentEntity::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
          property :redacted, as: 'redacted'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_value, as: 'addressValue', class: Google::Apis::DocumentaiV1::GoogleTypePostalAddress, decorator: Google::Apis::DocumentaiV1::GoogleTypePostalAddress::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DocumentaiV1::GoogleTypeDate, decorator: Google::Apis::DocumentaiV1::GoogleTypeDate::Representation
      
          property :datetime_value, as: 'datetimeValue', class: Google::Apis::DocumentaiV1::GoogleTypeDateTime, decorator: Google::Apis::DocumentaiV1::GoogleTypeDateTime::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, as: 'integerValue'
          property :money_value, as: 'moneyValue', class: Google::Apis::DocumentaiV1::GoogleTypeMoney, decorator: Google::Apis::DocumentaiV1::GoogleTypeMoney::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentEntityRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
          property :relation, as: 'relation'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automl_model, as: 'automlModel'
          property :confidence, as: 'confidence'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageBlock, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageBlock::Representation
      
          collection :detected_barcodes, as: 'detectedBarcodes', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :dimension, as: 'dimension', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDimension, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDimension::Representation
      
          collection :form_fields, as: 'formFields', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageFormField, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageFormField::Representation
      
          property :image, as: 'image', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImage::Representation
      
          property :image_quality_scores, as: 'imageQualityScores', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLine, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLine::Representation
      
          property :page_number, as: 'pageNumber'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageParagraph, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageParagraph::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageSymbol, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageSymbol::Representation
      
          collection :tables, as: 'tables', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTable, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTable::Representation
      
          collection :tokens, as: 'tokens', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageToken, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageToken::Representation
      
          collection :transforms, as: 'transforms', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageMatrix, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageMatrix::Representation
      
          collection :visual_elements, as: 'visualElements', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageVisualElement, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageVisualElement::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :page_refs, as: 'pageRefs', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2BoundingPoly, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :layout_id, as: 'layoutId'
          property :layout_type, as: 'layoutType'
          property :page, :numeric_string => true, as: 'page'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedBarcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :barcode, as: 'barcode', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2Barcode, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2Barcode::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :unit, as: 'unit'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corrected_key_text, as: 'correctedKeyText'
          property :corrected_value_text, as: 'correctedValueText'
          property :field_name, as: 'fieldName', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :field_value, as: 'fieldValue', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          collection :name_detected_languages, as: 'nameDetectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
          collection :value_detected_languages, as: 'valueDetectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :height, as: 'height'
          property :mime_type, as: 'mimeType'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScores
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_defects, as: 'detectedDefects', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect::Representation
      
          property :quality_score, as: 'qualityScore'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageImageQualityScoresDetectedDefect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2BoundingPoly, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :orientation, as: 'orientation'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cols, as: 'cols'
          property :data, :base64 => true, as: 'data'
          property :rows, as: 'rows'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageSymbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :col_span, as: 'colSpan'
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentPageLayout::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :parents, as: 'parents', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenanceParent, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenanceParent::Representation
      
          property :revision, as: 'revision'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :index, as: 'index'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :create_time, as: 'createTime'
          property :human_review, as: 'humanReview', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview::Representation
      
          property :id, as: 'id'
          collection :parent, as: 'parent'
          collection :parent_ids, as: 'parentIds'
          property :processor, as: 'processor'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentShardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :shard_index, :numeric_string => true, as: 'shardIndex'
          property :text_offset, :numeric_string => true, as: 'textOffset'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1::GoogleTypeColor::Representation
      
          property :color, as: 'color', class: Google::Apis::DocumentaiV1::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1::GoogleTypeColor::Representation
      
          property :font_family, as: 'fontFamily'
          property :font_size, as: 'fontSize', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentStyleFontSize::Representation
      
          property :font_weight, as: 'fontWeight'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
          property :text_decoration, as: 'textDecoration'
          property :text_style, as: 'textStyle'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          collection :text_segments, as: 'textSegments', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2DocumentTextChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed_text, as: 'changedText'
          collection :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentProvenance::Representation
      
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contents, :base64 => true, as: 'contents'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2GcsSource, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2GcsSource::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2GcsDestination, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2GcsDestination::Representation
      
          property :pages_per_shard, as: 'pagesPerShard'
        end
      end
      
      class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2InputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2InputConfig::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2OutputConfig, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta2OutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta2Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :individual_process_statuses, as: 'individualProcessStatuses', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus::Representation
      
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_review_operation, as: 'humanReviewOperation'
          property :human_review_status, as: 'humanReviewStatus', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3HumanReviewStatus, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3HumanReviewStatus::Representation
      
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3CommonOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :resource, as: 'resource'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation, as: 'evaluation'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3HumanReviewStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_review_operation, as: 'humanReviewOperation'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
          property :create_time, as: 'createTime'
          property :question_id, as: 'questionId'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination'
          property :rejection_reason, as: 'rejectionReason'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
          property :test_dataset_validation, as: 'testDatasetValidation', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
          property :training_dataset_validation, as: 'trainingDatasetValidation', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_error_count, as: 'datasetErrorCount'
          collection :dataset_errors, as: 'datasetErrors', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
          property :document_error_count, as: 'documentErrorCount'
          collection :document_errors, as: 'documentErrors', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DocumentaiV1::GoogleCloudLocationLocation, decorator: Google::Apis::DocumentaiV1::GoogleCloudLocationLocation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudLocationLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DocumentaiV1::GoogleLongrunningOperation, decorator: Google::Apis::DocumentaiV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DocumentaiV1::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeColor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::DocumentaiV1::GoogleTypeTimeZone, decorator: Google::Apis::DocumentaiV1::GoogleTypeTimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeMoney
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class GoogleTypePostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
