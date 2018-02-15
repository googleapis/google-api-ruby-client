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
    module DlpV2beta2
      
      class GooglePrivacyDlpV2beta1AuxiliaryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1BigQueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1BigQueryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CategoricalStatsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CategoricalStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CloudStorageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CloudStoragePath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1CustomInfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1DatastoreOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Dictionary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1EntityId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1FieldId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1FileSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1KindExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1LDiversityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1LDiversityEquivalenceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1LDiversityHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1LDiversityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1NumericalStatsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1NumericalStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1OutputStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1PartitionId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1PrivacyMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Projection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1PropertyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1QuasiIdField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1RiskAnalysisOperationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1StorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1SurrogateType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1TaggedField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1ValueFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1WordList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2AuxiliaryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2BigQueryOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2BigQueryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Bucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2BucketingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CancelDlpJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CategoricalStatsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CategoricalStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CharacterMaskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CharsToIgnore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CloudStorageKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CloudStorageOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Conditions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ContentItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CreateInspectTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CreateJobTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CryptoHashConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2CustomInfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DatastoreKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DatastoreOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DetectionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Dictionary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2DlpJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2EntityId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Error
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Expressions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2FieldId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2FieldTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2FileSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Finding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2FindingLimits
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2FixedSizeBucketingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2HotwordRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ImageLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ImageRedactionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InfoType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeDescription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeLimit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeStatistics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeTransformations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectDataSourceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectDataSourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectJobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2InspectTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2JobTrigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KindExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2KmsWrappedCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2LDiversityConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2LDiversityEquivalenceClass
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2LDiversityHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2LDiversityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2LikelihoodAdjustment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ListDlpJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ListInfoTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ListInspectTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ListJobTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2NumericalStatsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2NumericalStatsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2OutputStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2PartitionId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2PathElement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2PrimitiveTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2PrivacyMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Proximity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2PublishToPubSub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2QuasiIdField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Range
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RecordCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RecordKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RecordSuppression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RecordTransformations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RedactConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RedactImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RedactImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Regex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ReidentifyContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ReidentifyContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ReplaceValueConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RequestedOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Result
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2RiskAnalysisJobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2SaveFindings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2StorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2SummaryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2SurrogateType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Table
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TableLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TaggedField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TimePartConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TimespanConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TransformationOverview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TransformationSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2TransientCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2UnwrappedCryptoKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2UpdateJobTriggerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2ValueFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta2WordList
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
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePrivacyDlpV2beta1AuxiliaryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1QuasiIdField, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1QuasiIdField::Representation
      
          property :relative_frequency, as: 'relativeFrequency', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1BigQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identifying_fields, as: 'identifyingFields', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
          property :table_reference, as: 'tableReference', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1BigQueryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GooglePrivacyDlpV2beta1CategoricalStatsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1ValueFrequency, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1ValueFrequency::Representation
      
          property :value_frequency_lower_bound, :numeric_string => true, as: 'valueFrequencyLowerBound'
          property :value_frequency_upper_bound, :numeric_string => true, as: 'valueFrequencyUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2beta1CategoricalStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value_frequency_histogram_buckets, as: 'valueFrequencyHistogramBuckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1CloudStorageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_set, as: 'fileSet', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FileSet, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FileSet::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1CloudStoragePath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class GooglePrivacyDlpV2beta1CustomInfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dictionary, as: 'dictionary', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Dictionary, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Dictionary::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :surrogate_type, as: 'surrogateType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1SurrogateType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1SurrogateType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1DatastoreOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KindExpression, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KindExpression::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PartitionId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PartitionId::Representation
      
          collection :projection, as: 'projection', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Projection, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Projection::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1Dictionary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :word_list, as: 'wordList', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1WordList, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1WordList::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1EntityId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1FieldId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GooglePrivacyDlpV2beta1FileSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :max_findings, as: 'maxFindings'
        end
      end
      
      class GooglePrivacyDlpV2beta1InfoTypeStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_info_types, as: 'customInfoTypes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CustomInfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CustomInfoType::Representation
      
          property :exclude_types, as: 'excludeTypes'
          property :include_quote, as: 'includeQuote'
          collection :info_type_limits, as: 'infoTypeLimits', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoTypeLimit, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoTypeLimit::Representation
      
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType::Representation
      
          property :max_findings, as: 'maxFindings'
          property :min_likelihood, as: 'minLikelihood'
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :info_type_stats, as: 'infoTypeStats', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoTypeStatistics, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoTypeStatistics::Representation
      
          property :processed_bytes, :numeric_string => true, as: 'processedBytes'
          property :request_inspect_config, as: 'requestInspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InspectConfig::Representation
      
          property :request_output_config, as: 'requestOutputConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1OutputStorageConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1OutputStorageConfig::Representation
      
          property :request_storage_config, as: 'requestStorageConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1StorageConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1StorageConfig::Representation
      
          property :total_estimated_bytes, :numeric_string => true, as: 'totalEstimatedBytes'
        end
      end
      
      class GooglePrivacyDlpV2beta1InspectOperationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1EntityId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1EntityId::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :equivalence_class_size, :numeric_string => true, as: 'equivalenceClassSize'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityEquivalenceClass::Representation
      
          property :equivalence_class_size_lower_bound, :numeric_string => true, as: 'equivalenceClassSizeLowerBound'
          property :equivalence_class_size_upper_bound, :numeric_string => true, as: 'equivalenceClassSizeUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2beta1KAnonymityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :equivalence_class_histogram_buckets, as: 'equivalenceClassHistogramBuckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auxiliary_tables, as: 'auxiliaryTables', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1AuxiliaryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1AuxiliaryTable::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1TaggedField, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1TaggedField::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues::Representation
      
          property :max_anonymity, :numeric_string => true, as: 'maxAnonymity'
          property :min_anonymity, :numeric_string => true, as: 'minAnonymity'
        end
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationQuasiIdValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_anonymity, :numeric_string => true, as: 'estimatedAnonymity'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1KMapEstimationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :k_map_estimation_histogram, as: 'kMapEstimationHistogram', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1KindExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1LDiversityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
          property :sensitive_attribute, as: 'sensitiveAttribute', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1LDiversityEquivalenceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :equivalence_class_size, :numeric_string => true, as: 'equivalenceClassSize'
          property :num_distinct_sensitive_values, :numeric_string => true, as: 'numDistinctSensitiveValues'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
          collection :top_sensitive_values, as: 'topSensitiveValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1ValueFrequency, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1ValueFrequency::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1LDiversityHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityEquivalenceClass, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityEquivalenceClass::Representation
      
          property :sensitive_value_frequency_lower_bound, :numeric_string => true, as: 'sensitiveValueFrequencyLowerBound'
          property :sensitive_value_frequency_upper_bound, :numeric_string => true, as: 'sensitiveValueFrequencyUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2beta1LDiversityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sensitive_value_frequency_histogram_buckets, as: 'sensitiveValueFrequencyHistogramBuckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1NumericalStatsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1NumericalStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
          collection :quantile_values, as: 'quantileValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1OutputStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_path, as: 'storagePath', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CloudStoragePath, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CloudStoragePath::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1PartitionId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace_id, as: 'namespaceId'
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2beta1PrivacyMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_stats_config, as: 'categoricalStatsConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsConfig::Representation
      
          property :k_anonymity_config, as: 'kAnonymityConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityConfig::Representation
      
          property :k_map_estimation_config, as: 'kMapEstimationConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationConfig::Representation
      
          property :l_diversity_config, as: 'lDiversityConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityConfig::Representation
      
          property :numerical_stats_config, as: 'numericalStatsConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1NumericalStatsConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1NumericalStatsConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1Projection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :property, as: 'property', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PropertyReference, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PropertyReference::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1PropertyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta1QuasiIdField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1RiskAnalysisOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :requested_privacy_metric, as: 'requestedPrivacyMetric', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PrivacyMetric, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1PrivacyMetric::Representation
      
          property :requested_source_table, as: 'requestedSourceTable', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1RiskAnalysisOperationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_stats_result, as: 'categoricalStatsResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CategoricalStatsResult::Representation
      
          property :k_anonymity_result, as: 'kAnonymityResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KAnonymityResult::Representation
      
          property :k_map_estimation_result, as: 'kMapEstimationResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1KMapEstimationResult::Representation
      
          property :l_diversity_result, as: 'lDiversityResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1LDiversityResult::Representation
      
          property :numerical_stats_result, as: 'numericalStatsResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1NumericalStatsResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1NumericalStatsResult::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1StorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_options, as: 'bigQueryOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1BigQueryOptions::Representation
      
          property :cloud_storage_options, as: 'cloudStorageOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CloudStorageOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1CloudStorageOptions::Representation
      
          property :datastore_options, as: 'datastoreOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1DatastoreOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1DatastoreOptions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1SurrogateType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2beta1TaggedField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1FieldId::Representation
      
          property :inferred, as: 'inferred', class: Google::Apis::DlpV2beta2::GoogleProtobufEmpty, decorator: Google::Apis::DlpV2beta2::GoogleProtobufEmpty::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DlpV2beta2::GoogleTypeDate, decorator: Google::Apis::DlpV2beta2::GoogleTypeDate::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :string_value, as: 'stringValue'
          property :time_value, as: 'timeValue', class: Google::Apis::DlpV2beta2::GoogleTypeTimeOfDay, decorator: Google::Apis::DlpV2beta2::GoogleTypeTimeOfDay::Representation
      
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class GooglePrivacyDlpV2beta1ValueFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :value, as: 'value', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta1Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta1WordList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :words, as: 'words'
        end
      end
      
      class GooglePrivacyDlpV2beta2Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pub_sub, as: 'pubSub', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PublishToPubSub, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PublishToPubSub::Representation
      
          property :save_findings, as: 'saveFindings', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SaveFindings, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SaveFindings::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_stats_result, as: 'categoricalStatsResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsResult::Representation
      
          property :k_anonymity_result, as: 'kAnonymityResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityResult::Representation
      
          property :k_map_estimation_result, as: 'kMapEstimationResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationResult::Representation
      
          property :l_diversity_result, as: 'lDiversityResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityResult::Representation
      
          property :numerical_stats_result, as: 'numericalStatsResult', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2NumericalStatsResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2NumericalStatsResult::Representation
      
          property :requested_privacy_metric, as: 'requestedPrivacyMetric', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrivacyMetric, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrivacyMetric::Representation
      
          property :requested_source_table, as: 'requestedSourceTable', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_config, as: 'jobConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RiskAnalysisJobConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RiskAnalysisJobConfig::Representation
      
          property :job_id, as: 'jobId'
        end
      end
      
      class GooglePrivacyDlpV2beta2AuxiliaryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2QuasiIdField, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2QuasiIdField::Representation
      
          property :relative_frequency, as: 'relativeFrequency', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :table, as: 'table', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2BigQueryOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identifying_fields, as: 'identifyingFields', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :table_reference, as: 'tableReference', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2BigQueryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GooglePrivacyDlpV2beta2Bucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
          property :min, as: 'min', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
          property :replacement_value, as: 'replacementValue', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2BucketingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Bucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Bucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2CancelDlpJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2beta2CategoricalStatsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ValueFrequency, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ValueFrequency::Representation
      
          property :value_frequency_lower_bound, :numeric_string => true, as: 'valueFrequencyLowerBound'
          property :value_frequency_upper_bound, :numeric_string => true, as: 'valueFrequencyUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2beta2CategoricalStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value_frequency_histogram_buckets, as: 'valueFrequencyHistogramBuckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2CharacterMaskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :characters_to_ignore, as: 'charactersToIgnore', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CharsToIgnore, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CharsToIgnore::Representation
      
          property :masking_character, as: 'maskingCharacter'
          property :number_to_mask, as: 'numberToMask'
          property :reverse_order, as: 'reverseOrder'
        end
      end
      
      class GooglePrivacyDlpV2beta2CharsToIgnore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :characters_to_skip, as: 'charactersToSkip'
          property :common_characters_to_ignore, as: 'commonCharactersToIgnore'
        end
      end
      
      class GooglePrivacyDlpV2beta2CloudStorageKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
          property :start_offset, :numeric_string => true, as: 'startOffset'
        end
      end
      
      class GooglePrivacyDlpV2beta2CloudStorageOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_limit_per_file, :numeric_string => true, as: 'bytesLimitPerFile'
          property :file_set, as: 'fileSet', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FileSet, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FileSet::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class GooglePrivacyDlpV2beta2Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :operator, as: 'operator'
          property :value, as: 'value', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Conditions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conditions, as: 'conditions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Condition, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Condition::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2ContentItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :table, as: 'table', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Table, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Table::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class GooglePrivacyDlpV2beta2CreateDeidentifyTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate::Representation
      
          property :template_id, as: 'templateId'
        end
      end
      
      class GooglePrivacyDlpV2beta2CreateInspectTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template, as: 'inspectTemplate', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate::Representation
      
          property :template_id, as: 'templateId'
        end
      end
      
      class GooglePrivacyDlpV2beta2CreateJobTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_trigger, as: 'jobTrigger', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger::Representation
      
          property :trigger_id, as: 'triggerId'
        end
      end
      
      class GooglePrivacyDlpV2beta2CryptoHashConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key, as: 'cryptoKey', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoKey::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2CryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_wrapped, as: 'kmsWrapped', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KmsWrappedCryptoKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KmsWrappedCryptoKey::Representation
      
          property :transient, as: 'transient', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransientCryptoKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransientCryptoKey::Representation
      
          property :unwrapped, as: 'unwrapped', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2UnwrappedCryptoKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2UnwrappedCryptoKey::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_alphabet, as: 'commonAlphabet'
          property :context, as: 'context', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :crypto_key, as: 'cryptoKey', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoKey::Representation
      
          property :custom_alphabet, as: 'customAlphabet'
          property :radix, as: 'radix'
          property :surrogate_info_type, as: 'surrogateInfoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2CustomInfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detection_rules, as: 'detectionRules', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DetectionRule, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DetectionRule::Representation
      
          property :dictionary, as: 'dictionary', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Dictionary, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Dictionary::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :likelihood, as: 'likelihood'
          property :regex, as: 'regex', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Regex, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Regex::Representation
      
          property :surrogate_type, as: 'surrogateType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SurrogateType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SurrogateType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DatastoreKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_key, as: 'entityKey', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Key, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Key::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DatastoreOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KindExpression, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KindExpression::Representation
      
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PartitionId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PartitionId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type_transformations, as: 'infoTypeTransformations', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformations, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformations::Representation
      
          property :record_transformations, as: 'recordTransformations', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordTransformations, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordTransformations::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_config, as: 'deidentifyConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig::Representation
      
          property :deidentify_template_name, as: 'deidentifyTemplateName'
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :item, as: 'item', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem::Representation
      
          property :overview, as: 'overview', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationOverview, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationOverview::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DeidentifyTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deidentify_config, as: 'deidentifyConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2beta2DetectionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hotword_rule, as: 'hotwordRule', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2HotwordRule, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2HotwordRule::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Dictionary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :word_list, as: 'wordList', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2WordList, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2WordList::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2DlpJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :error_results, as: 'errorResults', class: Google::Apis::DlpV2beta2::GoogleRpcStatus, decorator: Google::Apis::DlpV2beta2::GoogleRpcStatus::Representation
      
          property :inspect_details, as: 'inspectDetails', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectDataSourceDetails, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectDataSourceDetails::Representation
      
          property :job_trigger_name, as: 'jobTriggerName'
          property :name, as: 'name'
          property :risk_details, as: 'riskDetails', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2AnalyzeDataSourceRiskDetails::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GooglePrivacyDlpV2beta2EntityId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Error
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details', class: Google::Apis::DlpV2beta2::GoogleRpcStatus, decorator: Google::Apis::DlpV2beta2::GoogleRpcStatus::Representation
      
          collection :timestamps, as: 'timestamps'
        end
      end
      
      class GooglePrivacyDlpV2beta2Expressions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conditions, as: 'conditions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Conditions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Conditions::Representation
      
          property :logical_operator, as: 'logicalOperator'
        end
      end
      
      class GooglePrivacyDlpV2beta2FieldId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta2FieldTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordCondition, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordCondition::Representation
      
          collection :fields, as: 'fields', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :info_type_transformations, as: 'infoTypeTransformations', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformations, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformations::Representation
      
          property :primitive_transformation, as: 'primitiveTransformation', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2FileSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GooglePrivacyDlpV2beta2Finding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :likelihood, as: 'likelihood'
          property :location, as: 'location', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Location, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Location::Representation
      
          property :quote, as: 'quote'
        end
      end
      
      class GooglePrivacyDlpV2beta2FindingLimits
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :max_findings_per_info_type, as: 'maxFindingsPerInfoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeLimit, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeLimit::Representation
      
          property :max_findings_per_item, as: 'maxFindingsPerItem'
          property :max_findings_per_request, as: 'maxFindingsPerRequest'
        end
      end
      
      class GooglePrivacyDlpV2beta2FixedSizeBucketingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, as: 'bucketSize'
          property :lower_bound, as: 'lowerBound', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
          property :upper_bound, as: 'upperBound', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2HotwordRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hotword_regex, as: 'hotwordRegex', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Regex, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Regex::Representation
      
          property :likelihood_adjustment, as: 'likelihoodAdjustment', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LikelihoodAdjustment, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LikelihoodAdjustment::Representation
      
          property :proximity, as: 'proximity', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Proximity, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Proximity::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2ImageLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, as: 'height'
          property :left, as: 'left'
          property :top, as: 'top'
          property :width, as: 'width'
        end
      end
      
      class GooglePrivacyDlpV2beta2ImageRedactionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :redact_all_text, as: 'redactAllText'
          property :redaction_color, as: 'redactionColor', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Color, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Color::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InfoType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeDescription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :supported_by, as: 'supportedBy'
        end
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeLimit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :max_findings, as: 'maxFindings'
        end
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeStatistics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :primitive_transformation, as: 'primitiveTransformation', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InfoTypeTransformations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transformations, as: 'transformations', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeTransformation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_info_types, as: 'customInfoTypes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CustomInfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CustomInfoType::Representation
      
          property :exclude_info_types, as: 'excludeInfoTypes'
          property :include_quote, as: 'includeQuote'
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :limits, as: 'limits', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FindingLimits, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FindingLimits::Representation
      
          property :min_likelihood, as: 'minLikelihood'
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :item, as: 'item', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :result, as: 'result', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectResult::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectDataSourceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_options, as: 'requestedOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RequestedOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RequestedOptions::Representation
      
          property :result, as: 'result', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Result, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Result::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectDataSourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_config, as: 'jobConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig::Representation
      
          property :job_id, as: 'jobId'
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectJobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Action, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Action::Representation
      
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :output_config, as: 'outputConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2OutputStorageConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2OutputStorageConfig::Representation
      
          property :storage_config, as: 'storageConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2StorageConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2StorageConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :findings, as: 'findings', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Finding, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Finding::Representation
      
          property :findings_truncated, as: 'findingsTruncated'
        end
      end
      
      class GooglePrivacyDlpV2beta2InspectTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2beta2JobTrigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :errors, as: 'errors', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Error, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Error::Representation
      
          property :inspect_job, as: 'inspectJob', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig::Representation
      
          property :last_run_time, as: 'lastRunTime'
          property :name, as: 'name'
          property :status, as: 'status'
          collection :triggers, as: 'triggers', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Trigger, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Trigger::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2EntityId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2EntityId::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :equivalence_class_size, :numeric_string => true, as: 'equivalenceClassSize'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityEquivalenceClass::Representation
      
          property :equivalence_class_size_lower_bound, :numeric_string => true, as: 'equivalenceClassSizeLowerBound'
          property :equivalence_class_size_upper_bound, :numeric_string => true, as: 'equivalenceClassSizeUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2beta2KAnonymityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :equivalence_class_histogram_buckets, as: 'equivalenceClassHistogramBuckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auxiliary_tables, as: 'auxiliaryTables', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2AuxiliaryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2AuxiliaryTable::Representation
      
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TaggedField, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TaggedField::Representation
      
          property :region_code, as: 'regionCode'
        end
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues::Representation
      
          property :max_anonymity, :numeric_string => true, as: 'maxAnonymity'
          property :min_anonymity, :numeric_string => true, as: 'minAnonymity'
        end
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationQuasiIdValues
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_anonymity, :numeric_string => true, as: 'estimatedAnonymity'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2KMapEstimationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :k_map_estimation_histogram, as: 'kMapEstimationHistogram', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :partition_id, as: 'partitionId', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PartitionId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PartitionId::Representation
      
          collection :path, as: 'path', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PathElement, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PathElement::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2KindExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta2KmsWrappedCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key_name, as: 'cryptoKeyName'
          property :wrapped_key, :base64 => true, as: 'wrappedKey'
        end
      end
      
      class GooglePrivacyDlpV2beta2LDiversityConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quasi_ids, as: 'quasiIds', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :sensitive_attribute, as: 'sensitiveAttribute', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2LDiversityEquivalenceClass
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :equivalence_class_size, :numeric_string => true, as: 'equivalenceClassSize'
          property :num_distinct_sensitive_values, :numeric_string => true, as: 'numDistinctSensitiveValues'
          collection :quasi_ids_values, as: 'quasiIdsValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
          collection :top_sensitive_values, as: 'topSensitiveValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ValueFrequency, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ValueFrequency::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2LDiversityHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_size, :numeric_string => true, as: 'bucketSize'
          collection :bucket_values, as: 'bucketValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityEquivalenceClass, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityEquivalenceClass::Representation
      
          property :sensitive_value_frequency_lower_bound, :numeric_string => true, as: 'sensitiveValueFrequencyLowerBound'
          property :sensitive_value_frequency_upper_bound, :numeric_string => true, as: 'sensitiveValueFrequencyUpperBound'
        end
      end
      
      class GooglePrivacyDlpV2beta2LDiversityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sensitive_value_frequency_histogram_buckets, as: 'sensitiveValueFrequencyHistogramBuckets', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityHistogramBucket, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityHistogramBucket::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2LikelihoodAdjustment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_likelihood, as: 'fixedLikelihood'
          property :relative_likelihood, as: 'relativeLikelihood'
        end
      end
      
      class GooglePrivacyDlpV2beta2ListDeidentifyTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deidentify_templates, as: 'deidentifyTemplates', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2beta2ListDlpJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DlpJob, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DlpJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2beta2ListInfoTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_types, as: 'infoTypes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeDescription, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeDescription::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2ListInspectTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inspect_templates, as: 'inspectTemplates', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2beta2ListJobTriggersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_triggers, as: 'jobTriggers', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePrivacyDlpV2beta2Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_range, as: 'byteRange', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Range, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Range::Representation
      
          property :codepoint_range, as: 'codepointRange', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Range, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Range::Representation
      
          property :field_id, as: 'fieldId', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          collection :image_boxes, as: 'imageBoxes', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ImageLocation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ImageLocation::Representation
      
          property :record_key, as: 'recordKey', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordKey::Representation
      
          property :table_location, as: 'tableLocation', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TableLocation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TableLocation::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2NumericalStatsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2NumericalStatsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
          property :min_value, as: 'minValue', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
          collection :quantile_values, as: 'quantileValues', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2OutputStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table, as: 'table', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2PartitionId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace_id, as: 'namespaceId'
          property :project_id, as: 'projectId'
        end
      end
      
      class GooglePrivacyDlpV2beta2PathElement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :numeric_string => true, as: 'id'
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta2PrimitiveTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucketing_config, as: 'bucketingConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BucketingConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BucketingConfig::Representation
      
          property :character_mask_config, as: 'characterMaskConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CharacterMaskConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CharacterMaskConfig::Representation
      
          property :crypto_hash_config, as: 'cryptoHashConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoHashConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoHashConfig::Representation
      
          property :crypto_replace_ffx_fpe_config, as: 'cryptoReplaceFfxFpeConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CryptoReplaceFfxFpeConfig::Representation
      
          property :fixed_size_bucketing_config, as: 'fixedSizeBucketingConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FixedSizeBucketingConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FixedSizeBucketingConfig::Representation
      
          property :redact_config, as: 'redactConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RedactConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RedactConfig::Representation
      
          property :replace_config, as: 'replaceConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ReplaceValueConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ReplaceValueConfig::Representation
      
          property :replace_with_info_type_config, as: 'replaceWithInfoTypeConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig::Representation
      
          property :time_part_config, as: 'timePartConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TimePartConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TimePartConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2PrivacyMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_stats_config, as: 'categoricalStatsConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CategoricalStatsConfig::Representation
      
          property :k_anonymity_config, as: 'kAnonymityConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KAnonymityConfig::Representation
      
          property :k_map_estimation_config, as: 'kMapEstimationConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2KMapEstimationConfig::Representation
      
          property :l_diversity_config, as: 'lDiversityConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2LDiversityConfig::Representation
      
          property :numerical_stats_config, as: 'numericalStatsConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2NumericalStatsConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2NumericalStatsConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Proximity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :window_after, as: 'windowAfter'
          property :window_before, as: 'windowBefore'
        end
      end
      
      class GooglePrivacyDlpV2beta2PublishToPubSub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class GooglePrivacyDlpV2beta2QuasiIdField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Range
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, :numeric_string => true, as: 'end'
          property :start, :numeric_string => true, as: 'start'
        end
      end
      
      class GooglePrivacyDlpV2beta2RecordCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expressions, as: 'expressions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Expressions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Expressions::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2RecordKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_storage_key, as: 'cloudStorageKey', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CloudStorageKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CloudStorageKey::Representation
      
          property :datastore_key, as: 'datastoreKey', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DatastoreKey, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DatastoreKey::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2RecordSuppression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordCondition, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordCondition::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2RecordTransformations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_transformations, as: 'fieldTransformations', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldTransformation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldTransformation::Representation
      
          collection :record_suppressions, as: 'recordSuppressions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordSuppression, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordSuppression::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2RedactConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2beta2RedactImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_data, :base64 => true, as: 'imageData'
          collection :image_redaction_configs, as: 'imageRedactionConfigs', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ImageRedactionConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ImageRedactionConfig::Representation
      
          property :image_type, as: 'imageType'
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2RedactImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extracted_text, as: 'extractedText'
          property :redacted_image, :base64 => true, as: 'redactedImage'
        end
      end
      
      class GooglePrivacyDlpV2beta2Regex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pattern, as: 'pattern'
        end
      end
      
      class GooglePrivacyDlpV2beta2ReidentifyContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_config, as: 'inspectConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectConfig::Representation
      
          property :inspect_template_name, as: 'inspectTemplateName'
          property :item, as: 'item', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem::Representation
      
          property :reidentify_config, as: 'reidentifyConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyConfig::Representation
      
          property :reidentify_template_name, as: 'reidentifyTemplateName'
        end
      end
      
      class GooglePrivacyDlpV2beta2ReidentifyContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2ContentItem::Representation
      
          property :overview, as: 'overview', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationOverview, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationOverview::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2ReplaceValueConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_value, as: 'newValue', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2ReplaceWithInfoTypeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2beta2RequestedOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_config, as: 'jobConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectJobConfig::Representation
      
          property :snapshot_inspect_template, as: 'snapshotInspectTemplate', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Result
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :info_type_stats, as: 'infoTypeStats', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeStatistics, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoTypeStatistics::Representation
      
          property :processed_bytes, :numeric_string => true, as: 'processedBytes'
          property :total_estimated_bytes, :numeric_string => true, as: 'totalEstimatedBytes'
        end
      end
      
      class GooglePrivacyDlpV2beta2RiskAnalysisJobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Action, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Action::Representation
      
          property :privacy_metric, as: 'privacyMetric', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrivacyMetric, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrivacyMetric::Representation
      
          property :source_table, as: 'sourceTable', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryTable::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2SaveFindings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_config, as: 'outputConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2OutputStorageConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2OutputStorageConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reccurrence_period_duration, as: 'reccurrencePeriodDuration'
        end
      end
      
      class GooglePrivacyDlpV2beta2StorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_options, as: 'bigQueryOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2BigQueryOptions::Representation
      
          property :cloud_storage_options, as: 'cloudStorageOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CloudStorageOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2CloudStorageOptions::Representation
      
          property :datastore_options, as: 'datastoreOptions', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DatastoreOptions, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DatastoreOptions::Representation
      
          property :timespan_config, as: 'timespanConfig', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TimespanConfig, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TimespanConfig::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2SummaryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :count, :numeric_string => true, as: 'count'
          property :details, as: 'details'
        end
      end
      
      class GooglePrivacyDlpV2beta2SurrogateType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GooglePrivacyDlpV2beta2Table
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :headers, as: 'headers', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          collection :rows, as: 'rows', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Row, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Row::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2TableLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_index, :numeric_string => true, as: 'rowIndex'
        end
      end
      
      class GooglePrivacyDlpV2beta2TaggedField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_tag, as: 'customTag'
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          property :inferred, as: 'inferred', class: Google::Apis::DlpV2beta2::GoogleProtobufEmpty, decorator: Google::Apis::DlpV2beta2::GoogleProtobufEmpty::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2TimePartConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :part_to_extract, as: 'partToExtract'
        end
      end
      
      class GooglePrivacyDlpV2beta2TimespanConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_auto_population_of_timespan_config, as: 'enableAutoPopulationOfTimespanConfig'
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GooglePrivacyDlpV2beta2TransformationOverview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :transformation_summaries, as: 'transformationSummaries', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationSummary, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2TransformationSummary::Representation
      
          property :transformed_bytes, :numeric_string => true, as: 'transformedBytes'
        end
      end
      
      class GooglePrivacyDlpV2beta2TransformationSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldId::Representation
      
          collection :field_transformations, as: 'fieldTransformations', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldTransformation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2FieldTransformation::Representation
      
          property :info_type, as: 'infoType', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InfoType::Representation
      
          property :record_suppress, as: 'recordSuppress', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordSuppression, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2RecordSuppression::Representation
      
          collection :results, as: 'results', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SummaryResult, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2SummaryResult::Representation
      
          property :transformation, as: 'transformation', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2PrimitiveTransformation::Representation
      
          property :transformed_bytes, :numeric_string => true, as: 'transformedBytes'
        end
      end
      
      class GooglePrivacyDlpV2beta2TransientCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GooglePrivacyDlpV2beta2Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schedule, as: 'schedule', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Schedule, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Schedule::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2UnwrappedCryptoKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, :base64 => true, as: 'key'
        end
      end
      
      class GooglePrivacyDlpV2beta2UpdateDeidentifyTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deidentify_template, as: 'deidentifyTemplate', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2DeidentifyTemplate::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2beta2UpdateInspectTemplateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspect_template, as: 'inspectTemplate', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2InspectTemplate::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2beta2UpdateJobTriggerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_trigger, as: 'jobTrigger', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2JobTrigger::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GooglePrivacyDlpV2beta2Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :date_value, as: 'dateValue', class: Google::Apis::DlpV2beta2::GoogleTypeDate, decorator: Google::Apis::DlpV2beta2::GoogleTypeDate::Representation
      
          property :float_value, as: 'floatValue'
          property :integer_value, :numeric_string => true, as: 'integerValue'
          property :string_value, as: 'stringValue'
          property :time_value, as: 'timeValue', class: Google::Apis::DlpV2beta2::GoogleTypeTimeOfDay, decorator: Google::Apis::DlpV2beta2::GoogleTypeTimeOfDay::Representation
      
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class GooglePrivacyDlpV2beta2ValueFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :value, as: 'value', class: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value, decorator: Google::Apis::DlpV2beta2::GooglePrivacyDlpV2beta2Value::Representation
      
        end
      end
      
      class GooglePrivacyDlpV2beta2WordList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :words, as: 'words'
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
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeTimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
    end
  end
end
