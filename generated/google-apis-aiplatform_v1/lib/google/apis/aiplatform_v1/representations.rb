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
    module AiplatformV1
      
      class CloudAiLargeModelsVisionGenerateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionGenerateVideoResponseVideo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionImageImageSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionImageRaiScores
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionNamedBoundingBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionRaiInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionRaiInfoDetectedLabels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionRaiInfoDetectedLabelsBoundingBox
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionRaiInfoDetectedLabelsEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionSemanticFilterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionVideo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiPlatformCommonCreatePipelineJobApiErrorDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ActiveLearningConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddContextChildrenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddContextChildrenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddExecutionEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddExecutionEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AddTrialMeasurementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AnnotationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ApiAuth
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ApiAuthApiKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Artifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AssignNotebookRuntimeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AssignNotebookRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Attribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AugmentPromptRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AugmentPromptRequestModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AugmentPromptResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AuthConfigApiKeyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AuthConfigGoogleServiceAccountConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AuthConfigHttpBasicAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AuthConfigOauthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AuthConfigOidcConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AutomaticResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AutoraterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AutoscalingMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1AvroSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCancelPipelineJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateFeaturesOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateFeaturesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardRunsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchDedicatedResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchDeletePipelineJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchImportEvaluatedAnnotationsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchImportEvaluatedAnnotationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesOperationMetadataPartialResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobOutputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesRequestEntityTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesRequestPassThroughField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BatchReadTensorboardTimeSeriesDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BleuInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BleuInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BleuMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BleuResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BleuSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Blob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BlurBaselineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1BoolArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CacheConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CachedContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CachedContentUsageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelBatchPredictionJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelCustomJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelDataLabelingJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelHyperparameterTuningJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelNasJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelPipelineJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelTrainingPipelineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CancelTuningJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Candidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateMetatdata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Checkpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Citation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Claim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ClientConnectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CodeExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CoherenceInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CoherenceInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CoherenceResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CoherenceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ColabImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CometInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CometInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CometResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CometSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CompleteTrialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CompletionStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ComputeTokensRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ComputeTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ContainerRegistryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ContainerSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Content
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ContentMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ContentMapContents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CopyModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CopyModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CopyModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CorpusStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CorroborateContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CorroborateContentRequestParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CorroborateContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CountTokensRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CountTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateDatasetOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateDatasetVersionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateDeploymentResourcePoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateDeploymentResourcePoolRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateEndpointOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateEntityTypeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateFeatureGroupOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateFeatureOnlineStoreOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateFeatureOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateFeatureRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateFeatureViewOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateFeaturestoreOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateIndexEndpointOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateIndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateMetadataStoreOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateNotebookExecutionJobOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateNotebookRuntimeTemplateOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreatePersistentResourceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreatePipelineJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateRegistryFeatureOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateSpecialistPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateTensorboardOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateTensorboardRunRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CsvDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CsvSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CustomJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CustomJobSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CustomOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1CustomOutputFormatConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DataItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DataItemView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DataLabelingJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DatasetVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DedicatedResources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectTimeRangeAndFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteMetadataStoreOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeleteOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployIndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployIndexRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployIndexResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployRequestDeployConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployRequestEndpointConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployRequestModelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedIndex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedIndexAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedIndexRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedModelRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeployedModelStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DeploymentResourcePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DestinationFeatureSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DirectPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DirectPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DirectRawPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DirectRawPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DirectUploadSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DiskSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DnsPeeringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DoubleArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1DynamicRetrievalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EncryptionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Endpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EnterpriseWebSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EntityIdSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ErrorAnalysisAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ErrorAnalysisAnnotationAttributedItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EvaluateDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EvaluateInstancesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EvaluateInstancesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EvaluatedAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EvaluatedAnnotationExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1EvaluationDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExactMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExactMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExactMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExactMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExactMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Examples
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExamplesExampleGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExamplesOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExamplesRestrictionsNamespace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExecutableCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplainRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Explanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataInputMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataOutputMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataOverrideInputMetadataOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExplanationSpecOverride
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportDataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesRequestFullExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesRequestSnapshotExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFilterSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportFractionSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportModelRequestOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExternalApi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExternalApiElasticSearchParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ExternalApiSimpleSearchParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Fact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FasterDeploymentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Feature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureGroupBigQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureGroupBigQueryTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureNoiseSigma
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreBigtable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreOptimized
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureStatsAnomaly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureValueDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureValueList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureValueMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewDataKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewDataKeyCompositeKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewIndexConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewIndexConfigBruteForceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewIndexConfigTreeAhConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewOptimizedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewSync
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewSyncSyncSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeatureViewVertexRagSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Featurestore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairListFeatureNameValuePair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FetchPredictOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FileData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FileStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FilterSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FindNeighborsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FindNeighborsRequestQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FindNeighborsRequestQueryRrf
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FindNeighborsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FindNeighborsResponseNearestNeighbors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FindNeighborsResponseNeighbor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FluencyInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FluencyInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FluencyResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FluencySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FractionSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FulfillmentInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FulfillmentInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FulfillmentResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FulfillmentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FunctionCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FunctionCallingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FunctionDeclaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1FunctionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfigRagConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerateContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerateContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerateVideoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerateVideoResponseVideo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerationConfigRoutingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerationConfigRoutingConfigAutoRoutingMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerationConfigRoutingConfigManualRoutingMode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenerationConfigThinkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenericOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GenieSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GoogleDriveSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GoogleDriveSourceResourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GoogleSearchRetrieval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundednessInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundednessInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundednessResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundednessSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundingChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundingChunkRetrievedContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundingChunkWeb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1GroundingSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1HyperparameterTuningJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IdMatcher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportDataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportModelEvaluationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportRagFilesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ImportRagFilesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Index
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexDatapoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexDatapointCrowdingTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexDatapointNumericRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexDatapointRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexDatapointSparseEmbedding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexPrivateEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IndexStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1InputDataConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Int64Array
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1IntegratedGradientsAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1JiraSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1JiraSourceJiraQueries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1LargeModelReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1LineageSubgraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListAnnotationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListArtifactsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListBatchPredictionJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListCachedContentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListContextsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListCustomJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListDataItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListDataLabelingJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListDatasetVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListDeploymentResourcePoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListEndpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListFeatureGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListFeatureOnlineStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListFeatureViewSyncsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListFeatureViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListFeaturestoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListHyperparameterTuningJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListIndexEndpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListIndexesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListMetadataSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListMetadataStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListModelDeploymentMonitoringJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListModelEvaluationSlicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListModelEvaluationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListModelVersionCheckpointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListModelVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListNasJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListNasTrialDetailsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListNotebookExecutionJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListNotebookRuntimeTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListNotebookRuntimesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListOptimalTrialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListOptimalTrialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListPersistentResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListPipelineJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListRagCorporaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListRagFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListReasoningEnginesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListSavedQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListSchedulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListSpecialistPoolsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListStudiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTensorboardExperimentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTensorboardRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTensorboardTimeSeriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTensorboardsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTrainingPipelinesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTrialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ListTuningJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1LogprobsResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1LogprobsResultCandidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1LogprobsResultTopCandidates
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1LookupStudyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MachineSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ManualBatchTuningParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Measurement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MeasurementMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MergeVersionAliasesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetadataSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetadataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetadataStoreDataplexConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetadataStoreMetadataStoreState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Metric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetricxInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetricxInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetricxResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MetricxSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigratableResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigratableResourceAutomlDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigratableResourceAutomlModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigratableResourceDataLabelingDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigratableResourceDataLabelingDatasetDataLabelingAnnotatedDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlDatasetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlModelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateMlEngineModelVersionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MigrateResourceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModalityTokenCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelBaseModelSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelContainerSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelDataStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSlice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSlice
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelExplanation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelExportFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelGardenSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringAlertConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringStatsAnomalies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringStatsAnomaliesFeatureHistoricStatsAnomalies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelOriginalModelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelSourceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ModelVersionCheckpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MutateDeployedIndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MutateDeployedIndexResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MutateDeployedModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MutateDeployedModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1MutateDeployedModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasTrial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NasTrialDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryEmbedding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryNumericFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryStringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataRecordError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighbors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NearestNeighborsNeighbor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Neighbor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NetworkSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NfsMount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookEucConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobCustomEnvironmentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobDataformRepositorySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobDirectNotebookSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobGcsNotebookSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobWorkbenchRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookIdleShutdownConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookReservationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookRuntimeTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookRuntimeTemplateRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1NotebookSoftwareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PscAutomationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualitySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualityInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualityInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualitySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Part
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PauseModelDeploymentMonitoringJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PauseScheduleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PersistentDiskSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PersistentResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineJobDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineJobRuntimeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineJobRuntimeConfigInputArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTaskDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTaskDetailArtifactList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTaskExecutorDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PipelineTemplateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Port
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PostStartupScriptConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PrebuiltVoiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PredefinedSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PredictLongRunningRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PredictSchemata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Presets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PrivateEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PrivateServiceConnectConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Probe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ProbeExecAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ProbeGrpcAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ProbeHttpGetAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ProbeHttpHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ProbeTcpSocketAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PscAutomatedEndpoints
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PscInterfaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeploy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeployDeployMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeployGke
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeployVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionOpenFineTuningPipelines
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionOpenNotebooks
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionViewRestApi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelDocumentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PublisherModelResourceReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeArtifactsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeArtifactsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeArtifactsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeContextsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeContextsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeContextsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeExecutionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeExecutionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PurgeExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1PythonPackageSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QueryDeployedModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QueryReasoningEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QueryReasoningEngineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualityInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualityInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualitySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagChunkPageSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagContexts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagContextsContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagCorpus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagEmbeddingModelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFileChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFileChunkingConfigFixedLengthChunking
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFileParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFileParsingConfigLayoutParser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFileParsingConfigLlmParser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagFileTransformationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfigBasic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfigScaled
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfigUnprovisioned
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigRanking
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigRankingLlmRanker
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigRankingRankService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigPinecone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbAnn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbKnn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigVertexVectorSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RawOutput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RawPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RayLogsSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RayMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RaySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityViewData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadIndexDatapointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadIndexDatapointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardBlobDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardSizeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardTimeSeriesDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardUsageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerMonthUsageData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerUserUsageData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReasoningEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReasoningEngineSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReasoningEngineSpecPackageSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RebaseTunedModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RebootPersistentResourceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RebootPersistentResourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RemoveContextChildrenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RemoveContextChildrenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RemoveDatapointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RemoveDatapointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ReservationAffinity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResourcePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResourcePoolAutoscalingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResourceRuntime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResourceRuntimeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResourcesConsumed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RestoreDatasetVersionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResumeModelDeploymentMonitoringJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ResumeScheduleRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Retrieval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RetrievalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RetrievalMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStoreRagResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RougeInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RougeInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RougeMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RougeResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RougeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1RubricCritiqueResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SafetyInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SafetyInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SafetyRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SafetyResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SafetySetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SafetySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SampleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SampledShapleyAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SamplingStrategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SavedQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Scalar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Schedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ScheduleRunResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Scheduling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaAnnotationSpecColor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageBoundingBoxAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageClassificationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageDataItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationMaskAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolygonAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolylineAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetricsConfidenceMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrixAnnotationSpecRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsGeneralTextGenerationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageObjectDetectionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageSegmentationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageSegmentationEvaluationMetricsConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsPairwiseTextGenerationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsQuestionAnsweringEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsRegressionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsSummarizationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextExtractionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextExtractionEvaluationMetricsConfidenceMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextSentimentEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetricsConfidenceMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetricsConfidenceMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionRecognitionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoObjectTrackingMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceImageClassificationPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceImageObjectDetectionPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceImageSegmentationPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceTextClassificationPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceTextExtractionPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceTextSentimentPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceVideoActionRecognitionPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceVideoClassificationPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceVideoObjectTrackingPredictionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsImageClassificationPredictionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsImageObjectDetectionPredictionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsImageSegmentationPredictionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsVideoActionRecognitionPredictionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsVideoClassificationPredictionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsVideoObjectTrackingPredictionParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionClassificationPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionImageObjectDetectionPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionImageSegmentationPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTabularClassificationPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTabularRegressionPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTextExtractionPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTextSentimentPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTftFeatureImportance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTimeSeriesForecastingPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoActionRecognitionPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoClassificationPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPredictionResultError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptApiSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptInstancePromptExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecMultimodalPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecPartList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePairList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationFileInputSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationGcsInputSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationSentenceFileInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadataBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadataGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadataInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextClassificationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextDataItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextExtractionAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextPromptDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextSentimentAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTextSentimentSavedQueryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecasting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsGranularity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationAutoTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationCategoricalTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationNumericTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTextTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTables
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationAutoTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalArrayTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericArrayTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextArrayTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTimestampTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextClassification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextClassificationInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextExtraction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextExtractionInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextSentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextSentimentInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoActionRecognition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoActionRecognitionInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoClassification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoClassificationInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoObjectTracking
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoObjectTrackingInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutomlImageTrainingTunableParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionCustomJobMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionCustomTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecasting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationAutoTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationCategoricalTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationNumericTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTextTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTimestampTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecasting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsGranularity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationAutoTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationCategoricalTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationNumericTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTextTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTimestampTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVideoActionRecognitionAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVideoClassificationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVideoDataItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVideoDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVideoObjectTrackingAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVisualInspectionClassificationLabelSavedQueryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SchemaVisualInspectionMaskSavedQueryMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchDataItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchEntryPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchFeaturesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchMigratableResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchMigratableResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchNearestEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SearchNearestEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SecretEnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SecretRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ServiceAccountSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SharePointSources
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SharePointSourcesSharePointSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ShieldedVmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SlackSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SlackSourceSlackChannels
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SlackSourceSlackChannelsSlackChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SmoothGradConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SpecialistPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SpeculativeDecodingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SpeculativeDecodingSpecDraftModelSpeculation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SpeculativeDecodingSpecNgramSpeculation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SpeechConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StartNotebookRuntimeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StartNotebookRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StopNotebookRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StopTrialRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StratifiedSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StreamQueryReasoningEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StreamRawPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StreamingPredictRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StreamingPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StreamingReadFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StringArray
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StructFieldValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StructValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Study
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecMetricSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudySpecStudyStoppingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1StudyTimeConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SuggestTrialsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SuggestTrialsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SuggestTrialsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationQualityInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationQualityInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationQualityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationQualitySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbosityInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbosityInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbosityResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbositySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SupervisedHyperParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningDataStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningDatasetDistributionDatasetBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SyncFeatureViewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1SyncFeatureViewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TfRecordDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Tensor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Tensorboard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardBlob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardBlobSequence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardExperiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardTensor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ThresholdConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TimeSeriesData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TimeSeriesDataPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TimestampSplit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TokensInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCallValidInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCallValidInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCallValidMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCallValidResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCallValidSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolCodeExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolComputerUse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolGoogleSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrainingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrainingPipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Trajectory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Trial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrialContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TrialParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TunedModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TunedModelCheckpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TunedModelRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TuningDataStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1TuningJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UndeployIndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UndeployIndexRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UndeployIndexResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UndeployModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UndeployModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UndeployModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UnmanagedContainerModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateDeploymentResourcePoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateEndpointLongRunningRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateExplanationDatasetOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateExplanationDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateExplanationDatasetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureGroupOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureOnlineStoreOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureViewOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateFeaturestoreOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateIndexOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateModelDeploymentMonitoringJobOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdatePersistentResourceOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateSpecialistPoolOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpdateTensorboardOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpgradeNotebookRuntimeOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpgradeNotebookRuntimeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UploadModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UploadModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UploadModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UploadRagFileConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UploadRagFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UploadRagFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpsertDatapointsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UpsertDatapointsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UrlContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UrlContextMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UrlMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1UserActionReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1Value
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VertexAiSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VertexAiSearchDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VertexAiSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VertexRagStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VertexRagStoreRagResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VideoMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1VoiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WorkerPoolSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteFeatureValuesPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteFeatureValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteFeatureValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardExperimentDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardExperimentDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardRunDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardRunDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1XraiAttribution
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
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
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
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeLatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeMoney
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudAiLargeModelsVisionGenerateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generated_samples, as: 'generatedSamples', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionMedia, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionMedia::Representation
      
          property :rai_media_filtered_count, as: 'raiMediaFilteredCount'
          collection :rai_media_filtered_reasons, as: 'raiMediaFilteredReasons'
          collection :videos, as: 'videos', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionGenerateVideoResponseVideo, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionGenerateVideoResponseVideo::Representation
      
        end
      end
      
      class CloudAiLargeModelsVisionGenerateVideoResponseVideo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_base64_encoded, as: 'bytesBase64Encoded'
          property :gcs_uri, as: 'gcsUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class CloudAiLargeModelsVisionImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :generation_seed, as: 'generationSeed'
          property :image, :base64 => true, as: 'image'
          property :image_rai_scores, as: 'imageRaiScores', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionImageRaiScores, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionImageRaiScores::Representation
      
          property :image_size, as: 'imageSize', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionImageImageSize, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionImageImageSize::Representation
      
          property :rai_info, as: 'raiInfo', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfo, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfo::Representation
      
          property :semantic_filter_response, as: 'semanticFilterResponse', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionSemanticFilterResponse, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionSemanticFilterResponse::Representation
      
          property :text, as: 'text'
          property :uri, as: 'uri'
        end
      end
      
      class CloudAiLargeModelsVisionImageImageSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channels, as: 'channels'
          property :height, as: 'height'
          property :width, as: 'width'
        end
      end
      
      class CloudAiLargeModelsVisionImageRaiScores
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agile_watermark_detection_score, as: 'agileWatermarkDetectionScore'
        end
      end
      
      class CloudAiLargeModelsVisionMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionImage, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionImage::Representation
      
          property :video, as: 'video', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionVideo, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionVideo::Representation
      
        end
      end
      
      class CloudAiLargeModelsVisionNamedBoundingBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :classes, as: 'classes'
          collection :entities, as: 'entities'
          collection :scores, as: 'scores'
          property :x1, as: 'x1'
          property :x2, as: 'x2'
          property :y1, as: 'y1'
          property :y2, as: 'y2'
        end
      end
      
      class CloudAiLargeModelsVisionRaiInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocked_entities, as: 'blockedEntities'
          collection :detected_labels, as: 'detectedLabels', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfoDetectedLabels, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfoDetectedLabels::Representation
      
          property :model_name, as: 'modelName'
          collection :rai_categories, as: 'raiCategories'
          collection :scores, as: 'scores'
        end
      end
      
      class CloudAiLargeModelsVisionRaiInfoDetectedLabels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfoDetectedLabelsEntity, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfoDetectedLabelsEntity::Representation
      
          property :rai_category, as: 'raiCategory'
        end
      end
      
      class CloudAiLargeModelsVisionRaiInfoDetectedLabelsBoundingBox
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x1, as: 'x1'
          property :x2, as: 'x2'
          property :y1, as: 'y1'
          property :y2, as: 'y2'
        end
      end
      
      class CloudAiLargeModelsVisionRaiInfoDetectedLabelsEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box, as: 'boundingBox', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfoDetectedLabelsBoundingBox, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionRaiInfoDetectedLabelsBoundingBox::Representation
      
          property :description, as: 'description'
          property :iou_score, as: 'iouScore'
          property :mid, as: 'mid'
          property :score, as: 'score'
        end
      end
      
      class CloudAiLargeModelsVisionSemanticFilterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :named_bounding_boxes, as: 'namedBoundingBoxes', class: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionNamedBoundingBox, decorator: Google::Apis::AiplatformV1::CloudAiLargeModelsVisionNamedBoundingBox::Representation
      
          property :passed_semantic_filter, as: 'passedSemanticFilter'
        end
      end
      
      class CloudAiLargeModelsVisionVideo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_video, as: 'encodedVideo'
          property :encoding, as: 'encoding'
          property :text, as: 'text'
          property :uri, as: 'uri'
          property :video, :base64 => true, as: 'video'
        end
      end
      
      class CloudAiPlatformCommonCreatePipelineJobApiErrorDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_cause, as: 'errorCause'
          property :public_message, as: 'publicMessage'
        end
      end
      
      class GoogleApiHttpBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data, :base64 => true, as: 'data'
          collection :extensions, as: 'extensions'
        end
      end
      
      class GoogleCloudAiplatformV1ActiveLearningConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_data_item_count, :numeric_string => true, as: 'maxDataItemCount'
          property :max_data_item_percentage, as: 'maxDataItemPercentage'
          property :sample_config, as: 'sampleConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SampleConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SampleConfig::Representation
      
          property :training_config, as: 'trainingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrainingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrainingConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts'
          collection :executions, as: 'executions'
        end
      end
      
      class GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1AddContextChildrenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_contexts, as: 'childContexts'
        end
      end
      
      class GoogleCloudAiplatformV1AddContextChildrenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1AddExecutionEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :events, as: 'events', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Event, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Event::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1AddExecutionEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1AddTrialMeasurementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :measurement, as: 'measurement', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_source, as: 'annotationSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UserActionReference, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UserActionReference::Representation
      
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :payload, as: 'payload'
          property :payload_schema_uri, as: 'payloadSchemaUri'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1AnnotationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1ApiAuth
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_config, as: 'apiKeyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ApiAuthApiKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_secret_version, as: 'apiKeySecretVersion'
          property :api_key_string, as: 'apiKeyString'
        end
      end
      
      class GoogleCloudAiplatformV1Artifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          property :schema_title, as: 'schemaTitle'
          property :schema_version, as: 'schemaVersion'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1AssignNotebookRuntimeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1AssignNotebookRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebook_runtime, as: 'notebookRuntime', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntime, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntime::Representation
      
          property :notebook_runtime_id, as: 'notebookRuntimeId'
          property :notebook_runtime_template, as: 'notebookRuntimeTemplate'
        end
      end
      
      class GoogleCloudAiplatformV1Attribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approximation_error, as: 'approximationError'
          property :baseline_output_value, as: 'baselineOutputValue'
          property :feature_attributions, as: 'featureAttributions'
          property :instance_output_value, as: 'instanceOutputValue'
          property :output_display_name, as: 'outputDisplayName'
          collection :output_index, as: 'outputIndex'
          property :output_name, as: 'outputName'
        end
      end
      
      class GoogleCloudAiplatformV1AugmentPromptRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :model, as: 'model', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AugmentPromptRequestModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AugmentPromptRequestModel::Representation
      
          property :vertex_rag_store, as: 'vertexRagStore', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexRagStore, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexRagStore::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1AugmentPromptRequestModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudAiplatformV1AugmentPromptResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :augmented_prompt, as: 'augmentedPrompt', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          collection :facts, as: 'facts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Fact, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Fact::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1AuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_config, as: 'apiKeyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigApiKeyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigApiKeyConfig::Representation
      
          property :auth_type, as: 'authType'
          property :google_service_account_config, as: 'googleServiceAccountConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigGoogleServiceAccountConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigGoogleServiceAccountConfig::Representation
      
          property :http_basic_auth_config, as: 'httpBasicAuthConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigHttpBasicAuthConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigHttpBasicAuthConfig::Representation
      
          property :oauth_config, as: 'oauthConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigOauthConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigOauthConfig::Representation
      
          property :oidc_config, as: 'oidcConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigOidcConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfigOidcConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1AuthConfigApiKeyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_secret, as: 'apiKeySecret'
          property :api_key_string, as: 'apiKeyString'
          property :http_element_location, as: 'httpElementLocation'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAiplatformV1AuthConfigGoogleServiceAccountConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudAiplatformV1AuthConfigHttpBasicAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential_secret, as: 'credentialSecret'
        end
      end
      
      class GoogleCloudAiplatformV1AuthConfigOauthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudAiplatformV1AuthConfigOidcConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudAiplatformV1AutomaticResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_replica_count, as: 'maxReplicaCount'
          property :min_replica_count, as: 'minReplicaCount'
        end
      end
      
      class GoogleCloudAiplatformV1AutoraterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autorater_model, as: 'autoraterModel'
          property :flip_enabled, as: 'flipEnabled'
          property :sampling_count, as: 'samplingCount'
        end
      end
      
      class GoogleCloudAiplatformV1AutoscalingMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
          property :target, as: 'target'
        end
      end
      
      class GoogleCloudAiplatformV1AvroSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCancelPipelineJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateFeaturesOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateFeaturesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateFeatureRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateFeatureRequest::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardRunsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateTensorboardRunRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateTensorboardRunRequest::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tensorboard_runs, as: 'tensorboardRuns', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardRun, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardRun::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchCreateTensorboardTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tensorboard_time_series, as: 'tensorboardTimeSeries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeries, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchDedicatedResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          property :max_replica_count, as: 'maxReplicaCount'
          property :starting_replica_count, as: 'startingReplicaCount'
        end
      end
      
      class GoogleCloudAiplatformV1BatchDeletePipelineJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudAiplatformV1BatchImportEvaluatedAnnotationsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluated_annotations, as: 'evaluatedAnnotations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EvaluatedAnnotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EvaluatedAnnotation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchImportEvaluatedAnnotationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imported_evaluated_annotations_count, as: 'importedEvaluatedAnnotationsCount'
        end
      end
      
      class GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :model_evaluation_slices, as: 'modelEvaluationSlices', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSlice, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSlice::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchImportModelEvaluationSlicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :imported_model_evaluation_slices, as: 'importedModelEvaluationSlices'
        end
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          collection :partial_results, as: 'partialResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchMigrateResourcesOperationMetadataPartialResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchMigrateResourcesOperationMetadataPartialResult::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesOperationMetadataPartialResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :model, as: 'model'
          property :request, as: 'request', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequest::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migrate_resource_requests, as: 'migrateResourceRequests', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequest::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchMigrateResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migrate_resource_responses, as: 'migrateResourceResponses', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceResponse, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceResponse::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_stats, as: 'completionStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CompletionStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CompletionStats::Representation
      
          property :create_time, as: 'createTime'
          property :dedicated_resources, as: 'dedicatedResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchDedicatedResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchDedicatedResources::Representation
      
          property :disable_container_logging, as: 'disableContainerLogging'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :explanation_spec, as: 'explanationSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec::Representation
      
          property :generate_explanation, as: 'generateExplanation'
          property :input_config, as: 'inputConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobInputConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobInputConfig::Representation
      
          property :instance_config, as: 'instanceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig::Representation
      
          hash :labels, as: 'labels'
          property :manual_batch_tuning_parameters, as: 'manualBatchTuningParameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ManualBatchTuningParameters, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ManualBatchTuningParameters::Representation
      
          property :model, as: 'model'
          property :model_parameters, as: 'modelParameters'
          property :model_version_id, as: 'modelVersionId'
          property :name, as: 'name'
          property :output_config, as: 'outputConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobOutputConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobOutputConfig::Representation
      
          property :output_info, as: 'outputInfo', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobOutputInfo, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJobOutputInfo::Representation
      
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :resources_consumed, as: 'resourcesConsumed', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourcesConsumed, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourcesConsumed::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account, as: 'serviceAccount'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :unmanaged_container_model, as: 'unmanagedContainerModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UnmanagedContainerModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UnmanagedContainerModel::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
          property :instances_format, as: 'instancesFormat'
        end
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobInstanceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_fields, as: 'excludedFields'
          collection :included_fields, as: 'includedFields'
          property :instance_type, as: 'instanceType'
          property :key_field, as: 'keyField'
        end
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :predictions_format, as: 'predictionsFormat'
        end
      end
      
      class GoogleCloudAiplatformV1BatchPredictionJobOutputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_output_dataset, as: 'bigqueryOutputDataset'
          property :bigquery_output_table, as: 'bigqueryOutputTable'
          property :gcs_output_directory, as: 'gcsOutputDirectory'
        end
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_read_instances, as: 'bigqueryReadInstances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource::Representation
      
          property :csv_read_instances, as: 'csvReadInstances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvSource::Representation
      
          property :destination, as: 'destination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueDestination::Representation
      
          collection :entity_type_specs, as: 'entityTypeSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchReadFeatureValuesRequestEntityTypeSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchReadFeatureValuesRequestEntityTypeSpec::Representation
      
          collection :pass_through_fields, as: 'passThroughFields', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchReadFeatureValuesRequestPassThroughField, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchReadFeatureValuesRequestPassThroughField::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesRequestEntityTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type_id, as: 'entityTypeId'
          property :feature_selector, as: 'featureSelector', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector::Representation
      
          collection :settings, as: 'settings', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DestinationFeatureSetting, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DestinationFeatureSetting::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesRequestPassThroughField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
        end
      end
      
      class GoogleCloudAiplatformV1BatchReadFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1BatchReadTensorboardTimeSeriesDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :time_series_data, as: 'timeSeriesData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesData::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudAiplatformV1BigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
        end
      end
      
      class GoogleCloudAiplatformV1BleuInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BleuInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1BleuMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1BleuResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bleu_metric_values, as: 'bleuMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1BleuSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_effective_order, as: 'useEffectiveOrder'
        end
      end
      
      class GoogleCloudAiplatformV1Blob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :display_name, as: 'displayName'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1BlurBaselineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_blur_sigma, as: 'maxBlurSigma'
        end
      end
      
      class GoogleCloudAiplatformV1BoolArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1CacheConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_cache, as: 'disableCache'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAiplatformV1CachedContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :expire_time, as: 'expireTime'
          property :model, as: 'model'
          property :name, as: 'name'
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :tool_config, as: 'toolConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolConfig::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool::Representation
      
          property :ttl, as: 'ttl'
          property :update_time, as: 'updateTime'
          property :usage_metadata, as: 'usageMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CachedContentUsageMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CachedContentUsageMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CachedContentUsageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_duration_seconds, as: 'audioDurationSeconds'
          property :image_count, as: 'imageCount'
          property :text_count, as: 'textCount'
          property :total_token_count, as: 'totalTokenCount'
          property :video_duration_seconds, as: 'videoDurationSeconds'
        end
      end
      
      class GoogleCloudAiplatformV1CancelBatchPredictionJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelCustomJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelDataLabelingJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelHyperparameterTuningJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelNasJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelPipelineJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelTrainingPipelineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CancelTuningJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1Candidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avg_logprobs, as: 'avgLogprobs'
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CitationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CitationMetadata::Representation
      
          property :content, as: 'content', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :finish_message, as: 'finishMessage'
          property :finish_reason, as: 'finishReason'
          property :grounding_metadata, as: 'groundingMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingMetadata::Representation
      
          property :index, as: 'index'
          property :logprobs_result, as: 'logprobsResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResult::Representation
      
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyRating, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyRating::Representation
      
          property :url_context_metadata, as: 'urlContextMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UrlContextMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UrlContextMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateMetatdata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :study, as: 'study'
          property :trial, as: 'trial'
        end
      end
      
      class GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1CheckTrialEarlyStoppingStateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :should_stop, as: 'shouldStop'
        end
      end
      
      class GoogleCloudAiplatformV1Checkpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkpoint_id, as: 'checkpointId'
          property :epoch, :numeric_string => true, as: 'epoch'
          property :step, :numeric_string => true, as: 'step'
        end
      end
      
      class GoogleCloudAiplatformV1Citation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :license, as: 'license'
          property :publication_date, as: 'publicationDate', class: Google::Apis::AiplatformV1::GoogleTypeDate, decorator: Google::Apis::AiplatformV1::GoogleTypeDate::Representation
      
          property :start_index, as: 'startIndex'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1CitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Citation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Citation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Claim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          collection :fact_indexes, as: 'factIndexes'
          property :score, as: 'score'
          property :start_index, as: 'startIndex'
        end
      end
      
      class GoogleCloudAiplatformV1ClientConnectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inference_timeout, as: 'inferenceTimeout'
        end
      end
      
      class GoogleCloudAiplatformV1CodeExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :outcome, as: 'outcome'
          property :output, as: 'output'
        end
      end
      
      class GoogleCloudAiplatformV1CoherenceInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CoherenceInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
        end
      end
      
      class GoogleCloudAiplatformV1CoherenceResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1CoherenceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1ColabImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :release_name, as: 'releaseName'
        end
      end
      
      class GoogleCloudAiplatformV1CometInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CometInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudAiplatformV1CometResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1CometSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_language, as: 'sourceLanguage'
          property :target_language, as: 'targetLanguage'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1CompleteTrialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :final_measurement, as: 'finalMeasurement', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement::Representation
      
          property :infeasible_reason, as: 'infeasibleReason'
          property :trial_infeasible, as: 'trialInfeasible'
        end
      end
      
      class GoogleCloudAiplatformV1CompletionStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_count, :numeric_string => true, as: 'failedCount'
          property :incomplete_count, :numeric_string => true, as: 'incompleteCount'
          property :successful_count, :numeric_string => true, as: 'successfulCount'
          property :successful_forecast_point_count, :numeric_string => true, as: 'successfulForecastPointCount'
        end
      end
      
      class GoogleCloudAiplatformV1ComputeTokensRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          collection :instances, as: 'instances'
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudAiplatformV1ComputeTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tokens_info, as: 'tokensInfo', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TokensInfo, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TokensInfo::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ContainerRegistryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudAiplatformV1ContainerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :env, as: 'env', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar::Representation
      
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleCloudAiplatformV1Content
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parts, as: 'parts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Part, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Part::Representation
      
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudAiplatformV1ContentMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :values, as: 'values', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContentMapContents, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContentMapContents::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ContentMapContents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          collection :parent_contexts, as: 'parentContexts'
          property :schema_title, as: 'schemaTitle'
          property :schema_version, as: 'schemaVersion'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1CopyModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CopyModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :model_id, as: 'modelId'
          property :parent_model, as: 'parentModel'
          property :source_model, as: 'sourceModel'
        end
      end
      
      class GoogleCloudAiplatformV1CopyModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_version_id, as: 'modelVersionId'
        end
      end
      
      class GoogleCloudAiplatformV1CorpusStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_status, as: 'errorStatus'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudAiplatformV1CorroborateContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          collection :facts, as: 'facts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Fact, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Fact::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CorroborateContentRequestParameters, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CorroborateContentRequestParameters::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CorroborateContentRequestParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_threshold, as: 'citationThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1CorroborateContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :claims, as: 'claims', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Claim, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Claim::Representation
      
          property :corroboration_score, as: 'corroborationScore'
        end
      end
      
      class GoogleCloudAiplatformV1CountTokensRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfig::Representation
      
          collection :instances, as: 'instances'
          property :model, as: 'model'
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CountTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :prompt_tokens_details, as: 'promptTokensDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount::Representation
      
          property :total_billable_characters, as: 'totalBillableCharacters'
          property :total_tokens, as: 'totalTokens'
        end
      end
      
      class GoogleCloudAiplatformV1CreateDatasetOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateDatasetVersionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateDeploymentResourcePoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateDeploymentResourcePoolRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_resource_pool, as: 'deploymentResourcePool', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeploymentResourcePool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeploymentResourcePool::Representation
      
          property :deployment_resource_pool_id, as: 'deploymentResourcePoolId'
        end
      end
      
      class GoogleCloudAiplatformV1CreateEndpointOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateEntityTypeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateFeatureGroupOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateFeatureOnlineStoreOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateFeatureOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateFeatureRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature, as: 'feature', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature::Representation
      
          property :feature_id, as: 'featureId'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudAiplatformV1CreateFeatureViewOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateFeaturestoreOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateIndexEndpointOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateIndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :nearest_neighbor_search_operation_metadata, as: 'nearestNeighborSearchOperationMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateMetadataStoreOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateNotebookExecutionJobOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebook_execution_job, as: 'notebookExecutionJob', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJob::Representation
      
          property :notebook_execution_job_id, as: 'notebookExecutionJobId'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudAiplatformV1CreateNotebookRuntimeTemplateOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreatePersistentResourceOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1CreatePipelineJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :pipeline_job, as: 'pipelineJob', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJob::Representation
      
          property :pipeline_job_id, as: 'pipelineJobId'
        end
      end
      
      class GoogleCloudAiplatformV1CreateRegistryFeatureOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateSpecialistPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateTensorboardOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CreateTensorboardRunRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :tensorboard_run, as: 'tensorboardRun', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardRun, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardRun::Representation
      
          property :tensorboard_run_id, as: 'tensorboardRunId'
        end
      end
      
      class GoogleCloudAiplatformV1CreateTensorboardTimeSeriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :tensorboard_time_series, as: 'tensorboardTimeSeries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeries, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeries::Representation
      
          property :tensorboard_time_series_id, as: 'tensorboardTimeSeriesId'
        end
      end
      
      class GoogleCloudAiplatformV1CsvDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CsvSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CustomJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :job_spec, as: 'jobSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          hash :web_access_uris, as: 'webAccessUris'
        end
      end
      
      class GoogleCloudAiplatformV1CustomJobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_output_directory, as: 'baseOutputDirectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :enable_dashboard_access, as: 'enableDashboardAccess'
          property :enable_web_access, as: 'enableWebAccess'
          property :experiment, as: 'experiment'
          property :experiment_run, as: 'experimentRun'
          collection :models, as: 'models'
          property :network, as: 'network'
          property :persistent_resource_id, as: 'persistentResourceId'
          property :protected_artifact_location_id, as: 'protectedArtifactLocationId'
          property :psc_interface_config, as: 'pscInterfaceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscInterfaceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscInterfaceConfig::Representation
      
          collection :reserved_ip_ranges, as: 'reservedIpRanges'
          property :scheduling, as: 'scheduling', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Scheduling, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Scheduling::Representation
      
          property :service_account, as: 'serviceAccount'
          property :tensorboard, as: 'tensorboard'
          collection :worker_pool_specs, as: 'workerPoolSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1WorkerPoolSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1WorkerPoolSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CustomOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :raw_outputs, as: 'rawOutputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RawOutput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RawOutput::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1CustomOutputFormatConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_raw_output, as: 'returnRawOutput'
        end
      end
      
      class GoogleCloudAiplatformV1DataItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :payload, as: 'payload'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1DataItemView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Annotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Annotation::Representation
      
          property :data_item, as: 'dataItem', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataItem, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataItem::Representation
      
          property :has_truncated_annotations, as: 'hasTruncatedAnnotations'
        end
      end
      
      class GoogleCloudAiplatformV1DataLabelingJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_learning_config, as: 'activeLearningConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ActiveLearningConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ActiveLearningConfig::Representation
      
          hash :annotation_labels, as: 'annotationLabels'
          property :create_time, as: 'createTime'
          property :current_spend, as: 'currentSpend', class: Google::Apis::AiplatformV1::GoogleTypeMoney, decorator: Google::Apis::AiplatformV1::GoogleTypeMoney::Representation
      
          collection :datasets, as: 'datasets'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :inputs, as: 'inputs'
          property :inputs_schema_uri, as: 'inputsSchemaUri'
          property :instruction_uri, as: 'instructionUri'
          property :labeler_count, as: 'labelerCount'
          property :labeling_progress, as: 'labelingProgress'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :specialist_pools, as: 'specialistPools'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_item_count, :numeric_string => true, as: 'dataItemCount'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :metadata, as: 'metadata'
          property :metadata_artifact, as: 'metadataArtifact'
          property :metadata_schema_uri, as: 'metadataSchemaUri'
          property :model_reference, as: 'modelReference'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          collection :saved_queries, as: 'savedQueries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SavedQuery, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SavedQuery::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1DatasetVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_dataset_name, as: 'bigQueryDatasetName'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :metadata, as: 'metadata'
          property :model_reference, as: 'modelReference'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1DedicatedResources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :autoscaling_metric_specs, as: 'autoscalingMetricSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutoscalingMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutoscalingMetricSpec::Representation
      
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          property :max_replica_count, as: 'maxReplicaCount'
          property :min_replica_count, as: 'minReplicaCount'
          property :required_replica_count, as: 'requiredReplicaCount'
          property :spot, as: 'spot'
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :select_entity, as: 'selectEntity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity::Representation
      
          property :select_time_range_and_feature, as: 'selectTimeRangeAndFeature', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id_selector, as: 'entityIdSelector', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EntityIdSelector, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EntityIdSelector::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesRequestSelectTimeRangeAndFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_selector, as: 'featureSelector', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector::Representation
      
          property :skip_online_storage_delete, as: 'skipOnlineStorageDelete'
          property :time_range, as: 'timeRange', class: Google::Apis::AiplatformV1::GoogleTypeInterval, decorator: Google::Apis::AiplatformV1::GoogleTypeInterval::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :select_entity, as: 'selectEntity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectEntity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectEntity::Representation
      
          property :select_time_range_and_feature, as: 'selectTimeRangeAndFeature', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectTimeRangeAndFeature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectTimeRangeAndFeature::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offline_storage_deleted_entity_row_count, :numeric_string => true, as: 'offlineStorageDeletedEntityRowCount'
          property :online_storage_deleted_entity_count, :numeric_string => true, as: 'onlineStorageDeletedEntityCount'
        end
      end
      
      class GoogleCloudAiplatformV1DeleteFeatureValuesResponseSelectTimeRangeAndFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :impacted_feature_count, :numeric_string => true, as: 'impactedFeatureCount'
          property :offline_storage_modified_entity_row_count, :numeric_string => true, as: 'offlineStorageModifiedEntityRowCount'
          property :online_storage_modified_entity_count, :numeric_string => true, as: 'onlineStorageModifiedEntityCount'
        end
      end
      
      class GoogleCloudAiplatformV1DeleteMetadataStoreOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeleteOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployIndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index_id, as: 'deployedIndexId'
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployIndexRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index, as: 'deployedIndex', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployIndexResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index, as: 'deployedIndex', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model, as: 'deployedModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel::Representation
      
          hash :traffic_split, as: 'trafficSplit'
        end
      end
      
      class GoogleCloudAiplatformV1DeployModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model, as: 'deployedModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :model_id, as: 'modelId'
          property :project_number, :numeric_string => true, as: 'projectNumber'
          property :publisher_model, as: 'publisherModel'
        end
      end
      
      class GoogleCloudAiplatformV1DeployRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_config, as: 'deployConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployRequestDeployConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployRequestDeployConfig::Representation
      
          property :endpoint_config, as: 'endpointConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployRequestEndpointConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployRequestEndpointConfig::Representation
      
          property :hugging_face_model_id, as: 'huggingFaceModelId'
          property :model_config, as: 'modelConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployRequestModelConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployRequestModelConfig::Representation
      
          property :publisher_model_name, as: 'publisherModelName'
        end
      end
      
      class GoogleCloudAiplatformV1DeployRequestDeployConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_resources, as: 'dedicatedResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources::Representation
      
          property :fast_tryout_enabled, as: 'fastTryoutEnabled'
          hash :system_labels, as: 'systemLabels'
        end
      end
      
      class GoogleCloudAiplatformV1DeployRequestEndpointConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_endpoint_enabled, as: 'dedicatedEndpointEnabled'
          property :endpoint_display_name, as: 'endpointDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1DeployRequestModelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_eula, as: 'acceptEula'
          property :container_spec, as: 'containerSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec::Representation
      
          property :hugging_face_access_token, as: 'huggingFaceAccessToken'
          property :hugging_face_cache_enabled, as: 'huggingFaceCacheEnabled'
          property :model_display_name, as: 'modelDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1DeployResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :model, as: 'model'
          property :publisher_model, as: 'publisherModel'
        end
      end
      
      class GoogleCloudAiplatformV1DeployedIndex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_resources, as: 'automaticResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources::Representation
      
          property :create_time, as: 'createTime'
          property :dedicated_resources, as: 'dedicatedResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources::Representation
      
          property :deployed_index_auth_config, as: 'deployedIndexAuthConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndexAuthConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndexAuthConfig::Representation
      
          property :deployment_group, as: 'deploymentGroup'
          property :display_name, as: 'displayName'
          property :enable_access_logging, as: 'enableAccessLogging'
          property :enable_datapoint_upsert_logging, as: 'enableDatapointUpsertLogging'
          property :id, as: 'id'
          property :index, as: 'index'
          property :index_sync_time, as: 'indexSyncTime'
          property :private_endpoints, as: 'privateEndpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexPrivateEndpoints, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexPrivateEndpoints::Representation
      
          collection :psc_automation_configs, as: 'pscAutomationConfigs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscAutomationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscAutomationConfig::Representation
      
          collection :reserved_ip_ranges, as: 'reservedIpRanges'
        end
      end
      
      class GoogleCloudAiplatformV1DeployedIndexAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_provider, as: 'authProvider', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProvider, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProvider::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DeployedIndexAuthConfigAuthProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_issuers, as: 'allowedIssuers'
          collection :audiences, as: 'audiences'
        end
      end
      
      class GoogleCloudAiplatformV1DeployedIndexRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index_id, as: 'deployedIndexId'
          property :display_name, as: 'displayName'
          property :index_endpoint, as: 'indexEndpoint'
        end
      end
      
      class GoogleCloudAiplatformV1DeployedModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_resources, as: 'automaticResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources::Representation
      
          property :checkpoint_id, as: 'checkpointId'
          property :create_time, as: 'createTime'
          property :dedicated_resources, as: 'dedicatedResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources::Representation
      
          property :disable_container_logging, as: 'disableContainerLogging'
          property :disable_explanations, as: 'disableExplanations'
          property :display_name, as: 'displayName'
          property :enable_access_logging, as: 'enableAccessLogging'
          property :explanation_spec, as: 'explanationSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec::Representation
      
          property :faster_deployment_config, as: 'fasterDeploymentConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FasterDeploymentConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FasterDeploymentConfig::Representation
      
          property :id, as: 'id'
          property :model, as: 'model'
          property :model_version_id, as: 'modelVersionId'
          property :private_endpoints, as: 'privateEndpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateEndpoints, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateEndpoints::Representation
      
          property :service_account, as: 'serviceAccount'
          property :shared_resources, as: 'sharedResources'
          property :speculative_decoding_spec, as: 'speculativeDecodingSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeculativeDecodingSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeculativeDecodingSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModelStatus, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModelStatus::Representation
      
          hash :system_labels, as: 'systemLabels'
        end
      end
      
      class GoogleCloudAiplatformV1DeployedModelRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkpoint_id, as: 'checkpointId'
          property :deployed_model_id, as: 'deployedModelId'
          property :endpoint, as: 'endpoint'
        end
      end
      
      class GoogleCloudAiplatformV1DeployedModelStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :available_replica_count, as: 'availableReplicaCount'
          property :last_update_time, as: 'lastUpdateTime'
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudAiplatformV1DeploymentResourcePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dedicated_resources, as: 'dedicatedResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources::Representation
      
          property :disable_container_logging, as: 'disableContainerLogging'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudAiplatformV1DestinationFeatureSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_field, as: 'destinationField'
          property :feature_id, as: 'featureId'
        end
      end
      
      class GoogleCloudAiplatformV1DirectPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DirectPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :outputs, as: 'outputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1DirectRawPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input, :base64 => true, as: 'input'
          property :method_name, as: 'methodName'
        end
      end
      
      class GoogleCloudAiplatformV1DirectRawPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output, :base64 => true, as: 'output'
        end
      end
      
      class GoogleCloudAiplatformV1DirectUploadSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1DiskSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_size_gb, as: 'bootDiskSizeGb'
          property :boot_disk_type, as: 'bootDiskType'
        end
      end
      
      class GoogleCloudAiplatformV1DnsPeeringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :target_network, as: 'targetNetwork'
          property :target_project, as: 'targetProject'
        end
      end
      
      class GoogleCloudAiplatformV1DoubleArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1DynamicRetrievalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_threshold, as: 'dynamicThreshold'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudAiplatformV1EncryptionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class GoogleCloudAiplatformV1Endpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_connection_config, as: 'clientConnectionConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ClientConnectionConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ClientConnectionConfig::Representation
      
          property :create_time, as: 'createTime'
          property :dedicated_endpoint_dns, as: 'dedicatedEndpointDns'
          property :dedicated_endpoint_enabled, as: 'dedicatedEndpointEnabled'
          collection :deployed_models, as: 'deployedModels', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enable_private_service_connect, as: 'enablePrivateServiceConnect'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          property :gen_ai_advanced_features_config, as: 'genAiAdvancedFeaturesConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig::Representation
      
          hash :labels, as: 'labels'
          property :model_deployment_monitoring_job, as: 'modelDeploymentMonitoringJob'
          property :name, as: 'name'
          property :network, as: 'network'
          property :predict_request_response_logging_config, as: 'predictRequestResponseLoggingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig::Representation
      
          property :private_service_connect_config, as: 'privateServiceConnectConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateServiceConnectConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateServiceConnectConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          hash :traffic_split, as: 'trafficSplit'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1EnterpriseWebSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1EntityIdSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv_source, as: 'csvSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvSource::Representation
      
          property :entity_id_field, as: 'entityIdField'
        end
      end
      
      class GoogleCloudAiplatformV1EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :monitoring_config, as: 'monitoringConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfig::Representation
      
          property :name, as: 'name'
          property :offline_storage_ttl_days, as: 'offlineStorageTtlDays'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1ErrorAnalysisAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributed_items, as: 'attributedItems', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ErrorAnalysisAnnotationAttributedItem, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ErrorAnalysisAnnotationAttributedItem::Representation
      
          property :outlier_score, as: 'outlierScore'
          property :outlier_threshold, as: 'outlierThreshold'
          property :query_type, as: 'queryType'
        end
      end
      
      class GoogleCloudAiplatformV1ErrorAnalysisAnnotationAttributedItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_resource_name, as: 'annotationResourceName'
          property :distance, as: 'distance'
        end
      end
      
      class GoogleCloudAiplatformV1EvaluateDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autorater_config, as: 'autoraterConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutoraterConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutoraterConfig::Representation
      
          property :dataset, as: 'dataset', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EvaluationDataset, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EvaluationDataset::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Metric, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Metric::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1OutputConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1OutputConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1EvaluateInstancesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autorater_config, as: 'autoraterConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutoraterConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutoraterConfig::Representation
      
          property :bleu_input, as: 'bleuInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuInput::Representation
      
          property :coherence_input, as: 'coherenceInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceInput::Representation
      
          property :comet_input, as: 'cometInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometInput::Representation
      
          property :exact_match_input, as: 'exactMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchInput::Representation
      
          property :fluency_input, as: 'fluencyInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencyInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencyInput::Representation
      
          property :fulfillment_input, as: 'fulfillmentInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentInput::Representation
      
          property :groundedness_input, as: 'groundednessInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessInput::Representation
      
          property :metricx_input, as: 'metricxInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxInput::Representation
      
          property :pairwise_metric_input, as: 'pairwiseMetricInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricInput::Representation
      
          property :pairwise_question_answering_quality_input, as: 'pairwiseQuestionAnsweringQualityInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInput::Representation
      
          property :pairwise_summarization_quality_input, as: 'pairwiseSummarizationQualityInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualityInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualityInput::Representation
      
          property :pointwise_metric_input, as: 'pointwiseMetricInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricInput::Representation
      
          property :question_answering_correctness_input, as: 'questionAnsweringCorrectnessInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInput::Representation
      
          property :question_answering_helpfulness_input, as: 'questionAnsweringHelpfulnessInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInput::Representation
      
          property :question_answering_quality_input, as: 'questionAnsweringQualityInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualityInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualityInput::Representation
      
          property :question_answering_relevance_input, as: 'questionAnsweringRelevanceInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceInput::Representation
      
          property :rouge_input, as: 'rougeInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeInput::Representation
      
          property :rubric_based_instruction_following_input, as: 'rubricBasedInstructionFollowingInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput::Representation
      
          property :safety_input, as: 'safetyInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyInput::Representation
      
          property :summarization_helpfulness_input, as: 'summarizationHelpfulnessInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessInput::Representation
      
          property :summarization_quality_input, as: 'summarizationQualityInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualityInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualityInput::Representation
      
          property :summarization_verbosity_input, as: 'summarizationVerbosityInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbosityInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbosityInput::Representation
      
          property :tool_call_valid_input, as: 'toolCallValidInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidInput::Representation
      
          property :tool_name_match_input, as: 'toolNameMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchInput::Representation
      
          property :tool_parameter_key_match_input, as: 'toolParameterKeyMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchInput::Representation
      
          property :tool_parameter_kv_match_input, as: 'toolParameterKvMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchInput::Representation
      
          property :trajectory_any_order_match_input, as: 'trajectoryAnyOrderMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInput::Representation
      
          property :trajectory_exact_match_input, as: 'trajectoryExactMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchInput::Representation
      
          property :trajectory_in_order_match_input, as: 'trajectoryInOrderMatchInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchInput::Representation
      
          property :trajectory_precision_input, as: 'trajectoryPrecisionInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionInput::Representation
      
          property :trajectory_recall_input, as: 'trajectoryRecallInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallInput::Representation
      
          property :trajectory_single_tool_use_input, as: 'trajectorySingleToolUseInput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseInput::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1EvaluateInstancesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bleu_results, as: 'bleuResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuResults::Representation
      
          property :coherence_result, as: 'coherenceResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CoherenceResult::Representation
      
          property :comet_result, as: 'cometResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CometResult::Representation
      
          property :exact_match_results, as: 'exactMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchResults::Representation
      
          property :fluency_result, as: 'fluencyResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencyResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencyResult::Representation
      
          property :fulfillment_result, as: 'fulfillmentResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentResult::Representation
      
          property :groundedness_result, as: 'groundednessResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessResult::Representation
      
          property :metricx_result, as: 'metricxResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxResult::Representation
      
          property :pairwise_metric_result, as: 'pairwiseMetricResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricResult::Representation
      
          property :pairwise_question_answering_quality_result, as: 'pairwiseQuestionAnsweringQualityResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult::Representation
      
          property :pairwise_summarization_quality_result, as: 'pairwiseSummarizationQualityResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualityResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualityResult::Representation
      
          property :pointwise_metric_result, as: 'pointwiseMetricResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricResult::Representation
      
          property :question_answering_correctness_result, as: 'questionAnsweringCorrectnessResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult::Representation
      
          property :question_answering_helpfulness_result, as: 'questionAnsweringHelpfulnessResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult::Representation
      
          property :question_answering_quality_result, as: 'questionAnsweringQualityResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualityResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualityResult::Representation
      
          property :question_answering_relevance_result, as: 'questionAnsweringRelevanceResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult::Representation
      
          property :rouge_results, as: 'rougeResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeResults::Representation
      
          property :rubric_based_instruction_following_result, as: 'rubricBasedInstructionFollowingResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingResult::Representation
      
          property :safety_result, as: 'safetyResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyResult::Representation
      
          property :summarization_helpfulness_result, as: 'summarizationHelpfulnessResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessResult::Representation
      
          property :summarization_quality_result, as: 'summarizationQualityResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualityResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualityResult::Representation
      
          property :summarization_verbosity_result, as: 'summarizationVerbosityResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbosityResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbosityResult::Representation
      
          property :tool_call_valid_results, as: 'toolCallValidResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidResults::Representation
      
          property :tool_name_match_results, as: 'toolNameMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchResults::Representation
      
          property :tool_parameter_key_match_results, as: 'toolParameterKeyMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchResults::Representation
      
          property :tool_parameter_kv_match_results, as: 'toolParameterKvMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchResults::Representation
      
          property :trajectory_any_order_match_results, as: 'trajectoryAnyOrderMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchResults::Representation
      
          property :trajectory_exact_match_results, as: 'trajectoryExactMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchResults::Representation
      
          property :trajectory_in_order_match_results, as: 'trajectoryInOrderMatchResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchResults::Representation
      
          property :trajectory_precision_results, as: 'trajectoryPrecisionResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionResults::Representation
      
          property :trajectory_recall_results, as: 'trajectoryRecallResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallResults::Representation
      
          property :trajectory_single_tool_use_results, as: 'trajectorySingleToolUseResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseResults, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseResults::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1EvaluatedAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_item_payload, as: 'dataItemPayload'
          collection :error_analysis_annotations, as: 'errorAnalysisAnnotations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ErrorAnalysisAnnotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ErrorAnalysisAnnotation::Representation
      
          property :evaluated_data_item_view_id, as: 'evaluatedDataItemViewId'
          collection :explanations, as: 'explanations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EvaluatedAnnotationExplanation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EvaluatedAnnotationExplanation::Representation
      
          collection :ground_truths, as: 'groundTruths'
          collection :predictions, as: 'predictions'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1EvaluatedAnnotationExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation, as: 'explanation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Explanation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Explanation::Representation
      
          property :explanation_type, as: 'explanationType'
        end
      end
      
      class GoogleCloudAiplatformV1EvaluationDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact, as: 'artifact'
          property :event_time, as: 'eventTime'
          property :execution, as: 'execution'
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1ExactMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExactMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1ExactMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1ExactMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exact_match_metric_values, as: 'exactMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExactMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1Examples
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :example_gcs_source, as: 'exampleGcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExamplesExampleGcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExamplesExampleGcsSource::Representation
      
          property :nearest_neighbor_search_config, as: 'nearestNeighborSearchConfig'
          property :neighbor_count, as: 'neighborCount'
          property :presets, as: 'presets', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Presets, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Presets::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExamplesExampleGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExamplesOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crowding_count, as: 'crowdingCount'
          property :data_format, as: 'dataFormat'
          property :neighbor_count, as: 'neighborCount'
          collection :restrictions, as: 'restrictions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExamplesRestrictionsNamespace, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExamplesRestrictionsNamespace::Representation
      
          property :return_embeddings, as: 'returnEmbeddings'
        end
      end
      
      class GoogleCloudAiplatformV1ExamplesRestrictionsNamespace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow, as: 'allow'
          collection :deny, as: 'deny'
          property :namespace_name, as: 'namespaceName'
        end
      end
      
      class GoogleCloudAiplatformV1ExecutableCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :language, as: 'language'
        end
      end
      
      class GoogleCloudAiplatformV1Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          property :schema_title, as: 'schemaTitle'
          property :schema_version, as: 'schemaVersion'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1ExplainRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_id, as: 'deployedModelId'
          property :explanation_spec_override, as: 'explanationSpecOverride', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpecOverride, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpecOverride::Representation
      
          collection :instances, as: 'instances'
          property :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudAiplatformV1ExplainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_id, as: 'deployedModelId'
          collection :explanations, as: 'explanations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Explanation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Explanation::Representation
      
          collection :predictions, as: 'predictions'
        end
      end
      
      class GoogleCloudAiplatformV1Explanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributions, as: 'attributions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Attribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Attribution::Representation
      
          collection :neighbors, as: 'neighbors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Neighbor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Neighbor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_attributions_schema_uri, as: 'featureAttributionsSchemaUri'
          hash :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataInputMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataInputMetadata::Representation
      
          property :latent_space_source, as: 'latentSpaceSource'
          hash :outputs, as: 'outputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataOutputMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataOutputMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataInputMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dense_shape_tensor_name, as: 'denseShapeTensorName'
          collection :encoded_baselines, as: 'encodedBaselines'
          property :encoded_tensor_name, as: 'encodedTensorName'
          property :encoding, as: 'encoding'
          property :feature_value_domain, as: 'featureValueDomain', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain::Representation
      
          property :group_name, as: 'groupName'
          collection :index_feature_mapping, as: 'indexFeatureMapping'
          property :indices_tensor_name, as: 'indicesTensorName'
          collection :input_baselines, as: 'inputBaselines'
          property :input_tensor_name, as: 'inputTensorName'
          property :modality, as: 'modality'
          property :visualization, as: 'visualization', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataInputMetadataFeatureValueDomain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
          property :original_mean, as: 'originalMean'
          property :original_stddev, as: 'originalStddev'
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataInputMetadataVisualization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clip_percent_lowerbound, as: 'clipPercentLowerbound'
          property :clip_percent_upperbound, as: 'clipPercentUpperbound'
          property :color_map, as: 'colorMap'
          property :overlay_type, as: 'overlayType'
          property :polarity, as: 'polarity'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataOutputMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name_mapping_key, as: 'displayNameMappingKey'
          property :index_display_name_mapping, as: 'indexDisplayNameMapping'
          property :output_tensor_name, as: 'outputTensorName'
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataOverrideInputMetadataOverride, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataOverrideInputMetadataOverride::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationMetadataOverrideInputMetadataOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :input_baselines, as: 'inputBaselines'
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :examples, as: 'examples', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Examples, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Examples::Representation
      
          property :integrated_gradients_attribution, as: 'integratedGradientsAttribution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IntegratedGradientsAttribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IntegratedGradientsAttribution::Representation
      
          collection :output_indices, as: 'outputIndices'
          property :sampled_shapley_attribution, as: 'sampledShapleyAttribution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SampledShapleyAttribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SampledShapleyAttribution::Representation
      
          property :top_k, as: 'topK'
          property :xrai_attribution, as: 'xraiAttribution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1XraiAttribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1XraiAttribution::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadata::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationParameters, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationParameters::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExplanationSpecOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :examples_override, as: 'examplesOverride', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExamplesOverride, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExamplesOverride::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataOverride, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationMetadataOverride::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationParameters, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationParameters::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportDataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_schema_uri, as: 'annotationSchemaUri'
          property :annotations_filter, as: 'annotationsFilter'
          property :export_use, as: 'exportUse'
          property :filter_split, as: 'filterSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFilterSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFilterSplit::Representation
      
          property :fraction_split, as: 'fractionSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFractionSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFractionSplit::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :saved_query_id, as: 'savedQueryId'
        end
      end
      
      class GoogleCloudAiplatformV1ExportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_output_directory, as: 'gcsOutputDirectory'
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_config, as: 'exportConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportDataConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportDataConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_stats, as: 'dataStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDataStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDataStats::Representation
      
          collection :exported_files, as: 'exportedFiles'
        end
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueDestination::Representation
      
          property :feature_selector, as: 'featureSelector', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector::Representation
      
          property :full_export, as: 'fullExport', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFeatureValuesRequestFullExport, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFeatureValuesRequestFullExport::Representation
      
          collection :settings, as: 'settings', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DestinationFeatureSetting, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DestinationFeatureSetting::Representation
      
          property :snapshot_export, as: 'snapshotExport', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFeatureValuesRequestSnapshotExport, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportFeatureValuesRequestSnapshotExport::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesRequestFullExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesRequestSnapshotExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot_time, as: 'snapshotTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudAiplatformV1ExportFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ExportFilterSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_filter, as: 'testFilter'
          property :training_filter, as: 'trainingFilter'
          property :validation_filter, as: 'validationFilter'
        end
      end
      
      class GoogleCloudAiplatformV1ExportFractionSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_fraction, as: 'testFraction'
          property :training_fraction, as: 'trainingFraction'
          property :validation_fraction, as: 'validationFraction'
        end
      end
      
      class GoogleCloudAiplatformV1ExportModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :output_info, as: 'outputInfo', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportModelOperationMetadataOutputInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_output_uri, as: 'artifactOutputUri'
          property :image_output_uri, as: 'imageOutputUri'
        end
      end
      
      class GoogleCloudAiplatformV1ExportModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_config, as: 'outputConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportModelRequestOutputConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExportModelRequestOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportModelRequestOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_destination, as: 'artifactDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :export_format_id, as: 'exportFormatId'
          property :image_destination, as: 'imageDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContainerRegistryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContainerRegistryDestination::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExportModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ExportTensorboardTimeSeriesDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :time_series_data_points, as: 'timeSeriesDataPoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesDataPoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesDataPoint::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExternalApi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_auth, as: 'apiAuth', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuth, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuth::Representation
      
          property :api_spec, as: 'apiSpec'
          property :auth_config, as: 'authConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AuthConfig::Representation
      
          property :elastic_search_params, as: 'elasticSearchParams', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExternalApiElasticSearchParams, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExternalApiElasticSearchParams::Representation
      
          property :endpoint, as: 'endpoint'
          property :simple_search_params, as: 'simpleSearchParams', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExternalApiSimpleSearchParams, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExternalApiSimpleSearchParams::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ExternalApiElasticSearchParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :num_hits, as: 'numHits'
          property :search_template, as: 'searchTemplate'
        end
      end
      
      class GoogleCloudAiplatformV1ExternalApiSimpleSearchParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1Fact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunk, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunk::Representation
      
          property :query, as: 'query'
          property :score, as: 'score'
          property :summary, as: 'summary'
          property :title, as: 'title'
          property :uri, as: 'uri'
          property :vector_distance, as: 'vectorDistance'
        end
      end
      
      class GoogleCloudAiplatformV1FasterDeploymentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fast_tryout_enabled, as: 'fastTryoutEnabled'
        end
      end
      
      class GoogleCloudAiplatformV1Feature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :disable_monitoring, as: 'disableMonitoring'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          collection :monitoring_stats_anomalies, as: 'monitoringStatsAnomalies', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly::Representation
      
          property :name, as: 'name'
          property :point_of_contact, as: 'pointOfContact'
          property :update_time, as: 'updateTime'
          property :value_type, as: 'valueType'
          property :version_column_name, as: 'versionColumnName'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query, as: 'bigQuery', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureGroupBigQuery, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureGroupBigQuery::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_account_email, as: 'serviceAccountEmail'
          property :service_agent_type, as: 'serviceAgentType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureGroupBigQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource::Representation
      
          property :dense, as: 'dense'
          collection :entity_id_columns, as: 'entityIdColumns'
          property :static_data_source, as: 'staticDataSource'
          property :time_series, as: 'timeSeries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureGroupBigQueryTimeSeries, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureGroupBigQueryTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureGroupBigQueryTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timestamp_column, as: 'timestampColumn'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_stats_anomaly, as: 'featureStatsAnomaly', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureStatsAnomaly, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureStatsAnomaly::Representation
      
          property :objective, as: 'objective'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureNoiseSigma
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :noise_sigma, as: 'noiseSigma', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sigma, as: 'sigma'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigtable, as: 'bigtable', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreBigtable, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreBigtable::Representation
      
          property :create_time, as: 'createTime'
          property :dedicated_serving_endpoint, as: 'dedicatedServingEndpoint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint::Representation
      
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :optimized, as: 'optimized', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreOptimized, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreOptimized::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreBigtable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_scaling, as: 'autoScaling', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreBigtableAutoScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_utilization_target, as: 'cpuUtilizationTarget'
          property :max_node_count, as: 'maxNodeCount'
          property :min_node_count, as: 'minNodeCount'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreDedicatedServingEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :private_service_connect_config, as: 'privateServiceConnectConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateServiceConnectConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateServiceConnectConfig::Representation
      
          property :public_endpoint_domain_name, as: 'publicEndpointDomainName'
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureOnlineStoreOptimized
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1FeatureSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_matcher, as: 'idMatcher', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IdMatcher, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IdMatcher::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureStatsAnomaly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anomaly_detection_threshold, as: 'anomalyDetectionThreshold'
          property :anomaly_uri, as: 'anomalyUri'
          property :distribution_deviation, as: 'distributionDeviation'
          property :end_time, as: 'endTime'
          property :score, as: 'score'
          property :start_time, as: 'startTime'
          property :stats_uri, as: 'statsUri'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_array_value, as: 'boolArrayValue', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BoolArray, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BoolArray::Representation
      
          property :bool_value, as: 'boolValue'
          property :bytes_value, :base64 => true, as: 'bytesValue'
          property :double_array_value, as: 'doubleArrayValue', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DoubleArray, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DoubleArray::Representation
      
          property :double_value, as: 'doubleValue'
          property :int64_array_value, as: 'int64ArrayValue', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Int64Array, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Int64Array::Representation
      
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueMetadata::Representation
      
          property :string_array_value, as: 'stringArrayValue', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StringArray, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StringArray::Representation
      
          property :string_value, as: 'stringValue'
          property :struct_value, as: 'structValue', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StructValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StructValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureValueDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :csv_destination, as: 'csvDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvDestination::Representation
      
          property :tfrecord_destination, as: 'tfrecordDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TfRecordDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TfRecordDestination::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureValueList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureValueMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generate_time, as: 'generateTime'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :big_query_source, as: 'bigQuerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewBigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewBigQuerySource::Representation
      
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          property :feature_registry_source, as: 'featureRegistrySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource::Representation
      
          property :index_config, as: 'indexConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewIndexConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewIndexConfig::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :optimized_config, as: 'optimizedConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewOptimizedConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewOptimizedConfig::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account_email, as: 'serviceAccountEmail'
          property :service_agent_type, as: 'serviceAgentType'
          property :sync_config, as: 'syncConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewSyncConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewSyncConfig::Representation
      
          property :update_time, as: 'updateTime'
          property :vertex_rag_source, as: 'vertexRagSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewVertexRagSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewVertexRagSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_id_columns, as: 'entityIdColumns'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewDataKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :composite_key, as: 'compositeKey', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewDataKeyCompositeKey, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewDataKeyCompositeKey::Representation
      
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewDataKeyCompositeKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parts, as: 'parts'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feature_groups, as: 'featureGroups', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup::Representation
      
          property :project_number, :numeric_string => true, as: 'projectNumber'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewFeatureRegistrySourceFeatureGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_group_id, as: 'featureGroupId'
          collection :feature_ids, as: 'featureIds'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewIndexConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brute_force_config, as: 'bruteForceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewIndexConfigBruteForceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewIndexConfigBruteForceConfig::Representation
      
          property :crowding_column, as: 'crowdingColumn'
          property :distance_measure_type, as: 'distanceMeasureType'
          property :embedding_column, as: 'embeddingColumn'
          property :embedding_dimension, as: 'embeddingDimension'
          collection :filter_columns, as: 'filterColumns'
          property :tree_ah_config, as: 'treeAhConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewIndexConfigTreeAhConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewIndexConfigTreeAhConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewIndexConfigBruteForceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewIndexConfigTreeAhConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :leaf_node_embedding_count, :numeric_string => true, as: 'leafNodeEmbeddingCount'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewOptimizedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automatic_resources, as: 'automaticResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewSync
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :final_status, as: 'finalStatus', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :name, as: 'name'
          property :run_time, as: 'runTime', class: Google::Apis::AiplatformV1::GoogleTypeInterval, decorator: Google::Apis::AiplatformV1::GoogleTypeInterval::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :sync_summary, as: 'syncSummary', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewSyncSyncSummary, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewSyncSyncSummary::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :continuous, as: 'continuous'
          property :cron, as: 'cron'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewSyncSyncSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :row_synced, :numeric_string => true, as: 'rowSynced'
          property :system_watermark_time, as: 'systemWatermarkTime'
          property :total_slot, :numeric_string => true, as: 'totalSlot'
        end
      end
      
      class GoogleCloudAiplatformV1FeatureViewVertexRagSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_corpus_id, :numeric_string => true, as: 'ragCorpusId'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1Featurestore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :online_serving_config, as: 'onlineServingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig::Representation
      
          property :online_storage_ttl_days, as: 'onlineStorageTtlDays'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_threshold_config, as: 'categoricalThresholdConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig::Representation
      
          property :import_features_analysis, as: 'importFeaturesAnalysis', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysis, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysis::Representation
      
          property :numerical_threshold_config, as: 'numericalThresholdConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig::Representation
      
          property :snapshot_analysis, as: 'snapshotAnalysis', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anomaly_detection_baseline, as: 'anomalyDetectionBaseline'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
          property :monitoring_interval_days, as: 'monitoringIntervalDays'
          property :staleness_days, as: 'stalenessDays'
        end
      end
      
      class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_node_count, as: 'fixedNodeCount'
          property :scaling, as: 'scaling', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FeaturestoreOnlineServingConfigScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_utilization_target, as: 'cpuUtilizationTarget'
          property :max_node_count, as: 'maxNodeCount'
          property :min_node_count, as: 'minNodeCount'
        end
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_format, as: 'dataFormat'
          property :data_key, as: 'dataKey', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewDataKey, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewDataKey::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_key, as: 'dataKey', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewDataKey, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewDataKey::Representation
      
          property :key_values, as: 'keyValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairList::Representation
      
          hash :proto_struct, as: 'protoStruct'
        end
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairListFeatureNameValuePair, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairListFeatureNameValuePair::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FetchFeatureValuesResponseFeatureNameValuePairListFeatureNameValuePair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FetchPredictOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_name, as: 'operationName'
        end
      end
      
      class GoogleCloudAiplatformV1FileData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :file_uri, as: 'fileUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1FileStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_status, as: 'errorStatus'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudAiplatformV1FilterSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_filter, as: 'testFilter'
          property :training_filter, as: 'trainingFilter'
          property :validation_filter, as: 'validationFilter'
        end
      end
      
      class GoogleCloudAiplatformV1FindNeighborsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index_id, as: 'deployedIndexId'
          collection :queries, as: 'queries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsRequestQuery, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsRequestQuery::Representation
      
          property :return_full_datapoint, as: 'returnFullDatapoint'
        end
      end
      
      class GoogleCloudAiplatformV1FindNeighborsRequestQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approximate_neighbor_count, as: 'approximateNeighborCount'
          property :datapoint, as: 'datapoint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint::Representation
      
          property :fraction_leaf_nodes_to_search_override, as: 'fractionLeafNodesToSearchOverride'
          property :neighbor_count, as: 'neighborCount'
          property :per_crowding_attribute_neighbor_count, as: 'perCrowdingAttributeNeighborCount'
          property :rrf, as: 'rrf', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsRequestQueryRrf, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsRequestQueryRrf::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FindNeighborsRequestQueryRrf
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
        end
      end
      
      class GoogleCloudAiplatformV1FindNeighborsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nearest_neighbors, as: 'nearestNeighbors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsResponseNearestNeighbors, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsResponseNearestNeighbors::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FindNeighborsResponseNearestNeighbors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :neighbors, as: 'neighbors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsResponseNeighbor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FindNeighborsResponseNeighbor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FindNeighborsResponseNeighbor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datapoint, as: 'datapoint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint::Representation
      
          property :distance, as: 'distance'
          property :sparse_distance, as: 'sparseDistance'
        end
      end
      
      class GoogleCloudAiplatformV1FluencyInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencyInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencyInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FluencySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FluencyInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
        end
      end
      
      class GoogleCloudAiplatformV1FluencyResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1FluencySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1FractionSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_fraction, as: 'testFraction'
          property :training_fraction, as: 'trainingFraction'
          property :validation_fraction, as: 'validationFraction'
        end
      end
      
      class GoogleCloudAiplatformV1FulfillmentInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FulfillmentSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1FulfillmentInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
        end
      end
      
      class GoogleCloudAiplatformV1FulfillmentResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1FulfillmentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1FunctionCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAiplatformV1FunctionCallingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_function_names, as: 'allowedFunctionNames'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudAiplatformV1FunctionDeclaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          property :parameters_json_schema, as: 'parametersJsonSchema'
          property :response, as: 'response', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          property :response_json_schema, as: 'responseJsonSchema'
        end
      end
      
      class GoogleCloudAiplatformV1FunctionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleCloudAiplatformV1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri_prefix, as: 'outputUriPrefix'
        end
      end
      
      class GoogleCloudAiplatformV1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_config, as: 'ragConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfigRagConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfigRagConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GenAiAdvancedFeaturesConfigRagConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_rag, as: 'enableRag'
        end
      end
      
      class GoogleCloudAiplatformV1GenerateContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cached_content, as: 'cachedContent'
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfig::Representation
      
          hash :labels, as: 'labels'
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetySetting, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetySetting::Representation
      
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :tool_config, as: 'toolConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolConfig::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GenerateContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Candidate, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Candidate::Representation
      
          property :create_time, as: 'createTime'
          property :model_version, as: 'modelVersion'
          property :prompt_feedback, as: 'promptFeedback', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback::Representation
      
          property :response_id, as: 'responseId'
          property :usage_metadata, as: 'usageMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GenerateContentResponsePromptFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_reason, as: 'blockReason'
          property :block_reason_message, as: 'blockReasonMessage'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyRating, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyRating::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GenerateContentResponseUsageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cache_tokens_details, as: 'cacheTokensDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount::Representation
      
          property :cached_content_token_count, as: 'cachedContentTokenCount'
          property :candidates_token_count, as: 'candidatesTokenCount'
          collection :candidates_tokens_details, as: 'candidatesTokensDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount::Representation
      
          property :prompt_token_count, as: 'promptTokenCount'
          collection :prompt_tokens_details, as: 'promptTokensDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount::Representation
      
          property :thoughts_token_count, as: 'thoughtsTokenCount'
          property :tool_use_prompt_token_count, as: 'toolUsePromptTokenCount'
          collection :tool_use_prompt_tokens_details, as: 'toolUsePromptTokensDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModalityTokenCount::Representation
      
          property :total_token_count, as: 'totalTokenCount'
          property :traffic_type, as: 'trafficType'
        end
      end
      
      class GoogleCloudAiplatformV1GenerateVideoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :generated_samples, as: 'generatedSamples'
          property :rai_media_filtered_count, as: 'raiMediaFilteredCount'
          collection :rai_media_filtered_reasons, as: 'raiMediaFilteredReasons'
          collection :videos, as: 'videos', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerateVideoResponseVideo, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerateVideoResponseVideo::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GenerateVideoResponseVideo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bytes_base64_encoded, as: 'bytesBase64Encoded'
          property :gcs_uri, as: 'gcsUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1GenerationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_timestamp, as: 'audioTimestamp'
          property :candidate_count, as: 'candidateCount'
          property :enable_affective_dialog, as: 'enableAffectiveDialog'
          property :frequency_penalty, as: 'frequencyPenalty'
          property :logprobs, as: 'logprobs'
          property :max_output_tokens, as: 'maxOutputTokens'
          property :media_resolution, as: 'mediaResolution'
          property :presence_penalty, as: 'presencePenalty'
          property :response_json_schema, as: 'responseJsonSchema'
          property :response_logprobs, as: 'responseLogprobs'
          property :response_mime_type, as: 'responseMimeType'
          collection :response_modalities, as: 'responseModalities'
          property :response_schema, as: 'responseSchema', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          property :routing_config, as: 'routingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigRoutingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigRoutingConfig::Representation
      
          property :seed, as: 'seed'
          property :speech_config, as: 'speechConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeechConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeechConfig::Representation
      
          collection :stop_sequences, as: 'stopSequences'
          property :temperature, as: 'temperature'
          property :thinking_config, as: 'thinkingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigThinkingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigThinkingConfig::Representation
      
          property :top_k, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudAiplatformV1GenerationConfigRoutingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_mode, as: 'autoMode', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigRoutingConfigAutoRoutingMode, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigRoutingConfigAutoRoutingMode::Representation
      
          property :manual_mode, as: 'manualMode', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigRoutingConfigManualRoutingMode, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfigRoutingConfigManualRoutingMode::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GenerationConfigRoutingConfigAutoRoutingMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_routing_preference, as: 'modelRoutingPreference'
        end
      end
      
      class GoogleCloudAiplatformV1GenerationConfigRoutingConfigManualRoutingMode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_name, as: 'modelName'
        end
      end
      
      class GoogleCloudAiplatformV1GenerationConfigThinkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_thoughts, as: 'includeThoughts'
          property :thinking_budget, as: 'thinkingBudget'
        end
      end
      
      class GoogleCloudAiplatformV1GenericOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1GenieSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_model_uri, as: 'baseModelUri'
        end
      end
      
      class GoogleCloudAiplatformV1GoogleDriveSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_ids, as: 'resourceIds', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleDriveSourceResourceId, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleDriveSourceResourceId::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GoogleDriveSourceResourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_id, as: 'resourceId'
          property :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleCloudAiplatformV1GoogleSearchRetrieval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_retrieval_config, as: 'dynamicRetrievalConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DynamicRetrievalConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DynamicRetrievalConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GroundednessInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundednessSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GroundednessInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :prediction, as: 'prediction'
        end
      end
      
      class GoogleCloudAiplatformV1GroundednessResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1GroundednessSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1GroundingChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retrieved_context, as: 'retrievedContext', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingChunkRetrievedContext, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingChunkRetrievedContext::Representation
      
          property :web, as: 'web', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingChunkWeb, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingChunkWeb::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1GroundingChunkRetrievedContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_chunk, as: 'ragChunk', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunk, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunk::Representation
      
          property :text, as: 'text'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1GroundingChunkWeb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1GroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :grounding_chunks, as: 'groundingChunks', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingChunk, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingChunk::Representation
      
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingSupport, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GroundingSupport::Representation
      
          property :retrieval_metadata, as: 'retrievalMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrievalMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrievalMetadata::Representation
      
          property :search_entry_point, as: 'searchEntryPoint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SearchEntryPoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SearchEntryPoint::Representation
      
          collection :web_search_queries, as: 'webSearchQueries'
        end
      end
      
      class GoogleCloudAiplatformV1GroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_scores, as: 'confidenceScores'
          collection :grounding_chunk_indices, as: 'groundingChunkIndices'
          property :segment, as: 'segment', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Segment, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Segment::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1HyperparameterTuningJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          hash :labels, as: 'labels'
          property :max_failed_trial_count, as: 'maxFailedTrialCount'
          property :max_trial_count, as: 'maxTrialCount'
          property :name, as: 'name'
          property :parallel_trial_count, as: 'parallelTrialCount'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :study_spec, as: 'studySpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec::Representation
      
          property :trial_job_spec, as: 'trialJobSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec::Representation
      
          collection :trials, as: 'trials', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1IdMatcher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ids, as: 'ids'
        end
      end
      
      class GoogleCloudAiplatformV1ImportDataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotation_labels, as: 'annotationLabels'
          hash :data_item_labels, as: 'dataItemLabels'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
          property :import_schema_uri, as: 'importSchemaUri'
        end
      end
      
      class GoogleCloudAiplatformV1ImportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ImportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :import_configs, as: 'importConfigs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ImportDataConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ImportDataConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ImportDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocking_operation_ids, as: 'blockingOperationIds'
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :imported_entity_count, :numeric_string => true, as: 'importedEntityCount'
          property :imported_feature_value_count, :numeric_string => true, as: 'importedFeatureValueCount'
          property :invalid_row_count, :numeric_string => true, as: 'invalidRowCount'
          collection :source_uris, as: 'sourceUris'
          property :timestamp_outside_retention_rows_count, :numeric_string => true, as: 'timestampOutsideRetentionRowsCount'
        end
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro_source, as: 'avroSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AvroSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AvroSource::Representation
      
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource::Representation
      
          property :csv_source, as: 'csvSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CsvSource::Representation
      
          property :disable_ingestion_analysis, as: 'disableIngestionAnalysis'
          property :disable_online_serving, as: 'disableOnlineServing'
          property :entity_id_field, as: 'entityIdField'
          collection :feature_specs, as: 'featureSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec::Representation
      
          property :feature_time, as: 'featureTime'
          property :feature_time_field, as: 'featureTimeField'
          property :worker_count, as: 'workerCount'
        end
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :source_field, as: 'sourceField'
        end
      end
      
      class GoogleCloudAiplatformV1ImportFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :imported_entity_count, :numeric_string => true, as: 'importedEntityCount'
          property :imported_feature_value_count, :numeric_string => true, as: 'importedFeatureValueCount'
          property :invalid_row_count, :numeric_string => true, as: 'invalidRowCount'
          property :timestamp_outside_retention_rows_count, :numeric_string => true, as: 'timestampOutsideRetentionRowsCount'
        end
      end
      
      class GoogleCloudAiplatformV1ImportModelEvaluationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_evaluation, as: 'modelEvaluation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ImportRagFilesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
          property :google_drive_source, as: 'googleDriveSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleDriveSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleDriveSource::Representation
      
          property :import_result_bigquery_sink, as: 'importResultBigquerySink', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :import_result_gcs_sink, as: 'importResultGcsSink', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :jira_source, as: 'jiraSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1JiraSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1JiraSource::Representation
      
          property :max_embedding_requests_per_min, as: 'maxEmbeddingRequestsPerMin'
          property :partial_failure_bigquery_sink, as: 'partialFailureBigquerySink', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :partial_failure_gcs_sink, as: 'partialFailureGcsSink', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :rag_file_parsing_config, as: 'ragFileParsingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileParsingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileParsingConfig::Representation
      
          property :rag_file_transformation_config, as: 'ragFileTransformationConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileTransformationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileTransformationConfig::Representation
      
          property :rebuild_ann_index, as: 'rebuildAnnIndex'
          property :share_point_sources, as: 'sharePointSources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SharePointSources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SharePointSources::Representation
      
          property :slack_source, as: 'slackSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ImportRagFilesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :import_rag_files_config, as: 'importRagFilesConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ImportRagFilesConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ImportRagFilesConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Index
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :deployed_indexes, as: 'deployedIndexes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndexRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndexRef::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          property :index_stats, as: 'indexStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexStats::Representation
      
          property :index_update_method, as: 'indexUpdateMethod'
          hash :labels, as: 'labels'
          property :metadata, as: 'metadata'
          property :metadata_schema_uri, as: 'metadataSchemaUri'
          property :name, as: 'name'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1IndexDatapoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crowding_tag, as: 'crowdingTag', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointCrowdingTag, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointCrowdingTag::Representation
      
          property :datapoint_id, as: 'datapointId'
          collection :feature_vector, as: 'featureVector'
          collection :numeric_restricts, as: 'numericRestricts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointNumericRestriction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointNumericRestriction::Representation
      
          collection :restricts, as: 'restricts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointRestriction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointRestriction::Representation
      
          property :sparse_embedding, as: 'sparseEmbedding', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointSparseEmbedding, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapointSparseEmbedding::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1IndexDatapointCrowdingTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crowding_attribute, as: 'crowdingAttribute'
        end
      end
      
      class GoogleCloudAiplatformV1IndexDatapointNumericRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :namespace, as: 'namespace'
          property :op, as: 'op'
          property :value_double, as: 'valueDouble'
          property :value_float, as: 'valueFloat'
          property :value_int, :numeric_string => true, as: 'valueInt'
        end
      end
      
      class GoogleCloudAiplatformV1IndexDatapointRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_list, as: 'allowList'
          collection :deny_list, as: 'denyList'
          property :namespace, as: 'namespace'
        end
      end
      
      class GoogleCloudAiplatformV1IndexDatapointSparseEmbedding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1IndexEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :deployed_indexes, as: 'deployedIndexes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enable_private_service_connect, as: 'enablePrivateServiceConnect'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :private_service_connect_config, as: 'privateServiceConnectConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateServiceConnectConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrivateServiceConnectConfig::Representation
      
          property :public_endpoint_domain_name, as: 'publicEndpointDomainName'
          property :public_endpoint_enabled, as: 'publicEndpointEnabled'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1IndexPrivateEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_grpc_address, as: 'matchGrpcAddress'
          collection :psc_automated_endpoints, as: 'pscAutomatedEndpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscAutomatedEndpoints, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscAutomatedEndpoints::Representation
      
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class GoogleCloudAiplatformV1IndexStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :shards_count, as: 'shardsCount'
          property :sparse_vectors_count, :numeric_string => true, as: 'sparseVectorsCount'
          property :vectors_count, :numeric_string => true, as: 'vectorsCount'
        end
      end
      
      class GoogleCloudAiplatformV1InputDataConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_schema_uri, as: 'annotationSchemaUri'
          property :annotations_filter, as: 'annotationsFilter'
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :dataset_id, as: 'datasetId'
          property :filter_split, as: 'filterSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FilterSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FilterSplit::Representation
      
          property :fraction_split, as: 'fractionSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FractionSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FractionSplit::Representation
      
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :persist_ml_use_assignment, as: 'persistMlUseAssignment'
          property :predefined_split, as: 'predefinedSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredefinedSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredefinedSplit::Representation
      
          property :saved_query_id, as: 'savedQueryId'
          property :stratified_split, as: 'stratifiedSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StratifiedSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StratifiedSplit::Representation
      
          property :timestamp_split, as: 'timestampSplit', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimestampSplit, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimestampSplit::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Int64Array
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1IntegratedGradientsAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blur_baseline_config, as: 'blurBaselineConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BlurBaselineConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BlurBaselineConfig::Representation
      
          property :smooth_grad_config, as: 'smoothGradConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SmoothGradConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SmoothGradConfig::Representation
      
          property :step_count, as: 'stepCount'
        end
      end
      
      class GoogleCloudAiplatformV1JiraSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jira_queries, as: 'jiraQueries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1JiraSourceJiraQueries, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1JiraSourceJiraQueries::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1JiraSourceJiraQueries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_config, as: 'apiKeyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig::Representation
      
          collection :custom_queries, as: 'customQueries'
          property :email, as: 'email'
          collection :projects, as: 'projects'
          property :server_uri, as: 'serverUri'
        end
      end
      
      class GoogleCloudAiplatformV1LargeModelReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAiplatformV1LineageSubgraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Artifact, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Artifact::Representation
      
          collection :events, as: 'events', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Event, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Event::Representation
      
          collection :executions, as: 'executions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Execution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Execution::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListAnnotationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Annotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Annotation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Artifact, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Artifact::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListBatchPredictionJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :batch_prediction_jobs, as: 'batchPredictionJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BatchPredictionJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListCachedContentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cached_contents, as: 'cachedContents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CachedContent, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CachedContent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListContextsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Context, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Context::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListCustomJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_jobs, as: 'customJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListDataItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_items, as: 'dataItems', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataItem, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListDataLabelingJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_labeling_jobs, as: 'dataLabelingJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataLabelingJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataLabelingJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListDatasetVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dataset_versions, as: 'datasetVersions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DatasetVersion, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DatasetVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Dataset, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListDeploymentResourcePoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployment_resource_pools, as: 'deploymentResourcePools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeploymentResourcePool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeploymentResourcePool::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListEndpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoints, as: 'endpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Endpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Endpoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EntityType, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EntityType::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Execution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListFeatureGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feature_groups, as: 'featureGroups', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureGroup, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListFeatureOnlineStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feature_online_stores, as: 'featureOnlineStores', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStore, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureOnlineStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListFeatureViewSyncsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feature_view_syncs, as: 'featureViewSyncs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewSync, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureViewSync::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListFeatureViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feature_views, as: 'featureViews', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureView, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureView::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListFeaturestoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :featurestores, as: 'featurestores', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Featurestore, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Featurestore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListHyperparameterTuningJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hyperparameter_tuning_jobs, as: 'hyperparameterTuningJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1HyperparameterTuningJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1HyperparameterTuningJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListIndexEndpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :index_endpoints, as: 'indexEndpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexEndpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexEndpoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListIndexesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :indexes, as: 'indexes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Index, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Index::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListMetadataSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metadata_schemas, as: 'metadataSchemas', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataSchema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataSchema::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListMetadataStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metadata_stores, as: 'metadataStores', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataStore, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListModelDeploymentMonitoringJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :model_deployment_monitoring_jobs, as: 'modelDeploymentMonitoringJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListModelEvaluationSlicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :model_evaluation_slices, as: 'modelEvaluationSlices', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSlice, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSlice::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListModelEvaluationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :model_evaluations, as: 'modelEvaluations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListModelVersionCheckpointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :checkpoints, as: 'checkpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelVersionCheckpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelVersionCheckpoint::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListModelVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListNasJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nas_jobs, as: 'nasJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListNasTrialDetailsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :nas_trial_details, as: 'nasTrialDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrialDetail, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrialDetail::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1ListNotebookExecutionJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notebook_execution_jobs, as: 'notebookExecutionJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJob::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListNotebookRuntimeTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notebook_runtime_templates, as: 'notebookRuntimeTemplates', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntimeTemplate, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntimeTemplate::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListNotebookRuntimesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notebook_runtimes, as: 'notebookRuntimes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntime, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntime::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListOptimalTrialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ListOptimalTrialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :optimal_trials, as: 'optimalTrials', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListPersistentResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :persistent_resources, as: 'persistentResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentResource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentResource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListPipelineJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pipeline_jobs, as: 'pipelineJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJob::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListRagCorporaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rag_corpora, as: 'ragCorpora', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagCorpus, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagCorpus::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListRagFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rag_files, as: 'ragFiles', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFile, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFile::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListReasoningEnginesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reasoning_engines, as: 'reasoningEngines', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngine, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngine::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListSavedQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :saved_queries, as: 'savedQueries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SavedQuery, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SavedQuery::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListSchedulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schedules, as: 'schedules', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schedule, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schedule::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListSpecialistPoolsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :specialist_pools, as: 'specialistPools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpecialistPool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpecialistPool::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListStudiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :studies, as: 'studies', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Study, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Study::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTensorboardExperimentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tensorboard_experiments, as: 'tensorboardExperiments', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardExperiment, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardExperiment::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTensorboardRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tensorboard_runs, as: 'tensorboardRuns', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardRun, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardRun::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTensorboardTimeSeriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tensorboard_time_series, as: 'tensorboardTimeSeries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeries, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTensorboardsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tensorboards, as: 'tensorboards', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensorboard, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensorboard::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTrainingPipelinesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :training_pipelines, as: 'trainingPipelines', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrainingPipeline, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrainingPipeline::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTrialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :trials, as: 'trials', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ListTuningJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tuning_jobs, as: 'tuningJobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TuningJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TuningJob::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1LogprobsResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chosen_candidates, as: 'chosenCandidates', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResultCandidate, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResultCandidate::Representation
      
          collection :top_candidates, as: 'topCandidates', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResultTopCandidates, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResultTopCandidates::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1LogprobsResultCandidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_probability, as: 'logProbability'
          property :token, as: 'token'
          property :token_id, as: 'tokenId'
        end
      end
      
      class GoogleCloudAiplatformV1LogprobsResultTopCandidates
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResultCandidate, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LogprobsResultCandidate::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1LookupStudyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudAiplatformV1MachineSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accelerator_count, as: 'acceleratorCount'
          property :accelerator_type, as: 'acceleratorType'
          property :machine_type, as: 'machineType'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReservationAffinity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReservationAffinity::Representation
      
          property :tpu_topology, as: 'tpuTopology'
        end
      end
      
      class GoogleCloudAiplatformV1ManualBatchTuningParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_size, as: 'batchSize'
        end
      end
      
      class GoogleCloudAiplatformV1Measurement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :elapsed_duration, as: 'elapsedDuration'
          collection :metrics, as: 'metrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MeasurementMetric, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MeasurementMetric::Representation
      
          property :step_count, :numeric_string => true, as: 'stepCount'
        end
      end
      
      class GoogleCloudAiplatformV1MeasurementMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_id, as: 'metricId'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1MergeVersionAliasesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :version_aliases, as: 'versionAliases'
        end
      end
      
      class GoogleCloudAiplatformV1MetadataSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :name, as: 'name'
          property :schema, as: 'schema'
          property :schema_type, as: 'schemaType'
          property :schema_version, as: 'schemaVersion'
        end
      end
      
      class GoogleCloudAiplatformV1MetadataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataplex_config, as: 'dataplexConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataStoreDataplexConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataStoreDataplexConfig::Representation
      
          property :description, as: 'description'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :name, as: 'name'
          property :state, as: 'state', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataStoreMetadataStoreState, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetadataStoreMetadataStoreState::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1MetadataStoreDataplexConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled_pipelines_lineage, as: 'enabledPipelinesLineage'
        end
      end
      
      class GoogleCloudAiplatformV1MetadataStoreMetadataStoreState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_utilization_bytes, :numeric_string => true, as: 'diskUtilizationBytes'
        end
      end
      
      class GoogleCloudAiplatformV1Metric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregation_metrics, as: 'aggregationMetrics'
          property :bleu_spec, as: 'bleuSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BleuSpec::Representation
      
          property :exact_match_spec, as: 'exactMatchSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExactMatchSpec::Representation
      
          property :pairwise_metric_spec, as: 'pairwiseMetricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricSpec::Representation
      
          property :pointwise_metric_spec, as: 'pointwiseMetricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricSpec::Representation
      
          property :rouge_spec, as: 'rougeSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MetricxInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MetricxSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MetricxInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
          property :source, as: 'source'
        end
      end
      
      class GoogleCloudAiplatformV1MetricxResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1MetricxSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_language, as: 'sourceLanguage'
          property :target_language, as: 'targetLanguage'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1MigratableResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automl_dataset, as: 'automlDataset', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceAutomlDataset, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceAutomlDataset::Representation
      
          property :automl_model, as: 'automlModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceAutomlModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceAutomlModel::Representation
      
          property :data_labeling_dataset, as: 'dataLabelingDataset', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceDataLabelingDataset, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceDataLabelingDataset::Representation
      
          property :last_migrate_time, as: 'lastMigrateTime'
          property :last_update_time, as: 'lastUpdateTime'
          property :ml_engine_model_version, as: 'mlEngineModelVersion', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MigratableResourceAutomlDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :dataset_display_name, as: 'datasetDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1MigratableResourceAutomlModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_display_name, as: 'modelDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1MigratableResourceDataLabelingDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_labeling_annotated_datasets, as: 'dataLabelingAnnotatedDatasets', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceDataLabelingDatasetDataLabelingAnnotatedDataset, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResourceDataLabelingDatasetDataLabelingAnnotatedDataset::Representation
      
          property :dataset, as: 'dataset'
          property :dataset_display_name, as: 'datasetDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1MigratableResourceDataLabelingDatasetDataLabelingAnnotatedDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :annotated_dataset_display_name, as: 'annotatedDatasetDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1MigratableResourceMlEngineModelVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :migrate_automl_dataset_config, as: 'migrateAutomlDatasetConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlDatasetConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlDatasetConfig::Representation
      
          property :migrate_automl_model_config, as: 'migrateAutomlModelConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlModelConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlModelConfig::Representation
      
          property :migrate_data_labeling_dataset_config, as: 'migrateDataLabelingDatasetConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig::Representation
      
          property :migrate_ml_engine_model_version_config, as: 'migrateMlEngineModelVersionConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateMlEngineModelVersionConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateMlEngineModelVersionConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlDatasetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :dataset_display_name, as: 'datasetDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateAutomlModelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_display_name, as: 'modelDisplayName'
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :dataset_display_name, as: 'datasetDisplayName'
          collection :migrate_data_labeling_annotated_dataset_configs, as: 'migrateDataLabelingAnnotatedDatasetConfigs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateDataLabelingDatasetConfigMigrateDataLabelingAnnotatedDatasetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceRequestMigrateMlEngineModelVersionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :model_display_name, as: 'modelDisplayName'
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudAiplatformV1MigrateResourceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :migratable_resource, as: 'migratableResource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResource::Representation
      
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudAiplatformV1ModalityTokenCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :modality, as: 'modality'
          property :token_count, as: 'tokenCount'
        end
      end
      
      class GoogleCloudAiplatformV1Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_uri, as: 'artifactUri'
          property :base_model_source, as: 'baseModelSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelBaseModelSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelBaseModelSource::Representation
      
          collection :checkpoints, as: 'checkpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Checkpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Checkpoint::Representation
      
          property :container_spec, as: 'containerSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec::Representation
      
          property :create_time, as: 'createTime'
          property :data_stats, as: 'dataStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDataStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDataStats::Representation
      
          property :default_checkpoint_id, as: 'defaultCheckpointId'
          collection :deployed_models, as: 'deployedModels', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModelRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModelRef::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          property :explanation_spec, as: 'explanationSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec::Representation
      
          hash :labels, as: 'labels'
          property :metadata, as: 'metadata'
          property :metadata_artifact, as: 'metadataArtifact'
          property :metadata_schema_uri, as: 'metadataSchemaUri'
          property :model_source_info, as: 'modelSourceInfo', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelSourceInfo, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelSourceInfo::Representation
      
          property :name, as: 'name'
          property :original_model_info, as: 'originalModelInfo', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelOriginalModelInfo, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelOriginalModelInfo::Representation
      
          property :pipeline_job, as: 'pipelineJob'
          property :predict_schemata, as: 'predictSchemata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictSchemata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictSchemata::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          collection :supported_deployment_resources_types, as: 'supportedDeploymentResourcesTypes'
          collection :supported_export_formats, as: 'supportedExportFormats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelExportFormat, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelExportFormat::Representation
      
          collection :supported_input_storage_formats, as: 'supportedInputStorageFormats'
          collection :supported_output_storage_formats, as: 'supportedOutputStorageFormats'
          property :training_pipeline, as: 'trainingPipeline'
          property :update_time, as: 'updateTime'
          collection :version_aliases, as: 'versionAliases'
          property :version_create_time, as: 'versionCreateTime'
          property :version_description, as: 'versionDescription'
          property :version_id, as: 'versionId'
          property :version_update_time, as: 'versionUpdateTime'
        end
      end
      
      class GoogleCloudAiplatformV1ModelBaseModelSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :genie_source, as: 'genieSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenieSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenieSource::Representation
      
          property :model_garden_source, as: 'modelGardenSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelGardenSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelGardenSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelContainerSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          property :deployment_timeout, as: 'deploymentTimeout'
          collection :env, as: 'env', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar::Representation
      
          collection :grpc_ports, as: 'grpcPorts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Port, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Port::Representation
      
          property :health_probe, as: 'healthProbe', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Probe, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Probe::Representation
      
          property :health_route, as: 'healthRoute'
          property :image_uri, as: 'imageUri'
          property :invoke_route_prefix, as: 'invokeRoutePrefix'
          property :liveness_probe, as: 'livenessProbe', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Probe, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Probe::Representation
      
          collection :ports, as: 'ports', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Port, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Port::Representation
      
          property :predict_route, as: 'predictRoute'
          property :shared_memory_size_mb, :numeric_string => true, as: 'sharedMemorySizeMb'
          property :startup_probe, as: 'startupProbe', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Probe, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Probe::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelDataStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :test_annotations_count, :numeric_string => true, as: 'testAnnotationsCount'
          property :test_data_items_count, :numeric_string => true, as: 'testDataItemsCount'
          property :training_annotations_count, :numeric_string => true, as: 'trainingAnnotationsCount'
          property :training_data_items_count, :numeric_string => true, as: 'trainingDataItemsCount'
          property :validation_annotations_count, :numeric_string => true, as: 'validationAnnotationsCount'
          property :validation_data_items_count, :numeric_string => true, as: 'validationDataItemsCount'
        end
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_table_path, as: 'bigqueryTablePath'
          property :log_source, as: 'logSource'
          property :log_type, as: 'logType'
          property :request_response_logging_schema_version, as: 'requestResponseLoggingSchemaVersion'
        end
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_instance_schema_uri, as: 'analysisInstanceSchemaUri'
          collection :bigquery_tables, as: 'bigqueryTables', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :enable_monitoring_pipeline_logs, as: 'enableMonitoringPipelineLogs'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :endpoint, as: 'endpoint'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          hash :labels, as: 'labels'
          property :latest_monitoring_pipeline_metadata, as: 'latestMonitoringPipelineMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata::Representation
      
          property :log_ttl, as: 'logTtl'
          property :logging_sampling_strategy, as: 'loggingSamplingStrategy', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SamplingStrategy, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SamplingStrategy::Representation
      
          collection :model_deployment_monitoring_objective_configs, as: 'modelDeploymentMonitoringObjectiveConfigs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig::Representation
      
          property :model_deployment_monitoring_schedule_config, as: 'modelDeploymentMonitoringScheduleConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig::Representation
      
          property :model_monitoring_alert_config, as: 'modelMonitoringAlertConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringAlertConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringAlertConfig::Representation
      
          property :name, as: 'name'
          property :next_schedule_time, as: 'nextScheduleTime'
          property :predict_instance_schema_uri, as: 'predictInstanceSchemaUri'
          property :sample_predict_instance, as: 'samplePredictInstance'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :schedule_state, as: 'scheduleState'
          property :state, as: 'state'
          property :stats_anomalies_base_directory, as: 'statsAnomaliesBaseDirectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringJobLatestMonitoringPipelineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run_time, as: 'runTime'
          property :status, as: 'status', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_id, as: 'deployedModelId'
          property :objective_config, as: 'objectiveConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelDeploymentMonitoringScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :monitor_interval, as: 'monitorInterval'
          property :monitor_window, as: 'monitorWindow'
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_schema_uri, as: 'annotationSchemaUri'
          property :create_time, as: 'createTime'
          property :data_item_schema_uri, as: 'dataItemSchemaUri'
          property :display_name, as: 'displayName'
          collection :explanation_specs, as: 'explanationSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec::Representation
      
          property :metadata, as: 'metadata'
          property :metrics, as: 'metrics'
          property :metrics_schema_uri, as: 'metricsSchemaUri'
          property :model_explanation, as: 'modelExplanation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelExplanation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelExplanation::Representation
      
          property :name, as: 'name'
          collection :slice_dimensions, as: 'sliceDimensions'
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationModelEvaluationExplanationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation_spec, as: 'explanationSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExplanationSpec::Representation
      
          property :explanation_type, as: 'explanationType'
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSlice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :metrics, as: 'metrics'
          property :metrics_schema_uri, as: 'metricsSchemaUri'
          property :model_explanation, as: 'modelExplanation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelExplanation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelExplanation::Representation
      
          property :name, as: 'name'
          property :slice, as: 'slice', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSlice, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSlice::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSlice
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :slice_spec, as: 'sliceSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :configs, as: 'configs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high'
          property :low, as: 'low'
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecSliceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_values, as: 'allValues'
          property :range, as: 'range', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecRange, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecRange::Representation
      
          property :value, as: 'value', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelEvaluationSliceSliceSliceSpecValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :float_value, as: 'floatValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudAiplatformV1ModelExplanation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mean_attributions, as: 'meanAttributions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Attribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Attribution::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelExportFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exportable_contents, as: 'exportableContents'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudAiplatformV1ModelGardenSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_model_name, as: 'publicModelName'
          property :skip_hf_model_cache, as: 'skipHfModelCache'
          property :version_id, as: 'versionId'
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringAlertConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_alert_config, as: 'emailAlertConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig::Representation
      
          property :enable_logging, as: 'enableLogging'
          collection :notification_channels, as: 'notificationChannels'
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringAlertConfigEmailAlertConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_emails, as: 'userEmails'
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation_config, as: 'explanationConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig::Representation
      
          property :prediction_drift_detection_config, as: 'predictionDriftDetectionConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig::Representation
      
          property :training_dataset, as: 'trainingDataset', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset::Representation
      
          property :training_prediction_skew_detection_config, as: 'trainingPredictionSkewDetectionConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_feature_attributes, as: 'enableFeatureAttributes'
          property :explanation_baseline, as: 'explanationBaseline', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigExplanationConfigExplanationBaseline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery, as: 'bigquery', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :gcs, as: 'gcs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :prediction_format, as: 'predictionFormat'
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attribution_score_drift_thresholds, as: 'attributionScoreDriftThresholds', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
          property :default_drift_threshold, as: 'defaultDriftThreshold', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
          hash :drift_thresholds, as: 'driftThresholds', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQuerySource::Representation
      
          property :data_format, as: 'dataFormat'
          property :dataset, as: 'dataset'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
          property :logging_sampling_strategy, as: 'loggingSamplingStrategy', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SamplingStrategy, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SamplingStrategy::Representation
      
          property :target_field, as: 'targetField'
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attribution_score_skew_thresholds, as: 'attributionScoreSkewThresholds', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
          property :default_skew_threshold, as: 'defaultSkewThreshold', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
          hash :skew_thresholds, as: 'skewThresholds', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringStatsAnomalies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anomaly_count, as: 'anomalyCount'
          property :deployed_model_id, as: 'deployedModelId'
          collection :feature_stats, as: 'featureStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringStatsAnomaliesFeatureHistoricStatsAnomalies, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringStatsAnomaliesFeatureHistoricStatsAnomalies::Representation
      
          property :objective, as: 'objective'
        end
      end
      
      class GoogleCloudAiplatformV1ModelMonitoringStatsAnomaliesFeatureHistoricStatsAnomalies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_display_name, as: 'featureDisplayName'
          collection :prediction_stats, as: 'predictionStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureStatsAnomaly, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureStatsAnomaly::Representation
      
          property :threshold, as: 'threshold', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ThresholdConfig::Representation
      
          property :training_stats, as: 'trainingStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureStatsAnomaly, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureStatsAnomaly::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ModelOriginalModelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudAiplatformV1ModelSourceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :copy, as: 'copy'
          property :source_type, as: 'sourceType'
        end
      end
      
      class GoogleCloudAiplatformV1ModelVersionCheckpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkpoint_id, as: 'checkpointId'
          property :epoch, :numeric_string => true, as: 'epoch'
          property :step, :numeric_string => true, as: 'step'
        end
      end
      
      class GoogleCloudAiplatformV1MutateDeployedIndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index_id, as: 'deployedIndexId'
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MutateDeployedIndexResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index, as: 'deployedIndex', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedIndex::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MutateDeployedModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1MutateDeployedModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model, as: 'deployedModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudAiplatformV1MutateDeployedModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model, as: 'deployedModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NasJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :enable_restricted_image_training, as: 'enableRestrictedImageTraining'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :nas_job_output, as: 'nasJobOutput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobOutput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobOutput::Representation
      
          property :nas_job_spec, as: 'nasJobSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpec::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1NasJobOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :multi_trial_job_output, as: 'multiTrialJobOutput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutput::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NasJobOutputMultiTrialJobOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_trials, as: 'searchTrials', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial::Representation
      
          collection :train_trials, as: 'trainTrials', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NasJobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :multi_trial_algorithm_spec, as: 'multiTrialAlgorithmSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec::Representation
      
          property :resume_nas_job_id, as: 'resumeNasJobId'
          property :search_space_spec, as: 'searchSpaceSpec'
        end
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric, as: 'metric', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec::Representation
      
          property :multi_trial_algorithm, as: 'multiTrialAlgorithm'
          property :search_trial_spec, as: 'searchTrialSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec::Representation
      
          property :train_trial_spec, as: 'trainTrialSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :goal, as: 'goal'
          property :metric_id, as: 'metricId'
        end
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecSearchTrialSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_failed_trial_count, as: 'maxFailedTrialCount'
          property :max_parallel_trial_count, as: 'maxParallelTrialCount'
          property :max_trial_count, as: 'maxTrialCount'
          property :search_trial_job_spec, as: 'searchTrialJobSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frequency, as: 'frequency'
          property :max_parallel_trial_count, as: 'maxParallelTrialCount'
          property :train_trial_job_spec, as: 'trainTrialJobSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NasTrial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :final_measurement, as: 'finalMeasurement', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement::Representation
      
          property :id, as: 'id'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudAiplatformV1NasTrialDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :parameters, as: 'parameters'
          property :search_trial, as: 'searchTrial', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial::Representation
      
          property :train_trial, as: 'trainTrial', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NasTrial::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :embedding, as: 'embedding', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryEmbedding, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryEmbedding::Representation
      
          property :entity_id, as: 'entityId'
          property :neighbor_count, as: 'neighborCount'
          collection :numeric_filters, as: 'numericFilters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryNumericFilter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryNumericFilter::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryParameters, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryParameters::Representation
      
          property :per_crowding_attribute_neighbor_count, as: 'perCrowdingAttributeNeighborCount'
          collection :string_filters, as: 'stringFilters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryStringFilter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQueryStringFilter::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryEmbedding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryNumericFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :op, as: 'op'
          property :value_double, as: 'valueDouble'
          property :value_float, as: 'valueFloat'
          property :value_int, :numeric_string => true, as: 'valueInt'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approximate_neighbor_candidates, as: 'approximateNeighborCandidates'
          property :leaf_nodes_search_fraction, as: 'leafNodesSearchFraction'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborQueryStringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_tokens, as: 'allowTokens'
          collection :deny_tokens, as: 'denyTokens'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_validation_stats, as: 'contentValidationStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats::Representation
      
          property :data_bytes_count, :numeric_string => true, as: 'dataBytesCount'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataContentValidationStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :invalid_record_count, :numeric_string => true, as: 'invalidRecordCount'
          property :invalid_sparse_record_count, :numeric_string => true, as: 'invalidSparseRecordCount'
          collection :partial_errors, as: 'partialErrors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataRecordError, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataRecordError::Representation
      
          property :source_gcs_uri, as: 'sourceGcsUri'
          property :valid_record_count, :numeric_string => true, as: 'validRecordCount'
          property :valid_sparse_record_count, :numeric_string => true, as: 'validSparseRecordCount'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadataRecordError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :embedding_id, as: 'embeddingId'
          property :error_message, as: 'errorMessage'
          property :error_type, as: 'errorType'
          property :raw_record, as: 'rawRecord'
          property :source_gcs_uri, as: 'sourceGcsUri'
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighbors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :neighbors, as: 'neighbors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborsNeighbor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborsNeighbor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NearestNeighborsNeighbor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distance, as: 'distance'
          property :entity_id, as: 'entityId'
          property :entity_key_values, as: 'entityKeyValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FetchFeatureValuesResponse, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FetchFeatureValuesResponse::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Neighbor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :neighbor_distance, as: 'neighborDistance'
          property :neighbor_id, as: 'neighborId'
        end
      end
      
      class GoogleCloudAiplatformV1NetworkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_internet_access, as: 'enableInternetAccess'
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class GoogleCloudAiplatformV1NfsMount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_point, as: 'mountPoint'
          property :path, as: 'path'
          property :server, as: 'server'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookEucConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bypass_actas_check, as: 'bypassActasCheck'
          property :euc_disabled, as: 'eucDisabled'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom_environment_spec, as: 'customEnvironmentSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobCustomEnvironmentSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobCustomEnvironmentSpec::Representation
      
          property :dataform_repository_source, as: 'dataformRepositorySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobDataformRepositorySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobDataformRepositorySource::Representation
      
          property :direct_notebook_source, as: 'directNotebookSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobDirectNotebookSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobDirectNotebookSource::Representation
      
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :execution_timeout, as: 'executionTimeout'
          property :execution_user, as: 'executionUser'
          property :gcs_notebook_source, as: 'gcsNotebookSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobGcsNotebookSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobGcsNotebookSource::Representation
      
          property :gcs_output_uri, as: 'gcsOutputUri'
          property :job_state, as: 'jobState'
          property :kernel_name, as: 'kernelName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :notebook_runtime_template_resource_name, as: 'notebookRuntimeTemplateResourceName'
          property :schedule_resource_name, as: 'scheduleResourceName'
          property :service_account, as: 'serviceAccount'
          property :status, as: 'status', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :update_time, as: 'updateTime'
          property :workbench_runtime, as: 'workbenchRuntime', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobWorkbenchRuntime, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookExecutionJobWorkbenchRuntime::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobCustomEnvironmentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          property :network_spec, as: 'networkSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NetworkSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NetworkSpec::Representation
      
          property :persistent_disk_spec, as: 'persistentDiskSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentDiskSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentDiskSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobDataformRepositorySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commit_sha, as: 'commitSha'
          property :dataform_repository_resource_name, as: 'dataformRepositoryResourceName'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobDirectNotebookSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobGcsNotebookSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generation, as: 'generation'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookExecutionJobWorkbenchRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1NotebookIdleShutdownConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idle_shutdown_disabled, as: 'idleShutdownDisabled'
          property :idle_timeout, as: 'idleTimeout'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookReservationAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consume_reservation_type, as: 'consumeReservationType'
          property :key, as: 'key'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_persistent_disk_spec, as: 'dataPersistentDiskSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentDiskSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentDiskSpec::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :euc_config, as: 'eucConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookEucConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookEucConfig::Representation
      
          property :expiration_time, as: 'expirationTime'
          property :health_state, as: 'healthState'
          property :idle_shutdown_config, as: 'idleShutdownConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookIdleShutdownConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookIdleShutdownConfig::Representation
      
          property :is_upgradable, as: 'isUpgradable'
          hash :labels, as: 'labels'
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          property :name, as: 'name'
          property :network_spec, as: 'networkSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NetworkSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NetworkSpec::Representation
      
          collection :network_tags, as: 'networkTags'
          property :notebook_runtime_template_ref, as: 'notebookRuntimeTemplateRef', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntimeTemplateRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookRuntimeTemplateRef::Representation
      
          property :notebook_runtime_type, as: 'notebookRuntimeType'
          property :proxy_uri, as: 'proxyUri'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookReservationAffinity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookReservationAffinity::Representation
      
          property :runtime_state, as: 'runtimeState'
          property :runtime_user, as: 'runtimeUser'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account, as: 'serviceAccount'
          property :shielded_vm_config, as: 'shieldedVmConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ShieldedVmConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ShieldedVmConfig::Representation
      
          property :software_config, as: 'softwareConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookSoftwareConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookSoftwareConfig::Representation
      
          property :update_time, as: 'updateTime'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookRuntimeTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_persistent_disk_spec, as: 'dataPersistentDiskSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentDiskSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PersistentDiskSpec::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          property :euc_config, as: 'eucConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookEucConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookEucConfig::Representation
      
          property :idle_shutdown_config, as: 'idleShutdownConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookIdleShutdownConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookIdleShutdownConfig::Representation
      
          property :is_default, as: 'isDefault'
          hash :labels, as: 'labels'
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          property :name, as: 'name'
          property :network_spec, as: 'networkSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NetworkSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NetworkSpec::Representation
      
          collection :network_tags, as: 'networkTags'
          property :notebook_runtime_type, as: 'notebookRuntimeType'
          property :reservation_affinity, as: 'reservationAffinity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookReservationAffinity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookReservationAffinity::Representation
      
          property :service_account, as: 'serviceAccount'
          property :shielded_vm_config, as: 'shieldedVmConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ShieldedVmConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ShieldedVmConfig::Representation
      
          property :software_config, as: 'softwareConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookSoftwareConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NotebookSoftwareConfig::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookRuntimeTemplateRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebook_runtime_template, as: 'notebookRuntimeTemplate'
        end
      end
      
      class GoogleCloudAiplatformV1NotebookSoftwareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :colab_image, as: 'colabImage', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ColabImage, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ColabImage::Representation
      
          collection :env, as: 'env', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar::Representation
      
          property :post_startup_script_config, as: 'postStartupScriptConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PostStartupScriptConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PostStartupScriptConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PscAutomationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :forwarding_rule, as: 'forwardingRule'
          property :ip_address, as: 'ipAddress'
          property :network, as: 'network'
          property :project_id, as: 'projectId'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseMetricSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_map_instance, as: 'contentMapInstance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContentMap, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContentMap::Representation
      
          property :json_instance, as: 'jsonInstance'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_output, as: 'customOutput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutput::Representation
      
          property :explanation, as: 'explanation'
          property :pairwise_choice, as: 'pairwiseChoice'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_response_field_name, as: 'baselineResponseFieldName'
          property :candidate_response_field_name, as: 'candidateResponseFieldName'
          property :custom_output_format_config, as: 'customOutputFormatConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutputFormatConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutputFormatConfig::Representation
      
          property :metric_prompt_template, as: 'metricPromptTemplate'
          property :system_instruction, as: 'systemInstruction'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualitySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualitySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_prediction, as: 'baselinePrediction'
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :pairwise_choice, as: 'pairwiseChoice'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseQuestionAnsweringQualitySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualityInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualityInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualityInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualitySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PairwiseSummarizationQualitySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualityInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline_prediction, as: 'baselinePrediction'
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :pairwise_choice, as: 'pairwiseChoice'
        end
      end
      
      class GoogleCloudAiplatformV1PairwiseSummarizationQualitySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1Part
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_execution_result, as: 'codeExecutionResult', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CodeExecutionResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CodeExecutionResult::Representation
      
          property :executable_code, as: 'executableCode', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExecutableCode, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExecutableCode::Representation
      
          property :file_data, as: 'fileData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FileData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FileData::Representation
      
          property :function_call, as: 'functionCall', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionCall, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionCall::Representation
      
          property :function_response, as: 'functionResponse', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionResponse, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionResponse::Representation
      
          property :inline_data, as: 'inlineData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Blob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Blob::Representation
      
          property :text, as: 'text'
          property :thought, as: 'thought'
          property :thought_signature, :base64 => true, as: 'thoughtSignature'
          property :video_metadata, as: 'videoMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VideoMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VideoMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PauseModelDeploymentMonitoringJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1PauseScheduleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1PersistentDiskSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :disk_type, as: 'diskType'
        end
      end
      
      class GoogleCloudAiplatformV1PersistentResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          property :psc_interface_config, as: 'pscInterfaceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscInterfaceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscInterfaceConfig::Representation
      
          collection :reserved_ip_ranges, as: 'reservedIpRanges'
          collection :resource_pools, as: 'resourcePools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourcePool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourcePool::Representation
      
          property :resource_runtime, as: 'resourceRuntime', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourceRuntime, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourceRuntime::Representation
      
          property :resource_runtime_spec, as: 'resourceRuntimeSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourceRuntimeSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourceRuntimeSpec::Representation
      
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :job_detail, as: 'jobDetail', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJobDetail, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJobDetail::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :network, as: 'network'
          hash :pipeline_spec, as: 'pipelineSpec'
          property :preflight_validations, as: 'preflightValidations'
          property :psc_interface_config, as: 'pscInterfaceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscInterfaceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscInterfaceConfig::Representation
      
          collection :reserved_ip_ranges, as: 'reservedIpRanges'
          property :runtime_config, as: 'runtimeConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJobRuntimeConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJobRuntimeConfig::Representation
      
          property :schedule_name, as: 'scheduleName'
          property :service_account, as: 'serviceAccount'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :template_metadata, as: 'templateMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTemplateMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTemplateMetadata::Representation
      
          property :template_uri, as: 'templateUri'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineJobDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pipeline_context, as: 'pipelineContext', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Context, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Context::Representation
      
          property :pipeline_run_context, as: 'pipelineRunContext', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Context, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Context::Representation
      
          collection :task_details, as: 'taskDetails', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetail, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetail::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PipelineJobRuntimeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_policy, as: 'failurePolicy'
          property :gcs_output_directory, as: 'gcsOutputDirectory'
          hash :input_artifacts, as: 'inputArtifacts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJobRuntimeConfigInputArtifact, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineJobRuntimeConfigInputArtifact::Representation
      
          hash :parameter_values, as: 'parameterValues'
          hash :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Value, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Value::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PipelineJobRuntimeConfigInputArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTaskDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :execution, as: 'execution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Execution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Execution::Representation
      
          property :executor_detail, as: 'executorDetail', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskExecutorDetail, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskExecutorDetail::Representation
      
          hash :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetailArtifactList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetailArtifactList::Representation
      
          hash :outputs, as: 'outputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetailArtifactList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetailArtifactList::Representation
      
          property :parent_task_id, :numeric_string => true, as: 'parentTaskId'
          collection :pipeline_task_status, as: 'pipelineTaskStatus', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :task_id, :numeric_string => true, as: 'taskId'
          property :task_name, as: 'taskName'
          property :task_unique_name, as: 'taskUniqueName'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTaskDetailArtifactList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Artifact, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Artifact::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTaskDetailPipelineTaskStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTaskExecutorDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_detail, as: 'containerDetail', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail::Representation
      
          property :custom_job_detail, as: 'customJobDetail', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_main_jobs, as: 'failedMainJobs'
          collection :failed_pre_caching_check_jobs, as: 'failedPreCachingCheckJobs'
          property :main_job, as: 'mainJob'
          property :pre_caching_check_job, as: 'preCachingCheckJob'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_jobs, as: 'failedJobs'
          property :job, as: 'job'
        end
      end
      
      class GoogleCloudAiplatformV1PipelineTemplateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PointwiseMetricSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_map_instance, as: 'contentMapInstance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContentMap, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContentMap::Representation
      
          property :json_instance, as: 'jsonInstance'
        end
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_output, as: 'customOutput', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutput::Representation
      
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1PointwiseMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_output_format_config, as: 'customOutputFormatConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutputFormatConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomOutputFormatConfig::Representation
      
          property :metric_prompt_template, as: 'metricPromptTemplate'
          property :system_instruction, as: 'systemInstruction'
        end
      end
      
      class GoogleCloudAiplatformV1Port
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_port, as: 'containerPort'
        end
      end
      
      class GoogleCloudAiplatformV1PostStartupScriptConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :post_startup_script, as: 'postStartupScript'
          property :post_startup_script_behavior, as: 'postStartupScriptBehavior'
          property :post_startup_script_url, as: 'postStartupScriptUrl'
        end
      end
      
      class GoogleCloudAiplatformV1PrebuiltVoiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :voice_name, as: 'voiceName'
        end
      end
      
      class GoogleCloudAiplatformV1PredefinedSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
        end
      end
      
      class GoogleCloudAiplatformV1PredictLongRunningRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
          property :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudAiplatformV1PredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
          property :parameters, as: 'parameters'
        end
      end
      
      class GoogleCloudAiplatformV1PredictRequestResponseLoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BigQueryDestination::Representation
      
          property :enabled, as: 'enabled'
          property :sampling_rate, as: 'samplingRate'
        end
      end
      
      class GoogleCloudAiplatformV1PredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_id, as: 'deployedModelId'
          property :metadata, as: 'metadata'
          property :model, as: 'model'
          property :model_display_name, as: 'modelDisplayName'
          property :model_version_id, as: 'modelVersionId'
          collection :predictions, as: 'predictions'
        end
      end
      
      class GoogleCloudAiplatformV1PredictSchemata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_schema_uri, as: 'instanceSchemaUri'
          property :parameters_schema_uri, as: 'parametersSchemaUri'
          property :prediction_schema_uri, as: 'predictionSchemaUri'
        end
      end
      
      class GoogleCloudAiplatformV1Presets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :modality, as: 'modality'
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudAiplatformV1PrivateEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explain_http_uri, as: 'explainHttpUri'
          property :health_http_uri, as: 'healthHttpUri'
          property :predict_http_uri, as: 'predictHttpUri'
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class GoogleCloudAiplatformV1PrivateServiceConnectConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_private_service_connect, as: 'enablePrivateServiceConnect'
          collection :project_allowlist, as: 'projectAllowlist'
          collection :psc_automation_configs, as: 'pscAutomationConfigs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscAutomationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PscAutomationConfig::Representation
      
          property :service_attachment, as: 'serviceAttachment'
        end
      end
      
      class GoogleCloudAiplatformV1Probe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeExecAction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeExecAction::Representation
      
          property :failure_threshold, as: 'failureThreshold'
          property :grpc, as: 'grpc', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeGrpcAction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeGrpcAction::Representation
      
          property :http_get, as: 'httpGet', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeHttpGetAction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeHttpGetAction::Representation
      
          property :initial_delay_seconds, as: 'initialDelaySeconds'
          property :period_seconds, as: 'periodSeconds'
          property :success_threshold, as: 'successThreshold'
          property :tcp_socket, as: 'tcpSocket', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeTcpSocketAction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeTcpSocketAction::Representation
      
          property :timeout_seconds, as: 'timeoutSeconds'
        end
      end
      
      class GoogleCloudAiplatformV1ProbeExecAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :command, as: 'command'
        end
      end
      
      class GoogleCloudAiplatformV1ProbeGrpcAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudAiplatformV1ProbeHttpGetAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          collection :http_headers, as: 'httpHeaders', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeHttpHeader, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ProbeHttpHeader::Representation
      
          property :path, as: 'path'
          property :port, as: 'port'
          property :scheme, as: 'scheme'
        end
      end
      
      class GoogleCloudAiplatformV1ProbeHttpHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1ProbeTcpSocketAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudAiplatformV1PscAutomatedEndpoints
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_address, as: 'matchAddress'
          property :network, as: 'network'
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudAiplatformV1PscInterfaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dns_peering_configs, as: 'dnsPeeringConfigs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DnsPeeringConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DnsPeeringConfig::Representation
      
          property :network_attachment, as: 'networkAttachment'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frameworks, as: 'frameworks'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :open_source_category, as: 'openSourceCategory'
          property :predict_schemata, as: 'predictSchemata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictSchemata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictSchemata::Representation
      
          property :publisher_model_template, as: 'publisherModelTemplate'
          property :supported_actions, as: 'supportedActions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToAction, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToAction::Representation
      
          property :version_id, as: 'versionId'
          property :version_state, as: 'versionState'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_application, as: 'createApplication', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :deploy, as: 'deploy', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeploy, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeploy::Representation
      
          property :deploy_gke, as: 'deployGke', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeployGke, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeployGke::Representation
      
          property :multi_deploy_vertex, as: 'multiDeployVertex', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeployVertex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeployVertex::Representation
      
          property :open_evaluation_pipeline, as: 'openEvaluationPipeline', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :open_fine_tuning_pipeline, as: 'openFineTuningPipeline', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :open_fine_tuning_pipelines, as: 'openFineTuningPipelines', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionOpenFineTuningPipelines, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionOpenFineTuningPipelines::Representation
      
          property :open_generation_ai_studio, as: 'openGenerationAiStudio', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :open_genie, as: 'openGenie', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :open_notebook, as: 'openNotebook', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :open_notebooks, as: 'openNotebooks', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionOpenNotebooks, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionOpenNotebooks::Representation
      
          property :open_prompt_tuning_pipeline, as: 'openPromptTuningPipeline', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :request_access, as: 'requestAccess', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
          property :view_rest_api, as: 'viewRestApi', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionViewRestApi, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionViewRestApi::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeploy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_uri, as: 'artifactUri'
          property :automatic_resources, as: 'automaticResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1AutomaticResources::Representation
      
          property :container_spec, as: 'containerSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec::Representation
      
          property :dedicated_resources, as: 'dedicatedResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DedicatedResources::Representation
      
          property :deploy_metadata, as: 'deployMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeployDeployMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeployDeployMetadata::Representation
      
          property :deploy_task_name, as: 'deployTaskName'
          property :large_model_reference, as: 'largeModelReference', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LargeModelReference, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1LargeModelReference::Representation
      
          property :model_display_name, as: 'modelDisplayName'
          property :public_artifact_uri, as: 'publicArtifactUri'
          property :shared_resources, as: 'sharedResources'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeployDeployMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :sample_request, as: 'sampleRequest'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeployGke
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :gke_yaml_configs, as: 'gkeYamlConfigs'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionDeployVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :multi_deploy_vertex, as: 'multiDeployVertex', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeploy, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionDeploy::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionOpenFineTuningPipelines
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :fine_tuning_pipelines, as: 'fineTuningPipelines', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionOpenNotebooks
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :notebooks, as: 'notebooks', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionRegionalResourceReferences
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :references, as: 'references', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelResourceReference, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelResourceReference::Representation
      
          property :resource_description, as: 'resourceDescription'
          property :resource_title, as: 'resourceTitle'
          property :resource_use_case, as: 'resourceUseCase'
          property :supports_workbench, as: 'supportsWorkbench'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelCallToActionViewRestApi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documentations, as: 'documentations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelDocumentation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PublisherModelDocumentation::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelDocumentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudAiplatformV1PublisherModelResourceReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :resource_name, as: 'resourceName'
          property :uri, as: 'uri'
          property :use_case, as: 'useCase'
        end
      end
      
      class GoogleCloudAiplatformV1PurgeArtifactsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PurgeArtifactsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudAiplatformV1PurgeArtifactsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudAiplatformV1PurgeContextsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PurgeContextsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudAiplatformV1PurgeContextsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudAiplatformV1PurgeExecutionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1PurgeExecutionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudAiplatformV1PurgeExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudAiplatformV1PythonPackageSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :env, as: 'env', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar::Representation
      
          property :executor_image_uri, as: 'executorImageUri'
          collection :package_uris, as: 'packageUris'
          property :python_module, as: 'pythonModule'
        end
      end
      
      class GoogleCloudAiplatformV1QueryDeployedModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :deployed_model_refs, as: 'deployedModelRefs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModelRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModelRef::Representation
      
          collection :deployed_models, as: 'deployedModels', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DeployedModel::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_deployed_model_count, as: 'totalDeployedModelCount'
          property :total_endpoint_count, as: 'totalEndpointCount'
        end
      end
      
      class GoogleCloudAiplatformV1QueryReasoningEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_method, as: 'classMethod'
          hash :input, as: 'input'
        end
      end
      
      class GoogleCloudAiplatformV1QueryReasoningEngineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output, as: 'output'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringCorrectnessSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringCorrectnessSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringHelpfulnessSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualityInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualityInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualityInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualitySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringQualitySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualityInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringQualitySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1QuestionAnsweringRelevanceSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1QuestionAnsweringRelevanceSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1RagChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_span, as: 'pageSpan', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunkPageSpan, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunkPageSpan::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudAiplatformV1RagChunkPageSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first_page, as: 'firstPage'
          property :last_page, as: 'lastPage'
        end
      end
      
      class GoogleCloudAiplatformV1RagContexts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagContextsContext, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagContextsContext::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagContextsContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunk, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagChunk::Representation
      
          property :score, as: 'score'
          property :source_display_name, as: 'sourceDisplayName'
          property :source_uri, as: 'sourceUri'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudAiplatformV1RagCorpus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_status, as: 'corpusStatus', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CorpusStatus, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CorpusStatus::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :vector_db_config, as: 'vectorDbConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfig::Representation
      
          property :vertex_ai_search_config, as: 'vertexAiSearchConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexAiSearchConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexAiSearchConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagEmbeddingModelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vertex_prediction_endpoint, as: 'vertexPredictionEndpoint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint'
          property :model, as: 'model'
          property :model_version_id, as: 'modelVersionId'
        end
      end
      
      class GoogleCloudAiplatformV1RagEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :rag_managed_db_config, as: 'ragManagedDbConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :direct_upload_source, as: 'directUploadSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DirectUploadSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DirectUploadSource::Representation
      
          property :display_name, as: 'displayName'
          property :file_status, as: 'fileStatus', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FileStatus, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FileStatus::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsSource::Representation
      
          property :google_drive_source, as: 'googleDriveSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleDriveSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleDriveSource::Representation
      
          property :jira_source, as: 'jiraSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1JiraSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1JiraSource::Representation
      
          property :name, as: 'name'
          property :share_point_sources, as: 'sharePointSources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SharePointSources, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SharePointSources::Representation
      
          property :slack_source, as: 'slackSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSource::Representation
      
          property :update_time, as: 'updateTime'
          property :user_metadata, as: 'userMetadata'
        end
      end
      
      class GoogleCloudAiplatformV1RagFileChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed_length_chunking, as: 'fixedLengthChunking', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileChunkingConfigFixedLengthChunking, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileChunkingConfigFixedLengthChunking::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagFileChunkingConfigFixedLengthChunking
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_overlap, as: 'chunkOverlap'
          property :chunk_size, as: 'chunkSize'
        end
      end
      
      class GoogleCloudAiplatformV1RagFileParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_parser, as: 'layoutParser', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileParsingConfigLayoutParser, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileParsingConfigLayoutParser::Representation
      
          property :llm_parser, as: 'llmParser', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileParsingConfigLlmParser, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileParsingConfigLlmParser::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagFileParsingConfigLayoutParser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_parsing_requests_per_min, as: 'maxParsingRequestsPerMin'
          property :processor_name, as: 'processorName'
        end
      end
      
      class GoogleCloudAiplatformV1RagFileParsingConfigLlmParser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_parsing_prompt, as: 'customParsingPrompt'
          property :max_parsing_requests_per_min, as: 'maxParsingRequestsPerMin'
          property :model_name, as: 'modelName'
        end
      end
      
      class GoogleCloudAiplatformV1RagFileTransformationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_file_chunking_config, as: 'ragFileChunkingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileChunkingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic, as: 'basic', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfigBasic, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfigBasic::Representation
      
          property :scaled, as: 'scaled', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfigScaled, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfigScaled::Representation
      
          property :unprovisioned, as: 'unprovisioned', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfigUnprovisioned, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagManagedDbConfigUnprovisioned::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfigBasic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfigScaled
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RagManagedDbConfigUnprovisioned
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RagQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_retrieval_config, as: 'ragRetrievalConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfig::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigFilter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigFilter::Representation
      
          property :ranking, as: 'ranking', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigRanking, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigRanking::Representation
      
          property :top_k, as: 'topK'
        end
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata_filter, as: 'metadataFilter'
          property :vector_distance_threshold, as: 'vectorDistanceThreshold'
          property :vector_similarity_threshold, as: 'vectorSimilarityThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigRanking
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :llm_ranker, as: 'llmRanker', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigRankingLlmRanker, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigRankingLlmRanker::Representation
      
          property :rank_service, as: 'rankService', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigRankingRankService, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfigRankingRankService::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigRankingLlmRanker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_name, as: 'modelName'
        end
      end
      
      class GoogleCloudAiplatformV1RagRetrievalConfigRankingRankService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_name, as: 'modelName'
        end
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_auth, as: 'apiAuth', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuth, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuth::Representation
      
          property :pinecone, as: 'pinecone', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigPinecone, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigPinecone::Representation
      
          property :rag_embedding_model_config, as: 'ragEmbeddingModelConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagEmbeddingModelConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagEmbeddingModelConfig::Representation
      
          property :rag_managed_db, as: 'ragManagedDb', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDb, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDb::Representation
      
          property :vertex_vector_search, as: 'vertexVectorSearch', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigVertexVectorSearch, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigVertexVectorSearch::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigPinecone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index_name, as: 'indexName'
        end
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ann, as: 'ann', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbAnn, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbAnn::Representation
      
          property :knn, as: 'knn', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbKnn, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbKnn::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbAnn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :leaf_count, as: 'leafCount'
          property :tree_depth, as: 'treeDepth'
        end
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigRagManagedDbKnn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RagVectorDbConfigVertexVectorSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :index_endpoint, as: 'indexEndpoint'
        end
      end
      
      class GoogleCloudAiplatformV1RawOutput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :raw_output, as: 'rawOutput'
        end
      end
      
      class GoogleCloudAiplatformV1RawPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_body, as: 'httpBody', class: Google::Apis::AiplatformV1::GoogleApiHttpBody, decorator: Google::Apis::AiplatformV1::GoogleApiHttpBody::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RayLogsSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class GoogleCloudAiplatformV1RayMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled, as: 'disabled'
        end
      end
      
      class GoogleCloudAiplatformV1RaySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :head_node_resource_pool_id, as: 'headNodeResourcePoolId'
          property :image_uri, as: 'imageUri'
          property :ray_logs_spec, as: 'rayLogsSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RayLogsSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RayLogsSpec::Representation
      
          property :ray_metric_spec, as: 'rayMetricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RayMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RayMetricSpec::Representation
      
          hash :resource_pool_images, as: 'resourcePoolImages'
        end
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
          property :feature_selector, as: 'featureSelector', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_view, as: 'entityView', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityView, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityView::Representation
      
          property :header, as: 'header', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data, as: 'data', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityViewData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityViewData::Representation
      
          property :entity_id, as: 'entityId'
        end
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseEntityViewData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue::Representation
      
          property :values, as: 'values', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValueList::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudAiplatformV1ReadFeatureValuesResponseHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type, as: 'entityType'
          collection :feature_descriptors, as: 'featureDescriptors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadFeatureValuesResponseFeatureDescriptor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadIndexDatapointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index_id, as: 'deployedIndexId'
          collection :ids, as: 'ids'
        end
      end
      
      class GoogleCloudAiplatformV1ReadIndexDatapointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datapoints, as: 'datapoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardBlobDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blobs, as: 'blobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardBlob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardBlob::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardSizeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :storage_size_byte, :numeric_string => true, as: 'storageSizeByte'
        end
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardTimeSeriesDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_series_data, as: 'timeSeriesData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesData::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardUsageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :monthly_usage_data, as: 'monthlyUsageData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerMonthUsageData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerMonthUsageData::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerMonthUsageData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_usage_data, as: 'userUsageData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerUserUsageData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerUserUsageData::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReadTensorboardUsageResponsePerUserUsageData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :username, as: 'username'
          property :view_count, :numeric_string => true, as: 'viewCount'
        end
      end
      
      class GoogleCloudAiplatformV1ReasoningEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :spec, as: 'spec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngineSpec::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1ReasoningEngineSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_framework, as: 'agentFramework'
          collection :class_methods, as: 'classMethods'
          property :deployment_spec, as: 'deploymentSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec::Representation
      
          property :package_spec, as: 'packageSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngineSpecPackageSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ReasoningEngineSpecPackageSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReasoningEngineSpecDeploymentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :env, as: 'env', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnvVar::Representation
      
          collection :secret_env, as: 'secretEnv', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SecretEnvVar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SecretEnvVar::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ReasoningEngineSpecPackageSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dependency_files_gcs_uri, as: 'dependencyFilesGcsUri'
          property :pickle_object_gcs_uri, as: 'pickleObjectGcsUri'
          property :python_version, as: 'pythonVersion'
          property :requirements_gcs_uri, as: 'requirementsGcsUri'
        end
      end
      
      class GoogleCloudAiplatformV1RebaseTunedModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_destination, as: 'artifactDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
          property :deploy_to_same_endpoint, as: 'deployToSameEndpoint'
          property :tuned_model_ref, as: 'tunedModelRef', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TunedModelRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TunedModelRef::Representation
      
          property :tuning_job, as: 'tuningJob', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TuningJob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TuningJob::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RebootPersistentResourceOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1RebootPersistentResourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RemoveContextChildrenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_contexts, as: 'childContexts'
        end
      end
      
      class GoogleCloudAiplatformV1RemoveContextChildrenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RemoveDatapointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datapoint_ids, as: 'datapointIds'
        end
      end
      
      class GoogleCloudAiplatformV1RemoveDatapointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ReservationAffinity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :reservation_affinity_type, as: 'reservationAffinityType'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1ResourcePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscaling_spec, as: 'autoscalingSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourcePoolAutoscalingSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ResourcePoolAutoscalingSpec::Representation
      
          property :disk_spec, as: 'diskSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DiskSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DiskSpec::Representation
      
          property :id, as: 'id'
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          property :replica_count, :numeric_string => true, as: 'replicaCount'
          property :used_replica_count, :numeric_string => true, as: 'usedReplicaCount'
        end
      end
      
      class GoogleCloudAiplatformV1ResourcePoolAutoscalingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_replica_count, :numeric_string => true, as: 'maxReplicaCount'
          property :min_replica_count, :numeric_string => true, as: 'minReplicaCount'
        end
      end
      
      class GoogleCloudAiplatformV1ResourceRuntime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :access_uris, as: 'accessUris'
        end
      end
      
      class GoogleCloudAiplatformV1ResourceRuntimeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ray_spec, as: 'raySpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RaySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RaySpec::Representation
      
          property :service_account_spec, as: 'serviceAccountSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ServiceAccountSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ServiceAccountSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ResourcesConsumed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :replica_hours, as: 'replicaHours'
        end
      end
      
      class GoogleCloudAiplatformV1RestoreDatasetVersionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ResumeModelDeploymentMonitoringJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ResumeScheduleRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :catch_up, as: 'catchUp'
        end
      end
      
      class GoogleCloudAiplatformV1Retrieval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_attribution, as: 'disableAttribution'
          property :external_api, as: 'externalApi', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExternalApi, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ExternalApi::Representation
      
          property :vertex_ai_search, as: 'vertexAiSearch', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexAiSearch, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexAiSearch::Representation
      
          property :vertex_rag_store, as: 'vertexRagStore', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexRagStore, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexRagStore::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RetrievalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :lat_lng, as: 'latLng', class: Google::Apis::AiplatformV1::GoogleTypeLatLng, decorator: Google::Apis::AiplatformV1::GoogleTypeLatLng::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RetrievalMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_search_dynamic_retrieval_score, as: 'googleSearchDynamicRetrievalScore'
        end
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagQuery, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagQuery::Representation
      
          property :vertex_rag_store, as: 'vertexRagStore', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStore, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStore::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rag_resources, as: 'ragResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStoreRagResource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStoreRagResource::Representation
      
          property :vector_distance_threshold, as: 'vectorDistanceThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsRequestVertexRagStoreRagResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_corpus, as: 'ragCorpus'
          collection :rag_file_ids, as: 'ragFileIds'
        end
      end
      
      class GoogleCloudAiplatformV1RetrieveContextsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contexts, as: 'contexts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagContexts, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagContexts::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RougeInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RougeInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1RougeMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1RougeResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rouge_metric_values, as: 'rougeMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RougeMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RougeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rouge_type, as: 'rougeType'
          property :split_summaries, as: 'splitSummaries'
          property :use_stemmer, as: 'useStemmer'
        end
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_instance, as: 'jsonInstance'
        end
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rubric_critique_results, as: 'rubricCritiqueResults', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricCritiqueResult, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RubricCritiqueResult::Representation
      
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1RubricBasedInstructionFollowingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1RubricCritiqueResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rubric, as: 'rubric'
          property :verdict, as: 'verdict'
        end
      end
      
      class GoogleCloudAiplatformV1SafetyInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetyInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SafetyInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
        end
      end
      
      class GoogleCloudAiplatformV1SafetyRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked, as: 'blocked'
          property :category, as: 'category'
          property :overwritten_threshold, as: 'overwrittenThreshold'
          property :probability, as: 'probability'
          property :probability_score, as: 'probabilityScore'
          property :severity, as: 'severity'
          property :severity_score, as: 'severityScore'
        end
      end
      
      class GoogleCloudAiplatformV1SafetyResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1SafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :method_prop, as: 'method'
          property :threshold, as: 'threshold'
        end
      end
      
      class GoogleCloudAiplatformV1SafetySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1SampleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :following_batch_sample_percentage, as: 'followingBatchSamplePercentage'
          property :initial_batch_sample_percentage, as: 'initialBatchSamplePercentage'
          property :sample_strategy, as: 'sampleStrategy'
        end
      end
      
      class GoogleCloudAiplatformV1SampledShapleyAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path_count, as: 'pathCount'
        end
      end
      
      class GoogleCloudAiplatformV1SamplingStrategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :random_sample_config, as: 'randomSampleConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SamplingStrategyRandomSampleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_rate, as: 'sampleRate'
        end
      end
      
      class GoogleCloudAiplatformV1SavedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_filter, as: 'annotationFilter'
          property :annotation_spec_count, as: 'annotationSpecCount'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :metadata, as: 'metadata'
          property :name, as: 'name'
          property :problem_type, as: 'problemType'
          property :support_automl_training, as: 'supportAutomlTraining'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1Scalar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1Schedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_queueing, as: 'allowQueueing'
          property :catch_up, as: 'catchUp'
          property :create_notebook_execution_job_request, as: 'createNotebookExecutionJobRequest', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreateNotebookExecutionJobRequest::Representation
      
          property :create_pipeline_job_request, as: 'createPipelineJobRequest', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreatePipelineJobRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CreatePipelineJobRequest::Representation
      
          property :create_time, as: 'createTime'
          property :cron, as: 'cron'
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :last_pause_time, as: 'lastPauseTime'
          property :last_resume_time, as: 'lastResumeTime'
          property :last_scheduled_run_response, as: 'lastScheduledRunResponse', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ScheduleRunResponse, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ScheduleRunResponse::Representation
      
          property :max_concurrent_run_count, :numeric_string => true, as: 'maxConcurrentRunCount'
          property :max_run_count, :numeric_string => true, as: 'maxRunCount'
          property :name, as: 'name'
          property :next_run_time, as: 'nextRunTime'
          property :start_time, as: 'startTime'
          property :started_run_count, :numeric_string => true, as: 'startedRunCount'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1ScheduleRunResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run_response, as: 'runResponse'
          property :scheduled_run_time, as: 'scheduledRunTime'
        end
      end
      
      class GoogleCloudAiplatformV1Scheduling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_retries, as: 'disableRetries'
          property :max_wait_duration, as: 'maxWaitDuration'
          property :restart_job_on_worker_restart, as: 'restartJobOnWorkerRestart'
          property :strategy, as: 'strategy'
          property :timeout, as: 'timeout'
        end
      end
      
      class GoogleCloudAiplatformV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_properties, as: 'additionalProperties'
          collection :any_of, as: 'anyOf', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          property :default, as: 'default'
          hash :defs, as: 'defs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :example, as: 'example'
          property :format, as: 'format'
          property :items, as: 'items', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          property :max_items, :numeric_string => true, as: 'maxItems'
          property :max_length, :numeric_string => true, as: 'maxLength'
          property :max_properties, :numeric_string => true, as: 'maxProperties'
          property :maximum, as: 'maximum'
          property :min_items, :numeric_string => true, as: 'minItems'
          property :min_length, :numeric_string => true, as: 'minLength'
          property :min_properties, :numeric_string => true, as: 'minProperties'
          property :minimum, as: 'minimum'
          property :nullable, as: 'nullable'
          property :pattern, as: 'pattern'
          hash :properties, as: 'properties', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Schema::Representation
      
          collection :property_ordering, as: 'propertyOrdering'
          property :ref, as: 'ref'
          collection :required, as: 'required'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaAnnotationSpecColor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :color, as: 'color', class: Google::Apis::AiplatformV1::GoogleTypeColor, decorator: Google::Apis::AiplatformV1::GoogleTypeColor::Representation
      
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageBoundingBoxAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          property :x_max, as: 'xMax'
          property :x_min, as: 'xMin'
          property :y_max, as: 'yMax'
          property :y_min, as: 'yMin'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageClassificationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageDataItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_item_schema_uri, as: 'dataItemSchemaUri'
          property :gcs_bucket, as: 'gcsBucket'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mask_annotation, as: 'maskAnnotation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationMaskAnnotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationMaskAnnotation::Representation
      
          property :polygon_annotation, as: 'polygonAnnotation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolygonAnnotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolygonAnnotation::Representation
      
          property :polyline_annotation, as: 'polylineAnnotation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolylineAnnotation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolylineAnnotation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationMaskAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_spec_colors, as: 'annotationSpecColors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaAnnotationSpecColor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaAnnotationSpecColor::Representation
      
          property :mask_gcs_uri, as: 'maskGcsUri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolygonAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          collection :vertexes, as: 'vertexes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaVertex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaVertex::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaImageSegmentationAnnotationPolylineAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          collection :vertexes, as: 'vertexes', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaVertex, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaVertex::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics, as: 'confidenceMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetricsConfidenceMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetricsConfidenceMetrics::Representation
      
          property :iou_threshold, as: 'iouThreshold'
          property :mean_average_precision, as: 'meanAveragePrecision'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetricsConfidenceMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :au_prc, as: 'auPrc'
          property :au_roc, as: 'auRoc'
          collection :confidence_metrics, as: 'confidenceMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics::Representation
      
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix::Representation
      
          property :log_loss, as: 'logLoss'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsClassificationEvaluationMetricsConfidenceMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix::Representation
      
          property :f1_score, as: 'f1Score'
          property :f1_score_at1, as: 'f1ScoreAt1'
          property :f1_score_macro, as: 'f1ScoreMacro'
          property :f1_score_micro, as: 'f1ScoreMicro'
          property :false_negative_count, :numeric_string => true, as: 'falseNegativeCount'
          property :false_positive_count, :numeric_string => true, as: 'falsePositiveCount'
          property :false_positive_rate, as: 'falsePositiveRate'
          property :false_positive_rate_at1, as: 'falsePositiveRateAt1'
          property :max_predictions, as: 'maxPredictions'
          property :precision, as: 'precision'
          property :precision_at1, as: 'precisionAt1'
          property :recall, as: 'recall'
          property :recall_at1, as: 'recallAt1'
          property :true_negative_count, :numeric_string => true, as: 'trueNegativeCount'
          property :true_positive_count, :numeric_string => true, as: 'truePositiveCount'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_specs, as: 'annotationSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrixAnnotationSpecRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrixAnnotationSpecRef::Representation
      
          collection :rows, as: 'rows', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrixAnnotationSpecRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_absolute_percentage_error, as: 'meanAbsolutePercentageError'
          collection :quantile_metrics, as: 'quantileMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry::Representation
      
          property :r_squared, as: 'rSquared'
          property :root_mean_squared_error, as: 'rootMeanSquaredError'
          property :root_mean_squared_log_error, as: 'rootMeanSquaredLogError'
          property :root_mean_squared_percentage_error, as: 'rootMeanSquaredPercentageError'
          property :weighted_absolute_percentage_error, as: 'weightedAbsolutePercentageError'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsForecastingEvaluationMetricsQuantileMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observed_quantile, as: 'observedQuantile'
          property :quantile, as: 'quantile'
          property :scaled_pinball_loss, as: 'scaledPinballLoss'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsGeneralTextGenerationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bleu, as: 'bleu'
          property :rouge_l_sum, as: 'rougeLSum'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageObjectDetectionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_mean_average_precision, as: 'boundingBoxMeanAveragePrecision'
          collection :bounding_box_metrics, as: 'boundingBoxMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics::Representation
      
          property :evaluated_bounding_box_count, as: 'evaluatedBoundingBoxCount'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageSegmentationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageSegmentationEvaluationMetricsConfidenceMetricsEntry, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageSegmentationEvaluationMetricsConfidenceMetricsEntry::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageSegmentationEvaluationMetricsConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix::Representation
      
          property :dice_score_coefficient, as: 'diceScoreCoefficient'
          property :iou_score, as: 'iouScore'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsPairwiseTextGenerationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accuracy, as: 'accuracy'
          property :baseline_model_win_rate, as: 'baselineModelWinRate'
          property :cohens_kappa, as: 'cohensKappa'
          property :f1_score, as: 'f1Score'
          property :false_negative_count, :numeric_string => true, as: 'falseNegativeCount'
          property :false_positive_count, :numeric_string => true, as: 'falsePositiveCount'
          property :human_preference_baseline_model_win_rate, as: 'humanPreferenceBaselineModelWinRate'
          property :human_preference_model_win_rate, as: 'humanPreferenceModelWinRate'
          property :model_win_rate, as: 'modelWinRate'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
          property :true_negative_count, :numeric_string => true, as: 'trueNegativeCount'
          property :true_positive_count, :numeric_string => true, as: 'truePositiveCount'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsQuestionAnsweringEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsRegressionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_absolute_percentage_error, as: 'meanAbsolutePercentageError'
          property :r_squared, as: 'rSquared'
          property :root_mean_squared_error, as: 'rootMeanSquaredError'
          property :root_mean_squared_log_error, as: 'rootMeanSquaredLogError'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsSummarizationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rouge_l_sum, as: 'rougeLSum'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextExtractionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics, as: 'confidenceMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextExtractionEvaluationMetricsConfidenceMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextExtractionEvaluationMetricsConfidenceMetrics::Representation
      
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextExtractionEvaluationMetricsConfidenceMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTextSentimentEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsConfusionMatrix::Representation
      
          property :f1_score, as: 'f1Score'
          property :linear_kappa, as: 'linearKappa'
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_squared_error, as: 'meanSquaredError'
          property :precision, as: 'precision'
          property :quadratic_kappa, as: 'quadraticKappa'
          property :recall, as: 'recall'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics, as: 'confidenceMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetricsConfidenceMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetricsConfidenceMetrics::Representation
      
          property :iou_threshold, as: 'iouThreshold'
          property :mean_bounding_box_iou, as: 'meanBoundingBoxIou'
          property :mean_mismatch_rate, as: 'meanMismatchRate'
          property :mean_tracking_average_precision, as: 'meanTrackingAveragePrecision'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetricsConfidenceMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_iou, as: 'boundingBoxIou'
          property :confidence_threshold, as: 'confidenceThreshold'
          property :mismatch_rate, as: 'mismatchRate'
          property :tracking_precision, as: 'trackingPrecision'
          property :tracking_recall, as: 'trackingRecall'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics, as: 'confidenceMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetricsConfidenceMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetricsConfidenceMetrics::Representation
      
          property :mean_average_precision, as: 'meanAveragePrecision'
          property :precision_window_length, as: 'precisionWindowLength'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetricsConfidenceMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionRecognitionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_action_count, as: 'evaluatedActionCount'
          collection :video_action_metrics, as: 'videoActionMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoActionMetrics::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoObjectTrackingMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_mean_average_precision, as: 'boundingBoxMeanAveragePrecision'
          collection :bounding_box_metrics, as: 'boundingBoxMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics::Representation
      
          property :evaluated_bounding_box_count, as: 'evaluatedBoundingBoxCount'
          property :evaluated_frame_count, as: 'evaluatedFrameCount'
          property :evaluated_track_count, as: 'evaluatedTrackCount'
          property :track_mean_average_precision, as: 'trackMeanAveragePrecision'
          property :track_mean_bounding_box_iou, as: 'trackMeanBoundingBoxIou'
          property :track_mean_mismatch_rate, as: 'trackMeanMismatchRate'
          collection :track_metrics, as: 'trackMetrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceImageClassificationPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceImageObjectDetectionPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceImageSegmentationPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceTextClassificationPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceTextExtractionPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :key, as: 'key'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceTextSentimentPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceVideoActionRecognitionPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
          property :time_segment_end, as: 'timeSegmentEnd'
          property :time_segment_start, as: 'timeSegmentStart'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceVideoClassificationPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
          property :time_segment_end, as: 'timeSegmentEnd'
          property :time_segment_start, as: 'timeSegmentStart'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictInstanceVideoObjectTrackingPredictionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :mime_type, as: 'mimeType'
          property :time_segment_end, as: 'timeSegmentEnd'
          property :time_segment_start, as: 'timeSegmentStart'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_attribution, as: 'disableAttribution'
          collection :sources, as: 'sources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfigSourceEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enterprise_datastore, as: 'enterpriseDatastore'
          property :inline_context, as: 'inlineContext'
          property :type, as: 'type'
          property :vertex_ai_search_datastore, as: 'vertexAiSearchDatastore'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsImageClassificationPredictionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :max_predictions, as: 'maxPredictions'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsImageObjectDetectionPredictionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :max_predictions, as: 'maxPredictions'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsImageSegmentationPredictionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsVideoActionRecognitionPredictionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :max_predictions, as: 'maxPredictions'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsVideoClassificationPredictionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :max_predictions, as: 'maxPredictions'
          property :one_sec_interval_classification, as: 'oneSecIntervalClassification'
          property :segment_classification, as: 'segmentClassification'
          property :shot_classification, as: 'shotClassification'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictParamsVideoObjectTrackingPredictionParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :max_predictions, as: 'maxPredictions'
          property :min_bounding_box_size, as: 'minBoundingBoxSize'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionClassificationPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidences, as: 'confidences'
          collection :display_names, as: 'displayNames'
          collection :ids, as: 'ids'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionImageObjectDetectionPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bboxes, as: 'bboxes', :class => Array do
        include Representable::JSON::Collection
        items
      end
      
          collection :confidences, as: 'confidences'
          collection :display_names, as: 'displayNames'
          collection :ids, as: 'ids'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionImageSegmentationPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_mask, as: 'categoryMask'
          property :confidence_mask, as: 'confidenceMask'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTabularClassificationPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :classes, as: 'classes'
          collection :scores, as: 'scores'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTabularRegressionPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lower_bound, as: 'lowerBound'
          collection :quantile_predictions, as: 'quantilePredictions'
          collection :quantile_values, as: 'quantileValues'
          property :upper_bound, as: 'upperBound'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTextExtractionPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidences, as: 'confidences'
          collection :display_names, as: 'displayNames'
          collection :ids, as: 'ids'
          collection :text_segment_end_offsets, as: 'textSegmentEndOffsets'
          collection :text_segment_start_offsets, as: 'textSegmentStartOffsets'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTextSentimentPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment, as: 'sentiment'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTftFeatureImportance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attribute_columns, as: 'attributeColumns'
          collection :attribute_weights, as: 'attributeWeights'
          collection :context_columns, as: 'contextColumns'
          collection :context_weights, as: 'contextWeights'
          collection :horizon_columns, as: 'horizonColumns'
          collection :horizon_weights, as: 'horizonWeights'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionTimeSeriesForecastingPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quantile_predictions, as: 'quantilePredictions'
          collection :quantile_values, as: 'quantileValues'
          property :tft_feature_importance, as: 'tftFeatureImportance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictPredictionTftFeatureImportance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictPredictionTftFeatureImportance::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoActionRecognitionPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :time_segment_end, as: 'timeSegmentEnd'
          property :time_segment_start, as: 'timeSegmentStart'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoClassificationPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :time_segment_end, as: 'timeSegmentEnd'
          property :time_segment_start, as: 'timeSegmentStart'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :display_name, as: 'displayName'
          collection :frames, as: 'frames', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame::Representation
      
          property :id, as: 'id'
          property :time_segment_end, as: 'timeSegmentEnd'
          property :time_segment_start, as: 'timeSegmentStart'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictPredictionVideoObjectTrackingPredictionResultFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_offset, as: 'timeOffset'
          property :x_max, as: 'xMax'
          property :x_min, as: 'xMin'
          property :y_max, as: 'yMax'
          property :y_min, as: 'yMin'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictionResultError, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictionResultError::Representation
      
          hash :instance, as: 'instance'
          property :key, as: 'key'
          property :prediction, as: 'prediction'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPredictionResultError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptApiSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_schema_version, as: 'apiSchemaVersion'
          collection :executions, as: 'executions', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptInstancePromptExecution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptInstancePromptExecution::Representation
      
          property :multimodal_prompt, as: 'multimodalPrompt', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecMultimodalPrompt, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecMultimodalPrompt::Representation
      
          property :structured_prompt, as: 'structuredPrompt', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt::Representation
      
          property :translation_prompt, as: 'translationPrompt', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptInstancePromptExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :arguments, as: 'arguments', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptInstanceVariableValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :part_list, as: 'partList', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPartList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPartList::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecMultimodalPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prompt_message, as: 'promptMessage', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecPartList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parts, as: 'parts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Part, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Part::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenerationConfig::Representation
      
          property :model, as: 'model'
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetySetting, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SafetySetting::Representation
      
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :tool_config, as: 'toolConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolConfig::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tool::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_sentence, as: 'sourceSentence'
          property :target_sentence, as: 'targetSentence'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePairList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reference_sentence_pairs, as: 'referenceSentencePairs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePair, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePair::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecStructuredPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          collection :examples, as: 'examples', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPartList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPartList::Representation
      
          property :infill_prefix, as: 'infillPrefix'
          property :infill_suffix, as: 'infillSuffix'
          collection :input_prefixes, as: 'inputPrefixes'
          collection :output_prefixes, as: 'outputPrefixes'
          collection :prediction_inputs, as: 'predictionInputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPartList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPartList::Representation
      
          property :prompt_message, as: 'promptMessage', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reference_sentence_pair_lists, as: 'referenceSentencePairLists', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePairList, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecReferenceSentencePairList::Representation
      
          collection :reference_sentences_file_inputs, as: 'referenceSentencesFileInputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationSentenceFileInput, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationSentenceFileInput::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationFileInputSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :display_name, as: 'displayName'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationGcsInputSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number_of_shots, as: 'numberOfShots'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :example, as: 'example', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationExample::Representation
      
          property :option, as: 'option', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationOption::Representation
      
          property :prompt_message, as: 'promptMessage', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecPromptMessage::Representation
      
          property :source_language_code, as: 'sourceLanguageCode'
          property :target_language_code, as: 'targetLanguageCode'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaPromptSpecTranslationSentenceFileInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_input_source, as: 'fileInputSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationFileInputSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationFileInputSource::Representation
      
          property :gcs_input_source, as: 'gcsInputSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationGcsInputSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptSpecTranslationGcsInputSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTablesDatasetMetadataInputConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTablesDatasetMetadataInputConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadataBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadataGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTablesDatasetMetadataInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTablesDatasetMetadataBigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTablesDatasetMetadataBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTablesDatasetMetadataGcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTablesDatasetMetadataGcsSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextClassificationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextDataItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_item_schema_uri, as: 'dataItemSchemaUri'
          property :gcs_bucket, as: 'gcsBucket'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextExtractionAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          property :text_segment, as: 'textSegment', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTextSegment, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTextSegment::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextPromptDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidate_count, :numeric_string => true, as: 'candidateCount'
          property :gcs_uri, as: 'gcsUri'
          property :grounding_config, as: 'groundingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPredictParamsGroundingConfig::Representation
      
          property :has_prompt_variable, as: 'hasPromptVariable'
          property :logprobs, as: 'logprobs'
          property :max_output_tokens, :numeric_string => true, as: 'maxOutputTokens'
          property :note, as: 'note'
          property :prompt_api_schema, as: 'promptApiSchema', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptApiSchema, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaPromptApiSchema::Representation
      
          property :prompt_type, as: 'promptType'
          property :seed_enabled, as: 'seedEnabled'
          property :seed_value, :numeric_string => true, as: 'seedValue'
          collection :stop_sequences, as: 'stopSequences'
          property :system_instruction, as: 'systemInstruction'
          property :system_instruction_gcs_uri, as: 'systemInstructionGcsUri'
          property :temperature, as: 'temperature'
          property :text, as: 'text'
          property :top_k, :numeric_string => true, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :start_offset, :numeric_string => true, as: 'startOffset'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextSentimentAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          property :sentiment, as: 'sentiment'
          property :sentiment_max, as: 'sentimentMax'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTextSentimentSavedQueryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment_max, as: 'sentimentMax'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataInputConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataInputConfig::Representation
      
          property :time_column, as: 'timeColumn'
          property :time_series_identifier_column, as: 'timeSeriesIdentifierColumn'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataBigQuerySource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataGcsSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSeriesDatasetMetadataGcsSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecasting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_experiments, as: 'additionalExperiments'
          collection :available_at_forecast_columns, as: 'availableAtForecastColumns'
          property :context_window, :numeric_string => true, as: 'contextWindow'
          property :data_granularity, as: 'dataGranularity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsGranularity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsGranularity::Representation
      
          property :enable_probabilistic_inference, as: 'enableProbabilisticInference'
          property :export_evaluated_data_items_config, as: 'exportEvaluatedDataItemsConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig::Representation
      
          property :forecast_horizon, :numeric_string => true, as: 'forecastHorizon'
          property :hierarchy_config, as: 'hierarchyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig::Representation
      
          collection :holiday_regions, as: 'holidayRegions'
          property :optimization_objective, as: 'optimizationObjective'
          collection :quantiles, as: 'quantiles'
          property :target_column, as: 'targetColumn'
          property :time_column, as: 'timeColumn'
          collection :time_series_attribute_columns, as: 'timeSeriesAttributeColumns'
          property :time_series_identifier_column, as: 'timeSeriesIdentifierColumn'
          property :train_budget_milli_node_hours, :numeric_string => true, as: 'trainBudgetMilliNodeHours'
          collection :transformations, as: 'transformations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformation::Representation
      
          collection :unavailable_at_forecast_columns, as: 'unavailableAtForecastColumns'
          property :validation_options, as: 'validationOptions'
          property :weight_column, as: 'weightColumn'
          property :window_config, as: 'windowConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsGranularity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity, :numeric_string => true, as: 'quantity'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto, as: 'auto', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationAutoTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationAutoTransformation::Representation
      
          property :categorical, as: 'categorical', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationCategoricalTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationCategoricalTransformation::Representation
      
          property :numeric, as: 'numeric', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationNumericTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationNumericTransformation::Representation
      
          property :text, as: 'text', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTextTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTextTransformation::Representation
      
          property :timestamp, as: 'timestamp', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationAutoTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationCategoricalTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationNumericTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTextTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingInputsTransformationTimestampTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :time_format, as: 'timeFormat'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlForecastingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_data_items_bigquery_uri, as: 'evaluatedDataItemsBigqueryUri'
          property :train_cost_milli_node_hours, :numeric_string => true, as: 'trainCostMilliNodeHours'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_model_id, as: 'baseModelId'
          property :budget_milli_node_hours, :numeric_string => true, as: 'budgetMilliNodeHours'
          property :disable_early_stopping, as: 'disableEarlyStopping'
          property :model_type, as: 'modelType'
          property :multi_label, as: 'multiLabel'
          property :tunable_parameter, as: 'tunableParameter', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutomlImageTrainingTunableParameter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutomlImageTrainingTunableParameter::Representation
      
          property :uptrain_base_model_id, as: 'uptrainBaseModelId'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageClassificationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_milli_node_hours, :numeric_string => true, as: 'costMilliNodeHours'
          property :successful_stop_reason, as: 'successfulStopReason'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :budget_milli_node_hours, :numeric_string => true, as: 'budgetMilliNodeHours'
          property :disable_early_stopping, as: 'disableEarlyStopping'
          property :model_type, as: 'modelType'
          property :tunable_parameter, as: 'tunableParameter', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutomlImageTrainingTunableParameter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutomlImageTrainingTunableParameter::Representation
      
          property :uptrain_base_model_id, as: 'uptrainBaseModelId'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageObjectDetectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_milli_node_hours, :numeric_string => true, as: 'costMilliNodeHours'
          property :successful_stop_reason, as: 'successfulStopReason'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_model_id, as: 'baseModelId'
          property :budget_milli_node_hours, :numeric_string => true, as: 'budgetMilliNodeHours'
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlImageSegmentationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost_milli_node_hours, :numeric_string => true, as: 'costMilliNodeHours'
          property :successful_stop_reason, as: 'successfulStopReason'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTables
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_experiments, as: 'additionalExperiments'
          property :disable_early_stopping, as: 'disableEarlyStopping'
          property :export_evaluated_data_items_config, as: 'exportEvaluatedDataItemsConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_precision_value, as: 'optimizationObjectivePrecisionValue'
          property :optimization_objective_recall_value, as: 'optimizationObjectiveRecallValue'
          property :prediction_type, as: 'predictionType'
          property :target_column, as: 'targetColumn'
          property :train_budget_milli_node_hours, :numeric_string => true, as: 'trainBudgetMilliNodeHours'
          collection :transformations, as: 'transformations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformation::Representation
      
          property :weight_column_name, as: 'weightColumnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto, as: 'auto', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationAutoTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationAutoTransformation::Representation
      
          property :categorical, as: 'categorical', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalTransformation::Representation
      
          property :numeric, as: 'numeric', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericTransformation::Representation
      
          property :repeated_categorical, as: 'repeatedCategorical', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalArrayTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalArrayTransformation::Representation
      
          property :repeated_numeric, as: 'repeatedNumeric', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericArrayTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericArrayTransformation::Representation
      
          property :repeated_text, as: 'repeatedText', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextArrayTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextArrayTransformation::Representation
      
          property :text, as: 'text', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextTransformation::Representation
      
          property :timestamp, as: 'timestamp', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTimestampTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTimestampTransformation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationAutoTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalArrayTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationCategoricalTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericArrayTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :invalid_values_allowed, as: 'invalidValuesAllowed'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationNumericTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :invalid_values_allowed, as: 'invalidValuesAllowed'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextArrayTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTextTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesInputsTransformationTimestampTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :invalid_values_allowed, as: 'invalidValuesAllowed'
          property :time_format, as: 'timeFormat'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTablesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_data_items_bigquery_uri, as: 'evaluatedDataItemsBigqueryUri'
          property :train_cost_milli_node_hours, :numeric_string => true, as: 'trainCostMilliNodeHours'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextClassification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextClassificationInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextClassificationInputs::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextClassificationInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :multi_label, as: 'multiLabel'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextExtraction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextExtractionInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextExtractionInputs::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextExtractionInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextSentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextSentimentInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextSentimentInputs::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlTextSentimentInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment_max, as: 'sentimentMax'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoActionRecognition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoActionRecognitionInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoActionRecognitionInputs::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoActionRecognitionInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoClassification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoClassificationInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoClassificationInputs::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoClassificationInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoObjectTracking
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoObjectTrackingInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoObjectTrackingInputs::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutoMlVideoObjectTrackingInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionAutomlImageTrainingTunableParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkpoint_name, as: 'checkpointName'
          hash :dataset_config, as: 'datasetConfig'
          property :study_spec, as: 'studySpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec::Representation
      
          hash :trainer_config, as: 'trainerConfig'
          property :trainer_type, as: 'trainerType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionCustomJobMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backing_custom_job, as: 'backingCustomJob'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionCustomTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionCustomJobMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionCustomJobMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_bigquery_uri, as: 'destinationBigqueryUri'
          property :override_existing_table, as: 'overrideExistingTable'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :group_columns, as: 'groupColumns'
          property :group_temporal_total_weight, as: 'groupTemporalTotalWeight'
          property :group_total_weight, as: 'groupTotalWeight'
          property :temporal_total_weight, as: 'temporalTotalWeight'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backing_hyperparameter_tuning_job, as: 'backingHyperparameterTuningJob'
          property :best_trial_backing_custom_job, as: 'bestTrialBackingCustomJob'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_failed_trial_count, as: 'maxFailedTrialCount'
          property :max_trial_count, as: 'maxTrialCount'
          property :parallel_trial_count, as: 'parallelTrialCount'
          property :study_spec, as: 'studySpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec::Representation
      
          property :trial_job_spec, as: 'trialJobSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1CustomJobSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecasting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_experiments, as: 'additionalExperiments'
          collection :available_at_forecast_columns, as: 'availableAtForecastColumns'
          property :context_window, :numeric_string => true, as: 'contextWindow'
          property :data_granularity, as: 'dataGranularity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity::Representation
      
          property :export_evaluated_data_items_config, as: 'exportEvaluatedDataItemsConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig::Representation
      
          property :forecast_horizon, :numeric_string => true, as: 'forecastHorizon'
          property :hierarchy_config, as: 'hierarchyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig::Representation
      
          collection :holiday_regions, as: 'holidayRegions'
          property :optimization_objective, as: 'optimizationObjective'
          collection :quantiles, as: 'quantiles'
          property :target_column, as: 'targetColumn'
          property :time_column, as: 'timeColumn'
          collection :time_series_attribute_columns, as: 'timeSeriesAttributeColumns'
          property :time_series_identifier_column, as: 'timeSeriesIdentifierColumn'
          property :train_budget_milli_node_hours, :numeric_string => true, as: 'trainBudgetMilliNodeHours'
          collection :transformations, as: 'transformations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation::Representation
      
          collection :unavailable_at_forecast_columns, as: 'unavailableAtForecastColumns'
          property :validation_options, as: 'validationOptions'
          property :weight_column, as: 'weightColumn'
          property :window_config, as: 'windowConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsGranularity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity, :numeric_string => true, as: 'quantity'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto, as: 'auto', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationAutoTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationAutoTransformation::Representation
      
          property :categorical, as: 'categorical', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationCategoricalTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationCategoricalTransformation::Representation
      
          property :numeric, as: 'numeric', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationNumericTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationNumericTransformation::Representation
      
          property :text, as: 'text', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTextTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTextTransformation::Representation
      
          property :timestamp, as: 'timestamp', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTimestampTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTimestampTransformation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationAutoTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationCategoricalTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationNumericTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTextTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingInputsTransformationTimestampTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :time_format, as: 'timeFormat'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionSeq2SeqPlusForecastingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_data_items_bigquery_uri, as: 'evaluatedDataItemsBigqueryUri'
          property :train_cost_milli_node_hours, :numeric_string => true, as: 'trainCostMilliNodeHours'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecasting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputs, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputs::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_experiments, as: 'additionalExperiments'
          collection :available_at_forecast_columns, as: 'availableAtForecastColumns'
          property :context_window, :numeric_string => true, as: 'contextWindow'
          property :data_granularity, as: 'dataGranularity', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsGranularity, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsGranularity::Representation
      
          property :export_evaluated_data_items_config, as: 'exportEvaluatedDataItemsConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionExportEvaluatedDataItemsConfig::Representation
      
          property :forecast_horizon, :numeric_string => true, as: 'forecastHorizon'
          property :hierarchy_config, as: 'hierarchyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHierarchyConfig::Representation
      
          collection :holiday_regions, as: 'holidayRegions'
          property :optimization_objective, as: 'optimizationObjective'
          collection :quantiles, as: 'quantiles'
          property :target_column, as: 'targetColumn'
          property :time_column, as: 'timeColumn'
          collection :time_series_attribute_columns, as: 'timeSeriesAttributeColumns'
          property :time_series_identifier_column, as: 'timeSeriesIdentifierColumn'
          property :train_budget_milli_node_hours, :numeric_string => true, as: 'trainBudgetMilliNodeHours'
          collection :transformations, as: 'transformations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformation::Representation
      
          collection :unavailable_at_forecast_columns, as: 'unavailableAtForecastColumns'
          property :validation_options, as: 'validationOptions'
          property :weight_column, as: 'weightColumn'
          property :window_config, as: 'windowConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsGranularity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quantity, :numeric_string => true, as: 'quantity'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto, as: 'auto', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationAutoTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationAutoTransformation::Representation
      
          property :categorical, as: 'categorical', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationCategoricalTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationCategoricalTransformation::Representation
      
          property :numeric, as: 'numeric', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationNumericTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationNumericTransformation::Representation
      
          property :text, as: 'text', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTextTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTextTransformation::Representation
      
          property :timestamp, as: 'timestamp', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTimestampTransformation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTimestampTransformation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationAutoTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationCategoricalTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationNumericTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTextTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingInputsTransformationTimestampTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_name, as: 'columnName'
          property :time_format, as: 'timeFormat'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionTftForecastingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_data_items_bigquery_uri, as: 'evaluatedDataItemsBigqueryUri'
          property :train_cost_milli_node_hours, :numeric_string => true, as: 'trainCostMilliNodeHours'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaTrainingjobDefinitionWindowConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :max_count, :numeric_string => true, as: 'maxCount'
          property :stride_length, :numeric_string => true, as: 'strideLength'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVideoActionRecognitionAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          property :time_segment, as: 'timeSegment', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSegment, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSegment::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVideoClassificationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          property :time_segment, as: 'timeSegment', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSegment, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SchemaTimeSegment::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVideoDataItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_uri, as: 'gcsUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVideoDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_item_schema_uri, as: 'dataItemSchemaUri'
          property :gcs_bucket, as: 'gcsBucket'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVideoObjectTrackingAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id, as: 'annotationSpecId'
          property :display_name, as: 'displayName'
          property :instance_id, :numeric_string => true, as: 'instanceId'
          property :time_offset, as: 'timeOffset'
          property :x_max, as: 'xMax'
          property :x_min, as: 'xMin'
          property :y_max, as: 'yMax'
          property :y_min, as: 'yMin'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVisualInspectionClassificationLabelSavedQueryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :multi_label, as: 'multiLabel'
        end
      end
      
      class GoogleCloudAiplatformV1SchemaVisualInspectionMaskSavedQueryMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1SearchDataItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_item_views, as: 'dataItemViews', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataItemView, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DataItemView::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1SearchEntryPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rendered_content, as: 'renderedContent'
          property :sdk_blob, :base64 => true, as: 'sdkBlob'
        end
      end
      
      class GoogleCloudAiplatformV1SearchFeaturesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :features, as: 'features', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Feature::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1SearchMigratableResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudAiplatformV1SearchMigratableResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :migratable_resources, as: 'migratableResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MigratableResource::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_id, as: 'deployedModelId'
          property :end_time, as: 'endTime'
          property :feature_display_name, as: 'featureDisplayName'
          collection :objectives, as: 'objectives', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective::Representation
      
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesRequestStatsAnomaliesObjective
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :top_feature_count, as: 'topFeatureCount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1SearchModelDeploymentMonitoringStatsAnomaliesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :monitoring_stats, as: 'monitoringStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringStatsAnomalies, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelMonitoringStatsAnomalies::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudAiplatformV1SearchNearestEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQuery, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborQuery::Representation
      
          property :return_full_entity, as: 'returnFullEntity'
        end
      end
      
      class GoogleCloudAiplatformV1SearchNearestEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :nearest_neighbors, as: 'nearestNeighbors', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighbors, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighbors::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SecretEnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :secret_ref, as: 'secretRef', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SecretRef, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SecretRef::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SecretRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret, as: 'secret'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :part_index, as: 'partIndex'
          property :start_index, as: 'startIndex'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudAiplatformV1ServiceAccountSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_custom_service_account, as: 'enableCustomServiceAccount'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudAiplatformV1SharePointSources
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :share_point_sources, as: 'sharePointSources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SharePointSourcesSharePointSource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SharePointSourcesSharePointSource::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SharePointSourcesSharePointSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig::Representation
      
          property :drive_id, as: 'driveId'
          property :drive_name, as: 'driveName'
          property :file_id, as: 'fileId'
          property :sharepoint_folder_id, as: 'sharepointFolderId'
          property :sharepoint_folder_path, as: 'sharepointFolderPath'
          property :sharepoint_site_name, as: 'sharepointSiteName'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudAiplatformV1ShieldedVmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_secure_boot, as: 'enableSecureBoot'
        end
      end
      
      class GoogleCloudAiplatformV1SlackSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSourceSlackChannels, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSourceSlackChannels::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SlackSourceSlackChannels
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_config, as: 'apiKeyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ApiAuthApiKeyConfig::Representation
      
          collection :channels, as: 'channels', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSourceSlackChannelsSlackChannel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SlackSourceSlackChannelsSlackChannel::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SlackSourceSlackChannelsSlackChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_id, as: 'channelId'
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudAiplatformV1SmoothGradConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_noise_sigma, as: 'featureNoiseSigma', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureNoiseSigma, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureNoiseSigma::Representation
      
          property :noise_sigma, as: 'noiseSigma'
          property :noisy_sample_count, as: 'noisySampleCount'
        end
      end
      
      class GoogleCloudAiplatformV1SpecialistPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :pending_data_labeling_jobs, as: 'pendingDataLabelingJobs'
          collection :specialist_manager_emails, as: 'specialistManagerEmails'
          property :specialist_managers_count, as: 'specialistManagersCount'
          collection :specialist_worker_emails, as: 'specialistWorkerEmails'
        end
      end
      
      class GoogleCloudAiplatformV1SpeculativeDecodingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draft_model_speculation, as: 'draftModelSpeculation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeculativeDecodingSpecDraftModelSpeculation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeculativeDecodingSpecDraftModelSpeculation::Representation
      
          property :ngram_speculation, as: 'ngramSpeculation', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeculativeDecodingSpecNgramSpeculation, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SpeculativeDecodingSpecNgramSpeculation::Representation
      
          property :speculative_token_count, as: 'speculativeTokenCount'
        end
      end
      
      class GoogleCloudAiplatformV1SpeculativeDecodingSpecDraftModelSpeculation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :draft_model, as: 'draftModel'
        end
      end
      
      class GoogleCloudAiplatformV1SpeculativeDecodingSpecNgramSpeculation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ngram_size, as: 'ngramSize'
        end
      end
      
      class GoogleCloudAiplatformV1SpeechConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :voice_config, as: 'voiceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VoiceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VoiceConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StartNotebookRuntimeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1StartNotebookRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1StopNotebookRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1StopTrialRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1StratifiedSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :test_fraction, as: 'testFraction'
          property :training_fraction, as: 'trainingFraction'
          property :validation_fraction, as: 'validationFraction'
        end
      end
      
      class GoogleCloudAiplatformV1StreamQueryReasoningEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_method, as: 'classMethod'
          hash :input, as: 'input'
        end
      end
      
      class GoogleCloudAiplatformV1StreamRawPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_body, as: 'httpBody', class: Google::Apis::AiplatformV1::GoogleApiHttpBody, decorator: Google::Apis::AiplatformV1::GoogleApiHttpBody::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StreamingPredictRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StreamingPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :outputs, as: 'outputs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StreamingReadFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_ids, as: 'entityIds'
          property :feature_selector, as: 'featureSelector', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureSelector::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StringArray
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1StructFieldValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StructValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StructFieldValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StructFieldValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Study
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :inactive_reason, as: 'inactiveReason'
          property :name, as: 'name'
          property :state, as: 'state'
          property :study_spec, as: 'studySpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StudySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :convex_automated_stopping_spec, as: 'convexAutomatedStoppingSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec::Representation
      
          property :decay_curve_stopping_spec, as: 'decayCurveStoppingSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec::Representation
      
          property :measurement_selection_type, as: 'measurementSelectionType'
          property :median_automated_stopping_spec, as: 'medianAutomatedStoppingSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecMetricSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecMetricSpec::Representation
      
          property :observation_noise, as: 'observationNoise'
          collection :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpec::Representation
      
          property :study_stopping_config, as: 'studyStoppingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecStudyStoppingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecStudyStoppingConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecConvexAutomatedStoppingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :learning_rate_parameter_name, as: 'learningRateParameterName'
          property :max_step_count, :numeric_string => true, as: 'maxStepCount'
          property :min_measurement_count, :numeric_string => true, as: 'minMeasurementCount'
          property :min_step_count, :numeric_string => true, as: 'minStepCount'
          property :update_all_stopped_trials, as: 'updateAllStoppedTrials'
          property :use_elapsed_duration, as: 'useElapsedDuration'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecDecayCurveAutomatedStoppingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_elapsed_duration, as: 'useElapsedDuration'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecMedianAutomatedStoppingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_elapsed_duration, as: 'useElapsedDuration'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecMetricSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :goal, as: 'goal'
          property :metric_id, as: 'metricId'
          property :safety_config, as: 'safetyConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecMetricSpecSafetyMetricConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_min_safe_trials_fraction, as: 'desiredMinSafeTrialsFraction'
          property :safety_threshold, as: 'safetyThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :categorical_value_spec, as: 'categoricalValueSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec::Representation
      
          collection :conditional_parameter_specs, as: 'conditionalParameterSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec::Representation
      
          property :discrete_value_spec, as: 'discreteValueSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpec::Representation
      
          property :double_value_spec, as: 'doubleValueSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec::Representation
      
          property :integer_value_spec, as: 'integerValueSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpec::Representation
      
          property :parameter_id, as: 'parameterId'
          property :scale_type, as: 'scaleType'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecCategoricalValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_spec, as: 'parameterSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpec::Representation
      
          property :parent_categorical_values, as: 'parentCategoricalValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition::Representation
      
          property :parent_discrete_values, as: 'parentDiscreteValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition::Representation
      
          property :parent_int_values, as: 'parentIntValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecCategoricalValueCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecDiscreteValueCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecConditionalParameterSpecIntValueCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecDiscreteValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecDoubleValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :max_value, as: 'maxValue'
          property :min_value, as: 'minValue'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecParameterSpecIntegerValueSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, :numeric_string => true, as: 'defaultValue'
          property :max_value, :numeric_string => true, as: 'maxValue'
          property :min_value, :numeric_string => true, as: 'minValue'
        end
      end
      
      class GoogleCloudAiplatformV1StudySpecStudyStoppingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_duration_no_progress, as: 'maxDurationNoProgress'
          property :max_num_trials, as: 'maxNumTrials'
          property :max_num_trials_no_progress, as: 'maxNumTrialsNoProgress'
          property :maximum_runtime_constraint, as: 'maximumRuntimeConstraint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudyTimeConstraint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudyTimeConstraint::Representation
      
          property :min_num_trials, as: 'minNumTrials'
          property :minimum_runtime_constraint, as: 'minimumRuntimeConstraint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudyTimeConstraint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1StudyTimeConstraint::Representation
      
          property :should_stop_asap, as: 'shouldStopAsap'
        end
      end
      
      class GoogleCloudAiplatformV1StudyTimeConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :max_duration, as: 'maxDuration'
        end
      end
      
      class GoogleCloudAiplatformV1SuggestTrialsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SuggestTrialsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          collection :contexts, as: 'contexts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrialContext, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrialContext::Representation
      
          property :suggestion_count, as: 'suggestionCount'
        end
      end
      
      class GoogleCloudAiplatformV1SuggestTrialsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :study_state, as: 'studyState'
          collection :trials, as: 'trials', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trial::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationHelpfulnessSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationHelpfulnessSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationQualityInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualityInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualityInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualitySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationQualitySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationQualityInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationQualityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationQualitySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbosityInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbosityInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbosityInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbositySpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SummarizationVerbositySpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbosityInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :instruction, as: 'instruction'
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbosityResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :explanation, as: 'explanation'
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1SummarizationVerbositySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_reference, as: 'useReference'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudAiplatformV1SupervisedHyperParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapter_size, as: 'adapterSize'
          property :epoch_count, :numeric_string => true, as: 'epochCount'
          property :learning_rate_multiplier, as: 'learningRateMultiplier'
        end
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningDataStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dropped_example_reasons, as: 'droppedExampleReasons'
          property :total_billable_character_count, :numeric_string => true, as: 'totalBillableCharacterCount'
          property :total_billable_token_count, :numeric_string => true, as: 'totalBillableTokenCount'
          property :total_truncated_example_count, :numeric_string => true, as: 'totalTruncatedExampleCount'
          property :total_tuning_character_count, :numeric_string => true, as: 'totalTuningCharacterCount'
          collection :truncated_example_indices, as: 'truncatedExampleIndices'
          property :tuning_dataset_example_count, :numeric_string => true, as: 'tuningDatasetExampleCount'
          property :tuning_step_count, :numeric_string => true, as: 'tuningStepCount'
          collection :user_dataset_examples, as: 'userDatasetExamples', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Content::Representation
      
          property :user_input_token_distribution, as: 'userInputTokenDistribution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution::Representation
      
          property :user_message_per_example_distribution, as: 'userMessagePerExampleDistribution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution::Representation
      
          property :user_output_token_distribution, as: 'userOutputTokenDistribution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billable_sum, :numeric_string => true, as: 'billableSum'
          collection :buckets, as: 'buckets', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistributionDatasetBucket, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDatasetDistributionDatasetBucket::Representation
      
          property :max, as: 'max'
          property :mean, as: 'mean'
          property :median, as: 'median'
          property :min, as: 'min'
          property :p5, as: 'p5'
          property :p95, as: 'p95'
          property :sum, :numeric_string => true, as: 'sum'
        end
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningDatasetDistributionDatasetBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :left, as: 'left'
          property :right, as: 'right'
        end
      end
      
      class GoogleCloudAiplatformV1SupervisedTuningSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_last_checkpoint_only, as: 'exportLastCheckpointOnly'
          property :hyper_parameters, as: 'hyperParameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedHyperParameters, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedHyperParameters::Representation
      
          property :training_dataset_uri, as: 'trainingDatasetUri'
          property :validation_dataset_uri, as: 'validationDatasetUri'
        end
      end
      
      class GoogleCloudAiplatformV1SyncFeatureViewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1SyncFeatureViewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feature_view_sync, as: 'featureViewSync'
        end
      end
      
      class GoogleCloudAiplatformV1TfRecordDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GcsDestination::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1Tensor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bool_val, as: 'boolVal'
          collection :bytes_val, as: 'bytesVal'
          collection :double_val, as: 'doubleVal'
          property :dtype, as: 'dtype'
          collection :float_val, as: 'floatVal'
          collection :int64_val, as: 'int64Val'
          collection :int_val, as: 'intVal'
          collection :list_val, as: 'listVal', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
          collection :shape, as: 'shape'
          collection :string_val, as: 'stringVal'
          hash :struct_val, as: 'structVal', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Tensor::Representation
      
          property :tensor_val, :base64 => true, as: 'tensorVal'
          collection :uint64_val, as: 'uint64Val'
          collection :uint_val, as: 'uintVal'
        end
      end
      
      class GoogleCloudAiplatformV1Tensorboard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_storage_path_prefix, as: 'blobStoragePathPrefix'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :etag, as: 'etag'
          property :is_default, as: 'isDefault'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :run_count, as: 'runCount'
          property :satisfies_pzi, as: 'satisfiesPzi'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardBlobSequence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardBlob, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardBlob::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardExperiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :source, as: 'source'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardTensor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :base64 => true, as: 'value'
          property :version_number, as: 'versionNumber'
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :metadata, as: 'metadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata::Representation
      
          property :name, as: 'name'
          property :plugin_data, :base64 => true, as: 'pluginData'
          property :plugin_name, as: 'pluginName'
          property :update_time, as: 'updateTime'
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleCloudAiplatformV1TensorboardTimeSeriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_blob_sequence_length, :numeric_string => true, as: 'maxBlobSequenceLength'
          property :max_step, :numeric_string => true, as: 'maxStep'
          property :max_wall_time, as: 'maxWallTime'
        end
      end
      
      class GoogleCloudAiplatformV1ThresholdConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1TimeSeriesData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tensorboard_time_series_id, as: 'tensorboardTimeSeriesId'
          property :value_type, as: 'valueType'
          collection :values, as: 'values', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesDataPoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesDataPoint::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TimeSeriesDataPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blobs, as: 'blobs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardBlobSequence, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardBlobSequence::Representation
      
          property :scalar, as: 'scalar', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Scalar, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Scalar::Representation
      
          property :step, :numeric_string => true, as: 'step'
          property :tensor, as: 'tensor', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTensor, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TensorboardTensor::Representation
      
          property :wall_time, as: 'wallTime'
        end
      end
      
      class GoogleCloudAiplatformV1TimestampSplit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :test_fraction, as: 'testFraction'
          property :training_fraction, as: 'trainingFraction'
          property :validation_fraction, as: 'validationFraction'
        end
      end
      
      class GoogleCloudAiplatformV1TokensInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :role, as: 'role'
          collection :token_ids, as: 'tokenIds'
          collection :tokens, as: 'tokens'
        end
      end
      
      class GoogleCloudAiplatformV1Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_execution, as: 'codeExecution', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCodeExecution, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCodeExecution::Representation
      
          property :computer_use, as: 'computerUse', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolComputerUse, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolComputerUse::Representation
      
          property :enterprise_web_search, as: 'enterpriseWebSearch', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnterpriseWebSearch, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EnterpriseWebSearch::Representation
      
          collection :function_declarations, as: 'functionDeclarations', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionDeclaration, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionDeclaration::Representation
      
          property :google_search, as: 'googleSearch', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolGoogleSearch, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolGoogleSearch::Representation
      
          property :google_search_retrieval, as: 'googleSearchRetrieval', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleSearchRetrieval, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GoogleSearchRetrieval::Representation
      
          property :retrieval, as: 'retrieval', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Retrieval, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Retrieval::Representation
      
          property :url_context, as: 'urlContext', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UrlContext, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UrlContext::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_input, as: 'toolInput'
          property :tool_name, as: 'toolName'
        end
      end
      
      class GoogleCloudAiplatformV1ToolCallValidInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolCallValidInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1ToolCallValidMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1ToolCallValidResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_call_valid_metric_values, as: 'toolCallValidMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCallValidMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolCallValidSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ToolCodeExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ToolComputerUse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
        end
      end
      
      class GoogleCloudAiplatformV1ToolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_calling_config, as: 'functionCallingConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionCallingConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FunctionCallingConfig::Representation
      
          property :retrieval_config, as: 'retrievalConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrievalConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RetrievalConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolGoogleSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_name_match_metric_values, as: 'toolNameMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolNameMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolNameMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_parameter_kv_match_metric_values, as: 'toolParameterKvMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKvMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKvMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_strict_string_match, as: 'useStrictStringMatch'
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prediction, as: 'prediction'
          property :reference, as: 'reference'
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_parameter_key_match_metric_values, as: 'toolParameterKeyMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolParameterKeyMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1ToolParameterKeyMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1TrainingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout_training_milli_hours, :numeric_string => true, as: 'timeoutTrainingMilliHours'
        end
      end
      
      class GoogleCloudAiplatformV1TrainingPipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :input_data_config, as: 'inputDataConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1InputDataConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1InputDataConfig::Representation
      
          hash :labels, as: 'labels'
          property :model_id, as: 'modelId'
          property :model_to_upload, as: 'modelToUpload', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model::Representation
      
          property :name, as: 'name'
          property :parent_model, as: 'parentModel'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :training_task_definition, as: 'trainingTaskDefinition'
          property :training_task_inputs, as: 'trainingTaskInputs'
          property :training_task_metadata, as: 'trainingTaskMetadata'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1Trajectory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_calls, as: 'toolCalls', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCall, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ToolCall::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_trajectory, as: 'predictedTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
          property :reference_trajectory, as: 'referenceTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trajectory_any_order_match_metric_values, as: 'trajectoryAnyOrderMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryAnyOrderMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryAnyOrderMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_trajectory, as: 'predictedTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
          property :reference_trajectory, as: 'referenceTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trajectory_exact_match_metric_values, as: 'trajectoryExactMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryExactMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryExactMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_trajectory, as: 'predictedTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
          property :reference_trajectory, as: 'referenceTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trajectory_in_order_match_metric_values, as: 'trajectoryInOrderMatchMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryInOrderMatchMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryInOrderMatchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_trajectory, as: 'predictedTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
          property :reference_trajectory, as: 'referenceTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trajectory_precision_metric_values, as: 'trajectoryPrecisionMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryPrecisionMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryPrecisionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_trajectory, as: 'predictedTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
          property :reference_trajectory, as: 'referenceTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trajectory_recall_metric_values, as: 'trajectoryRecallMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectoryRecallMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectoryRecallSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseInstance, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseInstance::Representation
      
          property :metric_spec, as: 'metricSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseSpec::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_trajectory, as: 'predictedTrajectory', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Trajectory::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score, as: 'score'
        end
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trajectory_single_tool_use_metric_values, as: 'trajectorySingleToolUseMetricValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseMetricValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrajectorySingleToolUseMetricValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrajectorySingleToolUseSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_name, as: 'toolName'
        end
      end
      
      class GoogleCloudAiplatformV1Trial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :custom_job, as: 'customJob'
          property :end_time, as: 'endTime'
          property :final_measurement, as: 'finalMeasurement', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement::Representation
      
          property :id, as: 'id'
          property :infeasible_reason, as: 'infeasibleReason'
          collection :measurements, as: 'measurements', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Measurement::Representation
      
          property :name, as: 'name'
          collection :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrialParameter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrialParameter::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          hash :web_access_uris, as: 'webAccessUris'
        end
      end
      
      class GoogleCloudAiplatformV1TrialContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :parameters, as: 'parameters', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrialParameter, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TrialParameter::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TrialParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parameter_id, as: 'parameterId'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudAiplatformV1TunedModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :checkpoints, as: 'checkpoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TunedModelCheckpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TunedModelCheckpoint::Representation
      
          property :endpoint, as: 'endpoint'
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudAiplatformV1TunedModelCheckpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkpoint_id, as: 'checkpointId'
          property :endpoint, as: 'endpoint'
          property :epoch, :numeric_string => true, as: 'epoch'
          property :step, :numeric_string => true, as: 'step'
        end
      end
      
      class GoogleCloudAiplatformV1TunedModelRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pipeline_job, as: 'pipelineJob'
          property :tuned_model, as: 'tunedModel'
          property :tuning_job, as: 'tuningJob'
        end
      end
      
      class GoogleCloudAiplatformV1TuningDataStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :supervised_tuning_data_stats, as: 'supervisedTuningDataStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDataStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningDataStats::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1TuningJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_model, as: 'baseModel'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :encryption_spec, as: 'encryptionSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1EncryptionSpec::Representation
      
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :experiment, as: 'experiment'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :supervised_tuning_spec, as: 'supervisedTuningSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SupervisedTuningSpec::Representation
      
          property :tuned_model, as: 'tunedModel', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TunedModel, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TunedModel::Representation
      
          property :tuned_model_display_name, as: 'tunedModelDisplayName'
          property :tuning_data_stats, as: 'tuningDataStats', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TuningDataStats, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TuningDataStats::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudAiplatformV1UndeployIndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UndeployIndexRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_index_id, as: 'deployedIndexId'
        end
      end
      
      class GoogleCloudAiplatformV1UndeployIndexResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1UndeployModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UndeployModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_id, as: 'deployedModelId'
          hash :traffic_split, as: 'trafficSplit'
        end
      end
      
      class GoogleCloudAiplatformV1UndeployModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1UnmanagedContainerModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_uri, as: 'artifactUri'
          property :container_spec, as: 'containerSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ModelContainerSpec::Representation
      
          property :predict_schemata, as: 'predictSchemata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictSchemata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PredictSchemata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateDeploymentResourcePoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateEndpointLongRunningRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Endpoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Endpoint::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateExplanationDatasetOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateExplanationDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :examples, as: 'examples', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Examples, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Examples::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateExplanationDatasetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureGroupOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureOnlineStoreOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateFeatureViewOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateFeaturestoreOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateIndexOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :nearest_neighbor_search_operation_metadata, as: 'nearestNeighborSearchOperationMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NearestNeighborSearchOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdateModelDeploymentMonitoringJobOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpdatePersistentResourceOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1UpdateSpecialistPoolOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :specialist_pool, as: 'specialistPool'
        end
      end
      
      class GoogleCloudAiplatformV1UpdateTensorboardOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpgradeNotebookRuntimeOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
          property :progress_message, as: 'progressMessage'
        end
      end
      
      class GoogleCloudAiplatformV1UpgradeNotebookRuntimeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1UploadModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_metadata, as: 'genericMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1GenericOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UploadModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1Model::Representation
      
          property :model_id, as: 'modelId'
          property :parent_model, as: 'parentModel'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudAiplatformV1UploadModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model, as: 'model'
          property :model_version_id, as: 'modelVersionId'
        end
      end
      
      class GoogleCloudAiplatformV1UploadRagFileConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_file_transformation_config, as: 'ragFileTransformationConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileTransformationConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFileTransformationConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UploadRagFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_file, as: 'ragFile', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFile, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFile::Representation
      
          property :upload_rag_file_config, as: 'uploadRagFileConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UploadRagFileConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UploadRagFileConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UploadRagFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
          property :rag_file, as: 'ragFile', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFile, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagFile::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UpsertDatapointsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datapoints, as: 'datapoints', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1IndexDatapoint::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudAiplatformV1UpsertDatapointsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1UrlContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1UrlContextMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :url_metadata, as: 'urlMetadata', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UrlMetadata, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1UrlMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1UrlMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retrieved_url, as: 'retrievedUrl'
          property :url_retrieval_status, as: 'urlRetrievalStatus'
        end
      end
      
      class GoogleCloudAiplatformV1UserActionReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_labeling_job, as: 'dataLabelingJob'
          property :method_prop, as: 'method'
          property :operation, as: 'operation'
        end
      end
      
      class GoogleCloudAiplatformV1Value
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :string_value, as: 'stringValue'
        end
      end
      
      class GoogleCloudAiplatformV1VertexAiSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexAiSearchDataStoreSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexAiSearchDataStoreSpec::Representation
      
          property :datastore, as: 'datastore'
          property :engine, as: 'engine'
          property :filter, as: 'filter'
          property :max_results, as: 'maxResults'
        end
      end
      
      class GoogleCloudAiplatformV1VertexAiSearchDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudAiplatformV1VertexAiSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :serving_config, as: 'servingConfig'
        end
      end
      
      class GoogleCloudAiplatformV1VertexRagStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rag_resources, as: 'ragResources', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexRagStoreRagResource, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1VertexRagStoreRagResource::Representation
      
          property :rag_retrieval_config, as: 'ragRetrievalConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1RagRetrievalConfig::Representation
      
          property :similarity_top_k, as: 'similarityTopK'
          property :vector_distance_threshold, as: 'vectorDistanceThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1VertexRagStoreRagResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_corpus, as: 'ragCorpus'
          collection :rag_file_ids, as: 'ragFileIds'
        end
      end
      
      class GoogleCloudAiplatformV1VideoMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
        end
      end
      
      class GoogleCloudAiplatformV1VoiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prebuilt_voice_config, as: 'prebuiltVoiceConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrebuiltVoiceConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PrebuiltVoiceConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1WorkerPoolSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_spec, as: 'containerSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContainerSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1ContainerSpec::Representation
      
          property :disk_spec, as: 'diskSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DiskSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1DiskSpec::Representation
      
          property :machine_spec, as: 'machineSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1MachineSpec::Representation
      
          collection :nfs_mounts, as: 'nfsMounts', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NfsMount, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1NfsMount::Representation
      
          property :python_package_spec, as: 'pythonPackageSpec', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PythonPackageSpec, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1PythonPackageSpec::Representation
      
          property :replica_count, :numeric_string => true, as: 'replicaCount'
        end
      end
      
      class GoogleCloudAiplatformV1WriteFeatureValuesPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_id, as: 'entityId'
          hash :feature_values, as: 'featureValues', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1FeatureValue::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1WriteFeatureValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :payloads, as: 'payloads', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1WriteFeatureValuesPayload, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1WriteFeatureValuesPayload::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1WriteFeatureValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardExperimentDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :write_run_data_requests, as: 'writeRunDataRequests', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1WriteTensorboardRunDataRequest, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1WriteTensorboardRunDataRequest::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardExperimentDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardRunDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tensorboard_run, as: 'tensorboardRun'
          collection :time_series_data, as: 'timeSeriesData', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesData, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1TimeSeriesData::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1WriteTensorboardRunDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1XraiAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blur_baseline_config, as: 'blurBaselineConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BlurBaselineConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1BlurBaselineConfig::Representation
      
          property :smooth_grad_config, as: 'smoothGradConfig', class: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SmoothGradConfig, decorator: Google::Apis::AiplatformV1::GoogleCloudAiplatformV1SmoothGradConfig::Representation
      
          property :step_count, as: 'stepCount'
        end
      end
      
      class GoogleCloudLocationListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AiplatformV1::GoogleCloudLocationLocation, decorator: Google::Apis::AiplatformV1::GoogleCloudLocationLocation::Representation
      
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
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::AiplatformV1::GoogleTypeExpr, decorator: Google::Apis::AiplatformV1::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::AiplatformV1::GoogleIamV1Binding, decorator: Google::Apis::AiplatformV1::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::AiplatformV1::GoogleIamV1Policy, decorator: Google::Apis::AiplatformV1::GoogleIamV1Policy::Representation
      
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AiplatformV1::GoogleLongrunningOperation, decorator: Google::Apis::AiplatformV1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AiplatformV1::GoogleRpcStatus, decorator: Google::Apis::AiplatformV1::GoogleRpcStatus::Representation
      
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
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GoogleTypeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleTypeLatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
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
    end
  end
end
