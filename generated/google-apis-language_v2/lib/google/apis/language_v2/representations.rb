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
    module LanguageV2
      
      class AnalyzeEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeSentimentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeSentimentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextRequestFeatures
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnnotateTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassificationCategory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassifyTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClassifyTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CpuMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Document
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Entity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityMention
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GpuMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InfraUsage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModerateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModerateTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RamMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sentence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sentiment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TpuMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsArrayStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsBatchPredictResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsBoundingBoxMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsBoundingBoxMetricsEntryConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsCategoryStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsCategoryStatsSingleCategoryStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsClassificationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsColorMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsColorMapIntColor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsColumnSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsColumnSpecCorrelatedColumn
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsColumnSpecForecastingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsCommonStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsConfusionMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsConfusionMatrixRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsCoreMlFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsCorrelationStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsDataErrors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsDataStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsDataType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsDockerFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsEdgeTpuTfLiteFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsEvaluationMetricsSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsExampleSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsExportModelOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsFileSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsFloat64Stats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsFloat64StatsHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageClassificationTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageExportModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageModelArtifactSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageModelServingSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageModelServingSpecModelThroughputEstimation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageObjectDetectionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageObjectDetectionModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageSegmentationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageSegmentationEvaluationMetricsConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsImageSegmentationTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsIntegratedGradientsAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsMetricEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsMetricEntryLabel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsModelArtifactItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsPreprocessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsRegressionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsRegressionMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsReportingMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsResponseExplanationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsResponseExplanationMetadataInputMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsResponseExplanationMetadataOutputMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsResponseExplanationParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsResponseExplanationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsSpeechEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsSpeechEvaluationMetricsSubModelEvaluationMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsSpeechModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsSpeechModelSpecSubModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsSpeechPreprocessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsSpeechPreprocessStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsStringStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsStringStatsUnigramStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsStructStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsStructType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesClassificationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesClassificationMetricsCurveMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesModelColumnInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesModelStructure
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesModelStructureModelParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesModelStructureModelParametersParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesPreprocessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesRegressionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTablesTrainingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTextComponentModel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTextExtractionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTextSentimentEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTextToSpeechTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTextTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTfJsFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTfLiteFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTfSavedModelFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTimestampStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTimestampStatsGranularStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTrackMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTrackMetricsEntryConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTrainingObjectivePoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTranslationEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTranslationPreprocessResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTranslationTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsTuningTrial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoActionMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoActionMetricsEntryConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoActionRecognitionEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoActionRecognitionTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoBatchPredictOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoClassificationTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoExportModelSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoModelArtifactSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoObjectTrackingEvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoObjectTrackingTrainResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVideoTrainingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVisionErrorAnalysisConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVisionTrainingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsVisualization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsXpsOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class XpsXraiAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzeEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
          property :encoding_type, as: 'encodingType'
        end
      end
      
      class AnalyzeEntitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::LanguageV2::Entity, decorator: Google::Apis::LanguageV2::Entity::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
        end
      end
      
      class AnalyzeSentimentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
          property :encoding_type, as: 'encodingType'
        end
      end
      
      class AnalyzeSentimentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_sentiment, as: 'documentSentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
          collection :sentences, as: 'sentences', class: Google::Apis::LanguageV2::Sentence, decorator: Google::Apis::LanguageV2::Sentence::Representation
      
        end
      end
      
      class AnnotateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
          property :encoding_type, as: 'encodingType'
          property :features, as: 'features', class: Google::Apis::LanguageV2::AnnotateTextRequestFeatures, decorator: Google::Apis::LanguageV2::AnnotateTextRequestFeatures::Representation
      
        end
      end
      
      class AnnotateTextRequestFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classify_text, as: 'classifyText'
          property :extract_document_sentiment, as: 'extractDocumentSentiment'
          property :extract_entities, as: 'extractEntities'
          property :moderate_text, as: 'moderateText'
        end
      end
      
      class AnnotateTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
          property :document_sentiment, as: 'documentSentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          collection :entities, as: 'entities', class: Google::Apis::LanguageV2::Entity, decorator: Google::Apis::LanguageV2::Entity::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
          collection :moderation_categories, as: 'moderationCategories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
          collection :sentences, as: 'sentences', class: Google::Apis::LanguageV2::Sentence, decorator: Google::Apis::LanguageV2::Sentence::Representation
      
        end
      end
      
      class ClassificationCategory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :name, as: 'name'
        end
      end
      
      class ClassifyTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
        end
      end
      
      class ClassifyTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class CpuMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_number, :numeric_string => true, as: 'coreNumber'
          property :core_sec, :numeric_string => true, as: 'coreSec'
          property :cpu_type, as: 'cpuType'
          property :machine_spec, as: 'machineSpec'
          hash :tracking_labels, as: 'trackingLabels'
        end
      end
      
      class DiskMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_type, as: 'diskType'
          property :gib_sec, :numeric_string => true, as: 'gibSec'
        end
      end
      
      class Document
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :gcs_content_uri, as: 'gcsContentUri'
          property :language_code, as: 'languageCode'
          property :type, as: 'type'
        end
      end
      
      class Entity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mentions, as: 'mentions', class: Google::Apis::LanguageV2::EntityMention, decorator: Google::Apis::LanguageV2::EntityMention::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          property :sentiment, as: 'sentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :type, as: 'type'
        end
      end
      
      class EntityMention
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :probability, as: 'probability'
          property :sentiment, as: 'sentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :text, as: 'text', class: Google::Apis::LanguageV2::TextSpan, decorator: Google::Apis::LanguageV2::TextSpan::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GpuMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gpu_sec, :numeric_string => true, as: 'gpuSec'
          property :gpu_type, as: 'gpuType'
          property :machine_spec, as: 'machineSpec'
          hash :tracking_labels, as: 'trackingLabels'
        end
      end
      
      class InfraUsage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :cpu_metrics, as: 'cpuMetrics', class: Google::Apis::LanguageV2::CpuMetric, decorator: Google::Apis::LanguageV2::CpuMetric::Representation
      
          collection :disk_metrics, as: 'diskMetrics', class: Google::Apis::LanguageV2::DiskMetric, decorator: Google::Apis::LanguageV2::DiskMetric::Representation
      
          collection :gpu_metrics, as: 'gpuMetrics', class: Google::Apis::LanguageV2::GpuMetric, decorator: Google::Apis::LanguageV2::GpuMetric::Representation
      
          collection :ram_metrics, as: 'ramMetrics', class: Google::Apis::LanguageV2::RamMetric, decorator: Google::Apis::LanguageV2::RamMetric::Representation
      
          collection :tpu_metrics, as: 'tpuMetrics', class: Google::Apis::LanguageV2::TpuMetric, decorator: Google::Apis::LanguageV2::TpuMetric::Representation
      
        end
      end
      
      class ModerateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document, as: 'document', class: Google::Apis::LanguageV2::Document, decorator: Google::Apis::LanguageV2::Document::Representation
      
        end
      end
      
      class ModerateTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :language_supported, as: 'languageSupported'
          collection :moderation_categories, as: 'moderationCategories', class: Google::Apis::LanguageV2::ClassificationCategory, decorator: Google::Apis::LanguageV2::ClassificationCategory::Representation
      
        end
      end
      
      class RamMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gib_sec, :numeric_string => true, as: 'gibSec'
          property :machine_spec, as: 'machineSpec'
          property :memories, as: 'memories'
          property :ram_type, as: 'ramType'
          hash :tracking_labels, as: 'trackingLabels'
        end
      end
      
      class Sentence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sentiment, as: 'sentiment', class: Google::Apis::LanguageV2::Sentiment, decorator: Google::Apis::LanguageV2::Sentiment::Representation
      
          property :text, as: 'text', class: Google::Apis::LanguageV2::TextSpan, decorator: Google::Apis::LanguageV2::TextSpan::Representation
      
        end
      end
      
      class Sentiment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :magnitude, as: 'magnitude'
          property :score, as: 'score'
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
      
      class TextSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :begin_offset, as: 'beginOffset'
          property :content, as: 'content'
        end
      end
      
      class TpuMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tpu_sec, :numeric_string => true, as: 'tpuSec'
          property :tpu_type, as: 'tpuType'
        end
      end
      
      class XpsArrayStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_stats, as: 'commonStats', class: Google::Apis::LanguageV2::XpsCommonStats, decorator: Google::Apis::LanguageV2::XpsCommonStats::Representation
      
          property :member_stats, as: 'memberStats', class: Google::Apis::LanguageV2::XpsDataStats, decorator: Google::Apis::LanguageV2::XpsDataStats::Representation
      
        end
      end
      
      class XpsBatchPredictResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :example_set, as: 'exampleSet', class: Google::Apis::LanguageV2::XpsExampleSet, decorator: Google::Apis::LanguageV2::XpsExampleSet::Representation
      
        end
      end
      
      class XpsBoundingBoxMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsBoundingBoxMetricsEntryConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsBoundingBoxMetricsEntryConfidenceMetricsEntry::Representation
      
          property :iou_threshold, as: 'iouThreshold'
          property :mean_average_precision, as: 'meanAveragePrecision'
        end
      end
      
      class XpsBoundingBoxMetricsEntryConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class XpsCategoryStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_stats, as: 'commonStats', class: Google::Apis::LanguageV2::XpsCommonStats, decorator: Google::Apis::LanguageV2::XpsCommonStats::Representation
      
          collection :top_category_stats, as: 'topCategoryStats', class: Google::Apis::LanguageV2::XpsCategoryStatsSingleCategoryStats, decorator: Google::Apis::LanguageV2::XpsCategoryStatsSingleCategoryStats::Representation
      
        end
      end
      
      class XpsCategoryStatsSingleCategoryStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :value, as: 'value'
        end
      end
      
      class XpsClassificationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :au_prc, as: 'auPrc'
          property :au_roc, as: 'auRoc'
          property :base_au_prc, as: 'baseAuPrc'
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry::Representation
      
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::LanguageV2::XpsConfusionMatrix, decorator: Google::Apis::LanguageV2::XpsConfusionMatrix::Representation
      
          property :evaluated_examples_count, as: 'evaluatedExamplesCount'
          property :log_loss, as: 'logLoss'
        end
      end
      
      class XpsColorMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id_token, as: 'annotationSpecIdToken'
          property :color, as: 'color', class: Google::Apis::LanguageV2::Color, decorator: Google::Apis::LanguageV2::Color::Representation
      
          property :display_name, as: 'displayName'
          property :int_color, as: 'intColor', class: Google::Apis::LanguageV2::XpsColorMapIntColor, decorator: Google::Apis::LanguageV2::XpsColorMapIntColor::Representation
      
        end
      end
      
      class XpsColorMapIntColor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class XpsColumnSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_id, as: 'columnId'
          property :data_stats, as: 'dataStats', class: Google::Apis::LanguageV2::XpsDataStats, decorator: Google::Apis::LanguageV2::XpsDataStats::Representation
      
          property :data_type, as: 'dataType', class: Google::Apis::LanguageV2::XpsDataType, decorator: Google::Apis::LanguageV2::XpsDataType::Representation
      
          property :display_name, as: 'displayName'
          property :forecasting_metadata, as: 'forecastingMetadata', class: Google::Apis::LanguageV2::XpsColumnSpecForecastingMetadata, decorator: Google::Apis::LanguageV2::XpsColumnSpecForecastingMetadata::Representation
      
          collection :top_correlated_columns, as: 'topCorrelatedColumns', class: Google::Apis::LanguageV2::XpsColumnSpecCorrelatedColumn, decorator: Google::Apis::LanguageV2::XpsColumnSpecCorrelatedColumn::Representation
      
        end
      end
      
      class XpsColumnSpecCorrelatedColumn
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_id, as: 'columnId'
          property :correlation_stats, as: 'correlationStats', class: Google::Apis::LanguageV2::XpsCorrelationStats, decorator: Google::Apis::LanguageV2::XpsCorrelationStats::Representation
      
        end
      end
      
      class XpsColumnSpecForecastingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_type, as: 'columnType'
        end
      end
      
      class XpsCommonStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distinct_value_count, :numeric_string => true, as: 'distinctValueCount'
          property :null_value_count, :numeric_string => true, as: 'nullValueCount'
          property :valid_value_count, :numeric_string => true, as: 'validValueCount'
        end
      end
      
      class XpsConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :f1_score_at1, as: 'f1ScoreAt1'
          property :false_negative_count, :numeric_string => true, as: 'falseNegativeCount'
          property :false_positive_count, :numeric_string => true, as: 'falsePositiveCount'
          property :false_positive_rate, as: 'falsePositiveRate'
          property :false_positive_rate_at1, as: 'falsePositiveRateAt1'
          property :position_threshold, as: 'positionThreshold'
          property :precision, as: 'precision'
          property :precision_at1, as: 'precisionAt1'
          property :recall, as: 'recall'
          property :recall_at1, as: 'recallAt1'
          property :true_negative_count, :numeric_string => true, as: 'trueNegativeCount'
          property :true_positive_count, :numeric_string => true, as: 'truePositiveCount'
        end
      end
      
      class XpsConfusionMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_spec_id_token, as: 'annotationSpecIdToken'
          collection :category, as: 'category'
          collection :row, as: 'row', class: Google::Apis::LanguageV2::XpsConfusionMatrixRow, decorator: Google::Apis::LanguageV2::XpsConfusionMatrixRow::Representation
      
          collection :sentiment_label, as: 'sentimentLabel'
        end
      end
      
      class XpsConfusionMatrixRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :count, as: 'count'
          collection :example_count, as: 'exampleCount'
        end
      end
      
      class XpsCoreMlFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class XpsCorrelationStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cramers_v, as: 'cramersV'
        end
      end
      
      class XpsDataErrors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :error_type, as: 'errorType'
        end
      end
      
      class XpsDataStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :array_stats, as: 'arrayStats', class: Google::Apis::LanguageV2::XpsArrayStats, decorator: Google::Apis::LanguageV2::XpsArrayStats::Representation
      
          property :category_stats, as: 'categoryStats', class: Google::Apis::LanguageV2::XpsCategoryStats, decorator: Google::Apis::LanguageV2::XpsCategoryStats::Representation
      
          property :distinct_value_count, :numeric_string => true, as: 'distinctValueCount'
          property :float64_stats, as: 'float64Stats', class: Google::Apis::LanguageV2::XpsFloat64Stats, decorator: Google::Apis::LanguageV2::XpsFloat64Stats::Representation
      
          property :null_value_count, :numeric_string => true, as: 'nullValueCount'
          property :string_stats, as: 'stringStats', class: Google::Apis::LanguageV2::XpsStringStats, decorator: Google::Apis::LanguageV2::XpsStringStats::Representation
      
          property :struct_stats, as: 'structStats', class: Google::Apis::LanguageV2::XpsStructStats, decorator: Google::Apis::LanguageV2::XpsStructStats::Representation
      
          property :timestamp_stats, as: 'timestampStats', class: Google::Apis::LanguageV2::XpsTimestampStats, decorator: Google::Apis::LanguageV2::XpsTimestampStats::Representation
      
          property :valid_value_count, :numeric_string => true, as: 'validValueCount'
        end
      end
      
      class XpsDataType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :compatible_data_types, as: 'compatibleDataTypes', class: Google::Apis::LanguageV2::XpsDataType, decorator: Google::Apis::LanguageV2::XpsDataType::Representation
      
          property :list_element_type, as: 'listElementType', class: Google::Apis::LanguageV2::XpsDataType, decorator: Google::Apis::LanguageV2::XpsDataType::Representation
      
          property :nullable, as: 'nullable'
          property :struct_type, as: 'structType', class: Google::Apis::LanguageV2::XpsStructType, decorator: Google::Apis::LanguageV2::XpsStructType::Representation
      
          property :time_format, as: 'timeFormat'
          property :type_code, as: 'typeCode'
        end
      end
      
      class XpsDockerFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_architecture, as: 'cpuArchitecture'
          property :gpu_architecture, as: 'gpuArchitecture'
        end
      end
      
      class XpsEdgeTpuTfLiteFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class XpsEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_id_token, as: 'annotationSpecIdToken'
          property :category, as: 'category'
          property :evaluated_example_count, as: 'evaluatedExampleCount'
          property :image_classification_eval_metrics, as: 'imageClassificationEvalMetrics', class: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics::Representation
      
          property :image_object_detection_eval_metrics, as: 'imageObjectDetectionEvalMetrics', class: Google::Apis::LanguageV2::XpsImageObjectDetectionEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsImageObjectDetectionEvaluationMetrics::Representation
      
          property :image_segmentation_eval_metrics, as: 'imageSegmentationEvalMetrics', class: Google::Apis::LanguageV2::XpsImageSegmentationEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsImageSegmentationEvaluationMetrics::Representation
      
          property :label, as: 'label'
          property :regression_eval_metrics, as: 'regressionEvalMetrics', class: Google::Apis::LanguageV2::XpsRegressionEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsRegressionEvaluationMetrics::Representation
      
          property :tables_classification_eval_metrics, as: 'tablesClassificationEvalMetrics', class: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics::Representation
      
          property :tables_eval_metrics, as: 'tablesEvalMetrics', class: Google::Apis::LanguageV2::XpsTablesEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsTablesEvaluationMetrics::Representation
      
          property :text_classification_eval_metrics, as: 'textClassificationEvalMetrics', class: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics::Representation
      
          property :text_extraction_eval_metrics, as: 'textExtractionEvalMetrics', class: Google::Apis::LanguageV2::XpsTextExtractionEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsTextExtractionEvaluationMetrics::Representation
      
          property :text_sentiment_eval_metrics, as: 'textSentimentEvalMetrics', class: Google::Apis::LanguageV2::XpsTextSentimentEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsTextSentimentEvaluationMetrics::Representation
      
          property :translation_eval_metrics, as: 'translationEvalMetrics', class: Google::Apis::LanguageV2::XpsTranslationEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsTranslationEvaluationMetrics::Representation
      
          property :video_action_recognition_eval_metrics, as: 'videoActionRecognitionEvalMetrics', class: Google::Apis::LanguageV2::XpsVideoActionRecognitionEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsVideoActionRecognitionEvaluationMetrics::Representation
      
          property :video_classification_eval_metrics, as: 'videoClassificationEvalMetrics', class: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsClassificationEvaluationMetrics::Representation
      
          property :video_object_tracking_eval_metrics, as: 'videoObjectTrackingEvalMetrics', class: Google::Apis::LanguageV2::XpsVideoObjectTrackingEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsVideoObjectTrackingEvaluationMetrics::Representation
      
        end
      end
      
      class XpsEvaluationMetricsSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluation_metrics, as: 'evaluationMetrics', class: Google::Apis::LanguageV2::XpsEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsEvaluationMetrics::Representation
      
          property :file_spec, as: 'fileSpec', class: Google::Apis::LanguageV2::XpsFileSpec, decorator: Google::Apis::LanguageV2::XpsFileSpec::Representation
      
          property :num_evaluation_metrics, :numeric_string => true, as: 'numEvaluationMetrics'
        end
      end
      
      class XpsExampleSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_spec, as: 'fileSpec', class: Google::Apis::LanguageV2::XpsFileSpec, decorator: Google::Apis::LanguageV2::XpsFileSpec::Representation
      
          property :fingerprint, :numeric_string => true, as: 'fingerprint'
          property :num_examples, :numeric_string => true, as: 'numExamples'
          property :num_input_sources, :numeric_string => true, as: 'numInputSources'
        end
      end
      
      class XpsExportModelOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_ml_format, as: 'coreMlFormat', class: Google::Apis::LanguageV2::XpsCoreMlFormat, decorator: Google::Apis::LanguageV2::XpsCoreMlFormat::Representation
      
          property :docker_format, as: 'dockerFormat', class: Google::Apis::LanguageV2::XpsDockerFormat, decorator: Google::Apis::LanguageV2::XpsDockerFormat::Representation
      
          property :edge_tpu_tf_lite_format, as: 'edgeTpuTfLiteFormat', class: Google::Apis::LanguageV2::XpsEdgeTpuTfLiteFormat, decorator: Google::Apis::LanguageV2::XpsEdgeTpuTfLiteFormat::Representation
      
          property :export_firebase_auxiliary_info, as: 'exportFirebaseAuxiliaryInfo'
          property :output_gcr_uri, as: 'outputGcrUri'
          property :output_gcs_uri, as: 'outputGcsUri'
          property :tf_js_format, as: 'tfJsFormat', class: Google::Apis::LanguageV2::XpsTfJsFormat, decorator: Google::Apis::LanguageV2::XpsTfJsFormat::Representation
      
          property :tf_lite_format, as: 'tfLiteFormat', class: Google::Apis::LanguageV2::XpsTfLiteFormat, decorator: Google::Apis::LanguageV2::XpsTfLiteFormat::Representation
      
          property :tf_saved_model_format, as: 'tfSavedModelFormat', class: Google::Apis::LanguageV2::XpsTfSavedModelFormat, decorator: Google::Apis::LanguageV2::XpsTfSavedModelFormat::Representation
      
        end
      end
      
      class XpsFileSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :directory_path, as: 'directoryPath'
          property :file_format, as: 'fileFormat'
          property :file_spec, as: 'fileSpec'
          property :single_file_path, as: 'singleFilePath'
        end
      end
      
      class XpsFloat64Stats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_stats, as: 'commonStats', class: Google::Apis::LanguageV2::XpsCommonStats, decorator: Google::Apis::LanguageV2::XpsCommonStats::Representation
      
          collection :histogram_buckets, as: 'histogramBuckets', class: Google::Apis::LanguageV2::XpsFloat64StatsHistogramBucket, decorator: Google::Apis::LanguageV2::XpsFloat64StatsHistogramBucket::Representation
      
          property :mean, as: 'mean'
          collection :quantiles, as: 'quantiles'
          property :standard_deviation, as: 'standardDeviation'
        end
      end
      
      class XpsFloat64StatsHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :max, as: 'max'
          property :min, as: 'min'
        end
      end
      
      class XpsImageClassificationTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_count, :numeric_string => true, as: 'classCount'
          property :export_model_spec, as: 'exportModelSpec', class: Google::Apis::LanguageV2::XpsImageExportModelSpec, decorator: Google::Apis::LanguageV2::XpsImageExportModelSpec::Representation
      
          property :model_artifact_spec, as: 'modelArtifactSpec', class: Google::Apis::LanguageV2::XpsImageModelArtifactSpec, decorator: Google::Apis::LanguageV2::XpsImageModelArtifactSpec::Representation
      
          property :model_serving_spec, as: 'modelServingSpec', class: Google::Apis::LanguageV2::XpsImageModelServingSpec, decorator: Google::Apis::LanguageV2::XpsImageModelServingSpec::Representation
      
          property :stop_reason, as: 'stopReason'
          property :train_cost_in_node_time, as: 'trainCostInNodeTime'
          property :train_cost_node_seconds, :numeric_string => true, as: 'trainCostNodeSeconds'
        end
      end
      
      class XpsImageExportModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :export_model_output_config, as: 'exportModelOutputConfig', class: Google::Apis::LanguageV2::XpsExportModelOutputConfig, decorator: Google::Apis::LanguageV2::XpsExportModelOutputConfig::Representation
      
        end
      end
      
      class XpsImageModelArtifactSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checkpoint_artifact, as: 'checkpointArtifact', class: Google::Apis::LanguageV2::XpsModelArtifactItem, decorator: Google::Apis::LanguageV2::XpsModelArtifactItem::Representation
      
          collection :export_artifact, as: 'exportArtifact', class: Google::Apis::LanguageV2::XpsModelArtifactItem, decorator: Google::Apis::LanguageV2::XpsModelArtifactItem::Representation
      
          property :label_gcs_uri, as: 'labelGcsUri'
          property :serving_artifact, as: 'servingArtifact', class: Google::Apis::LanguageV2::XpsModelArtifactItem, decorator: Google::Apis::LanguageV2::XpsModelArtifactItem::Representation
      
          property :tf_js_binary_gcs_prefix, as: 'tfJsBinaryGcsPrefix'
          property :tf_lite_metadata_gcs_uri, as: 'tfLiteMetadataGcsUri'
        end
      end
      
      class XpsImageModelServingSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :model_throughput_estimation, as: 'modelThroughputEstimation', class: Google::Apis::LanguageV2::XpsImageModelServingSpecModelThroughputEstimation, decorator: Google::Apis::LanguageV2::XpsImageModelServingSpecModelThroughputEstimation::Representation
      
          property :node_qps, as: 'nodeQps'
          property :tf_runtime_version, as: 'tfRuntimeVersion'
        end
      end
      
      class XpsImageModelServingSpecModelThroughputEstimation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_engine_accelerator_type, as: 'computeEngineAcceleratorType'
          property :latency_in_milliseconds, as: 'latencyInMilliseconds'
          property :node_qps, as: 'nodeQps'
          property :servomatic_partition_type, as: 'servomaticPartitionType'
        end
      end
      
      class XpsImageObjectDetectionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_mean_average_precision, as: 'boundingBoxMeanAveragePrecision'
          collection :bounding_box_metrics_entries, as: 'boundingBoxMetricsEntries', class: Google::Apis::LanguageV2::XpsBoundingBoxMetricsEntry, decorator: Google::Apis::LanguageV2::XpsBoundingBoxMetricsEntry::Representation
      
          property :evaluated_bounding_box_count, as: 'evaluatedBoundingBoxCount'
        end
      end
      
      class XpsImageObjectDetectionModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :class_count, :numeric_string => true, as: 'classCount'
          property :export_model_spec, as: 'exportModelSpec', class: Google::Apis::LanguageV2::XpsImageExportModelSpec, decorator: Google::Apis::LanguageV2::XpsImageExportModelSpec::Representation
      
          property :max_bounding_box_count, :numeric_string => true, as: 'maxBoundingBoxCount'
          property :model_artifact_spec, as: 'modelArtifactSpec', class: Google::Apis::LanguageV2::XpsImageModelArtifactSpec, decorator: Google::Apis::LanguageV2::XpsImageModelArtifactSpec::Representation
      
          property :model_serving_spec, as: 'modelServingSpec', class: Google::Apis::LanguageV2::XpsImageModelServingSpec, decorator: Google::Apis::LanguageV2::XpsImageModelServingSpec::Representation
      
          property :stop_reason, as: 'stopReason'
          property :train_cost_node_seconds, :numeric_string => true, as: 'trainCostNodeSeconds'
        end
      end
      
      class XpsImageSegmentationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsImageSegmentationEvaluationMetricsConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsImageSegmentationEvaluationMetricsConfidenceMetricsEntry::Representation
      
        end
      end
      
      class XpsImageSegmentationEvaluationMetricsConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::LanguageV2::XpsConfusionMatrix, decorator: Google::Apis::LanguageV2::XpsConfusionMatrix::Representation
      
          property :dice_score_coefficient, as: 'diceScoreCoefficient'
          property :iou_score, as: 'iouScore'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class XpsImageSegmentationTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :color_maps, as: 'colorMaps', class: Google::Apis::LanguageV2::XpsColorMap, decorator: Google::Apis::LanguageV2::XpsColorMap::Representation
      
          property :export_model_spec, as: 'exportModelSpec', class: Google::Apis::LanguageV2::XpsImageExportModelSpec, decorator: Google::Apis::LanguageV2::XpsImageExportModelSpec::Representation
      
          property :model_artifact_spec, as: 'modelArtifactSpec', class: Google::Apis::LanguageV2::XpsImageModelArtifactSpec, decorator: Google::Apis::LanguageV2::XpsImageModelArtifactSpec::Representation
      
          property :model_serving_spec, as: 'modelServingSpec', class: Google::Apis::LanguageV2::XpsImageModelServingSpec, decorator: Google::Apis::LanguageV2::XpsImageModelServingSpec::Representation
      
          property :stop_reason, as: 'stopReason'
          property :train_cost_node_seconds, :numeric_string => true, as: 'trainCostNodeSeconds'
        end
      end
      
      class XpsIntegratedGradientsAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :step_count, as: 'stepCount'
        end
      end
      
      class XpsMetricEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :argentum_metric_id, as: 'argentumMetricId'
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :metric_name, as: 'metricName'
          collection :system_labels, as: 'systemLabels', class: Google::Apis::LanguageV2::XpsMetricEntryLabel, decorator: Google::Apis::LanguageV2::XpsMetricEntryLabel::Representation
      
        end
      end
      
      class XpsMetricEntryLabel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_name, as: 'labelName'
          property :label_value, as: 'labelValue'
        end
      end
      
      class XpsModelArtifactItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_format, as: 'artifactFormat'
          property :gcs_uri, as: 'gcsUri'
        end
      end
      
      class XpsPreprocessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_example_set, as: 'outputExampleSet', class: Google::Apis::LanguageV2::XpsExampleSet, decorator: Google::Apis::LanguageV2::XpsExampleSet::Representation
      
          property :speech_preprocess_resp, as: 'speechPreprocessResp', class: Google::Apis::LanguageV2::XpsSpeechPreprocessResponse, decorator: Google::Apis::LanguageV2::XpsSpeechPreprocessResponse::Representation
      
          property :tables_preprocess_response, as: 'tablesPreprocessResponse', class: Google::Apis::LanguageV2::XpsTablesPreprocessResponse, decorator: Google::Apis::LanguageV2::XpsTablesPreprocessResponse::Representation
      
          property :translation_preprocess_resp, as: 'translationPreprocessResp', class: Google::Apis::LanguageV2::XpsTranslationPreprocessResponse, decorator: Google::Apis::LanguageV2::XpsTranslationPreprocessResponse::Representation
      
        end
      end
      
      class XpsRegressionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_absolute_percentage_error, as: 'meanAbsolutePercentageError'
          property :r_squared, as: 'rSquared'
          collection :regression_metrics_entries, as: 'regressionMetricsEntries', class: Google::Apis::LanguageV2::XpsRegressionMetricsEntry, decorator: Google::Apis::LanguageV2::XpsRegressionMetricsEntry::Representation
      
          property :root_mean_squared_error, as: 'rootMeanSquaredError'
          property :root_mean_squared_log_error, as: 'rootMeanSquaredLogError'
        end
      end
      
      class XpsRegressionMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :predicted_value, as: 'predictedValue'
          property :true_value, as: 'trueValue'
        end
      end
      
      class XpsReportingMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :effective_training_duration, as: 'effectiveTrainingDuration'
          collection :metric_entries, as: 'metricEntries', class: Google::Apis::LanguageV2::XpsMetricEntry, decorator: Google::Apis::LanguageV2::XpsMetricEntry::Representation
      
        end
      end
      
      class XpsResponseExplanationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :inputs, as: 'inputs', class: Google::Apis::LanguageV2::XpsResponseExplanationMetadataInputMetadata, decorator: Google::Apis::LanguageV2::XpsResponseExplanationMetadataInputMetadata::Representation
      
          hash :outputs, as: 'outputs', class: Google::Apis::LanguageV2::XpsResponseExplanationMetadataOutputMetadata, decorator: Google::Apis::LanguageV2::XpsResponseExplanationMetadataOutputMetadata::Representation
      
        end
      end
      
      class XpsResponseExplanationMetadataInputMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_tensor_name, as: 'inputTensorName'
          property :modality, as: 'modality'
          property :visualization_config, as: 'visualizationConfig', class: Google::Apis::LanguageV2::XpsVisualization, decorator: Google::Apis::LanguageV2::XpsVisualization::Representation
      
        end
      end
      
      class XpsResponseExplanationMetadataOutputMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_tensor_name, as: 'outputTensorName'
        end
      end
      
      class XpsResponseExplanationParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :integrated_gradients_attribution, as: 'integratedGradientsAttribution', class: Google::Apis::LanguageV2::XpsIntegratedGradientsAttribution, decorator: Google::Apis::LanguageV2::XpsIntegratedGradientsAttribution::Representation
      
          property :xrai_attribution, as: 'xraiAttribution', class: Google::Apis::LanguageV2::XpsXraiAttribution, decorator: Google::Apis::LanguageV2::XpsXraiAttribution::Representation
      
        end
      end
      
      class XpsResponseExplanationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation_type, as: 'explanationType'
          property :metadata, as: 'metadata', class: Google::Apis::LanguageV2::XpsResponseExplanationMetadata, decorator: Google::Apis::LanguageV2::XpsResponseExplanationMetadata::Representation
      
          property :parameters, as: 'parameters', class: Google::Apis::LanguageV2::XpsResponseExplanationParameters, decorator: Google::Apis::LanguageV2::XpsResponseExplanationParameters::Representation
      
        end
      end
      
      class XpsRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :column_ids, as: 'columnIds'
          collection :values, as: 'values'
        end
      end
      
      class XpsSpeechEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sub_model_evaluation_metrics, as: 'subModelEvaluationMetrics', class: Google::Apis::LanguageV2::XpsSpeechEvaluationMetricsSubModelEvaluationMetric, decorator: Google::Apis::LanguageV2::XpsSpeechEvaluationMetricsSubModelEvaluationMetric::Representation
      
        end
      end
      
      class XpsSpeechEvaluationMetricsSubModelEvaluationMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :biasing_model_type, as: 'biasingModelType'
          property :is_enhanced_model, as: 'isEnhancedModel'
          property :num_deletions, as: 'numDeletions'
          property :num_insertions, as: 'numInsertions'
          property :num_substitutions, as: 'numSubstitutions'
          property :num_utterances, as: 'numUtterances'
          property :num_words, as: 'numWords'
          property :sentence_accuracy, as: 'sentenceAccuracy'
          property :wer, as: 'wer'
        end
      end
      
      class XpsSpeechModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, :numeric_string => true, as: 'datasetId'
          property :language, as: 'language'
          collection :sub_model_specs, as: 'subModelSpecs', class: Google::Apis::LanguageV2::XpsSpeechModelSpecSubModelSpec, decorator: Google::Apis::LanguageV2::XpsSpeechModelSpecSubModelSpec::Representation
      
        end
      end
      
      class XpsSpeechModelSpecSubModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :biasing_model_type, as: 'biasingModelType'
          property :client_id, as: 'clientId'
          property :context_id, as: 'contextId'
          property :is_enhanced_model, as: 'isEnhancedModel'
        end
      end
      
      class XpsSpeechPreprocessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cns_test_data_path, as: 'cnsTestDataPath'
          property :cns_train_data_path, as: 'cnsTrainDataPath'
          property :prebuilt_model_evaluation_metrics, as: 'prebuiltModelEvaluationMetrics', class: Google::Apis::LanguageV2::XpsSpeechEvaluationMetrics, decorator: Google::Apis::LanguageV2::XpsSpeechEvaluationMetrics::Representation
      
          property :speech_preprocess_stats, as: 'speechPreprocessStats', class: Google::Apis::LanguageV2::XpsSpeechPreprocessStats, decorator: Google::Apis::LanguageV2::XpsSpeechPreprocessStats::Representation
      
        end
      end
      
      class XpsSpeechPreprocessStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_errors, as: 'dataErrors', class: Google::Apis::LanguageV2::XpsDataErrors, decorator: Google::Apis::LanguageV2::XpsDataErrors::Representation
      
          property :num_human_labeled_examples, as: 'numHumanLabeledExamples'
          property :num_logs_examples, as: 'numLogsExamples'
          property :num_machine_transcribed_examples, as: 'numMachineTranscribedExamples'
          property :test_examples_count, as: 'testExamplesCount'
          property :test_sentences_count, as: 'testSentencesCount'
          property :test_words_count, as: 'testWordsCount'
          property :train_examples_count, as: 'trainExamplesCount'
          property :train_sentences_count, as: 'trainSentencesCount'
          property :train_words_count, as: 'trainWordsCount'
        end
      end
      
      class XpsStringStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_stats, as: 'commonStats', class: Google::Apis::LanguageV2::XpsCommonStats, decorator: Google::Apis::LanguageV2::XpsCommonStats::Representation
      
          collection :top_unigram_stats, as: 'topUnigramStats', class: Google::Apis::LanguageV2::XpsStringStatsUnigramStats, decorator: Google::Apis::LanguageV2::XpsStringStatsUnigramStats::Representation
      
        end
      end
      
      class XpsStringStatsUnigramStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :value, as: 'value'
        end
      end
      
      class XpsStructStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_stats, as: 'commonStats', class: Google::Apis::LanguageV2::XpsCommonStats, decorator: Google::Apis::LanguageV2::XpsCommonStats::Representation
      
          hash :field_stats, as: 'fieldStats', class: Google::Apis::LanguageV2::XpsDataStats, decorator: Google::Apis::LanguageV2::XpsDataStats::Representation
      
        end
      end
      
      class XpsStructType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :fields, as: 'fields', class: Google::Apis::LanguageV2::XpsDataType, decorator: Google::Apis::LanguageV2::XpsDataType::Representation
      
        end
      end
      
      class XpsTableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :column_specs, as: 'columnSpecs', class: Google::Apis::LanguageV2::XpsColumnSpec, decorator: Google::Apis::LanguageV2::XpsColumnSpec::Representation
      
          property :imported_data_size_in_bytes, :numeric_string => true, as: 'importedDataSizeInBytes'
          property :row_count, :numeric_string => true, as: 'rowCount'
          property :time_column_id, as: 'timeColumnId'
          property :valid_row_count, :numeric_string => true, as: 'validRowCount'
        end
      end
      
      class XpsTablesClassificationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :curve_metrics, as: 'curveMetrics', class: Google::Apis::LanguageV2::XpsTablesClassificationMetricsCurveMetrics, decorator: Google::Apis::LanguageV2::XpsTablesClassificationMetricsCurveMetrics::Representation
      
        end
      end
      
      class XpsTablesClassificationMetricsCurveMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auc_pr, as: 'aucPr'
          property :auc_roc, as: 'aucRoc'
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsTablesConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsTablesConfidenceMetricsEntry::Representation
      
          property :log_loss, as: 'logLoss'
          property :position_threshold, as: 'positionThreshold'
          property :value, as: 'value'
        end
      end
      
      class XpsTablesConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :false_negative_count, :numeric_string => true, as: 'falseNegativeCount'
          property :false_positive_count, :numeric_string => true, as: 'falsePositiveCount'
          property :false_positive_rate, as: 'falsePositiveRate'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
          property :true_negative_count, :numeric_string => true, as: 'trueNegativeCount'
          property :true_positive_count, :numeric_string => true, as: 'truePositiveCount'
          property :true_positive_rate, as: 'truePositiveRate'
        end
      end
      
      class XpsTablesDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ml_use_column_id, as: 'mlUseColumnId'
          property :primary_table_spec, as: 'primaryTableSpec', class: Google::Apis::LanguageV2::XpsTableSpec, decorator: Google::Apis::LanguageV2::XpsTableSpec::Representation
      
          hash :target_column_correlations, as: 'targetColumnCorrelations', class: Google::Apis::LanguageV2::XpsCorrelationStats, decorator: Google::Apis::LanguageV2::XpsCorrelationStats::Representation
      
          property :target_column_id, as: 'targetColumnId'
          property :weight_column_id, as: 'weightColumnId'
        end
      end
      
      class XpsTablesEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification_metrics, as: 'classificationMetrics', class: Google::Apis::LanguageV2::XpsTablesClassificationMetrics, decorator: Google::Apis::LanguageV2::XpsTablesClassificationMetrics::Representation
      
          property :regression_metrics, as: 'regressionMetrics', class: Google::Apis::LanguageV2::XpsTablesRegressionMetrics, decorator: Google::Apis::LanguageV2::XpsTablesRegressionMetrics::Representation
      
        end
      end
      
      class XpsTablesModelColumnInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_id, as: 'columnId'
          property :feature_importance, as: 'featureImportance'
        end
      end
      
      class XpsTablesModelStructure
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :model_parameters, as: 'modelParameters', class: Google::Apis::LanguageV2::XpsTablesModelStructureModelParameters, decorator: Google::Apis::LanguageV2::XpsTablesModelStructureModelParameters::Representation
      
        end
      end
      
      class XpsTablesModelStructureModelParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hyperparameters, as: 'hyperparameters', class: Google::Apis::LanguageV2::XpsTablesModelStructureModelParametersParameter, decorator: Google::Apis::LanguageV2::XpsTablesModelStructureModelParametersParameter::Representation
      
        end
      end
      
      class XpsTablesModelStructureModelParametersParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :float_value, as: 'floatValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :name, as: 'name'
          property :string_value, as: 'stringValue'
        end
      end
      
      class XpsTablesPreprocessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tables_dataset_metadata, as: 'tablesDatasetMetadata', class: Google::Apis::LanguageV2::XpsTablesDatasetMetadata, decorator: Google::Apis::LanguageV2::XpsTablesDatasetMetadata::Representation
      
        end
      end
      
      class XpsTablesRegressionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_absolute_percentage_error, as: 'meanAbsolutePercentageError'
          property :r_squared, as: 'rSquared'
          collection :regression_metrics_entries, as: 'regressionMetricsEntries', class: Google::Apis::LanguageV2::XpsRegressionMetricsEntry, decorator: Google::Apis::LanguageV2::XpsRegressionMetricsEntry::Representation
      
          property :root_mean_squared_error, as: 'rootMeanSquaredError'
          property :root_mean_squared_log_error, as: 'rootMeanSquaredLogError'
        end
      end
      
      class XpsTablesTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_structure, as: 'modelStructure', class: Google::Apis::LanguageV2::XpsTablesModelStructure, decorator: Google::Apis::LanguageV2::XpsTablesModelStructure::Representation
      
          collection :prediction_sample_rows, as: 'predictionSampleRows', class: Google::Apis::LanguageV2::XpsRow, decorator: Google::Apis::LanguageV2::XpsRow::Representation
      
          collection :tables_model_column_info, as: 'tablesModelColumnInfo', class: Google::Apis::LanguageV2::XpsTablesModelColumnInfo, decorator: Google::Apis::LanguageV2::XpsTablesModelColumnInfo::Representation
      
          property :train_cost_milli_node_hours, :numeric_string => true, as: 'trainCostMilliNodeHours'
        end
      end
      
      class XpsTablesTrainingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_model_stage, as: 'createModelStage'
          property :optimization_objective, as: 'optimizationObjective'
          collection :top_trials, as: 'topTrials', class: Google::Apis::LanguageV2::XpsTuningTrial, decorator: Google::Apis::LanguageV2::XpsTuningTrial::Representation
      
          property :train_budget_milli_node_hours, :numeric_string => true, as: 'trainBudgetMilliNodeHours'
          collection :training_objective_points, as: 'trainingObjectivePoints', class: Google::Apis::LanguageV2::XpsTrainingObjectivePoint, decorator: Google::Apis::LanguageV2::XpsTrainingObjectivePoint::Representation
      
          property :training_start_time, as: 'trainingStartTime'
        end
      end
      
      class XpsTextComponentModel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :batch_prediction_model_gcs_uri, as: 'batchPredictionModelGcsUri'
          property :online_prediction_model_gcs_uri, as: 'onlinePredictionModelGcsUri'
          property :partition, as: 'partition'
          property :serving_artifact, as: 'servingArtifact', class: Google::Apis::LanguageV2::XpsModelArtifactItem, decorator: Google::Apis::LanguageV2::XpsModelArtifactItem::Representation
      
          property :servo_model_name, as: 'servoModelName'
          property :submodel_name, as: 'submodelName'
          property :submodel_type, as: 'submodelType'
          property :tf_runtime_version, as: 'tfRuntimeVersion'
          property :version_number, :numeric_string => true, as: 'versionNumber'
        end
      end
      
      class XpsTextExtractionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :best_f1_confidence_metrics, as: 'bestF1ConfidenceMetrics', class: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry::Representation
      
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry::Representation
      
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::LanguageV2::XpsConfusionMatrix, decorator: Google::Apis::LanguageV2::XpsConfusionMatrix::Representation
      
          hash :per_label_confidence_metrics, as: 'perLabelConfidenceMetrics', class: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsConfidenceMetricsEntry::Representation
      
        end
      end
      
      class XpsTextSentimentEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::LanguageV2::XpsConfusionMatrix, decorator: Google::Apis::LanguageV2::XpsConfusionMatrix::Representation
      
          property :f1_score, as: 'f1Score'
          property :linear_kappa, as: 'linearKappa'
          property :mean_absolute_error, as: 'meanAbsoluteError'
          property :mean_squared_error, as: 'meanSquaredError'
          property :precision, as: 'precision'
          property :quadratic_kappa, as: 'quadraticKappa'
          property :recall, as: 'recall'
        end
      end
      
      class XpsTextToSpeechTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class XpsTextTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :component_model, as: 'componentModel', class: Google::Apis::LanguageV2::XpsTextComponentModel, decorator: Google::Apis::LanguageV2::XpsTextComponentModel::Representation
      
        end
      end
      
      class XpsTfJsFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class XpsTfLiteFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class XpsTfSavedModelFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class XpsTimestampStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :common_stats, as: 'commonStats', class: Google::Apis::LanguageV2::XpsCommonStats, decorator: Google::Apis::LanguageV2::XpsCommonStats::Representation
      
          hash :granular_stats, as: 'granularStats', class: Google::Apis::LanguageV2::XpsTimestampStatsGranularStats, decorator: Google::Apis::LanguageV2::XpsTimestampStatsGranularStats::Representation
      
          property :median_timestamp_nanos, :numeric_string => true, as: 'medianTimestampNanos'
        end
      end
      
      class XpsTimestampStatsGranularStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :buckets, as: 'buckets'
        end
      end
      
      class XpsTrackMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsTrackMetricsEntryConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsTrackMetricsEntryConfidenceMetricsEntry::Representation
      
          property :iou_threshold, as: 'iouThreshold'
          property :mean_bounding_box_iou, as: 'meanBoundingBoxIou'
          property :mean_mismatch_rate, as: 'meanMismatchRate'
          property :mean_tracking_average_precision, as: 'meanTrackingAveragePrecision'
        end
      end
      
      class XpsTrackMetricsEntryConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_iou, as: 'boundingBoxIou'
          property :confidence_threshold, as: 'confidenceThreshold'
          property :mismatch_rate, as: 'mismatchRate'
          property :tracking_precision, as: 'trackingPrecision'
          property :tracking_recall, as: 'trackingRecall'
        end
      end
      
      class XpsTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployed_model_size_bytes, :numeric_string => true, as: 'deployedModelSizeBytes'
          collection :error_analysis_configs, as: 'errorAnalysisConfigs', class: Google::Apis::LanguageV2::XpsVisionErrorAnalysisConfig, decorator: Google::Apis::LanguageV2::XpsVisionErrorAnalysisConfig::Representation
      
          property :evaluated_example_set, as: 'evaluatedExampleSet', class: Google::Apis::LanguageV2::XpsExampleSet, decorator: Google::Apis::LanguageV2::XpsExampleSet::Representation
      
          property :evaluation_metrics_set, as: 'evaluationMetricsSet', class: Google::Apis::LanguageV2::XpsEvaluationMetricsSet, decorator: Google::Apis::LanguageV2::XpsEvaluationMetricsSet::Representation
      
          collection :explanation_configs, as: 'explanationConfigs', class: Google::Apis::LanguageV2::XpsResponseExplanationSpec, decorator: Google::Apis::LanguageV2::XpsResponseExplanationSpec::Representation
      
          property :image_classification_train_resp, as: 'imageClassificationTrainResp', class: Google::Apis::LanguageV2::XpsImageClassificationTrainResponse, decorator: Google::Apis::LanguageV2::XpsImageClassificationTrainResponse::Representation
      
          property :image_object_detection_train_resp, as: 'imageObjectDetectionTrainResp', class: Google::Apis::LanguageV2::XpsImageObjectDetectionModelSpec, decorator: Google::Apis::LanguageV2::XpsImageObjectDetectionModelSpec::Representation
      
          property :image_segmentation_train_resp, as: 'imageSegmentationTrainResp', class: Google::Apis::LanguageV2::XpsImageSegmentationTrainResponse, decorator: Google::Apis::LanguageV2::XpsImageSegmentationTrainResponse::Representation
      
          property :model_token, :base64 => true, as: 'modelToken'
          property :speech_train_resp, as: 'speechTrainResp', class: Google::Apis::LanguageV2::XpsSpeechModelSpec, decorator: Google::Apis::LanguageV2::XpsSpeechModelSpec::Representation
      
          property :tables_train_resp, as: 'tablesTrainResp', class: Google::Apis::LanguageV2::XpsTablesTrainResponse, decorator: Google::Apis::LanguageV2::XpsTablesTrainResponse::Representation
      
          property :text_to_speech_train_resp, as: 'textToSpeechTrainResp', class: Google::Apis::LanguageV2::XpsTextToSpeechTrainResponse, decorator: Google::Apis::LanguageV2::XpsTextToSpeechTrainResponse::Representation
      
          property :text_train_resp, as: 'textTrainResp', class: Google::Apis::LanguageV2::XpsTextTrainResponse, decorator: Google::Apis::LanguageV2::XpsTextTrainResponse::Representation
      
          property :translation_train_resp, as: 'translationTrainResp', class: Google::Apis::LanguageV2::XpsTranslationTrainResponse, decorator: Google::Apis::LanguageV2::XpsTranslationTrainResponse::Representation
      
          property :video_action_recognition_train_resp, as: 'videoActionRecognitionTrainResp', class: Google::Apis::LanguageV2::XpsVideoActionRecognitionTrainResponse, decorator: Google::Apis::LanguageV2::XpsVideoActionRecognitionTrainResponse::Representation
      
          property :video_classification_train_resp, as: 'videoClassificationTrainResp', class: Google::Apis::LanguageV2::XpsVideoClassificationTrainResponse, decorator: Google::Apis::LanguageV2::XpsVideoClassificationTrainResponse::Representation
      
          property :video_object_tracking_train_resp, as: 'videoObjectTrackingTrainResp', class: Google::Apis::LanguageV2::XpsVideoObjectTrackingTrainResponse, decorator: Google::Apis::LanguageV2::XpsVideoObjectTrackingTrainResponse::Representation
      
        end
      end
      
      class XpsTrainingObjectivePoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :value, as: 'value'
        end
      end
      
      class XpsTranslationEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_bleu_score, as: 'baseBleuScore'
          property :bleu_score, as: 'bleuScore'
        end
      end
      
      class XpsTranslationPreprocessResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parsed_example_count, :numeric_string => true, as: 'parsedExampleCount'
          property :valid_example_count, :numeric_string => true, as: 'validExampleCount'
        end
      end
      
      class XpsTranslationTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_type, as: 'modelType'
        end
      end
      
      class XpsTuningTrial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_structure, as: 'modelStructure', class: Google::Apis::LanguageV2::XpsTablesModelStructure, decorator: Google::Apis::LanguageV2::XpsTablesModelStructure::Representation
      
          property :training_objective_point, as: 'trainingObjectivePoint', class: Google::Apis::LanguageV2::XpsTrainingObjectivePoint, decorator: Google::Apis::LanguageV2::XpsTrainingObjectivePoint::Representation
      
        end
      end
      
      class XpsVideoActionMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::LanguageV2::XpsVideoActionMetricsEntryConfidenceMetricsEntry, decorator: Google::Apis::LanguageV2::XpsVideoActionMetricsEntryConfidenceMetricsEntry::Representation
      
          property :mean_average_precision, as: 'meanAveragePrecision'
          property :precision_window_length, as: 'precisionWindowLength'
        end
      end
      
      class XpsVideoActionMetricsEntryConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :precision, as: 'precision'
          property :recall, as: 'recall'
        end
      end
      
      class XpsVideoActionRecognitionEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :evaluated_action_count, as: 'evaluatedActionCount'
          collection :video_action_metrics_entries, as: 'videoActionMetricsEntries', class: Google::Apis::LanguageV2::XpsVideoActionMetricsEntry, decorator: Google::Apis::LanguageV2::XpsVideoActionMetricsEntry::Representation
      
        end
      end
      
      class XpsVideoActionRecognitionTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_artifact_spec, as: 'modelArtifactSpec', class: Google::Apis::LanguageV2::XpsVideoModelArtifactSpec, decorator: Google::Apis::LanguageV2::XpsVideoModelArtifactSpec::Representation
      
          property :train_cost_node_seconds, :numeric_string => true, as: 'trainCostNodeSeconds'
        end
      end
      
      class XpsVideoBatchPredictOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :output_examples, as: 'outputExamples'
        end
      end
      
      class XpsVideoClassificationTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :model_artifact_spec, as: 'modelArtifactSpec', class: Google::Apis::LanguageV2::XpsVideoModelArtifactSpec, decorator: Google::Apis::LanguageV2::XpsVideoModelArtifactSpec::Representation
      
          property :train_cost_node_seconds, :numeric_string => true, as: 'trainCostNodeSeconds'
        end
      end
      
      class XpsVideoExportModelSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :export_model_output_config, as: 'exportModelOutputConfig', class: Google::Apis::LanguageV2::XpsExportModelOutputConfig, decorator: Google::Apis::LanguageV2::XpsExportModelOutputConfig::Representation
      
        end
      end
      
      class XpsVideoModelArtifactSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :export_artifact, as: 'exportArtifact', class: Google::Apis::LanguageV2::XpsModelArtifactItem, decorator: Google::Apis::LanguageV2::XpsModelArtifactItem::Representation
      
          property :serving_artifact, as: 'servingArtifact', class: Google::Apis::LanguageV2::XpsModelArtifactItem, decorator: Google::Apis::LanguageV2::XpsModelArtifactItem::Representation
      
        end
      end
      
      class XpsVideoObjectTrackingEvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_mean_average_precision, as: 'boundingBoxMeanAveragePrecision'
          collection :bounding_box_metrics_entries, as: 'boundingBoxMetricsEntries', class: Google::Apis::LanguageV2::XpsBoundingBoxMetricsEntry, decorator: Google::Apis::LanguageV2::XpsBoundingBoxMetricsEntry::Representation
      
          property :evaluated_boundingbox_count, as: 'evaluatedBoundingboxCount'
          property :evaluated_frame_count, as: 'evaluatedFrameCount'
          property :evaluated_track_count, as: 'evaluatedTrackCount'
          property :track_mean_average_precision, as: 'trackMeanAveragePrecision'
          property :track_mean_bounding_box_iou, as: 'trackMeanBoundingBoxIou'
          property :track_mean_mismatch_rate, as: 'trackMeanMismatchRate'
          collection :track_metrics_entries, as: 'trackMetricsEntries', class: Google::Apis::LanguageV2::XpsTrackMetricsEntry, decorator: Google::Apis::LanguageV2::XpsTrackMetricsEntry::Representation
      
        end
      end
      
      class XpsVideoObjectTrackingTrainResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_model_spec, as: 'exportModelSpec', class: Google::Apis::LanguageV2::XpsVideoExportModelSpec, decorator: Google::Apis::LanguageV2::XpsVideoExportModelSpec::Representation
      
          property :model_artifact_spec, as: 'modelArtifactSpec', class: Google::Apis::LanguageV2::XpsVideoModelArtifactSpec, decorator: Google::Apis::LanguageV2::XpsVideoModelArtifactSpec::Representation
      
          property :train_cost_node_seconds, :numeric_string => true, as: 'trainCostNodeSeconds'
        end
      end
      
      class XpsVideoTrainingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :train_cost_milli_node_hour, :numeric_string => true, as: 'trainCostMilliNodeHour'
        end
      end
      
      class XpsVisionErrorAnalysisConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :example_count, as: 'exampleCount'
          property :query_type, as: 'queryType'
        end
      end
      
      class XpsVisionTrainingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :explanation_usage, as: 'explanationUsage', class: Google::Apis::LanguageV2::InfraUsage, decorator: Google::Apis::LanguageV2::InfraUsage::Representation
      
        end
      end
      
      class XpsVisualization
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
      
      class XpsXpsOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :example_count, :numeric_string => true, as: 'exampleCount'
          property :reporting_metrics, as: 'reportingMetrics', class: Google::Apis::LanguageV2::XpsReportingMetrics, decorator: Google::Apis::LanguageV2::XpsReportingMetrics::Representation
      
          property :tables_training_operation_metadata, as: 'tablesTrainingOperationMetadata', class: Google::Apis::LanguageV2::XpsTablesTrainingOperationMetadata, decorator: Google::Apis::LanguageV2::XpsTablesTrainingOperationMetadata::Representation
      
          property :video_batch_predict_operation_metadata, as: 'videoBatchPredictOperationMetadata', class: Google::Apis::LanguageV2::XpsVideoBatchPredictOperationMetadata, decorator: Google::Apis::LanguageV2::XpsVideoBatchPredictOperationMetadata::Representation
      
          property :video_training_operation_metadata, as: 'videoTrainingOperationMetadata', class: Google::Apis::LanguageV2::XpsVideoTrainingOperationMetadata, decorator: Google::Apis::LanguageV2::XpsVideoTrainingOperationMetadata::Representation
      
          property :vision_training_operation_metadata, as: 'visionTrainingOperationMetadata', class: Google::Apis::LanguageV2::XpsVisionTrainingOperationMetadata, decorator: Google::Apis::LanguageV2::XpsVisionTrainingOperationMetadata::Representation
      
        end
      end
      
      class XpsXraiAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :step_count, as: 'stepCount'
        end
      end
    end
  end
end
