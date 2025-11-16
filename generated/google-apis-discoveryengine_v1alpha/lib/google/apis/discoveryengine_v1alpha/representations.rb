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
    module DiscoveryengineV1alpha
      
      class ApiservingMediaRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiservingMediaResponseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataBlobstore2Info
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataCompositeMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataContentTypeInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataDiffChecksumsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataDiffDownloadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataDiffUploadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataDiffUploadResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataDiffVersionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataDownloadParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataMedia
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GdataObjectId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptionsExplicit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptionsExponential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionBucketOptionsLinear
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionExemplar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiDistributionRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiHttpBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiMonitoredResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiMonitoredResourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingServiceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ActionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Assistant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BapConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Collection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlPromoteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ControlSynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1CreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorSourceEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreBillingEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteCmekConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteCollectionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteIdentityMappingStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfigDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Engine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineCommonConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1EngineSearchEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1HealthcareFhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingEntryOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdentityScheduleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1LicenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Project
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProjectServiceTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchLinkPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigGenericConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigMediaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SetUpDataConnectorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SingleRegionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1SiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Sitemap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TargetSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1Tenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateCmekConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1UserStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1WorkspaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaA2AAgentDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaActionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdkAgentDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdkAgentDefinitionProvisionedReasoningEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestSuggestionTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseContentSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponsePersonSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseRecentSearchSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentSharingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentStarterPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentViewSuggestedPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentViewUserPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlloyDbSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpecUserDefinedClassifierSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecMultimodalSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestRelatedQuestionsSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpecSafetySetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistUserMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentBlob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyBannedPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyModelArmorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfigSystemInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantToolInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantToolList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAuthorizationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaAuthorizationServerSideOAuth2
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBapConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchVerifyTargetSitesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQueryDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumnFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBranch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaBranchBranchStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQueryAssistantCapability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQueryCannedQueryTexts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQuerySuggestedPrompt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseCheckGroundingFactChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseClaim
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRefreshTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRequirementRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRequirementResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRequirementResponseMetricQueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkAnnotationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkChunkMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkDocumentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkPageSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkStructuredContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCloudSqlSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCollection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsDatedUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsMetricUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaContactDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlPromoteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlSynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateEvaluationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomTuningModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteAgentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCmekConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCollectionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteIdentityMappingStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteUserStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDialogflowAgentDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentAclInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentAclInfoAccessRestriction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentIndexStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaDoubleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEmbeddingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineCommonConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestFileDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSourceEstimatorUriPattern
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFactChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFhirStoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFileCharacteristics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFileMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFileView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaFirestoreSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetAgentViewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetConnectorSecretResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGroundingFact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaGuidedSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingEntryOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImageCharacteristics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportAgentFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportAgentFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLicenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaLicenseConfigUsageStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListAuthorizationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListAvailableAgentViewsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListBillingAccountLicenseConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListBranchesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCannedQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListChunksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCmekConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCollectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListConnectorRunsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListConversationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDataStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEnginesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponseEvaluationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEvaluationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListFilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListIdentityMappingStoresResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListIdentityMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListLicenseConfigsUsageStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSampleQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSampleQuerySetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaListUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaMediaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPanelInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPauseEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPrincipal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProcessedDocument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectServiceTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectRequestSaasParams
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequestInlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRankRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRankResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRankingRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRefreshTokenInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveSuggestionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveSuggestionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaReply
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaReplyReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaReportConsentChangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementMetricBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementThresholdBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementThresholdBindingThresholdValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementViolationSamplesBinding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaResumeEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSafetyRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntryTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQuerySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseOneBoxResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignalsCustomSignal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachmentBlob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReferenceChunkContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummaryWithMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaServingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaServingConfigGenericConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaServingConfigMediaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSession
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSessionTurn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSingleRegionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteSearchEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSitemap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSpannerSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStartConnectorRunRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecImageGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVertexAiSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVideoGenerationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecWebGroundingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistResponseSessionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaSuggestionDenyListEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequestGcsTrainingInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTransactionInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCmekConfigMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCollectionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSessionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadAgentFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadAgentFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadSessionFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadSessionFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserAnnotations
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaVideoCharacteristics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigAccessSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigAssistantSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigCollectionComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreUiConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSettingShortcut
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiBrandingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsGenerativeAnswerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsSearchAddonSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAclConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionQueryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionTimeRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlFilterAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlPromoteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaControlSynonymsAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateEvaluationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteDataStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteIdentityMappingStoreMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSitemapMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngine
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineCommonConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaIdentityMappingEntryOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportIdentityMappingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaLanguageInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaLicenseConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectServiceTerms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaProvisionProjectMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchLinkPromotion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSingleRegionKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaSitemap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateTargetSiteMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUserLicense
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaUserStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDiscoveryengineV1betaWorkspaceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaAccountAndRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaAgentspaceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaAudioOverview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaAudioOverviewGenerationOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaBatchCreateSourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaBatchCreateSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaBatchDeleteNotebooksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaBatchDeleteSourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaCmekConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaCreateAudioOverviewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaCreateAudioOverviewResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorLanguageDetectionFailed
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorNoAudioDetected
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonDomainBlocked
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveErrorDownloadPrevented
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonIngestionError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonPaywallError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceLimitExceeded
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceTooLong
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceUnreachable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonUnknown
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonUploadError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonYoutubeError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonYoutubeErrorVideoDeleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaGoogleDocsSourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaListRecentlyViewedNotebooksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaNotebook
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaNotebookMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaShareNotebookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaShareNotebookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaSourceId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaSourceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaSourceSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUploadSourceFileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUploadSourceFileResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUserContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentAgentspaceContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentGoogleDriveContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentTextContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentVideoContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentWebContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudNotebooklmV1alphaYoutubeMetadata
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
      
      class GoogleMonitoringV3Point
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3TimeInterval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3TimeSeries
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleMonitoringV3TypedValue
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
      
      class GoogleTypeDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiservingMediaRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_bytes, :numeric_string => true, as: 'currentBytes'
          property :custom_data, as: 'customData'
          property :diff_object_version, as: 'diffObjectVersion'
          property :final_status, as: 'finalStatus'
          property :notification_type, as: 'notificationType'
          property :physical_headers, :base64 => true, as: 'physicalHeaders'
          property :request_id, as: 'requestId'
          property :request_received_params_serving_info, :base64 => true, as: 'requestReceivedParamsServingInfo'
          property :total_bytes, :numeric_string => true, as: 'totalBytes'
          property :total_bytes_is_estimated, as: 'totalBytesIsEstimated'
        end
      end
      
      class ApiservingMediaResponseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_data, as: 'customData'
          property :data_storage_transform, :base64 => true, as: 'dataStorageTransform'
          property :destination_blob_mint_index, as: 'destinationBlobMintIndex'
          property :dynamic_drop_target, :base64 => true, as: 'dynamicDropTarget'
          property :dynamic_dropzone, as: 'dynamicDropzone'
          property :media_for_diff, as: 'mediaForDiff', class: Google::Apis::DiscoveryengineV1alpha::GdataMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataMedia::Representation
      
          property :original_object_blob_mint_index, as: 'originalObjectBlobMintIndex'
          property :request_class, as: 'requestClass'
          property :scotty_agent_user_id, :numeric_string => true, as: 'scottyAgentUserId'
          property :scotty_customer_log, :base64 => true, as: 'scottyCustomerLog'
          property :traffic_class_field, as: 'trafficClassField'
          property :verify_hash_from_header, as: 'verifyHashFromHeader'
        end
      end
      
      class GdataBlobstore2Info
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_generation, :numeric_string => true, as: 'blobGeneration'
          property :blob_id, as: 'blobId'
          property :download_read_handle, :base64 => true, as: 'downloadReadHandle'
          property :read_token, as: 'readToken'
          property :upload_metadata_container, :base64 => true, as: 'uploadMetadataContainer'
        end
      end
      
      class GdataCompositeMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::DiscoveryengineV1alpha::GdataBlobstore2Info, decorator: Google::Apis::DiscoveryengineV1alpha::GdataBlobstore2Info::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :inline, :base64 => true, as: 'inline'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :object_id_prop, as: 'objectId', class: Google::Apis::DiscoveryengineV1alpha::GdataObjectId, decorator: Google::Apis::DiscoveryengineV1alpha::GdataObjectId::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
        end
      end
      
      class GdataContentTypeInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_guess, as: 'bestGuess'
          property :from_bytes, as: 'fromBytes'
          property :from_file_name, as: 'fromFileName'
          property :from_header, as: 'fromHeader'
          property :from_url_path, as: 'fromUrlPath'
        end
      end
      
      class GdataDiffChecksumsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_location, as: 'checksumsLocation', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
          property :chunk_size_bytes, :numeric_string => true, as: 'chunkSizeBytes'
          property :object_location, as: 'objectLocation', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class GdataDiffDownloadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_location, as: 'objectLocation', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
        end
      end
      
      class GdataDiffUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksums_info, as: 'checksumsInfo', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
          property :object_info, as: 'objectInfo', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
          property :object_version, as: 'objectVersion'
        end
      end
      
      class GdataDiffUploadResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_version, as: 'objectVersion'
          property :original_object, as: 'originalObject', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
        end
      end
      
      class GdataDiffVersionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :object_size_bytes, :numeric_string => true, as: 'objectSizeBytes'
          property :object_version, as: 'objectVersion'
        end
      end
      
      class GdataDownloadParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_gzip_compression, as: 'allowGzipCompression'
          property :ignore_range, as: 'ignoreRange'
        end
      end
      
      class GdataMedia
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :bigstore_object_ref, :base64 => true, as: 'bigstoreObjectRef'
          property :blob_ref, :base64 => true, as: 'blobRef'
          property :blobstore2_info, as: 'blobstore2Info', class: Google::Apis::DiscoveryengineV1alpha::GdataBlobstore2Info, decorator: Google::Apis::DiscoveryengineV1alpha::GdataBlobstore2Info::Representation
      
          collection :composite_media, as: 'compositeMedia', class: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataCompositeMedia::Representation
      
          property :content_type, as: 'contentType'
          property :content_type_info, as: 'contentTypeInfo', class: Google::Apis::DiscoveryengineV1alpha::GdataContentTypeInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GdataContentTypeInfo::Representation
      
          property :cosmo_binary_reference, :base64 => true, as: 'cosmoBinaryReference'
          property :crc32c_hash, as: 'crc32cHash'
          property :diff_checksums_response, as: 'diffChecksumsResponse', class: Google::Apis::DiscoveryengineV1alpha::GdataDiffChecksumsResponse, decorator: Google::Apis::DiscoveryengineV1alpha::GdataDiffChecksumsResponse::Representation
      
          property :diff_download_response, as: 'diffDownloadResponse', class: Google::Apis::DiscoveryengineV1alpha::GdataDiffDownloadResponse, decorator: Google::Apis::DiscoveryengineV1alpha::GdataDiffDownloadResponse::Representation
      
          property :diff_upload_request, as: 'diffUploadRequest', class: Google::Apis::DiscoveryengineV1alpha::GdataDiffUploadRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GdataDiffUploadRequest::Representation
      
          property :diff_upload_response, as: 'diffUploadResponse', class: Google::Apis::DiscoveryengineV1alpha::GdataDiffUploadResponse, decorator: Google::Apis::DiscoveryengineV1alpha::GdataDiffUploadResponse::Representation
      
          property :diff_version_response, as: 'diffVersionResponse', class: Google::Apis::DiscoveryengineV1alpha::GdataDiffVersionResponse, decorator: Google::Apis::DiscoveryengineV1alpha::GdataDiffVersionResponse::Representation
      
          property :download_parameters, as: 'downloadParameters', class: Google::Apis::DiscoveryengineV1alpha::GdataDownloadParameters, decorator: Google::Apis::DiscoveryengineV1alpha::GdataDownloadParameters::Representation
      
          property :filename, as: 'filename'
          property :hash_prop, as: 'hash'
          property :hash_verified, as: 'hashVerified'
          property :inline, :base64 => true, as: 'inline'
          property :is_potential_retry, as: 'isPotentialRetry'
          property :length, :numeric_string => true, as: 'length'
          property :md5_hash, :base64 => true, as: 'md5Hash'
          property :media_id, :base64 => true, as: 'mediaId'
          property :object_id_prop, as: 'objectId', class: Google::Apis::DiscoveryengineV1alpha::GdataObjectId, decorator: Google::Apis::DiscoveryengineV1alpha::GdataObjectId::Representation
      
          property :path, as: 'path'
          property :reference_type, as: 'referenceType'
          property :sha1_hash, :base64 => true, as: 'sha1Hash'
          property :sha256_hash, :base64 => true, as: 'sha256Hash'
          property :timestamp, :numeric_string => true, as: 'timestamp'
          property :token, as: 'token'
        end
      end
      
      class GdataObjectId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :generation, :numeric_string => true, as: 'generation'
          property :object_name, as: 'objectName'
        end
      end
      
      class GoogleApiDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bucket_counts, as: 'bucketCounts'
          property :bucket_options, as: 'bucketOptions', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptions, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptions::Representation
      
          property :count, :numeric_string => true, as: 'count'
          collection :exemplars, as: 'exemplars', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionExemplar, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionExemplar::Representation
      
          property :mean, as: 'mean'
          property :range, as: 'range', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionRange, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionRange::Representation
      
          property :sum_of_squared_deviation, as: 'sumOfSquaredDeviation'
        end
      end
      
      class GoogleApiDistributionBucketOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explicit_buckets, as: 'explicitBuckets', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptionsExplicit, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptionsExplicit::Representation
      
          property :exponential_buckets, as: 'exponentialBuckets', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptionsExponential, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptionsExponential::Representation
      
          property :linear_buckets, as: 'linearBuckets', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptionsLinear, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistributionBucketOptionsLinear::Representation
      
        end
      end
      
      class GoogleApiDistributionBucketOptionsExplicit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bounds, as: 'bounds'
        end
      end
      
      class GoogleApiDistributionBucketOptionsExponential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :growth_factor, as: 'growthFactor'
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :scale, as: 'scale'
        end
      end
      
      class GoogleApiDistributionBucketOptionsLinear
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_finite_buckets, as: 'numFiniteBuckets'
          property :offset, as: 'offset'
          property :width, as: 'width'
        end
      end
      
      class GoogleApiDistributionExemplar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments'
          property :timestamp, as: 'timestamp'
          property :value, as: 'value'
        end
      end
      
      class GoogleApiDistributionRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max, as: 'max'
          property :min, as: 'min'
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
      
      class GoogleApiMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class GoogleApiMonitoredResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :type, as: 'type'
        end
      end
      
      class GoogleApiMonitoredResourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :system_labels, as: 'systemLabels'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_run, as: 'connectorRun'
          property :data_connector, as: 'dataConnector'
          property :end_time, as: 'endTime'
          property :entity, as: 'entity'
          property :operation, as: 'operation'
          property :start_time, as: 'startTime'
          property :sync_type, as: 'syncType'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :http_request, as: 'httpRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingHttpRequestContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingHttpRequestContext::Representation
      
          property :report_location, as: 'reportLocation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingSourceLocation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingSourceLocation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingErrorLog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_run_payload, as: 'connectorRunPayload', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingConnectorRunErrorContext::Representation
      
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingErrorContext::Representation
      
          property :import_payload, as: 'importPayload', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingImportErrorContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingImportErrorContext::Representation
      
          property :message, as: 'message'
          hash :request_payload, as: 'requestPayload'
          hash :response_payload, as: 'responsePayload'
          property :service_context, as: 'serviceContext', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingServiceContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineLoggingServiceContext::Representation
      
          property :status, as: 'status', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingHttpRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_status_code, as: 'responseStatusCode'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingImportErrorContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :gcs_path, as: 'gcsPath'
          property :line_number, as: 'lineNumber'
          property :operation, as: 'operation'
          property :user_event, as: 'userEvent'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingServiceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudDiscoveryengineLoggingSourceLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_name, as: 'functionName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1IdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1IdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ActionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_params, as: 'actionParams'
          property :is_action_configured, as: 'isActionConfigured'
          property :json_action_params, as: 'jsonActionParams'
          property :service_name, as: 'serviceName'
          property :use_static_secrets, as: 'useStaticSecrets'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_enrollments, as: 'alertEnrollments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment::Representation
      
          property :alert_policy_name, as: 'alertPolicyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AlertPolicyConfigAlertEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :enroll_state, as: 'enrollState'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_defined_classifier_spec, as: 'userDefinedClassifierSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AnswerGenerationSpecUserDefinedClassifierSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_user_defined_classifier, as: 'enableUserDefinedClassifier'
          property :model_id, as: 'modelId'
          property :preamble, as: 'preamble'
          property :seed, as: 'seed'
          property :task_marker, as: 'taskMarker'
          property :temperature, as: 'temperature'
          property :top_k, :numeric_string => true, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Assistant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_policy, as: 'customerPolicy', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantCustomerPolicy, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantCustomerPolicy::Representation
      
          hash :enabled_tools, as: 'enabledTools', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantToolList, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantToolList::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantGenerationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantGenerationConfig::Representation
      
          property :name, as: 'name'
          property :web_grounding_type, as: 'webGroundingType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase::Representation
      
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyBannedPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_diacritics, as: 'ignoreDiacritics'
          property :match_type, as: 'matchType'
          property :phrase, as: 'phrase'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantCustomerPolicyModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_mode, as: 'failureMode'
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_language, as: 'defaultLanguage'
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantGenerationConfigSystemInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_system_instruction, as: 'additionalSystemInstruction'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_display_name, as: 'toolDisplayName'
          property :tool_name, as: 'toolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1AssistantToolList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_info, as: 'toolInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantToolInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AssistantToolInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_actions, as: 'enabledActions'
          collection :supported_connector_modes, as: 'supportedConnectorModes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1TargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1TargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1BatchUpdateUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1UserLicense, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1UserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1CmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          property :notebooklm_state, as: 'notebooklmState'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SingleRegionKey, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Collection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlBoostAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Condition, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Condition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlFilterAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlFilterAction::Representation
      
          property :name, as: 'name'
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlPromoteAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
          property :fixed_boost, as: 'fixedBoost'
          property :interpolation_boost_spec, as: 'interpolationBoostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlBoostActionInterpolationBoostSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlPromoteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchLinkPromotion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ControlSynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1CreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :action_config, as: 'actionConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ActionConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ActionConfig::Representation
      
          property :action_state, as: 'actionState'
          collection :alert_policy_configs, as: 'alertPolicyConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AlertPolicyConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AlertPolicyConfig::Representation
      
          property :auto_run_disabled, as: 'autoRunDisabled'
          property :bap_config, as: 'bapConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1BapConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1BapConfig::Representation
      
          collection :blocking_reasons, as: 'blockingReasons'
          collection :connector_modes, as: 'connectorModes'
          property :connector_type, as: 'connectorType'
          property :create_eua_saas, as: 'createEuaSaas'
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DestinationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DestinationConfig::Representation
      
          property :end_user_config, as: 'endUserConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorSourceEntity, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorSourceEntity::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :federated_config, as: 'federatedConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig::Representation
      
          property :hybrid_ingestion_disabled, as: 'hybridIngestionDisabled'
          property :identity_refresh_interval, as: 'identityRefreshInterval'
          property :identity_schedule_config, as: 'identityScheduleConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1IdentityScheduleConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1IdentityScheduleConfig::Representation
      
          property :incremental_refresh_interval, as: 'incrementalRefreshInterval'
          property :incremental_sync_disabled, as: 'incrementalSyncDisabled'
          property :json_params, as: 'jsonParams'
          property :kms_key_name, as: 'kmsKeyName'
          property :last_sync_time, as: 'lastSyncTime'
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime::Representation
      
          hash :params, as: 'params'
          property :private_connectivity_project_id, as: 'privateConnectivityProjectId'
          property :realtime_state, as: 'realtimeState'
          property :realtime_sync_config, as: 'realtimeSyncConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig::Representation
      
          property :refresh_interval, as: 'refreshInterval'
          collection :remove_param_keys, as: 'removeParamKeys'
          property :state, as: 'state'
          collection :static_ip_addresses, as: 'staticIpAddresses'
          property :static_ip_enabled, as: 'staticIpEnabled'
          property :sync_mode, as: 'syncMode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorEndUserConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
          property :tenant, as: 'tenant', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Tenant, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Tenant::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorFederatedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :realtime_sync_secret, as: 'realtimeSyncSecret'
          property :streaming_error, as: 'streamingError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError::Representation
      
          property :webhook_uri, as: 'webhookUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorRealtimeSyncConfigStreamingError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :streaming_error_reason, as: 'streamingErrorReason'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataConnectorSourceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :entity_name, as: 'entityName'
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1HealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1HealthcareFhirConfig::Representation
      
          property :json_params, as: 'jsonParams'
          hash :key_property_mappings, as: 'keyPropertyMappings'
          hash :params, as: 'params'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Schema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :configurable_billing_approach_update_time, as: 'configurableBillingApproachUpdateTime'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfig::Representation
      
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1HealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1HealthcareFhirConfig::Representation
      
          property :identity_mapping_store, as: 'identityMappingStore'
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Schema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1Schema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1WorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1WorkspaceConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreBillingEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_data_size, :numeric_string => true, as: 'structuredDataSize'
          property :structured_data_update_time, as: 'structuredDataUpdateTime'
          property :unstructured_data_size, :numeric_string => true, as: 'unstructuredDataSize'
          property :unstructured_data_update_time, as: 'unstructuredDataUpdateTime'
          property :website_data_size, :numeric_string => true, as: 'websiteDataSize'
          property :website_data_update_time, as: 'websiteDataUpdateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DataStoreServingConfigDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_for_serving, as: 'disabledForServing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteCollectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteIdentityMappingStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DeleteTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DestinationConfigDestination, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DestinationConfigDestination::Representation
      
          property :json_params, as: 'jsonParams'
          property :key, as: 'key'
          hash :params, as: 'params'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DestinationConfigDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigDigitalParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigLayoutParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_get_processed_document, as: 'enableGetProcessedDocument'
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          collection :exclude_html_classes, as: 'excludeHtmlClasses'
          collection :exclude_html_elements, as: 'excludeHtmlElements'
          collection :exclude_html_ids, as: 'excludeHtmlIds'
          collection :structured_content_types, as: 'structuredContentTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1DocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1Engine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_type, as: 'appType'
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineChatEngineMetadata::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1CmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1CmekConfig::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineCommonConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          hash :features, as: 'features'
          property :industry_vertical, as: 'industryVertical'
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig::Representation
      
          hash :model_configs, as: 'modelConfigs'
          property :name, as: 'name'
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig::Representation
      
          property :allow_cross_region, as: 'allowCrossRegion'
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :location, as: 'location'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineChatEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineCommonConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company_name, as: 'companyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine_features_config, as: 'engineFeaturesConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigEngineFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_popular_config, as: 'mostPopularConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig::Representation
      
          property :recommended_for_you_config, as: 'recommendedForYouConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_window_days, :numeric_string => true, as: 'timeWindowDays'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_event_type, as: 'contextEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1EngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1HealthcareFhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_configurable_schema, as: 'enableConfigurableSchema'
          property :enable_static_indexing_for_batch_ingestion, as: 'enableStaticIndexingForBatchIngestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdentityMappingEntryOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdentityScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime::Representation
      
          property :refresh_interval, as: 'refreshInterval'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1IdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :failed_entries_count, :numeric_string => true, as: 'failedEntriesCount'
          property :imported_entries_count, :numeric_string => true, as: 'importedEntriesCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1LicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :free_trial, as: 'freeTrial'
          property :gemini_bundle, as: 'geminiBundle'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Project
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configurable_billing_status, as: 'configurableBillingStatus', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig::Representation
      
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectConfigurableBillingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_indexing_core_threshold, :numeric_string => true, as: 'effectiveIndexingCoreThreshold'
          property :effective_search_qpm_threshold, :numeric_string => true, as: 'effectiveSearchQpmThreshold'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooklm_config, as: 'notebooklmConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig::Representation
      
          property :opt_out_notebook_sharing, as: 'optOutNotebookSharing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProjectServiceTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_time, as: 'acceptTime'
          property :decline_time, as: 'declineTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ProvisionProjectMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :purge_succeeded, as: 'purgeSucceeded'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :ignored_count, :numeric_string => true, as: 'ignoredCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1PurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document, as: 'document'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecChunkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_next_chunks, as: 'numNextChunks'
          property :num_previous_chunks, as: 'numPreviousChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
          property :return_extractive_segment_score, as: 'returnExtractiveSegmentScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSnippetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_snippet_count, as: 'maxSnippetCount'
          property :reference_only, as: 'referenceOnly'
          property :return_snippet, as: 'returnSnippet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
          property :use_semantic_chunks, as: 'useSemanticChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1AnswerGenerationSpec::Representation
      
          collection :boost_control_ids, as: 'boostControlIds'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :dissociate_control_ids, as: 'dissociateControlIds'
          property :diversity_level, as: 'diversityLevel'
          collection :filter_control_ids, as: 'filterControlIds'
          property :generic_config, as: 'genericConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ServingConfigGenericConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ServingConfigGenericConfig::Representation
      
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :media_config, as: 'mediaConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ServingConfigMediaConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ServingConfigMediaConfig::Representation
      
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          collection :promote_control_ids, as: 'promoteControlIds'
          property :ranking_expression, as: 'rankingExpression'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          property :solution_type, as: 'solutionType'
          collection :synonyms_control_ids, as: 'synonymsControlIds'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigGenericConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SearchRequestContentSearchSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1ServingConfigMediaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_freshness_cutoff_days, as: 'contentFreshnessCutoffDays'
          property :content_watched_percentage_threshold, as: 'contentWatchedPercentageThreshold'
          property :content_watched_seconds_threshold, as: 'contentWatchedSecondsThreshold'
          property :demote_content_watched_past_days, as: 'demoteContentWatchedPastDays'
          property :demotion_event_type, as: 'demotionEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SetUpDataConnectorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1SingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudDiscoveryengineV1SiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Sitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1TargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1TargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1SiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1TargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1Tenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1TrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1ImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UpdateCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_login_time, as: 'lastLoginTime'
          property :license_assignment_state, as: 'licenseAssignmentState'
          property :license_config, as: 'licenseConfig'
          property :update_time, as: 'updateTime'
          property :user_principal, as: 'userPrincipal'
          property :user_profile, as: 'userProfile'
        end
      end
      
      class GoogleCloudDiscoveryengineV1UserStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_license_config, as: 'defaultLicenseConfig'
          property :display_name, as: 'displayName'
          property :enable_expired_license_auto_update, as: 'enableExpiredLicenseAutoUpdate'
          property :enable_license_auto_register, as: 'enableLicenseAutoRegister'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1WorkspaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dasher_customer_id, as: 'dasherCustomerId'
          property :super_admin_email_address, as: 'superAdminEmailAddress'
          property :super_admin_service_account, as: 'superAdminServiceAccount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaA2AAgentDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_agent_card, as: 'jsonAgentCard'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :refresh_token_info, as: 'refreshTokenInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRefreshTokenInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRefreshTokenInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaActionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_params, as: 'actionParams'
          property :is_action_configured, as: 'isActionConfigured'
          property :json_action_params, as: 'jsonActionParams'
          property :service_name, as: 'serviceName'
          property :use_static_secrets, as: 'useStaticSecrets'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdkAgentDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provisioned_reasoning_engine, as: 'provisionedReasoningEngine', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdkAgentDefinitionProvisionedReasoningEngine, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdkAgentDefinitionProvisionedReasoningEngine::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdkAgentDefinitionProvisionedReasoningEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reasoning_engine, as: 'reasoningEngine'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpec::Representation
      
          collection :experiment_ids, as: 'experimentIds'
          property :include_tail_suggestions, as: 'includeTailSuggestions'
          property :query, as: 'query'
          property :query_model, as: 'queryModel'
          collection :suggestion_type_specs, as: 'suggestionTypeSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestSuggestionTypeSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestSuggestionTypeSpec::Representation
      
          collection :suggestion_types, as: 'suggestionTypes'
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequestSuggestionTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_suggestions, as: 'maxSuggestions'
          property :suggestion_type, as: 'suggestionType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content_suggestions, as: 'contentSuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseContentSuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseContentSuggestion::Representation
      
          collection :people_suggestions, as: 'peopleSuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponsePersonSuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponsePersonSuggestion::Representation
      
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseQuerySuggestion::Representation
      
          collection :recent_search_suggestions, as: 'recentSearchSuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseRecentSearchSuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseRecentSearchSuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseContentSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :data_store, as: 'dataStore'
          property :destination_uri, as: 'destinationUri'
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :icon_uri, as: 'iconUri'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponsePersonSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :destination_uri, as: 'destinationUri'
          property :display_photo_uri, as: 'displayPhotoUri'
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :person_type, as: 'personType'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          collection :data_store, as: 'dataStore'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponseRecentSearchSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :recent_search_time, as: 'recentSearchTime'
          property :score, as: 'score'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :a2a_agent_definition, as: 'a2aAgentDefinition', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaA2AAgentDefinition, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaA2AAgentDefinition::Representation
      
          property :adk_agent_definition, as: 'adkAgentDefinition', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdkAgentDefinition, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdkAgentDefinition::Representation
      
          property :authorization_config, as: 'authorizationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorizationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorizationConfig::Representation
      
          property :create_time, as: 'createTime'
          property :custom_placeholder_text, as: 'customPlaceholderText'
          property :deployment_failure_reason, as: 'deploymentFailureReason'
          property :description, as: 'description'
          property :dialogflow_agent_definition, as: 'dialogflowAgentDefinition', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDialogflowAgentDefinition, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDialogflowAgentDefinition::Representation
      
          property :display_name, as: 'displayName'
          property :icon, as: 'icon', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentImage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentImage::Representation
      
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :rejection_reason, as: 'rejectionReason'
          property :sharing_config, as: 'sharingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentSharingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentSharingConfig::Representation
      
          collection :starter_prompts, as: 'starterPrompts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentStarterPrompt, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentStarterPrompt::Representation
      
          property :state, as: 'state'
          property :suspension_reason, as: 'suspensionReason'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentSharingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentStarterPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_origin, as: 'agentOrigin'
          property :agent_sharing_state, as: 'agentSharingState'
          property :agent_type, as: 'agentType'
          property :custom_placeholder_text, as: 'customPlaceholderText'
          property :deployment_failure_reason, as: 'deploymentFailureReason'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :icon, as: 'icon', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentImage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentImage::Representation
      
          property :name, as: 'name'
          property :rejection_reason, as: 'rejectionReason'
          property :state, as: 'state'
          collection :suggested_prompts, as: 'suggestedPrompts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentViewSuggestedPrompt, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentViewSuggestedPrompt::Representation
      
          property :suspension_reason, as: 'suspensionReason'
          property :user_annotations, as: 'userAnnotations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserAnnotations, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserAnnotations::Representation
      
          property :user_permissions, as: 'userPermissions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentViewUserPermissions, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentViewUserPermissions::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentViewSuggestedPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAgentViewUserPermissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :can_delete, as: 'canDelete'
          property :can_edit, as: 'canEdit'
          property :can_propose_users, as: 'canProposeUsers'
          property :can_request_review, as: 'canRequestReview'
          property :can_run, as: 'canRun'
          property :can_view, as: 'canView'
          property :can_withdraw, as: 'canWithdraw'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_enrollments, as: 'alertEnrollments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment::Representation
      
          property :alert_policy_name, as: 'alertPolicyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyConfigAlertEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :enroll_state, as: 'enrollState'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alert_enrollments, as: 'alertEnrollments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment::Representation
      
          property :alert_policy, as: 'alertPolicy'
          collection :contact_details, as: 'contactDetails', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaContactDetails, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaContactDetails::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfigAlertEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_id, as: 'alertId'
          property :enroll_state, as: 'enrollState'
          hash :notification_params, as: 'notificationParams'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAlloyDbSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_id, as: 'clusterId'
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :location_id, as: 'locationId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answer_skipped_reasons, as: 'answerSkippedReasons'
          property :answer_text, as: 'answerText'
          collection :blob_attachments, as: 'blobAttachments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment::Representation
      
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerCitation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerCitation::Representation
      
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :grounding_score, as: 'groundingScore'
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport::Representation
      
          property :name, as: 'name'
          property :query_understanding_info, as: 'queryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReference, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReference::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSafetyRating, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSafetyRating::Representation
      
          property :state, as: 'state'
          collection :steps, as: 'steps', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStep, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStep::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_type, as: 'attributionType'
          property :data, as: 'data', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerBlobAttachmentBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_id, as: 'referenceId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_defined_classifier_spec, as: 'userDefinedClassifierSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpecUserDefinedClassifierSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpecUserDefinedClassifierSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpecUserDefinedClassifierSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_user_defined_classifier, as: 'enableUserDefinedClassifier'
          property :model_id, as: 'modelId'
          property :preamble, as: 'preamble'
          property :seed, as: 'seed'
          property :task_marker, as: 'taskMarker'
          property :temperature, as: 'temperature'
          property :top_k, :numeric_string => true, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerGroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :grounding_score, as: 'groundingScore'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpec::Representation
      
          property :asynchronous_mode, as: 'asynchronousMode'
          property :end_user_spec, as: 'endUserSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpec::Representation
      
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestGroundingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestGroundingSpec::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQuery::Representation
      
          property :query_understanding_spec, as: 'queryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpec::Representation
      
          property :related_questions_spec, as: 'relatedQuestionsSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestRelatedQuestionsSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestRelatedQuestionsSpec::Representation
      
          property :safety_spec, as: 'safetySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpec::Representation
      
          property :search_spec, as: 'searchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpec::Representation
      
          property :session, as: 'session'
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_language_code, as: 'answerLanguageCode'
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_answer_seeking_query, as: 'ignoreNonAnswerSeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecModelSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecModelSpec::Representation
      
          property :multimodal_spec, as: 'multimodalSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecMultimodalSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecMultimodalSpec::Representation
      
          property :prompt_spec, as: 'promptSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecPromptSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecPromptSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_version, as: 'modelVersion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecMultimodalSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_source, as: 'imageSource'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestAnswerGenerationSpecPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :end_user_metadata, as: 'endUserMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaData, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaData::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestEndUserSpecEndUserMetaDataChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filtering_level, as: 'filteringLevel'
          property :include_grounding_supports, as: 'includeGroundingSupports'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_spell_correction, as: 'disableSpellCorrection'
          property :query_classification_spec, as: 'queryClassificationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec::Representation
      
          property :query_rephraser_spec, as: 'queryRephraserSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryClassificationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :types, as: 'types'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable, as: 'disable'
          property :max_rephrase_steps, as: 'maxRephraseSteps'
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestQueryUnderstandingSpecQueryRephraserSpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestRelatedQuestionsSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable, as: 'enable'
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpecSafetySetting, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpecSafetySetting::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSafetySpecSafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :threshold, as: 'threshold'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :search_params, as: 'searchParams', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchParams, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchParams::Representation
      
          property :search_result_list, as: 'searchResultList', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultList, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultList::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :custom_fine_tuning_spec, as: 'customFineTuningSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec::Representation
      
          property :filter, as: 'filter'
          property :max_return_results, as: 'maxReturnResults'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :order_by, as: 'orderBy'
          property :search_result_mode, as: 'searchResultMode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          collection :document_contexts, as: 'documentContexts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext::Representation
      
          collection :extractive_answers, as: 'extractiveAnswers', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer::Representation
      
          collection :extractive_segments, as: 'extractiveSegments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment::Representation
      
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoDocumentContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryRequestSearchSpecSearchResultListSearchResultUnstructuredDocumentInfoExtractiveSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
      
          property :answer_query_token, as: 'answerQueryToken'
          property :session, as: 'session', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_classification_info, as: 'queryClassificationInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerQueryUnderstandingInfoQueryClassificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :positive, as: 'positive'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo::Representation
      
          property :structured_document_info, as: 'structuredDocumentInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo::Representation
      
          property :unstructured_document_info, as: 'unstructuredDocumentInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blob_attachment_indexes, as: 'blobAttachmentIndexes'
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceChunkInfoDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :page_identifier, as: 'pageIdentifier'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceStructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent::Representation
      
          property :document, as: 'document'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerReferenceUnstructuredDocumentInfoChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blob_attachment_indexes, as: 'blobAttachmentIndexes'
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepAction::Representation
      
          property :description, as: 'description'
          property :state, as: 'state'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :observation, as: 'observation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation::Representation
      
          property :search_action, as: 'searchAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_info, as: 'chunkInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo::Representation
      
          property :document, as: 'document'
          collection :snippet_info, as: 'snippetInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo::Representation
      
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultChunkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk'
          property :content, as: 'content'
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionObservationSearchResultSnippetInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snippet, as: 'snippet'
          property :snippet_status, as: 'snippetStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAnswerStepActionSearchAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assist_skipped_reasons, as: 'assistSkippedReasons'
          property :customer_policy_enforcement_result, as: 'customerPolicyEnforcementResult', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult::Representation
      
          property :name, as: 'name'
          collection :replies, as: 'replies', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerReply, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerReply::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policy_results, as: 'policyResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult::Representation
      
          property :verdict, as: 'verdict'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :model_armor_violation, as: 'modelArmorViolation'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultPolicyEnforcementResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :banned_phrase_enforcement_result, as: 'bannedPhraseEnforcementResult', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultBannedPhraseEnforcementResult::Representation
      
          property :model_armor_enforcement_result, as: 'modelArmorEnforcementResult', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswerCustomerPolicyEnforcementResultModelArmorEnforcementResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistAnswerReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grounded_content, as: 'groundedContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent::Representation
      
          property :reply_id, as: 'replyId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistUserMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preferred_language_code, as: 'preferredLanguageCode'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_policy, as: 'customerPolicy', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicy, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicy::Representation
      
          hash :enabled_tools, as: 'enabledTools', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantToolList, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantToolList::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfig::Representation
      
          property :name, as: 'name'
          property :web_grounding_type, as: 'webGroundingType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_execution_result, as: 'codeExecutionResult', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult::Representation
      
          property :executable_code, as: 'executableCode', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode::Representation
      
          property :file, as: 'file', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentFile, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentFile::Representation
      
          property :inline_data, as: 'inlineData', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentBlob, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContentBlob::Representation
      
          property :role, as: 'role'
          property :text, as: 'text'
          property :thought, as: 'thought'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentCodeExecutionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :outcome, as: 'outcome'
          property :output, as: 'output'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentExecutableCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantContentFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :banned_phrases, as: 'bannedPhrases', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyBannedPhrase, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyBannedPhrase::Representation
      
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyModelArmorConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyBannedPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_diacritics, as: 'ignoreDiacritics'
          property :match_type, as: 'matchType'
          property :phrase, as: 'phrase'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantCustomerPolicyModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_mode, as: 'failureMode'
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_language, as: 'defaultLanguage'
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfigSystemInstruction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfigSystemInstruction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGenerationConfigSystemInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additional_system_instruction, as: 'additionalSystemInstruction'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCitationMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCitationMetadata::Representation
      
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantContent::Representation
      
          property :text_grounding_metadata, as: 'textGroundingMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference::Representation
      
          collection :segments, as: 'segments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataReferenceDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :domain, as: 'domain'
          property :mime_type, as: 'mimeType'
          property :page_identifier, as: 'pageIdentifier'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantGroundedContentTextGroundingMetadataSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          property :grounding_score, as: 'groundingScore'
          collection :reference_indices, as: 'referenceIndices'
          property :start_index, :numeric_string => true, as: 'startIndex'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantToolInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tool_display_name, as: 'toolDisplayName'
          property :tool_name, as: 'toolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAssistantToolList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tool_info, as: 'toolInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantToolInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistantToolInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :server_side_oauth2, as: 'serverSideOauth2', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorizationServerSideOAuth2, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorizationServerSideOAuth2::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAuthorizationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_authorization, as: 'agentAuthorization'
          collection :tool_authorizations, as: 'toolAuthorizations'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaAuthorizationServerSideOAuth2
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_uri, as: 'authorizationUri'
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          collection :scopes, as: 'scopes'
          property :token_uri, as: 'tokenUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBapConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_actions, as: 'enabledActions'
          collection :supported_connector_modes, as: 'supportedConnectorModes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents_metadata, as: 'documentsMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_ingestion_source, as: 'dataIngestionSource'
          property :last_refreshed_time, as: 'lastRefreshedTime'
          property :matcher_value, as: 'matcherValue', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponseDocumentMetadataMatcherValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_resource, as: 'fhirResource'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delete_unassigned_user_licenses, as: 'deleteUnassignedUserLicenses'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_mask, as: 'updateMask'
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserLicense, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserLicense, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBatchVerifyTargetSitesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQueryDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          property :dataset_id, as: 'datasetId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :partition_date, as: 'partitionDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :families, as: 'families', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumnFamily, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumnFamily::Representation
      
          property :key_field_name, as: 'keyFieldName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :qualifier, :base64 => true, as: 'qualifier'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumnFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumn, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableOptionsBigtableColumn::Representation
      
          property :encoding, as: 'encoding'
          property :field_name, as: 'fieldName'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBigtableSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigtable_options, as: 'bigtableOptions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableOptions, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableOptions::Representation
      
          property :instance_id, as: 'instanceId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :gemini_bundle, as: 'geminiBundle'
          hash :license_config_distributions, as: 'licenseConfigDistributions'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :procurement_entitlement_id, as: 'procurementEntitlementId'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_display_name, as: 'subscriptionDisplayName'
          property :subscription_name, as: 'subscriptionName'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBranch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_stats, as: 'branchStats', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranchBranchStats, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranchBranchStats::Representation
      
          property :display_name, as: 'displayName'
          property :is_default, as: 'isDefault'
          property :last_document_import_time, as: 'lastDocumentImportTime'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaBranchBranchStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :document_counts, as: 'documentCounts'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_texts, as: 'defaultTexts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQueryCannedQueryTexts, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQueryCannedQueryTexts::Representation
      
          property :display_name, as: 'displayName'
          property :enabled, as: 'enabled'
          property :google_defined, as: 'googleDefined'
          hash :localized_texts, as: 'localizedTexts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQueryCannedQueryTexts, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQueryCannedQueryTexts::Representation
      
          property :name, as: 'name'
          collection :required_capabilities, as: 'requiredCapabilities', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQueryAssistantCapability, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQueryAssistantCapability::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQueryAssistantCapability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_name, as: 'actionName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQueryCannedQueryTexts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prefix, as: 'prefix'
          collection :suggested_prompts, as: 'suggestedPrompts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuerySuggestedPrompt, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuerySuggestedPrompt::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCannedQuerySuggestedPrompt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prompt_text, as: 'promptText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_candidate, as: 'answerCandidate'
          collection :facts, as: 'facts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGroundingFact, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGroundingFact::Representation
      
          property :grounding_spec, as: 'groundingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingSpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cited_chunks, as: 'citedChunks', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFactChunk, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFactChunk::Representation
      
          collection :cited_facts, as: 'citedFacts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseCheckGroundingFactChunk, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseCheckGroundingFactChunk::Representation
      
          collection :claims, as: 'claims', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseClaim, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseClaim::Representation
      
          property :support_score, as: 'supportScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseCheckGroundingFactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingResponseClaim
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citation_indices, as: 'citationIndices'
          property :claim_text, as: 'claimText'
          property :end_pos, as: 'endPos'
          property :grounding_check_required, as: 'groundingCheckRequired'
          property :score, as: 'score'
          property :start_pos, as: 'startPos'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_threshold, as: 'citationThreshold'
          property :enable_claim_level_score, as: 'enableClaimLevelScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRefreshTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :refresh_token_info, as: 'refreshTokenInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRefreshTokenInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRefreshTokenInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRequirementRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requirement_type, as: 'requirementType'
          collection :resources, as: 'resources', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiMonitoredResource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiMonitoredResource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRequirementResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metric_results, as: 'metricResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementResponseMetricQueryResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementResponseMetricQueryResult::Representation
      
          property :oldest_metric_timestamp, as: 'oldestMetricTimestamp'
          property :requirement, as: 'requirement', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirement, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirement::Representation
      
          property :requirement_condition, as: 'requirementCondition', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeExpr, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeExpr::Representation
      
          property :result, as: 'result'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCheckRequirementResponseMetricQueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_type, as: 'metricType'
          property :name, as: 'name'
          property :timestamp, as: 'timestamp'
          property :unit, as: 'unit'
          property :value, as: 'value', class: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TypedValue, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TypedValue::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_contents, as: 'annotationContents'
          collection :annotation_metadata, as: 'annotationMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkAnnotationMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkAnnotationMetadata::Representation
      
          property :chunk_metadata, as: 'chunkMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkChunkMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkChunkMetadata::Representation
      
          property :content, as: 'content'
          collection :data_urls, as: 'dataUrls'
          hash :derived_struct_data, as: 'derivedStructData'
          property :document_metadata, as: 'documentMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkDocumentMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkDocumentMetadata::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
          property :page_span, as: 'pageSpan', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkPageSpan, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkPageSpan::Representation
      
          property :relevance_score, as: 'relevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkAnnotationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_id, as: 'imageId'
          property :structured_content, as: 'structuredContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkStructuredContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunkStructuredContent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkChunkMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :next_chunks, as: 'nextChunks', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk::Representation
      
          collection :previous_chunks, as: 'previousChunks', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkDocumentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          hash :struct_data, as: 'structData'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkPageSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_end, as: 'pageEnd'
          property :page_start, as: 'pageStart'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaChunkStructuredContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :structure_type, as: 'structureType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :license, as: 'license'
          property :publication_date, as: 'publicationDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :start_index, as: 'startIndex'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCitation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCitation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCloudSqlSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :instance_id, as: 'instanceId'
          property :offload, as: 'offload'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          property :notebooklm_state, as: 'notebooklmState'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSingleRegionKey, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCollection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :data_connector, as: 'dataConnector', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
      
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :query_suggestions, as: 'querySuggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion::Representation
      
          property :tail_match_triggered, as: 'tailMatchTriggered'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompleteQueryResponseQuerySuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completable_field_paths, as: 'completableFieldPaths'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected_position, as: 'selectedPosition'
          property :selected_suggestion, as: 'selectedSuggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCompletionSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternative_phrases, as: 'alternativePhrases'
          property :frequency, :numeric_string => true, as: 'frequency'
          property :global_score, as: 'globalScore'
          property :group_id, as: 'groupId'
          property :group_score, as: 'groupScore'
          property :language_code, as: 'languageCode'
          property :suggestion, as: 'suggestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :metric_usages, as: 'metricUsages', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsMetricUsage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsMetricUsage::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsDatedUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date, as: 'date', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :usage, as: 'usage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsMetricUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dated_usages, as: 'datedUsages', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsDatedUsage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConfigurablePricingUsageStatsDatedUsage::Representation
      
          property :metric_type, as: 'metricType'
          collection :total_usages, as: 'totalUsages'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :entity_runs, as: 'entityRuns', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :state_update_time, as: 'stateUpdateTime'
          property :trigger, as: 'trigger'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted_record_count, :numeric_string => true, as: 'deletedRecordCount'
          property :entity_name, as: 'entityName'
          property :error_record_count, :numeric_string => true, as: 'errorRecordCount'
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :extracted_record_count, :numeric_string => true, as: 'extractedRecordCount'
          property :indexed_record_count, :numeric_string => true, as: 'indexedRecordCount'
          property :progress, as: 'progress', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress::Representation
      
          property :scheduled_record_count, :numeric_string => true, as: 'scheduledRecordCount'
          property :source_api_request_count, :numeric_string => true, as: 'sourceApiRequestCount'
          property :state, as: 'state'
          property :state_update_time, as: 'stateUpdateTime'
          property :stats_update_time, as: 'statsUpdateTime'
          property :sync_type, as: 'syncType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConnectorRunEntityRunProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_count, :numeric_string => true, as: 'currentCount'
          property :percentile, as: 'percentile'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaContactDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlBoostAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCondition, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCondition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlFilterAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlFilterAction::Representation
      
          property :name, as: 'name'
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlPromoteAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
          property :fixed_boost, as: 'fixedBoost'
          property :interpolation_boost_spec, as: 'interpolationBoostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlBoostActionInterpolationBoostSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlPromoteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaControlSynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          collection :messages, as: 'messages', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationMessage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationMessage::Representation
      
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_document, as: 'activeDocument'
          collection :context_documents, as: 'contextDocuments'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConversationMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply::Representation
      
          property :user_input, as: 'userInput', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
      
          property :filter, as: 'filter'
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTextInput::Representation
      
          property :safe_search, as: 'safeSearch'
          property :serving_config, as: 'servingConfig'
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec::Representation
      
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversation, as: 'conversation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
      
          collection :related_questions, as: 'relatedQuestions'
          property :reply, as: 'reply', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReply::Representation
      
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qps_time_series, as: 'qpsTimeSeries', class: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateEvaluationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCreateTargetSiteRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :target_site, as: 'targetSite', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :numbers, as: 'numbers'
          collection :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_search_adaptor, as: 'enableSearchAdaptor'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaCustomTuningModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error_message, as: 'errorMessage'
          hash :metrics, as: 'metrics'
          property :model_state, as: 'modelState'
          property :model_version, :numeric_string => true, as: 'modelVersion'
          property :name, as: 'name'
          property :training_start_time, as: 'trainingStartTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :action_config, as: 'actionConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaActionConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaActionConfig::Representation
      
          property :action_state, as: 'actionState'
          collection :alert_policy_configs, as: 'alertPolicyConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyConfig::Representation
      
          property :auto_run_disabled, as: 'autoRunDisabled'
          property :bap_config, as: 'bapConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBapConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBapConfig::Representation
      
          collection :blocking_reasons, as: 'blockingReasons'
          collection :connector_modes, as: 'connectorModes'
          property :connector_type, as: 'connectorType'
          property :create_eua_saas, as: 'createEuaSaas'
          property :create_time, as: 'createTime'
          property :data_source, as: 'dataSource'
          collection :destination_configs, as: 'destinationConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDestinationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDestinationConfig::Representation
      
          property :end_user_config, as: 'endUserConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity::Representation
      
          collection :errors, as: 'errors', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :federated_config, as: 'federatedConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig::Representation
      
          property :hybrid_ingestion_disabled, as: 'hybridIngestionDisabled'
          property :identity_refresh_interval, as: 'identityRefreshInterval'
          property :identity_schedule_config, as: 'identityScheduleConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig::Representation
      
          property :incremental_refresh_interval, as: 'incrementalRefreshInterval'
          property :incremental_sync_disabled, as: 'incrementalSyncDisabled'
          property :json_params, as: 'jsonParams'
          property :kms_key_name, as: 'kmsKeyName'
          property :last_sync_time, as: 'lastSyncTime'
          property :latest_pause_time, as: 'latestPauseTime'
          property :name, as: 'name'
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime::Representation
      
          hash :params, as: 'params'
          property :private_connectivity_project_id, as: 'privateConnectivityProjectId'
          property :realtime_state, as: 'realtimeState'
          property :realtime_sync_config, as: 'realtimeSyncConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig::Representation
      
          property :refresh_interval, as: 'refreshInterval'
          collection :remove_param_keys, as: 'removeParamKeys'
          property :state, as: 'state'
          collection :static_ip_addresses, as: 'staticIpAddresses'
          property :static_ip_enabled, as: 'staticIpEnabled'
          property :sync_mode, as: 'syncMode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorEndUserConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
          property :tenant, as: 'tenant', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTenant, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTenant::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorFederatedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_params, as: 'additionalParams'
          hash :auth_params, as: 'authParams'
          property :json_auth_params, as: 'jsonAuthParams'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :realtime_sync_secret, as: 'realtimeSyncSecret'
          property :streaming_error, as: 'streamingError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError::Representation
      
          property :webhook_uri, as: 'webhookUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorRealtimeSyncConfigStreamingError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :streaming_error_reason, as: 'streamingErrorReason'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataConnectorSourceEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :entity_name, as: 'entityName'
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig::Representation
      
          property :json_params, as: 'jsonParams'
          hash :key_property_mappings, as: 'keyPropertyMappings'
          hash :params, as: 'params'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :configurable_billing_approach_update_time, as: 'configurableBillingApproachUpdateTime'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
      
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig::Representation
      
          property :identity_mapping_store, as: 'identityMappingStore'
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLanguageInfo::Representation
      
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWorkspaceConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreBillingEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_data_size, :numeric_string => true, as: 'structuredDataSize'
          property :structured_data_update_time, as: 'structuredDataUpdateTime'
          property :unstructured_data_size, :numeric_string => true, as: 'unstructuredDataSize'
          property :unstructured_data_update_time, as: 'unstructuredDataUpdateTime'
          property :website_data_size, :numeric_string => true, as: 'websiteDataSize'
          property :website_data_update_time, as: 'websiteDataUpdateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDataStoreServingConfigDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_for_serving, as: 'disabledForServing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_refresh_crawl_error_rate, as: 'autoRefreshCrawlErrorRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :auto_refresh_crawl_rate, as: 'autoRefreshCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_error_rate, as: 'userTriggeredCrawlErrorRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_rate, as: 'userTriggeredCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteAgentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteCollectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteIdentityMappingStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDeleteUserStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination::Representation
      
          property :json_params, as: 'jsonParams'
          property :key, as: 'key'
          hash :params, as: 'params'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDestinationConfigDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDialogflowAgentDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :license_config_id, as: 'licenseConfigId'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :location, as: 'location'
          property :project_number, :numeric_string => true, as: 'projectNumber'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :license_config, as: 'licenseConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_info, as: 'aclInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentAclInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentAclInfo::Representation
      
          property :content, as: 'content', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentContent::Representation
      
          hash :derived_struct_data, as: 'derivedStructData'
          property :id, as: 'id'
          property :index_status, as: 'indexStatus', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentIndexStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentIndexStatus::Representation
      
          property :index_time, as: 'indexTime'
          property :json_data, as: 'jsonData'
          property :name, as: 'name'
          property :parent_document_id, as: 'parentDocumentId'
          property :schema_id, as: 'schemaId'
          hash :struct_data, as: 'structData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentAclInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :readers, as: 'readers', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentAclInfoAccessRestriction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentAclInfoAccessRestriction::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentAclInfoAccessRestriction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_wide, as: 'idpWide'
          collection :principals, as: 'principals', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPrincipal, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPrincipal::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :raw_bytes, :base64 => true, as: 'rawBytes'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentIndexStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :index_time, as: 'indexTime'
          property :pending_message, as: 'pendingMessage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :conversion_value, as: 'conversionValue'
          property :id, as: 'id'
          property :joined, as: 'joined'
          property :name, as: 'name'
          collection :promotion_ids, as: 'promotionIds'
          property :quantity, as: 'quantity'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_get_processed_document, as: 'enableGetProcessedDocument'
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          collection :exclude_html_classes, as: 'excludeHtmlClasses'
          collection :exclude_html_elements, as: 'excludeHtmlElements'
          collection :exclude_html_ids, as: 'excludeHtmlIds'
          collection :structured_content_types, as: 'structuredContentTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaDoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEmbeddingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_type, as: 'appType'
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineCommonConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          hash :features, as: 'features'
          property :industry_vertical, as: 'industryVertical'
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig::Representation
      
          hash :model_configs, as: 'modelConfigs'
          property :name, as: 'name'
          property :recommendation_metadata, as: 'recommendationMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata::Representation
      
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig::Representation
      
          property :similar_documents_config, as: 'similarDocumentsConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig::Representation
      
          property :allow_cross_region, as: 'allowCrossRegion'
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :location, as: 'location'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineChatEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineCommonConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company_name, as: 'companyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine_features_config, as: 'engineFeaturesConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_popular_config, as: 'mostPopularConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig::Representation
      
          property :recommended_for_you_config, as: 'recommendedForYouConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_window_days, :numeric_string => true, as: 'timeWindowDays'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_event_type, as: 'contextEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineRecommendationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_state, as: 'dataState'
          property :last_train_time, as: 'lastTrainTime'
          property :last_tune_time, as: 'lastTuneTime'
          property :serving_state, as: 'servingState'
          property :tuning_operation, as: 'tuningOperation'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEngineSimilarDocumentsEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_data_source, as: 'fileDataSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestFileDataSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestFileDataSource::Representation
      
          property :website_data_source, as: 'websiteDataSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestFileDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :estimator_uri_patterns, as: 'estimatorUriPatterns', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSourceEstimatorUriPattern, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSourceEstimatorUriPattern::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequestWebsiteDataSourceEstimatorUriPattern
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :exclusive, as: 'exclusive'
          property :provided_uri_pattern, as: 'providedUriPattern'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEstimateDataSizeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_size_bytes, :numeric_string => true, as: 'dataSizeBytes'
          property :document_count, :numeric_string => true, as: 'documentCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec::Representation
      
          property :name, as: 'name'
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetrics::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_set_spec, as: 'querySetSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec::Representation
      
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaEvaluationEvaluationSpecQuerySetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_query_set, as: 'sampleQuerySet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_config, as: 'outputConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaOutputConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaOutputConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaExportMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFactChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_text, as: 'chunkText'
          property :domain, as: 'domain'
          property :index, as: 'index'
          property :source, as: 'source'
          hash :source_metadata, as: 'sourceMetadata'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sitemaps_metadata, as: 'sitemapsMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponseSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sitemap, as: 'sitemap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSitemap, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSitemap::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFhirStoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fhir_store, as: 'fhirStore'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          collection :resource_types, as: 'resourceTypes'
          property :update_from_latest_predefined_schema, as: 'updateFromLatestPredefinedSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFieldConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :advanced_site_search_data_sources, as: 'advancedSiteSearchDataSources'
          property :completable_option, as: 'completableOption'
          property :dynamic_facetable_option, as: 'dynamicFacetableOption'
          property :field_path, as: 'fieldPath'
          property :field_type, as: 'fieldType'
          property :indexable_option, as: 'indexableOption'
          property :key_property_type, as: 'keyPropertyType'
          property :metatag_name, as: 'metatagName'
          property :recs_filterable_option, as: 'recsFilterableOption'
          property :retrievable_option, as: 'retrievableOption'
          collection :schema_org_paths, as: 'schemaOrgPaths'
          property :searchable_option, as: 'searchableOption'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFileCharacteristics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :characteristics, as: 'characteristics'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFileMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_size, :numeric_string => true, as: 'byteSize'
          property :download_uri, as: 'downloadUri'
          property :file_id, as: 'fileId'
          property :file_origin_type, as: 'fileOriginType'
          property :last_add_time, as: 'lastAddTime'
          hash :metadata, as: 'metadata'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
          property :original_source_type, as: 'originalSourceType'
          property :original_uri, as: 'originalUri'
          property :upload_time, as: 'uploadTime'
          hash :views, as: 'views', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFileView, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFileView::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFileView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byte_size, :numeric_string => true, as: 'byteSize'
          property :create_time, as: 'createTime'
          property :file_characteristics, as: 'fileCharacteristics', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFileCharacteristics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFileCharacteristics::Representation
      
          property :image_characteristics, as: 'imageCharacteristics', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImageCharacteristics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImageCharacteristics::Representation
      
          property :mime_type, as: 'mimeType'
          property :uri, as: 'uri'
          property :video_characteristics, as: 'videoCharacteristics', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaVideoCharacteristics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaVideoCharacteristics::Representation
      
          property :view_id, as: 'viewId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaFirestoreSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_id, as: 'collectionId'
          property :database_id, as: 'databaseId'
          property :gcs_staging_dir, as: 'gcsStagingDir'
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_schema, as: 'dataSchema'
          collection :input_uris, as: 'inputUris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetAgentViewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_view, as: 'agentView', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentView, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentView::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetConnectorSecretResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app, as: 'app'
          property :authorization_uri, as: 'authorizationUri'
          property :client_id, as: 'clientId'
          property :instance, as: 'instance'
          property :redirect_uri, as: 'redirectUri'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_answer_details, as: 'includeAnswerDetails'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :document_data_map, as: 'documentDataMap'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGroundingFact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :fact_text, as: 'factText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaGuidedSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_refinement_attributes, as: 'enableRefinementAttributes'
          property :enable_related_questions, as: 'enableRelatedQuestions'
          property :max_related_questions, as: 'maxRelatedQuestions'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaHealthcareFhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_configurable_schema, as: 'enableConfigurableSchema'
          property :enable_static_indexing_for_batch_ingestion, as: 'enableStaticIndexingForBatchIngestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_identity, as: 'externalIdentity'
          property :group_id, as: 'groupId'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingEntryOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityMappingStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfig::Representation
      
          property :kms_key_name, as: 'kmsKeyName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdentityScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_sync_time, as: 'nextSyncTime', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDateTime::Representation
      
          property :refresh_interval, as: 'refreshInterval'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaIdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImageCharacteristics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bit_depth, as: 'bitDepth'
          property :color_space, as: 'colorSpace'
          property :height, as: 'height'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportAgentFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportAgentFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_file, as: 'agentFile', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentFile, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentFile::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionSuggestion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionSuggestion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alloy_db_source, as: 'alloyDbSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlloyDbSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlloyDbSource::Representation
      
          property :auto_generate_ids, as: 'autoGenerateIds'
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :bigtable_source, as: 'bigtableSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigtableSource::Representation
      
          property :cloud_sql_source, as: 'cloudSqlSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCloudSqlSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCloudSqlSource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :fhir_store_source, as: 'fhirStoreSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFhirStoreSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFhirStoreSource::Representation
      
          property :firestore_source, as: 'firestoreSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFirestoreSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFirestoreSource::Representation
      
          property :force_refresh_content, as: 'forceRefreshContent'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :id_field, as: 'idField'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource::Representation
      
          property :reconciliation_mode, as: 'reconciliationMode'
          property :spanner_source, as: 'spannerSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSpannerSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSpannerSource::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_entries, as: 'identityMappingEntries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sample_queries, as: 'sampleQueries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSuggestionDenyListEntry, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSuggestionDenyListEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :failed_entries_count, :numeric_string => true, as: 'failedEntriesCount'
          property :imported_entries_count, :numeric_string => true, as: 'importedEntriesCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQuerySource::Representation
      
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_events, as: 'userEvents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaLanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :language_code, as: 'languageCode'
          property :normalized_language_code, as: 'normalizedLanguageCode'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaLicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alert_policy_resource_config, as: 'alertPolicyResourceConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAlertPolicyResourceConfig::Representation
      
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :free_trial, as: 'freeTrial'
          property :gemini_bundle, as: 'geminiBundle'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaLicenseConfigUsageStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :license_config, as: 'licenseConfig'
          property :used_license_count, :numeric_string => true, as: 'usedLicenseCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListAuthorizationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorizations, as: 'authorizations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListAvailableAgentViewsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agent_views, as: 'agentViews', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentView, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentView::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListBillingAccountLicenseConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_account_license_configs, as: 'billingAccountLicenseConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListBranchesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :branches, as: 'branches', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCannedQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :canned_queries, as: 'cannedQueries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListChunksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunks, as: 'chunks', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCmekConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cmek_configs, as: 'cmekConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCollectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :collections, as: 'collections', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListConnectorRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connector_runs, as: 'connectorRuns', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRun, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRun::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListConversationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversations, as: 'conversations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomTuningModel, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomTuningModel::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDataStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_stores, as: 'dataStores', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEnginesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :engines, as: 'engines', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluation_results, as: 'evaluationResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponseEvaluationResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponseEvaluationResult::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponseEvaluationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetrics::Representation
      
          property :sample_query, as: 'sampleQuery', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListEvaluationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluations, as: 'evaluations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListFilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :files, as: 'files', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFileMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFileMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListIdentityMappingStoresResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_stores, as: 'identityMappingStores', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_entries, as: 'identityMappingEntries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListLicenseConfigsUsageStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :license_config_usage_stats, as: 'licenseConfigUsageStats', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfigUsageStats, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfigUsageStats::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sample_queries, as: 'sampleQueries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSampleQuerySetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sample_query_sets, as: 'sampleQuerySets', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :serving_configs, as: 'servingConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :parent, as: 'parent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListSessionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sessions, as: 'sessions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaListUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserLicense, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaMediaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_progress_duration, as: 'mediaProgressDuration'
          property :media_progress_percentage, as: 'mediaProgressPercentage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaNaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crawl_rate_scope, as: 'crawlRateScope'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_crawl_rate_time_series, as: 'dedicatedCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDedicatedCrawlRateTimeSeries::Representation
      
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :organic_crawl_rate_time_series, as: 'organicCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaOrganicCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_organic_crawl_rate, as: 'googleOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
          property :vertex_ai_organic_crawl_rate, as: 'vertexAiOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_destination, as: 'bigqueryDestination', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQueryDestination, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBigQueryDestination::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_category, as: 'pageCategory'
          property :pageview_id, as: 'pageviewId'
          property :referrer_uri, as: 'referrerUri'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPanelInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo::Representation
      
          property :panel_id, as: 'panelId'
          property :panel_position, as: 'panelPosition'
          property :total_panels, as: 'totalPanels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPauseEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPrincipal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_entity_id, as: 'externalEntityId'
          property :group_id, as: 'groupId'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProcessedDocument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document'
          property :json_data, as: 'jsonData'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configurable_billing_status, as: 'configurableBillingStatus', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig::Representation
      
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectConfigurableBillingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_indexing_core_threshold, :numeric_string => true, as: 'effectiveIndexingCoreThreshold'
          property :effective_search_qpm_threshold, :numeric_string => true, as: 'effectiveSearchQpmThreshold'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooklm_config, as: 'notebooklmConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig::Representation
      
          property :opt_out_notebook_sharing, as: 'optOutNotebookSharing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProjectServiceTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_time, as: 'acceptTime'
          property :decline_time, as: 'declineTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_data_use_terms, as: 'acceptDataUseTerms'
          property :data_use_terms_version, as: 'dataUseTermsVersion'
          property :saas_params, as: 'saasParams', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProvisionProjectRequestSaasParams, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProvisionProjectRequestSaasParams::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaProvisionProjectRequestSaasParams
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_biz_qos, as: 'acceptBizQos'
          property :is_biz, as: 'isBiz'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :purge_succeeded, as: 'purgeSucceeded'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :ignored_count, :numeric_string => true, as: 'ignoredCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeErrorConfig::Representation
      
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGcsSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :documents, as: 'documents'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
          property :inline_source, as: 'inlineSource', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequestInlineSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequestInlineSource::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequestInlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :identity_mapping_entries, as: 'identityMappingEntries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :force, as: 'force'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaPurgeUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_ndcg, as: 'docNdcg', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :doc_precision, as: 'docPrecision', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :doc_recall, as: 'docRecall', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :page_ndcg, as: 'pageNdcg', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
          property :page_recall, as: 'pageRecall', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaQualityMetricsTopkMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :top1, as: 'top1'
          property :top10, as: 'top10'
          property :top3, as: 'top3'
          property :top5, as: 'top5'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRankRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_record_details_in_response, as: 'ignoreRecordDetailsInResponse'
          property :model, as: 'model'
          property :query, as: 'query'
          collection :records, as: 'records', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankingRecord, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankingRecord::Representation
      
          property :top_n, as: 'topN'
          hash :user_labels, as: 'userLabels'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRankResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :records, as: 'records', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankingRecord, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankingRecord::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRankingRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :id, as: 'id'
          property :score, as: 'score'
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
          property :page_size, as: 'pageSize'
          hash :params, as: 'params'
          property :user_event, as: 'userEvent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
      
          hash :user_labels, as: 'userLabels'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_token, as: 'attributionToken'
          collection :missing_ids, as: 'missingIds'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecommendResponseRecommendationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :invalid_uris, as: 'invalidUris'
          property :invalid_uris_count, as: 'invalidUrisCount'
          collection :noindex_uris, as: 'noindexUris'
          property :noindex_uris_count, as: 'noindexUrisCount'
          property :pending_count, as: 'pendingCount'
          property :quota_exceeded_count, as: 'quotaExceededCount'
          property :success_count, as: 'successCount'
          property :update_time, as: 'updateTime'
          collection :uris_not_matching_target_sites, as: 'urisNotMatchingTargetSites'
          property :uris_not_matching_target_sites_count, as: 'urisNotMatchingTargetSitesCount'
          property :valid_uris_count, as: 'validUrisCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_credential, as: 'siteCredential'
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failed_uris, as: 'failedUris'
          collection :failure_samples, as: 'failureSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :failure_reasons, as: 'failureReasons', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRecrawlUrisResponseFailureInfoFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_type, as: 'corpusType'
          property :error_message, as: 'errorMessage'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRefreshTokenInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :scopes, as: 'scopes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crawl_rate_scope, as: 'crawlRateScope'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveSuggestionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :remove_all_search_history_suggestions, as: 'removeAllSearchHistorySuggestions'
          property :remove_time, as: 'removeTime'
          property :search_history_suggestion, as: 'searchHistorySuggestion'
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRemoveSuggestionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaReply
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReplyReference, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReplyReference::Representation
      
          property :reply, as: 'reply'
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaReplyReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :anchor_text, as: 'anchorText'
          property :end, as: 'end'
          property :start, as: 'start'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaReportConsentChangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent_change_action, as: 'consentChangeAction'
          property :service_term_id, as: 'serviceTermId'
          property :service_term_version, as: 'serviceTermVersion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeExpr, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeExpr::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :metric_bindings, as: 'metricBindings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementMetricBinding, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementMetricBinding::Representation
      
          collection :severity, as: 'severity'
          collection :threshold_bindings, as: 'thresholdBindings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementThresholdBinding, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementThresholdBinding::Representation
      
          property :type, as: 'type'
          collection :violation_samples_bindings, as: 'violationSamplesBindings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementViolationSamplesBinding, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementViolationSamplesBinding::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementMetricBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :description, as: 'description'
          property :metric_filter, as: 'metricFilter'
          property :resource_type, as: 'resourceType'
          property :variable_id, as: 'variableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementThresholdBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :threshold_values, as: 'thresholdValues', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementThresholdBindingThresholdValue, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRequirementThresholdBindingThresholdValue::Representation
      
          property :variable_id, as: 'variableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementThresholdBindingThresholdValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :severity, as: 'severity'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRequirementViolationSamplesBinding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :sample_filter, as: 'sampleFilter'
          property :variable_id, as: 'variableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaResumeEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_retract, as: 'fullRetract'
          property :license_config, as: 'licenseConfig'
          property :license_count, :numeric_string => true, as: 'licenseCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :license_config, as: 'licenseConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSafetyRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked, as: 'blocked'
          property :category, as: 'category'
          property :probability, as: 'probability'
          property :probability_score, as: 'probabilityScore'
          property :severity, as: 'severity'
          property :severity_score, as: 'severityScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :query_entry, as: 'queryEntry', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntry, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntry::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query, as: 'query'
          collection :targets, as: 'targets', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntryTarget, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntryTarget::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQueryQueryEntryTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :page_numbers, as: 'pageNumbers'
          property :score, as: 'score'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSampleQuerySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :field_configs, as: 'fieldConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFieldConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFieldConfig::Representation
      
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :search_query, as: 'searchQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document, as: 'document'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
          property :custom_fine_tuning_spec, as: 'customFineTuningSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec::Representation
      
          property :display_spec, as: 'displaySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :ranking_expression_backend, as: 'rankingExpressionBackend'
          property :region_code, as: 'regionCode'
          property :relevance_score_spec, as: 'relevanceScoreSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec::Representation
      
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_addon_spec, as: 'searchAddonSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec::Representation
      
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec::Representation
      
          property :serving_config, as: 'servingConfig'
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec::Representation
      
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec::Representation
      
          property :use_latest_data, as: 'useLatestData'
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecChunkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_next_chunks, as: 'numNextChunks'
          property :num_previous_chunks, as: 'numPreviousChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
          property :return_extractive_segment_score, as: 'returnExtractiveSegmentScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSnippetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_snippet_count, as: 'maxSnippetCount'
          property :reference_only, as: 'referenceOnly'
          property :return_snippet, as: 'returnSnippet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :multimodal_spec, as: 'multimodalSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
          property :use_semantic_chunks, as: 'useSemanticChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_source, as: 'imageSource'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestBoostSpec::Representation
      
          property :custom_search_operators, as: 'customSearchOperators'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestDisplaySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_highlighting_condition, as: 'matchHighlightingCondition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestEmbeddingSpecEmbeddingVector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
          collection :vector, as: 'vector'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          collection :restricted_values, as: 'restrictedValues'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestImageQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bytes, as: 'imageBytes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_field_names, as: 'allowedFieldNames'
          property :extracted_filter_behavior, as: 'extractedFilterBehavior'
          property :filter_extraction_condition, as: 'filterExtractionCondition'
          collection :geo_search_query_detection_field_names, as: 'geoSearchQueryDetectionFieldNames'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestRelevanceScoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_relevance_score, as: 'returnRelevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAddonSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_generative_answer_add_on, as: 'disableGenerativeAnswerAddOn'
          property :disable_kpi_personalization_add_on, as: 'disableKpiPersonalizationAddOn'
          property :disable_semantic_add_on, as: 'disableSemanticAddOn'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSearchAsYouTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :search_result_persistence_count, as: 'searchResultPersistenceCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applied_controls, as: 'appliedControls'
          property :attribution_token, as: 'attributionToken'
          property :corrected_query, as: 'correctedQuery'
          collection :facets, as: 'facets', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacet, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacet::Representation
      
          collection :geo_search_debug_info, as: 'geoSearchDebugInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo::Representation
      
          property :guided_search_result, as: 'guidedSearchResult', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult::Representation
      
          property :natural_language_query_understanding_info, as: 'naturalLanguageQueryUnderstandingInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfo::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :one_box_results, as: 'oneBoxResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseOneBoxResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseOneBoxResult::Representation
      
          property :query_expansion_info, as: 'queryExpansionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo::Representation
      
          property :redirect_uri, as: 'redirectUri'
          collection :results, as: 'results', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult::Representation
      
          collection :search_link_promotions, as: 'searchLinkPromotions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchLinkPromotion::Representation
      
          property :session_info, as: 'sessionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSessionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSessionInfo::Representation
      
          property :suggested_query, as: 'suggestedQuery'
          property :summary, as: 'summary', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummary::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dynamic_facet, as: 'dynamicFacet'
          property :key, as: 'key'
          collection :values, as: 'values', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseFacetFacetValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaInterval::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGeoSearchDebugInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_message, as: 'errorMessage'
          property :original_address_query, as: 'originalAddressQuery'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :follow_up_questions, as: 'followUpQuestions'
          collection :refinement_attributes, as: 'refinementAttributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseGuidedSearchResultRefinementAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_key, as: 'attributeKey'
          property :attribute_value, as: 'attributeValue'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :classified_intents, as: 'classifiedIntents'
          property :extracted_filters, as: 'extractedFilters'
          property :rewritten_query, as: 'rewrittenQuery'
          property :structured_extracted_filter, as: 'structuredExtractedFilter', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expression, as: 'expression', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_expr, as: 'andExpr', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterAndExpression::Representation
      
          property :geolocation_constraint, as: 'geolocationConstraint', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint::Representation
      
          property :number_constraint, as: 'numberConstraint', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint::Representation
      
          property :or_expr, as: 'orExpr', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression::Representation
      
          property :string_constraint, as: 'stringConstraint', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterGeolocationConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :field_name, as: 'fieldName'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :radius_in_meters, as: 'radiusInMeters'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterNumberConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comparison, as: 'comparison'
          property :field_name, as: 'fieldName'
          property :query_segment, as: 'querySegment'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterOrExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterExpression::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseNaturalLanguageQueryUnderstandingInfoStructuredExtractedFilterStringConstraint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_name, as: 'fieldName'
          property :query_segment, as: 'querySegment'
          collection :values, as: 'values'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseOneBoxResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :one_box_type, as: 'oneBoxType'
          collection :search_results, as: 'searchResults', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseQueryExpansionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expanded_query, as: 'expandedQuery'
          property :pinned_result_count, :numeric_string => true, as: 'pinnedResultCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk, as: 'chunk', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk::Representation
      
          property :document, as: 'document', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
      
          property :id, as: 'id'
          hash :model_scores, as: 'modelScores', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDoubleList, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDoubleList::Representation
      
          property :rank_signals, as: 'rankSignals', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignals, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignals::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boosting_factor, as: 'boostingFactor'
          collection :custom_signals, as: 'customSignals', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignalsCustomSignal, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignalsCustomSignal::Representation
      
          property :default_rank, as: 'defaultRank'
          property :document_age, as: 'documentAge'
          property :keyword_similarity_score, as: 'keywordSimilarityScore'
          property :pctr_rank, as: 'pctrRank'
          property :relevance_score, as: 'relevanceScore'
          property :semantic_similarity_score, as: 'semanticSimilarityScore'
          property :topicality_rank, as: 'topicalityRank'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSearchResultRankSignalsCustomSignal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :query_id, as: 'queryId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :safety_attributes, as: 'safetyAttributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes::Representation
      
          collection :summary_skipped_reasons, as: 'summarySkippedReasons'
          property :summary_text, as: 'summaryText'
          property :summary_with_metadata, as: 'summaryWithMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummaryWithMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummaryWithMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribution_type, as: 'attributionType'
          property :data, as: 'data', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachmentBlob, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachmentBlob::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachmentBlob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, :numeric_string => true, as: 'endIndex'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationSource::Representation
      
          property :start_index, :numeric_string => true, as: 'startIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitation::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference_index, :numeric_string => true, as: 'referenceIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :chunk_contents, as: 'chunkContents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReferenceChunkContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReferenceChunkContent::Representation
      
          property :document, as: 'document'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReferenceChunkContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blob_attachment_indexes, as: 'blobAttachmentIndexes'
          property :content, as: 'content'
          property :page_identifier, as: 'pageIdentifier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySafetyAttributes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories'
          collection :scores, as: 'scores'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSearchResponseSummarySummaryWithMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blob_attachments, as: 'blobAttachments', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachment, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryBlobAttachment::Representation
      
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryCitationMetadata::Representation
      
          collection :references, as: 'references', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReference, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponseSummaryReference::Representation
      
          property :summary, as: 'summary'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaServingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer_generation_spec, as: 'answerGenerationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerGenerationSpec::Representation
      
          collection :boost_control_ids, as: 'boostControlIds'
          property :create_time, as: 'createTime'
          property :custom_fine_tuning_spec, as: 'customFineTuningSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomFineTuningSpec::Representation
      
          property :display_name, as: 'displayName'
          collection :dissociate_control_ids, as: 'dissociateControlIds'
          property :diversity_level, as: 'diversityLevel'
          property :embedding_config, as: 'embeddingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEmbeddingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEmbeddingConfig::Representation
      
          collection :filter_control_ids, as: 'filterControlIds'
          property :generic_config, as: 'genericConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfigGenericConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfigGenericConfig::Representation
      
          property :guided_search_spec, as: 'guidedSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGuidedSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGuidedSearchSpec::Representation
      
          collection :ignore_control_ids, as: 'ignoreControlIds'
          property :media_config, as: 'mediaConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfigMediaConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfigMediaConfig::Representation
      
          property :model_id, as: 'modelId'
          property :name, as: 'name'
          collection :oneway_synonyms_control_ids, as: 'onewaySynonymsControlIds'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestPersonalizationSpec::Representation
      
          collection :promote_control_ids, as: 'promoteControlIds'
          property :ranking_expression, as: 'rankingExpression'
          collection :redirect_control_ids, as: 'redirectControlIds'
          collection :replacement_control_ids, as: 'replacementControlIds'
          property :solution_type, as: 'solutionType'
          collection :synonyms_control_ids, as: 'synonymsControlIds'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaServingConfigGenericConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaServingConfigMediaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_freshness_cutoff_days, as: 'contentFreshnessCutoffDays'
          property :content_watched_percentage_threshold, as: 'contentWatchedPercentageThreshold'
          property :content_watched_seconds_threshold, as: 'contentWatchedSecondsThreshold'
          property :demote_content_watched_past_days, as: 'demoteContentWatchedPastDays'
          property :demotion_event_type, as: 'demotionEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSession
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :is_pinned, as: 'isPinned'
          collection :labels, as: 'labels'
          property :name, as: 'name'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          collection :turns, as: 'turns', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSessionTurn, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSessionTurn::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSessionTurn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer'
          property :detailed_answer, as: 'detailedAnswer', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
      
          property :detailed_assist_answer, as: 'detailedAssistAnswer', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswer, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswer::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQuery::Representation
      
          hash :query_config, as: 'queryConfig'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crawl_rate, as: 'crawlRate'
          property :crawl_rate_scope, as: 'crawlRateScope'
          property :crawl_type, as: 'crawlType'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collection_display_name, as: 'collectionDisplayName'
          property :collection_id, as: 'collectionId'
          property :data_connector, as: 'dataConnector', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :document_data_map, as: 'documentDataMap'
          property :empty_document_data_map, as: 'emptyDocumentDataMap'
          hash :schema, as: 'schema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteSearchEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSpannerSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database_id, as: 'databaseId'
          property :enable_data_boost, as: 'enableDataBoost'
          property :instance_id, as: 'instanceId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStartConnectorRunRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities'
          property :force_refresh_content, as: 'forceRefreshContent'
          collection :healthcare_fhir_resource_types, as: 'healthcareFhirResourceTypes'
          property :sync_identity, as: 'syncIdentity'
          property :sync_since_timestamp, as: 'syncSinceTimestamp'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generation_spec, as: 'generationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestGenerationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestGenerationSpec::Representation
      
          property :query, as: 'query', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQuery::Representation
      
          property :session, as: 'session'
          property :tools_spec, as: 'toolsSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpec::Representation
      
          property :user_metadata, as: 'userMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistUserMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistUserMetadata::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_id, as: 'modelId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_generation_spec, as: 'imageGenerationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecImageGenerationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecImageGenerationSpec::Representation
      
          property :vertex_ai_search_spec, as: 'vertexAiSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVertexAiSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVertexAiSearchSpec::Representation
      
          property :video_generation_spec, as: 'videoGenerationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVideoGenerationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVideoGenerationSpec::Representation
      
          property :web_grounding_spec, as: 'webGroundingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecWebGroundingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecWebGroundingSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecImageGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVertexAiSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestDataStoreSpec::Representation
      
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecVideoGenerationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistRequestToolsSpecWebGroundingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswer, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistAnswer::Representation
      
          property :assist_token, as: 'assistToken'
          property :session_info, as: 'sessionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistResponseSessionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistResponseSessionInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaStreamAssistResponseSessionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session, as: 'session'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaSuggestionDenyListEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_phrase, as: 'blockPhrase'
          property :match_operator, as: 'matchOperator'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationContext, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversationContext::Representation
      
          property :input, as: 'input'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          property :gcs_training_input, as: 'gcsTrainingInput', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequestGcsTrainingInput, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequestGcsTrainingInput::Representation
      
          property :model_id, as: 'modelId'
          property :model_type, as: 'modelType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequestGcsTrainingInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corpus_data_path, as: 'corpusDataPath'
          property :query_data_path, as: 'queryDataPath'
          property :test_data_path, as: 'testDataPath'
          property :train_data_path, as: 'trainDataPath'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTransactionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cost, as: 'cost'
          property :currency, as: 'currency'
          property :discount_value, as: 'discountValue'
          property :tax, as: 'tax'
          property :transaction_id, as: 'transactionId'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaTuneEngineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCmekConfigMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateCollectionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateSessionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session, as: 'session', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadAgentFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob, as: 'blob', class: Google::Apis::DiscoveryengineV1alpha::GdataMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataMedia::Representation
      
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaRequestInfo, decorator: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaRequestInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadAgentFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_file, as: 'agentFile', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentFile, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgentFile::Representation
      
          property :media_response_info, as: 'mediaResponseInfo', class: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaResponseInfo, decorator: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaResponseInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadSessionFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob, as: 'blob', class: Google::Apis::DiscoveryengineV1alpha::GdataMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataMedia::Representation
      
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaRequestInfo, decorator: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaRequestInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUploadSessionFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :media_response_info, as: 'mediaResponseInfo', class: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaResponseInfo, decorator: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaResponseInfo::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserAnnotations
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pinned, as: 'pinned'
          property :viewed, as: 'viewed'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomAttribute, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCustomAttribute::Representation
      
          property :attribution_token, as: 'attributionToken'
          property :completion_info, as: 'completionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompletionInfo::Representation
      
          property :conversion_type, as: 'conversionType'
          property :data_store, as: 'dataStore'
          property :direct_user_request, as: 'directUserRequest'
          collection :documents, as: 'documents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentInfo::Representation
      
          property :engine, as: 'engine'
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :filter, as: 'filter'
          property :media_info, as: 'mediaInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaMediaInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaMediaInfo::Representation
      
          property :page_info, as: 'pageInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPageInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPageInfo::Representation
      
          property :panel, as: 'panel', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo::Representation
      
          collection :panels, as: 'panels', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPanelInfo::Representation
      
          collection :promotion_ids, as: 'promotionIds'
          property :search_info, as: 'searchInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchInfo::Representation
      
          property :session_id, as: 'sessionId'
          collection :tag_ids, as: 'tagIds'
          property :transaction_info, as: 'transactionInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTransactionInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTransactionInfo::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserInfo::Representation
      
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_zone, as: 'timeZone'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_login_time, as: 'lastLoginTime'
          property :license_assignment_state, as: 'licenseAssignmentState'
          property :license_config, as: 'licenseConfig'
          property :update_time, as: 'updateTime'
          property :user_principal, as: 'userPrincipal'
          property :user_profile, as: 'userProfile'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaUserStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_license_config, as: 'defaultLicenseConfig'
          property :display_name, as: 'displayName'
          property :enable_expired_license_auto_update, as: 'enableExpiredLicenseAutoUpdate'
          property :enable_license_auto_register, as: 'enableLicenseAutoRegister'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaVideoCharacteristics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_bitrate_kbps, as: 'audioBitrateKbps'
          collection :audio_codecs, as: 'audioCodecs'
          property :duration, as: 'duration'
          property :frame_rate, as: 'frameRate'
          property :height, as: 'height'
          property :video_bitrate_kbps, as: 'videoBitrateKbps'
          collection :video_codecs, as: 'videoCodecs'
          property :width, as: 'width'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_settings, as: 'accessSettings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigAccessSettings, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigAccessSettings::Representation
      
          property :allow_public_access, as: 'allowPublicAccess'
          collection :allowlisted_domains, as: 'allowlistedDomains'
          property :assistant_settings, as: 'assistantSettings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigAssistantSettings, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigAssistantSettings::Representation
      
          collection :collection_components, as: 'collectionComponents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigCollectionComponent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigCollectionComponent::Representation
      
          property :config_id, as: 'configId'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequestContentSearchSpec::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigCustomerProvidedConfig::Representation
      
          property :data_store_type, as: 'dataStoreType'
          collection :data_store_ui_configs, as: 'dataStoreUiConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreUiConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreUiConfig::Representation
      
          property :default_search_request_order_by, as: 'defaultSearchRequestOrderBy'
          property :display_name, as: 'displayName'
          property :enable_autocomplete, as: 'enableAutocomplete'
          property :enable_conversational_search, as: 'enableConversationalSearch'
          property :enable_private_knowledge_graph, as: 'enablePrivateKnowledgeGraph'
          property :enable_quality_feedback, as: 'enableQualityFeedback'
          property :enable_result_score, as: 'enableResultScore'
          property :enable_safe_search, as: 'enableSafeSearch'
          property :enable_search_as_you_type, as: 'enableSearchAsYouType'
          property :enable_snippet_result_summary, as: 'enableSnippetResultSummary'
          property :enable_summarization, as: 'enableSummarization'
          property :enable_web_app, as: 'enableWebApp'
          collection :facet_field, as: 'facetField', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField::Representation
      
          hash :fields_ui_components_map, as: 'fieldsUiComponentsMap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField::Representation
      
          property :gemini_bundle, as: 'geminiBundle'
          property :homepage_setting, as: 'homepageSetting', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSetting, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSetting::Representation
      
          property :industry_vertical, as: 'industryVertical'
          property :llm_enabled, as: 'llmEnabled'
          property :minimum_data_term_accepted, as: 'minimumDataTermAccepted'
          property :name, as: 'name'
          property :result_display_type, as: 'resultDisplayType'
          property :solution_type, as: 'solutionType'
          property :ui_branding, as: 'uiBranding', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiBrandingSettings, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiBrandingSettings::Representation
      
          property :ui_settings, as: 'uiSettings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettings, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettings::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigAccessSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_public_access, as: 'allowPublicAccess'
          collection :allowlisted_domains, as: 'allowlistedDomains'
          property :enable_web_app, as: 'enableWebApp'
          property :language_code, as: 'languageCode'
          property :workforce_identity_pool_provider, as: 'workforceIdentityPoolProvider'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigAssistantSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_web_grounding_toggle_off, as: 'defaultWebGroundingToggleOff'
          property :disable_location_context, as: 'disableLocationContext'
          property :google_search_grounding_enabled, as: 'googleSearchGroundingEnabled'
          property :web_grounding_type, as: 'webGroundingType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigCollectionComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector_icon_link, as: 'connectorIconLink'
          property :data_source, as: 'dataSource'
          property :data_source_display_name, as: 'dataSourceDisplayName'
          collection :data_store_components, as: 'dataStoreComponents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreComponent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreComponent::Representation
      
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customer_type, as: 'customerType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_config, as: 'contentConfig'
          property :data_store_config_type, as: 'dataStoreConfigType'
          property :display_name, as: 'displayName'
          property :entity_name, as: 'entityName'
          property :id, as: 'id'
          property :name, as: 'name'
          property :workspace_type, as: 'workspaceType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreUiConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :facet_field, as: 'facetField', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField::Representation
      
          hash :fields_ui_components_map, as: 'fieldsUiComponentsMap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField::Representation
      
          property :id, as: 'id'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigFacetField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :shortcuts, as: 'shortcuts', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSettingShortcut, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSettingShortcut::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigHomepageSettingShortcut
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_uri, as: 'destinationUri'
          property :icon, as: 'icon', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigImage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigImage::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiComponentField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :device_visibility, as: 'deviceVisibility'
          property :display_template, as: 'displayTemplate'
          property :field, as: 'field'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiBrandingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :logo, as: 'logo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigImage, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigImage::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_store_ui_configs, as: 'dataStoreUiConfigs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreUiConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigDataStoreUiConfig::Representation
      
          property :default_search_request_order_by, as: 'defaultSearchRequestOrderBy'
          property :disable_user_events_collection, as: 'disableUserEventsCollection'
          property :enable_autocomplete, as: 'enableAutocomplete'
          property :enable_create_agent_button, as: 'enableCreateAgentButton'
          property :enable_people_search, as: 'enablePeopleSearch'
          property :enable_quality_feedback, as: 'enableQualityFeedback'
          property :enable_safe_search, as: 'enableSafeSearch'
          property :enable_search_as_you_type, as: 'enableSearchAsYouType'
          property :enable_visual_content_summary, as: 'enableVisualContentSummary'
          hash :features, as: 'features'
          property :generative_answer_config, as: 'generativeAnswerConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsGenerativeAnswerConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsGenerativeAnswerConfig::Representation
      
          property :interaction_type, as: 'interactionType'
          hash :model_configs, as: 'modelConfigs'
          property :result_description_type, as: 'resultDescriptionType'
          property :search_addon_spec, as: 'searchAddonSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsSearchAddonSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsSearchAddonSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsGenerativeAnswerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_related_questions, as: 'disableRelatedQuestions'
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_answer_seeking_query, as: 'ignoreNonAnswerSeekingQuery'
          property :image_source, as: 'imageSource'
          property :language_code, as: 'languageCode'
          property :max_rephrase_steps, as: 'maxRephraseSteps'
          property :model_prompt_preamble, as: 'modelPromptPreamble'
          property :model_version, as: 'modelVersion'
          property :result_count, as: 'resultCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWidgetConfigUiSettingsSearchAddonSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generative_answer_add_on_disabled, as: 'generativeAnswerAddOnDisabled'
          property :kpi_personalization_add_on_disabled, as: 'kpiPersonalizationAddOnDisabled'
          property :semantic_add_on_disabled, as: 'semanticAddOnDisabled'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dasher_customer_id, as: 'dasherCustomerId'
          property :super_admin_email_address, as: 'superAdminEmailAddress'
          property :super_admin_service_account, as: 'superAdminServiceAccount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1alphaWorkspaceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workspace_access_enabled, as: 'workspaceAccessEnabled'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAclConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :idp_config, as: 'idpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaIdpConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_automatic_refresh, as: 'disableAutomaticRefresh'
          property :disable_initial_index, as: 'disableInitialIndex'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchCreateTargetSitesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :target_sites, as: 'targetSites', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaTargetSite, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaTargetSite::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaBatchUpdateUserLicensesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          collection :user_licenses, as: 'userLicenses', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaUserLicense, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaUserLicense::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_default, as: 'isDefault'
          property :kms_key, as: 'kmsKey'
          property :kms_key_version, as: 'kmsKeyVersion'
          property :last_rotation_timestamp_micros, :numeric_string => true, as: 'lastRotationTimestampMicros'
          property :name, as: 'name'
          property :notebooklm_state, as: 'notebooklmState'
          collection :single_region_keys, as: 'singleRegionKeys', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSingleRegionKey, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSingleRegionKey::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :active_time_range, as: 'activeTimeRange', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaConditionTimeRange, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaConditionTimeRange::Representation
      
          property :query_regex, as: 'queryRegex'
          collection :query_terms, as: 'queryTerms', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaConditionQueryTerm, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaConditionQueryTerm::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionQueryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_match, as: 'fullMatch'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaConditionTimeRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :associated_serving_config_ids, as: 'associatedServingConfigIds'
          property :boost_action, as: 'boostAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlBoostAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlBoostAction::Representation
      
          collection :conditions, as: 'conditions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCondition, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCondition::Representation
      
          property :display_name, as: 'displayName'
          property :filter_action, as: 'filterAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlFilterAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlFilterAction::Representation
      
          property :name, as: 'name'
          property :promote_action, as: 'promoteAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlPromoteAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlPromoteAction::Representation
      
          property :redirect_action, as: 'redirectAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlRedirectAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlRedirectAction::Representation
      
          property :solution_type, as: 'solutionType'
          property :synonyms_action, as: 'synonymsAction', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlSynonymsAction, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlSynonymsAction::Representation
      
          collection :use_cases, as: 'useCases'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
          property :fixed_boost, as: 'fixedBoost'
          property :interpolation_boost_spec, as: 'interpolationBoostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlBoostActionInterpolationBoostSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlFilterAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlPromoteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_store, as: 'dataStore'
          property :search_link_promotion, as: 'searchLinkPromotion', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchLinkPromotion::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaControlSynonymsAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :qps_time_series, as: 'qpsTimeSeries', class: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateEvaluationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaCreateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acl_enabled, as: 'aclEnabled'
          property :advanced_site_search_config, as: 'advancedSiteSearchConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaAdvancedSiteSearchConfig::Representation
      
          property :billing_estimation, as: 'billingEstimation', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :configurable_billing_approach_update_time, as: 'configurableBillingApproachUpdateTime'
          property :content_config, as: 'contentConfig'
          property :create_time, as: 'createTime'
          property :default_schema_id, as: 'defaultSchemaId'
          property :display_name, as: 'displayName'
          property :document_processing_config, as: 'documentProcessingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig::Representation
      
          property :healthcare_fhir_config, as: 'healthcareFhirConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig::Representation
      
          property :identity_mapping_store, as: 'identityMappingStore'
          property :industry_vertical, as: 'industryVertical'
          property :is_infobot_faq_data_store, as: 'isInfobotFaqDataStore'
          property :kms_key_name, as: 'kmsKeyName'
          property :language_info, as: 'languageInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaLanguageInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaLanguageInfo::Representation
      
          property :name, as: 'name'
          property :natural_language_query_understanding_config, as: 'naturalLanguageQueryUnderstandingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig::Representation
      
          property :serving_config_data_store, as: 'servingConfigDataStore', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore::Representation
      
          collection :solution_types, as: 'solutionTypes'
          property :starting_schema, as: 'startingSchema', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSchema, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSchema::Representation
      
          property :workspace_config, as: 'workspaceConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaWorkspaceConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaWorkspaceConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreBillingEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :structured_data_size, :numeric_string => true, as: 'structuredDataSize'
          property :structured_data_update_time, as: 'structuredDataUpdateTime'
          property :unstructured_data_size, :numeric_string => true, as: 'unstructuredDataSize'
          property :unstructured_data_update_time, as: 'unstructuredDataUpdateTime'
          property :website_data_size, :numeric_string => true, as: 'websiteDataSize'
          property :website_data_update_time, as: 'websiteDataUpdateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDataStoreServingConfigDataStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_for_serving, as: 'disabledForServing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_refresh_crawl_error_rate, as: 'autoRefreshCrawlErrorRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :auto_refresh_crawl_rate, as: 'autoRefreshCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_error_rate, as: 'userTriggeredCrawlErrorRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :user_triggered_crawl_rate, as: 'userTriggeredCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteDataStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteIdentityMappingStoreMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteSitemapMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDeleteTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDisableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunking_config, as: 'chunkingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig::Representation
      
          property :default_parsing_config, as: 'defaultParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig::Representation
      
          property :name, as: 'name'
          hash :parsing_config_overrides, as: 'parsingConfigOverrides', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :layout_based_chunking_config, as: 'layoutBasedChunkingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_size, as: 'chunkSize'
          property :include_ancestor_headings, as: 'includeAncestorHeadings'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digital_parsing_config, as: 'digitalParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig::Representation
      
          property :layout_parsing_config, as: 'layoutParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig::Representation
      
          property :ocr_parsing_config, as: 'ocrParsingConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigDigitalParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigLayoutParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_get_processed_document, as: 'enableGetProcessedDocument'
          property :enable_image_annotation, as: 'enableImageAnnotation'
          property :enable_llm_layout_parsing, as: 'enableLlmLayoutParsing'
          property :enable_table_annotation, as: 'enableTableAnnotation'
          collection :exclude_html_classes, as: 'excludeHtmlClasses'
          collection :exclude_html_elements, as: 'excludeHtmlElements'
          collection :exclude_html_ids, as: 'excludeHtmlIds'
          collection :structured_content_types, as: 'structuredContentTypes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaDocumentProcessingConfigParsingConfigOcrParsingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enhanced_document_elements, as: 'enhancedDocumentElements'
          property :use_native_text, as: 'useNativeText'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEnableAdvancedSiteSearchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngine
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_type, as: 'appType'
          property :chat_engine_config, as: 'chatEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig::Representation
      
          property :chat_engine_metadata, as: 'chatEngineMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata::Representation
      
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCmekConfig::Representation
      
          property :common_config, as: 'commonConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineCommonConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineCommonConfig::Representation
      
          property :configurable_billing_approach, as: 'configurableBillingApproach'
          property :create_time, as: 'createTime'
          collection :data_store_ids, as: 'dataStoreIds'
          property :disable_analytics, as: 'disableAnalytics'
          property :display_name, as: 'displayName'
          hash :features, as: 'features'
          property :industry_vertical, as: 'industryVertical'
          property :media_recommendation_engine_config, as: 'mediaRecommendationEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig::Representation
      
          hash :model_configs, as: 'modelConfigs'
          property :name, as: 'name'
          property :search_engine_config, as: 'searchEngineConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig::Representation
      
          property :solution_type, as: 'solutionType'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_creation_config, as: 'agentCreationConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig::Representation
      
          property :allow_cross_region, as: 'allowCrossRegion'
          property :dialogflow_agent_to_link, as: 'dialogflowAgentToLink'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineConfigAgentCreationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business, as: 'business'
          property :default_language_code, as: 'defaultLanguageCode'
          property :location, as: 'location'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialogflow_agent, as: 'dialogflowAgent'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineCommonConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company_name, as: 'companyName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine_features_config, as: 'engineFeaturesConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig::Representation
      
          property :optimization_objective, as: 'optimizationObjective'
          property :optimization_objective_config, as: 'optimizationObjectiveConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig::Representation
      
          property :training_state, as: 'trainingState'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigEngineFeaturesConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :most_popular_config, as: 'mostPopularConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig::Representation
      
          property :recommended_for_you_config, as: 'recommendedForYouConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigMostPopularFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_window_days, :numeric_string => true, as: 'timeWindowDays'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigOptimizationObjectiveConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_field, as: 'targetField'
          property :target_field_value_float, as: 'targetFieldValueFloat'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineMediaRecommendationEngineConfigRecommendedForYouFeatureConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_event_type, as: 'contextEventType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEngineSearchEngineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :search_add_ons, as: 'searchAddOns'
          property :search_tier, as: 'searchTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :evaluation_spec, as: 'evaluationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec::Representation
      
          property :name, as: 'name'
          property :quality_metrics, as: 'qualityMetrics', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetrics::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_set_spec, as: 'querySetSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec::Representation
      
          property :search_request, as: 'searchRequest', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequest, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequest::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaEvaluationEvaluationSpecQuerySetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sample_query_set, as: 'sampleQuerySet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaHealthcareFhirConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_configurable_schema, as: 'enableConfigurableSchema'
          property :enable_static_indexing_for_batch_ingestion, as: 'enableStaticIndexingForBatchIngestion'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaIdentityMappingEntryOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_idp_config, as: 'externalIdpConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig::Representation
      
          property :idp_type, as: 'idpType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaIdpConfigExternalIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :workforce_pool_name, as: 'workforcePoolName'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportErrorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_prefix, as: 'gcsPrefix'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportIdentityMappingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :total_count, :numeric_string => true, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSampleQueriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :failed_entries_count, :numeric_string => true, as: 'failedEntriesCount'
          property :imported_entries_count, :numeric_string => true, as: 'importedEntriesCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaImportUserEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :joined_events_count, :numeric_string => true, as: 'joinedEventsCount'
          property :unjoined_events_count, :numeric_string => true, as: 'unjoinedEventsCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exclusive_maximum, as: 'exclusiveMaximum'
          property :exclusive_minimum, as: 'exclusiveMinimum'
          property :maximum, as: 'maximum'
          property :minimum, as: 'minimum'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaLanguageInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language, as: 'language'
          property :language_code, as: 'languageCode'
          property :normalized_language_code, as: 'normalizedLanguageCode'
          property :region, as: 'region'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaLicenseConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_renew, as: 'autoRenew'
          property :end_date, as: 'endDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :free_trial, as: 'freeTrial'
          property :gemini_bundle, as: 'geminiBundle'
          property :license_count, :numeric_string => true, as: 'licenseCount'
          property :name, as: 'name'
          property :start_date, as: 'startDate', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeDate::Representation
      
          property :state, as: 'state'
          property :subscription_term, as: 'subscriptionTerm'
          property :subscription_tier, as: 'subscriptionTier'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaNaturalLanguageQueryUnderstandingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaObtainCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dedicated_crawl_rate_time_series, as: 'dedicatedCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaDedicatedCrawlRateTimeSeries::Representation
      
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :organic_crawl_rate_time_series, as: 'organicCrawlRateTimeSeries', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaOrganicCrawlRateTimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_organic_crawl_rate, as: 'googleOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
          property :vertex_ai_organic_crawl_rate, as: 'vertexAiOrganicCrawlRate', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaCrawlRateTimeSeries::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configurable_billing_status, as: 'configurableBillingStatus', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus::Representation
      
          property :create_time, as: 'createTime'
          property :customer_provided_config, as: 'customerProvidedConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig::Representation
      
          property :name, as: 'name'
          property :provision_completion_time, as: 'provisionCompletionTime'
          hash :service_terms_map, as: 'serviceTermsMap', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectServiceTerms, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectServiceTerms::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectConfigurableBillingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_indexing_core_threshold, :numeric_string => true, as: 'effectiveIndexingCoreThreshold'
          property :effective_search_qpm_threshold, :numeric_string => true, as: 'effectiveSearchQpmThreshold'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notebooklm_config, as: 'notebooklmConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_armor_config, as: 'modelArmorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig::Representation
      
          property :opt_out_notebook_sharing, as: 'optOutNotebookSharing'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectCustomerProvidedConfigNotebooklmConfigModelArmorConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_template, as: 'responseTemplate'
          property :user_prompt_template, as: 'userPromptTemplate'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProjectServiceTerms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :accept_time, as: 'acceptTime'
          property :decline_time, as: 'declineTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaProvisionProjectMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :failure_count, :numeric_string => true, as: 'failureCount'
          property :ignored_count, :numeric_string => true, as: 'ignoredCount'
          property :success_count, :numeric_string => true, as: 'successCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :purge_count, :numeric_string => true, as: 'purgeCount'
          collection :purge_sample, as: 'purgeSample'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaPurgeSuggestionDenyListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :purge_count, :numeric_string => true, as: 'purgeCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :doc_ndcg, as: 'docNdcg', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :doc_precision, as: 'docPrecision', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :doc_recall, as: 'docRecall', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :page_ndcg, as: 'pageNdcg', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
          property :page_recall, as: 'pageRecall', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaQualityMetricsTopkMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :top1, as: 'top1'
          property :top10, as: 'top10'
          property :top3, as: 'top3'
          property :top5, as: 'top5'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaRemoveDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :json_schema, as: 'jsonSchema'
          property :name, as: 'name'
          hash :struct_schema, as: 'structSchema'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchLinkPromotion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document, as: 'document'
          property :enabled, as: 'enabled'
          property :image_uri, as: 'imageUri'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :branch, as: 'branch'
          property :canonical_filter, as: 'canonicalFilter'
          property :content_search_spec, as: 'contentSearchSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec::Representation
      
          collection :data_store_specs, as: 'dataStoreSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec::Representation
      
          property :display_spec, as: 'displaySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec::Representation
      
          property :embedding_spec, as: 'embeddingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec::Representation
      
          collection :facet_specs, as: 'facetSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec::Representation
      
          property :filter, as: 'filter'
          property :image_query, as: 'imageQuery', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery::Representation
      
          property :language_code, as: 'languageCode'
          property :natural_language_query_understanding_spec, as: 'naturalLanguageQueryUnderstandingSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec::Representation
      
          property :offset, as: 'offset'
          property :one_box_page_size, as: 'oneBoxPageSize'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          hash :params, as: 'params'
          property :personalization_spec, as: 'personalizationSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec::Representation
      
          property :query, as: 'query'
          property :query_expansion_spec, as: 'queryExpansionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec::Representation
      
          property :ranking_expression, as: 'rankingExpression'
          property :ranking_expression_backend, as: 'rankingExpressionBackend'
          property :region_code, as: 'regionCode'
          property :relevance_score_spec, as: 'relevanceScoreSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec::Representation
      
          property :relevance_threshold, as: 'relevanceThreshold'
          property :safe_search, as: 'safeSearch'
          property :search_addon_spec, as: 'searchAddonSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec::Representation
      
          property :search_as_you_type_spec, as: 'searchAsYouTypeSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec::Representation
      
          property :serving_config, as: 'servingConfig'
          property :session, as: 'session'
          property :session_spec, as: 'sessionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec::Representation
      
          property :spell_correction_spec, as: 'spellCorrectionSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec::Representation
      
          property :user_info, as: 'userInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaUserInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaUserInfo::Representation
      
          hash :user_labels, as: 'userLabels'
          property :user_pseudo_id, as: 'userPseudoId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :condition_boost_specs, as: 'conditionBoostSpecs', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost, as: 'boost'
          property :boost_control_spec, as: 'boostControlSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec::Representation
      
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_type, as: 'attributeType'
          collection :control_points, as: 'controlPoints', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint::Representation
      
          property :field_name, as: 'fieldName'
          property :interpolation_type, as: 'interpolationType'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpecBoostControlSpecControlPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute_value, as: 'attributeValue'
          property :boost_amount, as: 'boostAmount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :chunk_spec, as: 'chunkSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec::Representation
      
          property :extractive_content_spec, as: 'extractiveContentSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec::Representation
      
          property :search_result_mode, as: 'searchResultMode'
          property :snippet_spec, as: 'snippetSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec::Representation
      
          property :summary_spec, as: 'summarySpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecChunkSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_next_chunks, as: 'numNextChunks'
          property :num_previous_chunks, as: 'numPreviousChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecExtractiveContentSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_extractive_answer_count, as: 'maxExtractiveAnswerCount'
          property :max_extractive_segment_count, as: 'maxExtractiveSegmentCount'
          property :num_next_segments, as: 'numNextSegments'
          property :num_previous_segments, as: 'numPreviousSegments'
          property :return_extractive_segment_score, as: 'returnExtractiveSegmentScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSnippetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_snippet_count, as: 'maxSnippetCount'
          property :reference_only, as: 'referenceOnly'
          property :return_snippet, as: 'returnSnippet'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ignore_adversarial_query, as: 'ignoreAdversarialQuery'
          property :ignore_jail_breaking_query, as: 'ignoreJailBreakingQuery'
          property :ignore_low_relevant_content, as: 'ignoreLowRelevantContent'
          property :ignore_non_summary_seeking_query, as: 'ignoreNonSummarySeekingQuery'
          property :include_citations, as: 'includeCitations'
          property :language_code, as: 'languageCode'
          property :model_prompt_spec, as: 'modelPromptSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec::Representation
      
          property :model_spec, as: 'modelSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec::Representation
      
          property :multimodal_spec, as: 'multimodalSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec::Representation
      
          property :summary_result_count, as: 'summaryResultCount'
          property :use_semantic_chunks, as: 'useSemanticChunks'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelPromptSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :preamble, as: 'preamble'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpecSummarySpecMultiModalSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_source, as: 'imageSource'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boost_spec, as: 'boostSpec', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec::Representation
      
          property :custom_search_operators, as: 'customSearchOperators'
          property :data_store, as: 'dataStore'
          property :filter, as: 'filter'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestDisplaySpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :match_highlighting_condition, as: 'matchHighlightingCondition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :embedding_vectors, as: 'embeddingVectors', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_path, as: 'fieldPath'
          collection :vector, as: 'vector'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_dynamic_position, as: 'enableDynamicPosition'
          collection :excluded_filter_keys, as: 'excludedFilterKeys'
          property :facet_key, as: 'facetKey', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey::Representation
      
          property :limit, as: 'limit'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpecFacetKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_insensitive, as: 'caseInsensitive'
          collection :contains, as: 'contains'
          collection :intervals, as: 'intervals', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaInterval, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaInterval::Representation
      
          property :key, as: 'key'
          property :order_by, as: 'orderBy'
          collection :prefixes, as: 'prefixes'
          collection :restricted_values, as: 'restrictedValues'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bytes, as: 'imageBytes'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_field_names, as: 'allowedFieldNames'
          property :extracted_filter_behavior, as: 'extractedFilterBehavior'
          property :filter_extraction_condition, as: 'filterExtractionCondition'
          collection :geo_search_query_detection_field_names, as: 'geoSearchQueryDetectionFieldNames'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
          property :pin_unexpanded_results, as: 'pinUnexpandedResults'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestRelevanceScoreSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :return_relevance_score, as: 'returnRelevanceScore'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAddonSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_generative_answer_add_on, as: 'disableGenerativeAnswerAddOn'
          property :disable_kpi_personalization_add_on, as: 'disableKpiPersonalizationAddOn'
          property :disable_semantic_add_on, as: 'disableSemanticAddOn'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_id, as: 'queryId'
          property :search_result_persistence_count, as: 'searchResultPersistenceCount'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSetDedicatedCrawlRateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSingleRegionKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSiteVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :site_verification_state, as: 'siteVerificationState'
          property :verify_time, as: 'verifyTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaSitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exact_match, as: 'exactMatch'
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason::Representation
      
          property :generated_uri_pattern, as: 'generatedUriPattern'
          property :indexing_status, as: 'indexingStatus'
          property :name, as: 'name'
          property :provided_uri_pattern, as: 'providedUriPattern'
          property :root_domain_uri, as: 'rootDomainUri'
          property :site_verification_info, as: 'siteVerificationInfo', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSiteVerificationInfo, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaSiteVerificationInfo::Representation
      
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota_failure, as: 'quotaFailure', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure::Representation
      
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTargetSiteFailureReasonQuotaFailure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_required_quota, :numeric_string => true, as: 'totalRequiredQuota'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTrainCustomModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_config, as: 'errorConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1betaImportErrorConfig::Representation
      
          collection :error_samples, as: 'errorSamples', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          hash :metrics, as: 'metrics'
          property :model_name, as: 'modelName'
          property :model_status, as: 'modelStatus'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :engine, as: 'engine'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaTuneEngineResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUpdateTargetSiteMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :time_zone, as: 'timeZone'
          property :user_agent, as: 'userAgent'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUserLicense
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_login_time, as: 'lastLoginTime'
          property :license_assignment_state, as: 'licenseAssignmentState'
          property :license_config, as: 'licenseConfig'
          property :update_time, as: 'updateTime'
          property :user_principal, as: 'userPrincipal'
          property :user_profile, as: 'userProfile'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaUserStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_license_config, as: 'defaultLicenseConfig'
          property :display_name, as: 'displayName'
          property :enable_expired_license_auto_update, as: 'enableExpiredLicenseAutoUpdate'
          property :enable_license_auto_register, as: 'enableLicenseAutoRegister'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDiscoveryengineV1betaWorkspaceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dasher_customer_id, as: 'dasherCustomerId'
          property :super_admin_email_address, as: 'superAdminEmailAddress'
          property :super_admin_service_account, as: 'superAdminServiceAccount'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaAccountAndRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaAgentspaceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_name, as: 'documentName'
          property :document_title, as: 'documentTitle'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaAudioOverview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_overview_id, as: 'audioOverviewId'
          property :generation_options, as: 'generationOptions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAudioOverviewGenerationOptions, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAudioOverviewGenerationOptions::Representation
      
          property :language_code, as: 'languageCode'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaAudioOverviewGenerationOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :episode_focus, as: 'episodeFocus'
          property :language_code, as: 'languageCode'
          collection :source_ids, as: 'sourceIds', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceId, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceId::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaBatchCreateSourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_contents, as: 'userContents', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContent::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaBatchCreateSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaBatchDeleteNotebooksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaBatchDeleteSourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaCmekConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key, as: 'kmsKey'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaCreateAudioOverviewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generation_options, as: 'generationOptions', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAudioOverviewGenerationOptions, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAudioOverviewGenerationOptions::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaCreateAudioOverviewResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_overview, as: 'audioOverview', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAudioOverview, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAudioOverview::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_transcription_error, as: 'audioTranscriptionError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionError::Representation
      
          property :domain_blocked, as: 'domainBlocked', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonDomainBlocked, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonDomainBlocked::Representation
      
          property :google_drive_error, as: 'googleDriveError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveError::Representation
      
          property :ingestion_error, as: 'ingestionError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonIngestionError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonIngestionError::Representation
      
          property :paywall_error, as: 'paywallError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonPaywallError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonPaywallError::Representation
      
          property :source_empty, as: 'sourceEmpty', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceEmpty, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceEmpty::Representation
      
          property :source_limit_exceeded, as: 'sourceLimitExceeded', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceLimitExceeded, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceLimitExceeded::Representation
      
          property :source_too_long, as: 'sourceTooLong', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceTooLong, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceTooLong::Representation
      
          property :source_unreachable, as: 'sourceUnreachable', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceUnreachable, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonSourceUnreachable::Representation
      
          property :unknown, as: 'unknown', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonUnknown, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonUnknown::Representation
      
          property :upload_error, as: 'uploadError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonUploadError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonUploadError::Representation
      
          property :youtube_error, as: 'youtubeError', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonYoutubeError, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonYoutubeError::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_detection_failed, as: 'languageDetectionFailed', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorLanguageDetectionFailed, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorLanguageDetectionFailed::Representation
      
          property :no_audio_detected, as: 'noAudioDetected', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorNoAudioDetected, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorNoAudioDetected::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorLanguageDetectionFailed
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonAudioTranscriptionErrorNoAudioDetected
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonDomainBlocked
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :download_prevented, as: 'downloadPrevented', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveErrorDownloadPrevented, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveErrorDownloadPrevented::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonGoogleDriveErrorDownloadPrevented
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonIngestionError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonPaywallError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceLimitExceeded
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceTooLong
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :word_count, as: 'wordCount'
          property :word_limit, as: 'wordLimit'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonSourceUnreachable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_details, as: 'errorDetails'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonUnknown
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonUploadError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonYoutubeError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :video_deleted, as: 'videoDeleted', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonYoutubeErrorVideoDeleted, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReasonYoutubeErrorVideoDeleted::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaFailureReasonYoutubeErrorVideoDeleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaGoogleDocsSourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaListRecentlyViewedNotebooksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notebooks, as: 'notebooks', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaNotebook
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmek_config, as: 'cmekConfig', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCmekConfig, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCmekConfig::Representation
      
          property :emoji, as: 'emoji'
          property :metadata, as: 'metadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebookMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebookMetadata::Representation
      
          property :name, as: 'name'
          property :notebook_id, as: 'notebookId'
          collection :sources, as: 'sources', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaNotebookMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :is_shareable, as: 'isShareable'
          property :is_shared, as: 'isShared'
          property :last_viewed, as: 'lastViewed'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaShareNotebookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_and_roles, as: 'accountAndRoles', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAccountAndRole, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAccountAndRole::Representation
      
          property :notify_via_email, as: 'notifyViaEmail'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaShareNotebookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudNotebooklmV1alphaSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceMetadata::Representation
      
          property :name, as: 'name'
          property :settings, as: 'settings', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceSettings, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceSettings::Representation
      
          property :source_id, as: 'sourceId', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceId, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceId::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaSourceId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaSourceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agentspace_metadata, as: 'agentspaceMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAgentspaceMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaAgentspaceMetadata::Representation
      
          property :google_docs_metadata, as: 'googleDocsMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaGoogleDocsSourceMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaGoogleDocsSourceMetadata::Representation
      
          property :source_added_timestamp, as: 'sourceAddedTimestamp'
          property :token_count, as: 'tokenCount'
          property :word_count, as: 'wordCount'
          property :youtube_metadata, as: 'youtubeMetadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaYoutubeMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaYoutubeMetadata::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaSourceSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_reason, as: 'failureReason', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReason, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaFailureReason::Representation
      
          property :status, as: 'status'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUploadSourceFileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blob, as: 'blob', class: Google::Apis::DiscoveryengineV1alpha::GdataMedia, decorator: Google::Apis::DiscoveryengineV1alpha::GdataMedia::Representation
      
          property :media_request_info, as: 'mediaRequestInfo', class: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaRequestInfo, decorator: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaRequestInfo::Representation
      
          property :source_id, as: 'sourceId'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUploadSourceFileResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :media_response_info, as: 'mediaResponseInfo', class: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaResponseInfo, decorator: Google::Apis::DiscoveryengineV1alpha::ApiservingMediaResponseInfo::Representation
      
          property :source_id, as: 'sourceId', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceId, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSourceId::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUserContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agentspace_content, as: 'agentspaceContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentAgentspaceContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentAgentspaceContent::Representation
      
          property :google_drive_content, as: 'googleDriveContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentGoogleDriveContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentGoogleDriveContent::Representation
      
          property :text_content, as: 'textContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentTextContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentTextContent::Representation
      
          property :video_content, as: 'videoContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentVideoContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentVideoContent::Representation
      
          property :web_content, as: 'webContent', class: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentWebContent, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaUserContentWebContent::Representation
      
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentAgentspaceContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_name, as: 'documentName'
          property :engine_name, as: 'engineName'
          property :ideaforge_idea_name, as: 'ideaforgeIdeaName'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentGoogleDriveContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_id, as: 'documentId'
          property :mime_type, as: 'mimeType'
          property :source_name, as: 'sourceName'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentTextContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :source_name, as: 'sourceName'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentVideoContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :youtube_url, as: 'youtubeUrl'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaUserContentWebContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_name, as: 'sourceName'
          property :url, as: 'url'
        end
      end
      
      class GoogleCloudNotebooklmV1alphaYoutubeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel_name, as: 'channelName'
          property :video_id, as: 'videoId'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeExpr, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Binding, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy::Representation
      
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
          collection :operations, as: 'operations', class: Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleMonitoringV3Point
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval', class: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TimeInterval, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TimeInterval::Representation
      
          property :value, as: 'value', class: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TypedValue, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3TypedValue::Representation
      
        end
      end
      
      class GoogleMonitoringV3TimeInterval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleMonitoringV3TimeSeries
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :metadata, as: 'metadata', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiMonitoredResourceMetadata, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiMonitoredResourceMetadata::Representation
      
          property :metric, as: 'metric', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiMetric, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiMetric::Representation
      
          property :metric_kind, as: 'metricKind'
          collection :points, as: 'points', class: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3Point, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleMonitoringV3Point::Representation
      
          property :resource, as: 'resource', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiMonitoredResource, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiMonitoredResource::Representation
      
          property :unit, as: 'unit'
          property :value_type, as: 'valueType'
        end
      end
      
      class GoogleMonitoringV3TypedValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :distribution_value, as: 'distributionValue', class: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistribution, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleApiDistribution::Representation
      
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
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
      
      class GoogleTypeDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::DiscoveryengineV1alpha::GoogleTypeTimeZone, decorator: Google::Apis::DiscoveryengineV1alpha::GoogleTypeTimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
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
