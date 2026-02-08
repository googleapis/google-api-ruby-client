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
    module DocumentaiV1beta3
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleChildAlignmentRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleEntityAlignmentRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldOccurrences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldRegex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
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
      
      class GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadataIndividualBatchUpdateStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsResponse
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
      
      class GoogleCloudDocumentaiUiv1beta3DocumentIdUnmanagedDocumentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeEnumValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaMetadata
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
      
      class GoogleCloudDocumentaiUiv1beta3EntityTypeMetadata
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
      
      class GoogleCloudDocumentaiUiv1beta3EvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluationReference
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
      
      class GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadataEntityQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3FieldTierMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata
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
      
      class GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3Processor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionAlias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionDeprecationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3PropertyMetadata
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
      
      class GoogleCloudDocumentaiUiv1beta3RevisionRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SampleDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponseSelectedDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SchemaEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata
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
      
      class GoogleCloudDocumentaiUiv1beta3SummaryOptions
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
      
      class GoogleCloudDocumentaiUiv1beta3UpdateProcessorVersionMetadata
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
      
      class GoogleCloudDocumentaiV1BatchProcessResponse
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
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1HumanReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
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
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1TrainProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1TrainProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Barcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDatasetDocuments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig
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
      
      class GoogleCloudDocumentaiV1beta3BatchProcessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3CommonOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetGcsManagedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig
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
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
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
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentAnnotations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentBlobAsset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntitiesRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityRelation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutputValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentIdGcsManagedDocumentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageBlock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageFormField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageLayout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageLine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageSymbol
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageVisualElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentProvenanceParent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentShardInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentStyleFontSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentTextAnchor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentTextChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Documents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EntityTypeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Evaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationCounters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationEvaluationRevision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3FieldExtractionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GcsDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GcsDocuments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GcsPrefix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GenerateSchemaVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GenerateSchemaVersionRequestGenerateSchemaVersionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GenerateSchemaVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3GetDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3HumanReviewStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListEvaluationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListProcessorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListSchemaVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3NextSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3OcrConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3OcrConfigHints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Processor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionAlias
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3PropertyMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3RawDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3RawDocuments
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3RevisionRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SchemaGenerationHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SchemaGenerationIteration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SchemaVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3SummaryOptions
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
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData
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
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3UpdateDatasetOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3UpdateProcessorVersionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDocumentaiV1beta3Vertex
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
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :validation_rules, as: 'validationRules', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRule, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRule::Representation
      
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :child_alignment_rule, as: 'childAlignmentRule', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleChildAlignmentRule, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleChildAlignmentRule::Representation
      
          property :description, as: 'description'
          property :entity_alignment_rule, as: 'entityAlignmentRule', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleEntityAlignmentRule, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleEntityAlignmentRule::Representation
      
          property :field_occurrences, as: 'fieldOccurrences', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldOccurrences, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldOccurrences::Representation
      
          property :field_regex, as: 'fieldRegex', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldRegex, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldRegex::Representation
      
          property :form_validation, as: 'formValidation', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidation, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidation::Representation
      
          property :name, as: 'name'
          property :rule_id, as: 'ruleId'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alignment_type, as: 'alignmentType'
          property :tolerance, as: 'tolerance'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleChildAlignmentRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alignment_rule, as: 'alignmentRule', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule::Representation
      
          collection :child_fields, as: 'childFields', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField::Representation
      
          property :parent_field, as: 'parentField', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField::Representation
      
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :float_value, as: 'floatValue'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleEntityAlignmentRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alignment_rule, as: 'alignmentRule', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleAlignmentRule::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField::Representation
      
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant::Representation
      
          property :field_name, as: 'fieldName'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldOccurrences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField::Representation
      
          property :max_occurrences, as: 'maxOccurrences'
          property :min_occurrences, as: 'minOccurrences'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFieldRegex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField::Representation
      
          property :pattern, as: 'pattern'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :left_operand, as: 'leftOperand', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation::Representation
      
          property :right_operand, as: 'rightOperand', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation::Representation
      
          property :validation_operator, as: 'validationOperator'
        end
      end
      
      class CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :constants, as: 'constants', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleConstant::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleField::Representation
      
          property :operation_type, as: 'operationType'
          collection :operations, as: 'operations', class: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation, decorator: Google::Apis::DocumentaiV1beta3::CloudAiDocumentaiLabHifiaToolsValidationValidatorInputValidationRuleFormValidationOperation::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :individual_auto_label_statuses, as: 'individualAutoLabelStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsMetadataIndividualAutoLabelStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3AutoLabelDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          property :error_document_count, as: 'errorDocumentCount'
          collection :individual_batch_delete_statuses, as: 'individualBatchDeleteStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          property :dest_dataset_type, as: 'destDatasetType'
          property :dest_split_type, as: 'destSplitType'
          collection :individual_batch_move_statuses, as: 'individualBatchMoveStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadataIndividualBatchMoveStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :individual_batch_update_statuses, as: 'individualBatchUpdateStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadataIndividualBatchUpdateStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadataIndividualBatchUpdateStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsMetadataIndividualBatchUpdateStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3BatchUpdateDocumentsResponse
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
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
          property :gcs_managed_doc_id, as: 'gcsManagedDocId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId::Representation
      
          property :revision_ref, as: 'revisionRef', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3RevisionRef, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3RevisionRef::Representation
      
          property :unmanaged_doc_id, as: 'unmanagedDocId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentIdUnmanagedDocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentIdUnmanagedDocumentId::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentIdGcsManagedDocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cw_doc_id, as: 'cwDocId'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentIdUnmanagedDocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_id, as: 'docId'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :document_prompt, as: 'documentPrompt'
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityType, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityType::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :base_types, as: 'baseTypes'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :entity_type_metadata, as: 'entityTypeMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EntityTypeMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EntityTypeMetadata::Representation
      
          property :enum_values, as: 'enumValues', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeEnumValues, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeEnumValues::Representation
      
          property :name, as: 'name'
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeProperty, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeProperty::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeEnumValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaEntityTypeProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :method_prop, as: 'method'
          property :name, as: 'name'
          property :occurrence_type, as: 'occurrenceType'
          property :property_metadata, as: 'propertyMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3PropertyMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3PropertyMetadata::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3DocumentSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_allow_multiple_labels, as: 'documentAllowMultipleLabels'
          property :document_splitter, as: 'documentSplitter'
          property :prefixed_naming_on_properties, as: 'prefixedNamingOnProperties'
          property :skip_naming_validation, as: 'skipNamingValidation'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EntityTypeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_tier_metadata, as: 'fieldTierMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldTierMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldTierMetadata::Representation
      
          property :human_review_labeling_metadata, as: 'humanReviewLabelingMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata::Representation
      
          property :human_review_metadata, as: 'humanReviewMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata::Representation
      
          property :inactive, as: 'inactive'
          property :schema_editability_metadata, as: 'schemaEditabilityMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata::Representation
      
          property :schema_inference_metadata, as: 'schemaInferenceMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation, as: 'evaluation'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :f1_score, as: 'f1Score'
          property :false_negatives_count, as: 'falseNegativesCount'
          property :false_positives_count, as: 'falsePositivesCount'
          property :ground_truth_document_count, as: 'groundTruthDocumentCount'
          property :ground_truth_occurrences_count, as: 'groundTruthOccurrencesCount'
          property :precision, as: 'precision'
          property :predicted_document_count, as: 'predictedDocumentCount'
          property :predicted_occurrences_count, as: 'predictedOccurrencesCount'
          property :recall, as: 'recall'
          property :total_documents_count, as: 'totalDocumentsCount'
          property :true_positives_count, as: 'truePositivesCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3EvaluationReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_metrics, as: 'aggregateMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EvaluationMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EvaluationMetrics::Representation
      
          property :aggregate_metrics_exact, as: 'aggregateMetricsExact', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EvaluationMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EvaluationMetrics::Representation
      
          property :evaluation, as: 'evaluation'
          property :operation, as: 'operation'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :individual_export_statuses, as: 'individualExportStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus::Representation
      
          collection :split_export_stats, as: 'splitExportStats', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataSplitExportStat::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportDocumentsMetadataIndividualExportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_query, as: 'entityQuery', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadataEntityQuery, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadataEntityQuery::Representation
      
          property :summary_options, as: 'summaryOptions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SummaryOptions, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SummaryOptions::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadataEntityQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_entity_query, as: 'userEntityQuery'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3FieldTierMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tier_level, as: 'tierLevel'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_normalization_editing, as: 'enableNormalizationEditing'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :enable_validation, as: 'enableValidation'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :import_config_validation_results, as: 'importConfigValidationResults', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult::Representation
      
          collection :individual_import_statuses, as: 'individualImportStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataImportConfigValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_gcs_source, as: 'inputGcsSource'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadataIndividualImportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_document_id, as: 'outputDocumentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ImportProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3Processor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_schema_version, as: 'activeSchemaVersion'
          property :create_time, as: 'createTime'
          property :default_processor_version, as: 'defaultProcessorVersion'
          property :display_name, as: 'displayName'
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
          property :process_endpoint, as: 'processEndpoint'
          collection :processor_version_aliases, as: 'processorVersionAliases', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionAlias, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionAlias::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deployment_allowed, as: 'deploymentAllowed'
          property :deprecation_info, as: 'deprecationInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionDeprecationInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionDeprecationInfo::Representation
      
          property :display_name, as: 'displayName'
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentSchema::Representation
      
          property :gen_ai_model_info, as: 'genAiModelInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfo::Representation
      
          property :google_managed, as: 'googleManaged'
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
          property :latest_evaluation, as: 'latestEvaluation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EvaluationReference, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3EvaluationReference::Representation
      
          property :model_type, as: 'modelType'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :schema, as: 'schema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3Schema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3Schema::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionAlias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionDeprecationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecation_time, as: 'deprecationTime'
          property :replacement_processor_version, as: 'replacementProcessorVersion'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_gen_ai_model_info, as: 'customGenAiModelInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo::Representation
      
          property :foundation_gen_ai_model_info, as: 'foundationGenAiModelInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_processor_version_id, as: 'baseProcessorVersionId'
          property :custom_model_type, as: 'customModelType'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finetuning_allowed, as: 'finetuningAllowed'
          property :min_train_labeled_documents, as: 'minTrainLabeledDocuments'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3PropertyMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_extraction_metadata, as: 'fieldExtractionMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldExtractionMetadata::Representation
      
          property :field_tier_metadata, as: 'fieldTierMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldTierMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3FieldTierMetadata::Representation
      
          property :human_review_labeling_metadata, as: 'humanReviewLabelingMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewLabelingMetadata::Representation
      
          property :human_review_metadata, as: 'humanReviewMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3HumanReviewValidationMetadata::Representation
      
          property :inactive, as: 'inactive'
          property :schema_editability_metadata, as: 'schemaEditabilityMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata::Representation
      
          property :schema_inference_metadata, as: 'schemaInferenceMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          collection :dataset_resync_statuses, as: 'datasetResyncStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus::Representation
      
          collection :individual_document_resync_statuses, as: 'individualDocumentResyncStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataDatasetResyncStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_inconsistency_type, as: 'datasetInconsistencyType'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetMetadataIndividualDocumentResyncStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3DocumentId::Representation
      
          property :document_inconsistency_type, as: 'documentInconsistencyType'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3ResyncDatasetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3RevisionRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_processor_version, as: 'latestProcessorVersion'
          property :revision_case, as: 'revisionCase'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SampleDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_test_status, as: 'sampleTestStatus', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
          property :sample_training_status, as: 'sampleTrainingStatus', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
          collection :selected_documents, as: 'selectedDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponseSelectedDocument, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponseSelectedDocument::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SampleDocumentsResponseSelectedDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEntityType, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEntityType::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SchemaEditabilityMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :editable, as: 'editable'
          collection :processor_versions, as: 'processorVersions'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SchemaEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_type, as: 'baseType'
          property :description, as: 'description'
          collection :enum_values, as: 'enumValues'
          property :hide, as: 'hide'
          property :method_prop, as: 'method'
          property :occurrence_type, as: 'occurrenceType'
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEntityType, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3SchemaEntityType::Representation
      
          property :source, as: 'source'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SchemaInferenceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inferred, as: 'inferred'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3SummaryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :length, as: 'length'
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
          property :test_dataset_validation, as: 'testDatasetValidation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
          property :training_dataset_validation, as: 'trainingDatasetValidation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_error_count, as: 'datasetErrorCount'
          collection :dataset_errors, as: 'datasetErrors', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
          property :document_error_count, as: 'documentErrorCount'
          collection :document_errors, as: 'documentErrors', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiUiv1beta3UpdateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :individual_process_statuses, as: 'individualProcessStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus::Representation
      
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_review_status, as: 'humanReviewStatus', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1HumanReviewStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1HumanReviewStatus::Representation
      
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1BatchProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DeleteProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1DisableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1EnableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1EvaluateProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation, as: 'evaluation'
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
      
      class GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
          property :question_id, as: 'questionId'
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1SetDefaultProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1TrainProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
          property :test_dataset_validation, as: 'testDatasetValidation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation::Representation
      
          property :training_dataset_validation, as: 'trainingDatasetValidation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1TrainProcessorVersionMetadataDatasetValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_error_count, as: 'datasetErrorCount'
          collection :dataset_errors, as: 'datasetErrors', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
          property :document_error_count, as: 'documentErrorCount'
          collection :document_errors, as: 'documentErrors', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1TrainProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1UndeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3Barcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :raw_value, as: 'rawValue'
          property :value_format, as: 'valueFormat'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDatasetDocuments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :individual_document_ids, as: 'individualDocumentIds', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :document_ids, as: 'documentIds', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
          property :error_document_count, as: 'errorDocumentCount'
          collection :individual_batch_delete_statuses, as: 'individualBatchDeleteStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsMetadataIndividualBatchDeleteStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_documents, as: 'datasetDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDatasetDocuments, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDatasetDocuments::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_documents, as: 'gcsDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocuments, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocuments::Representation
      
          property :gcs_prefix, as: 'gcsPrefix', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsPrefix, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsPrefix::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :individual_process_statuses, as: 'individualProcessStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus::Representation
      
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_review_operation, as: 'humanReviewOperation'
          property :human_review_status, as: 'humanReviewStatus', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3HumanReviewStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3HumanReviewStatus::Representation
      
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_gcs_destination, as: 'outputGcsDestination'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_output_config, as: 'documentOutputConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentOutputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentOutputConfig::Representation
      
          collection :input_configs, as: 'inputConfigs', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig::Representation
      
          property :input_documents, as: 'inputDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig::Representation
      
          hash :labels, as: 'labels'
          property :output_config, as: 'outputConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig::Representation
      
          property :process_options, as: 'processOptions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptions, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptions::Representation
      
          property :skip_human_review, as: 'skipHumanReview'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BatchProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3NormalizedVertex, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3NormalizedVertex::Representation
      
          collection :vertices, as: 'vertices', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Vertex, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Vertex::Representation
      
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
      
      class GoogleCloudDocumentaiV1beta3Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_warehouse_config, as: 'documentWarehouseConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig::Representation
      
          property :gcs_managed_config, as: 'gcsManagedConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DatasetGcsManagedConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DatasetGcsManagedConfig::Representation
      
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :unmanaged_dataset_config, as: 'unmanagedDatasetConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection, as: 'collection'
          property :schema, as: 'schema'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetGcsManagedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsPrefix, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsPrefix::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema::Representation
      
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeleteProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DisableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blob_assets, as: 'blobAssets', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentBlobAsset, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentBlobAsset::Representation
      
          property :chunked_document, as: 'chunkedDocument', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocument, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocument::Representation
      
          property :content, :base64 => true, as: 'content'
          property :docid, as: 'docid'
          property :document_layout, as: 'documentLayout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayout::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntity, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntity::Representation
      
          property :entities_revision_id, as: 'entitiesRevisionId'
          collection :entities_revisions, as: 'entitiesRevisions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntitiesRevision, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntitiesRevision::Representation
      
          collection :entity_relations, as: 'entityRelations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityRelation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityRelation::Representation
      
          property :entity_validation_output, as: 'entityValidationOutput', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutput, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutput::Representation
      
          property :error, as: 'error', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
          property :mime_type, as: 'mimeType'
          collection :pages, as: 'pages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPage::Representation
      
          collection :revisions, as: 'revisions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentRevision, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentRevision::Representation
      
          property :shard_info, as: 'shardInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentShardInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentShardInfo::Representation
      
          property :text, as: 'text'
          collection :text_changes, as: 'textChanges', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextChange, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextChange::Representation
      
          collection :text_styles, as: 'textStyles', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentStyle, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentStyle::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentAnnotations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentBlobAsset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_id, as: 'assetId'
          property :content, :base64 => true, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunks, as: 'chunks', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_fields, as: 'chunkFields', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField::Representation
      
          property :chunk_id, as: 'chunkId'
          property :content, as: 'content'
          collection :page_footers, as: 'pageFooters', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter::Representation
      
          collection :page_headers, as: 'pageHeaders', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader::Representation
      
          property :page_span, as: 'pageSpan', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan::Representation
      
          collection :source_block_ids, as: 'sourceBlockIds'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_chunk_field, as: 'imageChunkField', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField::Representation
      
          property :table_chunk_field, as: 'tableChunkField', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_span, as: 'pageSpan', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_span, as: 'pageSpan', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_end, as: 'pageEnd'
          property :page_start, as: 'pageStart'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations::Representation
      
          property :blob_asset_id, as: 'blobAssetId'
          property :data_uri, as: 'dataUri'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_id, as: 'blockId'
          property :bounding_box, as: 'boundingBox', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BoundingPoly, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BoundingPoly::Representation
      
          property :image_block, as: 'imageBlock', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock::Representation
      
          property :list_block, as: 'listBlock', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock::Representation
      
          property :page_span, as: 'pageSpan', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan::Representation
      
          property :table_block, as: 'tableBlock', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock::Representation
      
          property :text_block, as: 'textBlock', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations::Representation
      
          property :blob_asset_id, as: 'blobAssetId'
          property :data_uri, as: 'dataUri'
          property :gcs_uri, as: 'gcsUri'
          property :image_text, as: 'imageText'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list_entries, as: 'listEntries', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_end, as: 'pageEnd'
          property :page_start, as: 'pageStart'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations::Representation
      
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow::Representation
      
          property :caption, as: 'caption'
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock::Representation
      
          property :col_span, as: 'colSpan'
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotations, as: 'annotations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentAnnotations::Representation
      
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock::Representation
      
          property :text, as: 'text'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntitiesRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntity, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntity::Representation
      
          property :entity_validation_output, as: 'entityValidationOutput', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutput, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutput::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :id, as: 'id'
          property :mention_id, as: 'mentionId'
          property :mention_text, as: 'mentionText'
          property :method_prop, as: 'method'
          property :normalized_value, as: 'normalizedValue', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue::Representation
      
          property :page_anchor, as: 'pageAnchor', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageAnchor, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageAnchor::Representation
      
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntity, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntity::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
          property :redacted, as: 'redacted'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address_value, as: 'addressValue', class: Google::Apis::DocumentaiV1beta3::GoogleTypePostalAddress, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypePostalAddress::Representation
      
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DocumentaiV1beta3::GoogleTypeDate, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeDate::Representation
      
          property :datetime_value, as: 'datetimeValue', class: Google::Apis::DocumentaiV1beta3::GoogleTypeDateTime, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeDateTime::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, as: 'integerValue'
          property :money_value, as: 'moneyValue', class: Google::Apis::DocumentaiV1beta3::GoogleTypeMoney, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeMoney::Representation
      
          property :signature_value, as: 'signatureValue'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityRelation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_id_prop, as: 'objectId'
          property :relation, as: 'relation'
          property :subject_id, as: 'subjectId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pass_all_rules, as: 'passAllRules'
          collection :validation_results, as: 'validationResults', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutputValidationResult, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutputValidationResult::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentEntityValidationOutputValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule, as: 'rule'
          property :rule_description, as: 'ruleDescription'
          property :rule_name, as: 'ruleName'
          property :validation_details, as: 'validationDetails'
          property :validation_result_type, as: 'validationResultType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_managed_doc_id, as: 'gcsManagedDocId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentIdGcsManagedDocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentIdGcsManagedDocumentId::Representation
      
          property :revision_ref, as: 'revisionRef', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RevisionRef, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RevisionRef::Representation
      
          property :unmanaged_doc_id, as: 'unmanagedDocId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentIdGcsManagedDocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cw_doc_id, as: 'cwDocId'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_id, as: 'docId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_type, as: 'datasetType'
          property :display_name, as: 'displayName'
          property :document_id, as: 'documentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId::Representation
      
          property :labeling_state, as: 'labelingState'
          property :page_count, as: 'pageCount'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_output_config, as: 'gcsOutputConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :gcs_uri, as: 'gcsUri'
          property :sharding_config, as: 'shardingConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pages_overlap, as: 'pagesOverlap'
          property :pages_per_shard, as: 'pagesPerShard'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocks, as: 'blocks', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageBlock, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageBlock::Representation
      
          collection :detected_barcodes, as: 'detectedBarcodes', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :dimension, as: 'dimension', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDimension, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDimension::Representation
      
          collection :form_fields, as: 'formFields', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageFormField, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageFormField::Representation
      
          property :image, as: 'image', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageImage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageImage::Representation
      
          property :image_quality_scores, as: 'imageQualityScores', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          collection :lines, as: 'lines', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLine, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLine::Representation
      
          property :page_number, as: 'pageNumber'
          collection :paragraphs, as: 'paragraphs', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageParagraph, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageParagraph::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
          collection :symbols, as: 'symbols', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageSymbol, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageSymbol::Representation
      
          collection :tables, as: 'tables', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTable, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTable::Representation
      
          collection :tokens, as: 'tokens', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageToken, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageToken::Representation
      
          collection :transforms, as: 'transforms', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageMatrix, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageMatrix::Representation
      
          collection :visual_elements, as: 'visualElements', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageVisualElement, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageVisualElement::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :page_refs, as: 'pageRefs', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BoundingPoly, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :layout_id, as: 'layoutId'
          property :layout_type, as: 'layoutType'
          property :page, :numeric_string => true, as: 'page'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageBlock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :barcode, as: 'barcode', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Barcode, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Barcode::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :unit, as: 'unit'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageFormField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corrected_key_text, as: 'correctedKeyText'
          property :corrected_value_text, as: 'correctedValueText'
          property :field_name, as: 'fieldName', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :field_value, as: 'fieldValue', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          collection :name_detected_languages, as: 'nameDetectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
          collection :value_detected_languages, as: 'valueDetectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :height, as: 'height'
          property :mime_type, as: 'mimeType'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_defects, as: 'detectedDefects', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect::Representation
      
          property :quality_score, as: 'qualityScore'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageLayout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BoundingPoly, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BoundingPoly::Representation
      
          property :confidence, as: 'confidence'
          property :orientation, as: 'orientation'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageLine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cols, as: 'cols'
          property :data, :base64 => true, as: 'data'
          property :rows, as: 'rows'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageSymbol
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :body_rows, as: 'bodyRows', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          collection :header_rows, as: 'headerRows', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :col_span, as: 'colSpan'
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :row_span, as: 'rowSpan'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cells, as: 'cells', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_break, as: 'detectedBreak', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak::Representation
      
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
          property :style_info, as: 'styleInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1beta3::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeColor::Representation
      
          property :bold, as: 'bold'
          property :font_size, as: 'fontSize'
          property :font_type, as: 'fontType'
          property :font_weight, as: 'fontWeight'
          property :handwritten, as: 'handwritten'
          property :italic, as: 'italic'
          property :letter_spacing, as: 'letterSpacing'
          property :pixel_font_size, as: 'pixelFontSize'
          property :smallcaps, as: 'smallcaps'
          property :strikeout, as: 'strikeout'
          property :subscript, as: 'subscript'
          property :superscript, as: 'superscript'
          property :text_color, as: 'textColor', class: Google::Apis::DocumentaiV1beta3::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeColor::Representation
      
          property :underlined, as: 'underlined'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentPageVisualElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_languages, as: 'detectedLanguages', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage::Representation
      
          property :layout, as: 'layout', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentPageLayout::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :parents, as: 'parents', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenanceParent, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenanceParent::Representation
      
          property :revision, as: 'revision'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentProvenanceParent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :index, as: 'index'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent, as: 'agent'
          property :create_time, as: 'createTime'
          property :human_review, as: 'humanReview', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview::Representation
      
          property :id, as: 'id'
          collection :parent, as: 'parent'
          collection :parent_ids, as: 'parentIds'
          property :processor, as: 'processor'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :document_prompt, as: 'documentPrompt'
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :base_types, as: 'baseTypes'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :entity_type_metadata, as: 'entityTypeMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EntityTypeMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EntityTypeMetadata::Representation
      
          property :enum_values, as: 'enumValues', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues::Representation
      
          property :name, as: 'name'
          collection :properties, as: 'properties', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :method_prop, as: 'method'
          property :name, as: 'name'
          property :occurrence_type, as: 'occurrenceType'
          property :property_metadata, as: 'propertyMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3PropertyMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3PropertyMetadata::Representation
      
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_allow_multiple_labels, as: 'documentAllowMultipleLabels'
          property :document_splitter, as: 'documentSplitter'
          property :prefixed_naming_on_properties, as: 'prefixedNamingOnProperties'
          property :skip_naming_validation, as: 'skipNamingValidation'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentShardInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :shard_index, :numeric_string => true, as: 'shardIndex'
          property :text_offset, :numeric_string => true, as: 'textOffset'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :background_color, as: 'backgroundColor', class: Google::Apis::DocumentaiV1beta3::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeColor::Representation
      
          property :color, as: 'color', class: Google::Apis::DocumentaiV1beta3::GoogleTypeColor, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeColor::Representation
      
          property :font_family, as: 'fontFamily'
          property :font_size, as: 'fontSize', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentStyleFontSize, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentStyleFontSize::Representation
      
          property :font_weight, as: 'fontWeight'
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor::Representation
      
          property :text_decoration, as: 'textDecoration'
          property :text_style, as: 'textStyle'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentStyleFontSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :size, as: 'size'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentTextAnchor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          collection :text_segments, as: 'textSegments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3DocumentTextChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :changed_text, as: 'changedText'
          collection :provenance, as: 'provenance', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentProvenance::Representation
      
          property :text_anchor, as: 'textAnchor', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentTextAnchor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3Documents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EnableProcessorResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EntityTypeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inactive, as: 'inactive'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation_documents, as: 'evaluationDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluation, as: 'evaluation'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3Evaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_entities_metrics, as: 'allEntitiesMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics::Representation
      
          property :create_time, as: 'createTime'
          property :document_counters, as: 'documentCounters', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationCounters, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationCounters::Representation
      
          hash :entity_metrics, as: 'entityMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
          property :name, as: 'name'
          collection :revisions, as: 'revisions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationEvaluationRevision, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationEvaluationRevision::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_level, as: 'confidenceLevel'
          property :metrics, as: 'metrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMetrics::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationCounters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_documents_count, as: 'evaluatedDocumentsCount'
          property :failed_documents_count, as: 'failedDocumentsCount'
          property :input_documents_count, as: 'inputDocumentsCount'
          property :invalid_documents_count, as: 'invalidDocumentsCount'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationEvaluationRevision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_entities_metrics, as: 'allEntitiesMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics::Representation
      
          property :document_counters, as: 'documentCounters', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationCounters, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationCounters::Representation
      
          hash :entity_metrics, as: 'entityMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics::Representation
      
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :f1_score, as: 'f1Score'
          property :false_negatives_count, as: 'falseNegativesCount'
          property :false_positives_count, as: 'falsePositivesCount'
          property :ground_truth_document_count, as: 'groundTruthDocumentCount'
          property :ground_truth_occurrences_count, as: 'groundTruthOccurrencesCount'
          property :precision, as: 'precision'
          property :predicted_document_count, as: 'predictedDocumentCount'
          property :predicted_occurrences_count, as: 'predictedOccurrencesCount'
          property :recall, as: 'recall'
          property :total_documents_count, as: 'totalDocumentsCount'
          property :true_positives_count, as: 'truePositivesCount'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auprc, as: 'auprc'
          property :auprc_exact, as: 'auprcExact'
          collection :confidence_level_metrics, as: 'confidenceLevelMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics::Representation
      
          collection :confidence_level_metrics_exact, as: 'confidenceLevelMetricsExact', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics::Representation
      
          property :estimated_calibration_error, as: 'estimatedCalibrationError'
          property :estimated_calibration_error_exact, as: 'estimatedCalibrationErrorExact'
          property :metrics_type, as: 'metricsType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3EvaluationReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregate_metrics, as: 'aggregateMetrics', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMetrics::Representation
      
          property :aggregate_metrics_exact, as: 'aggregateMetricsExact', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMetrics, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationMetrics::Representation
      
          property :evaluation, as: 'evaluation'
          property :operation, as: 'operation'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :processor_types, as: 'processorTypes', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorType, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorType::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3FieldExtractionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :summary_options, as: 'summaryOptions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SummaryOptions, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SummaryOptions::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GcsDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GcsDocuments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocument, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocument::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GcsPrefix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri_prefix, as: 'gcsUriPrefix'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GenerateSchemaVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_schema_version, as: 'baseSchemaVersion'
          property :gcs_documents, as: 'gcsDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocuments, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocuments::Representation
      
          property :gcs_prefix, as: 'gcsPrefix', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsPrefix, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsPrefix::Representation
      
          property :generate_schema_version_params, as: 'generateSchemaVersionParams', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GenerateSchemaVersionRequestGenerateSchemaVersionParams, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GenerateSchemaVersionRequestGenerateSchemaVersionParams::Representation
      
          property :inline_documents, as: 'inlineDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Documents, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Documents::Representation
      
          property :raw_documents, as: 'rawDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RawDocuments, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RawDocuments::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GenerateSchemaVersionRequestGenerateSchemaVersionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :history, as: 'history', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaGenerationHistory, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaGenerationHistory::Representation
      
          property :prompt, as: 'prompt'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GenerateSchemaVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema_version, as: 'schemaVersion', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3GetDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
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
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
          collection :import_config_validation_results, as: 'importConfigValidationResults', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult::Representation
      
          collection :individual_import_statuses, as: 'individualImportStatuses', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus::Representation
      
          property :total_document_count, as: 'totalDocumentCount'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataImportConfigValidationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_gcs_source, as: 'inputGcsSource'
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsMetadataIndividualImportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_gcs_source, as: 'inputGcsSource'
          property :output_document_id, as: 'outputDocumentId', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentId::Representation
      
          property :status, as: 'status', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :batch_documents_import_configs, as: 'batchDocumentsImportConfigs', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_split_config, as: 'autoSplitConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig::Representation
      
          property :batch_input_config, as: 'batchInputConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig::Representation
      
          property :dataset_split, as: 'datasetSplit'
          property :document_type, as: 'documentType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :training_split_ratio, as: 'trainingSplitRatio'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_processor_version_source, as: 'externalProcessorVersionSource', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource::Representation
      
          property :processor_version_source, as: 'processorVersionSource'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor_version, as: 'processorVersion'
          property :service_endpoint, as: 'serviceEndpoint'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ImportProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :return_total_size, as: 'returnTotalSize'
          property :skip, as: 'skip'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :document_metadata, as: 'documentMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListEvaluationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluations, as: 'evaluations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Evaluation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Evaluation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processor_types, as: 'processorTypes', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorType, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorType::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processor_versions, as: 'processorVersions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersion, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersion::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListProcessorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :processors, as: 'processors', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Processor::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListSchemaVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schema_versions, as: 'schemaVersions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3NextSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3NextSchema::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3NextSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3OcrConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advanced_ocr_options, as: 'advancedOcrOptions'
          property :compute_style_info, as: 'computeStyleInfo'
          property :disable_character_boxes_detection, as: 'disableCharacterBoxesDetection'
          property :enable_image_quality_scores, as: 'enableImageQualityScores'
          property :enable_native_pdf_parsing, as: 'enableNativePdfParsing'
          property :enable_symbol, as: 'enableSymbol'
          property :hints, as: 'hints', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3OcrConfigHints, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3OcrConfigHints::Representation
      
          property :premium_features, as: 'premiumFeatures', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3OcrConfigHints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :language_hints, as: 'languageHints'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_style_info, as: 'computeStyleInfo'
          property :enable_math_ocr, as: 'enableMathOcr'
          property :enable_selection_mark_detection, as: 'enableSelectionMarkDetection'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_end, as: 'fromEnd'
          property :from_start, as: 'fromStart'
          property :individual_page_selector, as: 'individualPageSelector', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector::Representation
      
          property :layout_config, as: 'layoutConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig::Representation
      
          property :ocr_config, as: 'ocrConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3OcrConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3OcrConfig::Representation
      
          property :schema_override, as: 'schemaOverride', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pages, as: 'pages'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig::Representation
      
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_image_extraction, as: 'enableImageExtraction'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          property :enable_table_split, as: 'enableTableSplit'
          property :return_bounding_boxes, as: 'returnBoundingBoxes'
          property :return_images, as: 'returnImages'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakpoint_percentile_threshold, as: 'breakpointPercentileThreshold'
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
          property :semantic_chunking_group_size, as: 'semanticChunkingGroupSize'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
          property :field_mask, as: 'fieldMask'
          property :gcs_document, as: 'gcsDocument', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocument, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3GcsDocument::Representation
      
          property :imageless_mode, as: 'imagelessMode'
          property :inline_document, as: 'inlineDocument', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
          hash :labels, as: 'labels'
          property :process_options, as: 'processOptions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptions, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessOptions::Representation
      
          property :raw_document, as: 'rawDocument', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RawDocument, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RawDocument::Representation
      
          property :skip_human_review, as: 'skipHumanReview'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
          property :human_review_operation, as: 'humanReviewOperation'
          property :human_review_status, as: 'humanReviewStatus', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3HumanReviewStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3HumanReviewStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3Processor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_schema_version, as: 'activeSchemaVersion'
          property :create_time, as: 'createTime'
          property :default_processor_version, as: 'defaultProcessorVersion'
          property :display_name, as: 'displayName'
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
          property :process_endpoint, as: 'processEndpoint'
          collection :processor_version_aliases, as: 'processorVersionAliases', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionAlias, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionAlias::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_creation, as: 'allowCreation'
          collection :available_locations, as: 'availableLocations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo::Representation
      
          property :category, as: 'category'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          collection :sample_document_uris, as: 'sampleDocumentUris'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_id, as: 'locationId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deprecation_info, as: 'deprecationInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo::Representation
      
          property :display_name, as: 'displayName'
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema::Representation
      
          property :gen_ai_model_info, as: 'genAiModelInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo::Representation
      
          property :google_managed, as: 'googleManaged'
          property :kms_key_name, as: 'kmsKeyName'
          property :kms_key_version_name, as: 'kmsKeyVersionName'
          property :latest_evaluation, as: 'latestEvaluation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationReference, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3EvaluationReference::Representation
      
          property :model_type, as: 'modelType'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionAlias
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :processor_version, as: 'processorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deprecation_time, as: 'deprecationTime'
          property :replacement_processor_version, as: 'replacementProcessorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_gen_ai_model_info, as: 'customGenAiModelInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo::Representation
      
          property :foundation_gen_ai_model_info, as: 'foundationGenAiModelInfo', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_processor_version_id, as: 'baseProcessorVersionId'
          property :custom_model_type, as: 'customModelType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finetuning_allowed, as: 'finetuningAllowed'
          property :min_train_labeled_documents, as: 'minTrainLabeledDocuments'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3PropertyMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_extraction_metadata, as: 'fieldExtractionMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3FieldExtractionMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3FieldExtractionMetadata::Representation
      
          property :inactive, as: 'inactive'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3RawDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :display_name, as: 'displayName'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3RawDocuments
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RawDocument, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3RawDocument::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
          property :create_time, as: 'createTime'
          property :question_id, as: 'questionId'
          property :state, as: 'state'
          property :state_message, as: 'stateMessage'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3ReviewDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema::Representation
      
          property :enable_schema_validation, as: 'enableSchemaValidation'
          property :inline_document, as: 'inlineDocument', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3Document::Representation
      
          property :priority, as: 'priority'
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
      
      class GoogleCloudDocumentaiV1beta3RevisionRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latest_processor_version, as: 'latestProcessorVersion'
          property :revision_case, as: 'revisionCase'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SchemaGenerationHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :iterations, as: 'iterations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaGenerationIteration, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaGenerationIteration::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SchemaGenerationIteration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adjusted_schema, as: 'adjustedSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion::Representation
      
          property :generated_schema, as: 'generatedSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3SchemaVersion::Representation
      
          property :prompt, as: 'prompt'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SchemaVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_processor_version, as: 'defaultProcessorVersion'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3SummaryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :length, as: 'length'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
          property :test_dataset_validation, as: 'testDatasetValidation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
          property :training_dataset_validation, as: 'trainingDatasetValidation', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionMetadataDatasetValidation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_error_count, as: 'datasetErrorCount'
          collection :dataset_errors, as: 'datasetErrors', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
          property :document_error_count, as: 'documentErrorCount'
          collection :document_errors, as: 'documentErrors', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_processor_version, as: 'baseProcessorVersion'
          property :custom_document_extraction_options, as: 'customDocumentExtractionOptions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions::Representation
      
          property :document_schema, as: 'documentSchema', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3DocumentSchema::Representation
      
          property :foundation_model_tuning_options, as: 'foundationModelTuningOptions', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions::Representation
      
          property :input_data, as: 'inputData', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData::Representation
      
          property :processor_version, as: 'processorVersion', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersion, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3ProcessorVersion::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :training_method, as: 'trainingMethod'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :learning_rate_multiplier, as: 'learningRateMultiplier'
          property :train_steps, as: 'trainSteps'
        end
      end
      
      class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_documents, as: 'testDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig::Representation
      
          property :training_documents, as: 'trainingDocuments', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig::Representation
      
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
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3UndeployProcessorVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDocumentaiV1beta3UpdateDatasetOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3UpdateProcessorVersionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_metadata, as: 'commonMetadata', class: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudDocumentaiV1beta3CommonOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDocumentaiV1beta3Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::DocumentaiV1beta3::GoogleCloudLocationLocation, decorator: Google::Apis::DocumentaiV1beta3::GoogleCloudLocationLocation::Representation
      
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
          collection :operations, as: 'operations', class: Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation, decorator: Google::Apis::DocumentaiV1beta3::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus, decorator: Google::Apis::DocumentaiV1beta3::GoogleRpcStatus::Representation
      
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
          property :time_zone, as: 'timeZone', class: Google::Apis::DocumentaiV1beta3::GoogleTypeTimeZone, decorator: Google::Apis::DocumentaiV1beta3::GoogleTypeTimeZone::Representation
      
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
