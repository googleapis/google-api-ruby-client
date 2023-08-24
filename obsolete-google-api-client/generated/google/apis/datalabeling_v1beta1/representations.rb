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
    module DatalabelingV1beta1
      
      class GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1GcsFolderDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1alpha1OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotatedDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationSpecSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Attempt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1BigQuerySource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1BoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1BoundingPolyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ClassificationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ClassificationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ConfusionMatrix
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1CreateDatasetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1CreateInstructionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1CreateInstructionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1CsvInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1DataItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Evaluation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationJobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1EventConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Example
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ExampleComparison
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ExportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ExportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1FeedbackMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1FeedbackThread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1GcsFolderDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImageClassificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImagePayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ImportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Instruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListDataItemsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListExamplesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ListInstructionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1NormalizedPolyline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1NormalizedVertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectDetectionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectTrackingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectTrackingFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1OperatorMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1PdfInstruction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Polyline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1PolylineConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1PrCurve
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1SegmentationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1SentimentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1SequentialSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TextClassificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TextMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TextPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1TimeSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1Vertex
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1VideoClassificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1VideoEventAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1VideoPayload
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1beta1VideoThumbnail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p1alpha1OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatalabelingV1p2alpha1OutputConfig
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
      
      class GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :instruction, as: 'instruction'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :dataset, as: 'dataset'
          property :export_count, as: 'exportCount'
          property :label_stats, as: 'labelStats', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelStats, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelStats::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1OutputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1OutputConfig::Representation
      
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1GcsFolderDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_folder_uri, as: 'outputFolderUri'
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset_description, as: 'annotatedDatasetDescription'
          property :annotated_dataset_display_name, as: 'annotatedDatasetDisplayName'
          collection :contributor_emails, as: 'contributorEmails'
          property :instruction, as: 'instruction'
          property :label_group, as: 'labelGroup'
          property :language_code, as: 'languageCode'
          property :question_duration, as: 'questionDuration'
          property :replica_count, as: 'replicaCount'
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :import_count, as: 'importCount'
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          property :image_bounding_box_details, as: 'imageBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata::Representation
      
          property :image_bounding_poly_details, as: 'imageBoundingPolyDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata::Representation
      
          property :image_classification_details, as: 'imageClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata::Representation
      
          property :image_oriented_bounding_box_details, as: 'imageOrientedBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata::Representation
      
          property :image_polyline_details, as: 'imagePolylineDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata::Representation
      
          property :image_segmentation_details, as: 'imageSegmentationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata::Representation
      
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
          property :progress_percent, as: 'progressPercent'
          property :text_classification_details, as: 'textClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata::Representation
      
          property :text_entity_extraction_details, as: 'textEntityExtractionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata::Representation
      
          property :video_classification_details, as: 'videoClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata::Representation
      
          property :video_event_details, as: 'videoEventDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata::Representation
      
          property :video_object_detection_details, as: 'videoObjectDetectionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata::Representation
      
          property :video_object_tracking_details, as: 'videoObjectTrackingDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :example_count, as: 'exampleCount'
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1alpha1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1GcsDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1GcsDestination::Representation
      
          property :gcs_folder_destination, as: 'gcsFolderDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1GcsFolderDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1GcsFolderDestination::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotatedDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_source, as: 'annotationSource'
          property :annotation_type, as: 'annotationType'
          collection :blocking_resources, as: 'blockingResources'
          property :completed_example_count, :numeric_string => true, as: 'completedExampleCount'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :example_count, :numeric_string => true, as: 'exampleCount'
          property :label_stats, as: 'labelStats', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelStats, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelStats::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly_config, as: 'boundingPolyConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig::Representation
      
          property :event_config, as: 'eventConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EventConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EventConfig::Representation
      
          property :human_annotation_config, as: 'humanAnnotationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
          property :image_classification_config, as: 'imageClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig::Representation
      
          property :object_detection_config, as: 'objectDetectionConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionConfig::Representation
      
          property :object_tracking_config, as: 'objectTrackingConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingConfig::Representation
      
          property :polyline_config, as: 'polylineConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PolylineConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PolylineConfig::Representation
      
          property :segmentation_config, as: 'segmentationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SegmentationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SegmentationConfig::Representation
      
          property :text_classification_config, as: 'textClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig::Representation
      
          property :text_entity_extraction_config, as: 'textEntityExtractionConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig::Representation
      
          property :video_classification_config, as: 'videoClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_metadata, as: 'annotationMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationMetadata::Representation
      
          property :annotation_sentiment, as: 'annotationSentiment'
          property :annotation_source, as: 'annotationSource'
          property :annotation_value, as: 'annotationValue', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationValue, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationValue::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operator_metadata, as: 'operatorMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OperatorMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OperatorMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :index, as: 'index'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationSpecSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_specs, as: 'annotationSpecs', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          collection :blocking_resources, as: 'blockingResources'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_multi_label, as: 'allowMultiLabel'
          property :annotation_spec_set, as: 'annotationSpecSet'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1AnnotationValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_bounding_poly_annotation, as: 'imageBoundingPolyAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation::Representation
      
          property :image_classification_annotation, as: 'imageClassificationAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation::Representation
      
          property :image_polyline_annotation, as: 'imagePolylineAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation::Representation
      
          property :image_segmentation_annotation, as: 'imageSegmentationAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation::Representation
      
          property :text_classification_annotation, as: 'textClassificationAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationAnnotation::Representation
      
          property :text_entity_extraction_annotation, as: 'textEntityExtractionAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation::Representation
      
          property :video_classification_annotation, as: 'videoClassificationAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation::Representation
      
          property :video_event_annotation, as: 'videoEventAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoEventAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoEventAnnotation::Representation
      
          property :video_object_tracking_annotation, as: 'videoObjectTrackingAnnotation', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Attempt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attempt_time, as: 'attemptTime'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1BigQuerySource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iou_threshold, as: 'iouThreshold'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1BoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertices, as: 'vertices', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Vertex, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Vertex::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1BoundingPolyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :instruction_message, as: 'instructionMessage'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ClassificationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_multi_label, as: 'isMultiLabel'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ClassificationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confusion_matrix, as: 'confusionMatrix', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfusionMatrix, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfusionMatrix::Representation
      
          property :pr_curve, as: 'prCurve', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PrCurve, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PrCurve::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_threshold, as: 'confidenceThreshold'
          property :f1_score, as: 'f1Score'
          property :f1_score_at1, as: 'f1ScoreAt1'
          property :f1_score_at5, as: 'f1ScoreAt5'
          property :precision, as: 'precision'
          property :precision_at1, as: 'precisionAt1'
          property :precision_at5, as: 'precisionAt5'
          property :recall, as: 'recall'
          property :recall_at1, as: 'recallAt1'
          property :recall_at5, as: 'recallAt5'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ConfusionMatrix
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :row, as: 'row', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Row, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Row::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :item_count, as: 'itemCount'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1CreateDatasetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1CreateInstructionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :instruction, as: 'instruction'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1CreateInstructionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instruction, as: 'instruction', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1CsvInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_file_uri, as: 'gcsFileUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1DataItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_payload, as: 'imagePayload', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePayload, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePayload::Representation
      
          property :name, as: 'name'
          property :text_payload, as: 'textPayload', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextPayload, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextPayload::Representation
      
          property :video_payload, as: 'videoPayload', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoPayload, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoPayload::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocking_resources, as: 'blockingResources'
          property :create_time, as: 'createTime'
          property :data_item_count, :numeric_string => true, as: 'dataItemCount'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :input_configs, as: 'inputConfigs', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig::Representation
      
          property :last_migrate_time, as: 'lastMigrateTime'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Evaluation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_type, as: 'annotationType'
          property :config, as: 'config', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationConfig::Representation
      
          property :create_time, as: 'createTime'
          property :evaluated_item_count, :numeric_string => true, as: 'evaluatedItemCount'
          property :evaluation_job_run_time, as: 'evaluationJobRunTime'
          property :evaluation_metrics, as: 'evaluationMetrics', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationMetrics, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationMetrics::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_box_evaluation_options, as: 'boundingBoxEvaluationOptions', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
          collection :attempts, as: 'attempts', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Attempt, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Attempt::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :evaluation_job_config, as: 'evaluationJobConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJobConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJobConfig::Representation
      
          property :label_missing_ground_truth, as: 'labelMissingGroundTruth'
          property :model_version, as: 'modelVersion'
          property :name, as: 'name'
          property :schedule, as: 'schedule'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :min_acceptable_mean_average_precision, as: 'minAcceptableMeanAveragePrecision'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationJobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :bigquery_import_keys, as: 'bigqueryImportKeys'
          property :bounding_poly_config, as: 'boundingPolyConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig::Representation
      
          property :evaluation_config, as: 'evaluationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationConfig::Representation
      
          property :evaluation_job_alert_config, as: 'evaluationJobAlertConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig::Representation
      
          property :example_count, as: 'exampleCount'
          property :example_sample_percentage, as: 'exampleSamplePercentage'
          property :human_annotation_config, as: 'humanAnnotationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
          property :image_classification_config, as: 'imageClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig::Representation
      
          property :input_config, as: 'inputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig::Representation
      
          property :text_classification_config, as: 'textClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1EvaluationMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification_metrics, as: 'classificationMetrics', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ClassificationMetrics, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ClassificationMetrics::Representation
      
          property :object_detection_metrics, as: 'objectDetectionMetrics', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1EventConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_spec_sets, as: 'annotationSpecSets'
          property :clip_length, as: 'clipLength'
          property :overlap_length, as: 'overlapLength'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Example
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotations, as: 'annotations', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Annotation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Annotation::Representation
      
          property :image_payload, as: 'imagePayload', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePayload, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePayload::Representation
      
          property :name, as: 'name'
          property :text_payload, as: 'textPayload', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextPayload, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextPayload::Representation
      
          property :video_payload, as: 'videoPayload', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoPayload, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoPayload::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ExampleComparison
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ground_truth_example, as: 'groundTruthExample', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example::Representation
      
          collection :model_created_examples, as: 'modelCreatedExamples', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ExportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :dataset, as: 'dataset'
          property :export_count, as: 'exportCount'
          property :label_stats, as: 'labelStats', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelStats, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelStats::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OutputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OutputConfig::Representation
      
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ExportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :filter, as: 'filter'
          property :output_config, as: 'outputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OutputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OutputConfig::Representation
      
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1FeedbackMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :create_time, as: 'createTime'
          property :image, :base64 => true, as: 'image'
          property :name, as: 'name'
          property :operator_feedback_metadata, as: 'operatorFeedbackMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata::Representation
      
          property :requester_feedback_metadata, as: 'requesterFeedbackMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1FeedbackThread
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :feedback_thread_metadata, as: 'feedbackThreadMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :last_update_time, as: 'lastUpdateTime'
          property :status, as: 'status'
          property :thumbnail, :base64 => true, as: 'thumbnail'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1GcsFolderDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_folder_uri, as: 'outputFolderUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset_description, as: 'annotatedDatasetDescription'
          property :annotated_dataset_display_name, as: 'annotatedDatasetDisplayName'
          collection :contributor_emails, as: 'contributorEmails'
          property :instruction, as: 'instruction'
          property :label_group, as: 'labelGroup'
          property :language_code, as: 'languageCode'
          property :question_duration, as: 'questionDuration'
          property :replica_count, as: 'replicaCount'
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPoly, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPoly::Representation
      
          property :normalized_bounding_poly, as: 'normalizedBoundingPoly', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImageClassificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_multi_label, as: 'allowMultiLabel'
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :answer_aggregation_type, as: 'answerAggregationType'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImagePayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_thumbnail, :base64 => true, as: 'imageThumbnail'
          property :image_uri, as: 'imageUri'
          property :mime_type, as: 'mimeType'
          property :signed_uri, as: 'signedUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :normalized_polyline, as: 'normalizedPolyline', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedPolyline, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedPolyline::Representation
      
          property :polyline, as: 'polyline', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Polyline, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Polyline::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotation_colors, as: 'annotationColors', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :image_bytes, :base64 => true, as: 'imageBytes'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :import_count, as: 'importCount'
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ImportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig::Representation
      
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_type, as: 'annotationType'
          property :bigquery_source, as: 'bigquerySource', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BigQuerySource, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BigQuerySource::Representation
      
          property :classification_metadata, as: 'classificationMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ClassificationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ClassificationMetadata::Representation
      
          property :data_type, as: 'dataType'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsSource, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsSource::Representation
      
          property :text_metadata, as: 'textMetadata', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Instruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocking_resources, as: 'blockingResources'
          property :create_time, as: 'createTime'
          property :csv_instruction, as: 'csvInstruction', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CsvInstruction, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CsvInstruction::Representation
      
          property :data_type, as: 'dataType'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :pdf_instruction, as: 'pdfInstruction', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PdfInstruction, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PdfInstruction::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
          property :bounding_poly_config, as: 'boundingPolyConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig::Representation
      
          property :feature, as: 'feature'
          property :image_classification_config, as: 'imageClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig::Representation
      
          property :polyline_config, as: 'polylineConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PolylineConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PolylineConfig::Representation
      
          property :segmentation_config, as: 'segmentationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SegmentationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SegmentationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          property :image_bounding_box_details, as: 'imageBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata::Representation
      
          property :image_bounding_poly_details, as: 'imageBoundingPolyDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata::Representation
      
          property :image_classification_details, as: 'imageClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata::Representation
      
          property :image_oriented_bounding_box_details, as: 'imageOrientedBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata::Representation
      
          property :image_polyline_details, as: 'imagePolylineDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata::Representation
      
          property :image_segmentation_details, as: 'imageSegmentationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata::Representation
      
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
          property :progress_percent, as: 'progressPercent'
          property :text_classification_details, as: 'textClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata::Representation
      
          property :text_entity_extraction_details, as: 'textEntityExtractionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata::Representation
      
          property :video_classification_details, as: 'videoClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata::Representation
      
          property :video_event_details, as: 'videoEventDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata::Representation
      
          property :video_object_detection_details, as: 'videoObjectDetectionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata::Representation
      
          property :video_object_tracking_details, as: 'videoObjectTrackingDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :example_count, as: 'exampleCount'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
          property :feature, as: 'feature'
          property :text_classification_config, as: 'textClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig::Representation
      
          property :text_entity_extraction_config, as: 'textEntityExtractionConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1LabelVideoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig::Representation
      
          property :event_config, as: 'eventConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EventConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EventConfig::Representation
      
          property :feature, as: 'feature'
          property :object_detection_config, as: 'objectDetectionConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionConfig::Representation
      
          property :object_tracking_config, as: 'objectTrackingConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingConfig::Representation
      
          property :video_classification_config, as: 'videoClassificationConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotated_datasets, as: 'annotatedDatasets', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_spec_sets, as: 'annotationSpecSets', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListDataItemsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_items, as: 'dataItems', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluation_jobs, as: 'evaluationJobs', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListExamplesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :examples, as: 'examples', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_messages, as: 'feedbackMessages', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :feedback_threads, as: 'feedbackThreads', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ListInstructionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instructions, as: 'instructions', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedVertex, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedVertex::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1NormalizedPolyline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :normalized_vertices, as: 'normalizedVertices', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedVertex, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedVertex::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1NormalizedVertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectDetectionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :extraction_frame_rate, as: 'extractionFrameRate'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pr_curve, as: 'prCurve', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PrCurve, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PrCurve::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectTrackingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :clip_length, as: 'clipLength'
          property :overlap_length, as: 'overlapLength'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ObjectTrackingFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bounding_poly, as: 'boundingPoly', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPoly, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPoly::Representation
      
          property :normalized_bounding_poly, as: 'normalizedBoundingPoly', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly::Representation
      
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatalabelingV1beta1OperatorMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :comments, as: 'comments'
          property :label_votes, as: 'labelVotes'
          property :score, as: 'score'
          property :total_votes, as: 'totalVotes'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsDestination::Representation
      
          property :gcs_folder_destination, as: 'gcsFolderDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsFolderDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsFolderDestination::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatalabelingV1beta1PdfInstruction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_file_uri, as: 'gcsFileUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Polyline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :vertices, as: 'vertices', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Vertex, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Vertex::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1PolylineConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :instruction_message, as: 'instructionMessage'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1PrCurve
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :area_under_curve, as: 'areaUnderCurve'
          collection :confidence_metrics_entries, as: 'confidenceMetricsEntries', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry::Representation
      
          property :mean_average_precision, as: 'meanAveragePrecision'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          collection :entries, as: 'entries', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :evaluations, as: 'evaluations', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :example_comparisons, as: 'exampleComparisons', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ExampleComparison, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ExampleComparison::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1SegmentationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :instruction_message, as: 'instructionMessage'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1SentimentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_label_sentiment_selection, as: 'enableLabelSentimentSelection'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1SequentialSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TextClassificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_multi_label, as: 'allowMultiLabel'
          property :annotation_spec_set, as: 'annotationSpecSet'
          property :sentiment_config, as: 'sentimentConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SentimentConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SentimentConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :sequential_segment, as: 'sequentialSegment', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SequentialSegment, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SequentialSegment::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec_set, as: 'annotationSpecSet'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TextMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TextPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text_content, as: 'textContent'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1TimeSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1Vertex
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :time_segment, as: 'timeSegment', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1VideoClassificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :annotation_spec_set_configs, as: 'annotationSpecSetConfigs', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig::Representation
      
          property :apply_shot_detection, as: 'applyShotDetection'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1VideoEventAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          property :time_segment, as: 'timeSegment', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotation_spec, as: 'annotationSpec', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec::Representation
      
          collection :object_tracking_frames, as: 'objectTrackingFrames', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingFrame, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingFrame::Representation
      
          property :time_segment, as: 'timeSegment', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1beta1VideoPayload
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :frame_rate, as: 'frameRate'
          property :mime_type, as: 'mimeType'
          property :signed_uri, as: 'signedUri'
          collection :video_thumbnails, as: 'videoThumbnails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoThumbnail, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoThumbnail::Representation
      
          property :video_uri, as: 'videoUri'
        end
      end
      
      class GoogleCloudDatalabelingV1beta1VideoThumbnail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :thumbnail, :base64 => true, as: 'thumbnail'
          property :time_offset, as: 'timeOffset'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :instruction, as: 'instruction'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :dataset, as: 'dataset'
          property :export_count, as: 'exportCount'
          property :label_stats, as: 'labelStats', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelStats, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelStats::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1OutputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1OutputConfig::Representation
      
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_folder_uri, as: 'outputFolderUri'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset_description, as: 'annotatedDatasetDescription'
          property :annotated_dataset_display_name, as: 'annotatedDatasetDisplayName'
          collection :contributor_emails, as: 'contributorEmails'
          property :instruction, as: 'instruction'
          property :label_group, as: 'labelGroup'
          property :language_code, as: 'languageCode'
          property :question_duration, as: 'questionDuration'
          property :replica_count, as: 'replicaCount'
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :import_count, as: 'importCount'
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          property :image_bounding_box_details, as: 'imageBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata::Representation
      
          property :image_bounding_poly_details, as: 'imageBoundingPolyDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata::Representation
      
          property :image_classification_details, as: 'imageClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata::Representation
      
          property :image_oriented_bounding_box_details, as: 'imageOrientedBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata::Representation
      
          property :image_polyline_details, as: 'imagePolylineDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata::Representation
      
          property :image_segmentation_details, as: 'imageSegmentationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata::Representation
      
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
          property :progress_percent, as: 'progressPercent'
          property :text_classification_details, as: 'textClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata::Representation
      
          property :text_entity_extraction_details, as: 'textEntityExtractionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata::Representation
      
          property :video_classification_details, as: 'videoClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata::Representation
      
          property :video_event_details, as: 'videoEventDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata::Representation
      
          property :video_object_detection_details, as: 'videoObjectDetectionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata::Representation
      
          property :video_object_tracking_details, as: 'videoObjectTrackingDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :example_count, as: 'exampleCount'
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p1alpha1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1GcsDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1GcsDestination::Representation
      
          property :gcs_folder_destination, as: 'gcsFolderDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :instruction, as: 'instruction'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :dataset, as: 'dataset'
          property :export_count, as: 'exportCount'
          property :label_stats, as: 'labelStats', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelStats, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelStats::Representation
      
          property :output_config, as: 'outputConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1OutputConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1OutputConfig::Representation
      
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mime_type, as: 'mimeType'
          property :output_uri, as: 'outputUri'
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_folder_uri, as: 'outputFolderUri'
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset_description, as: 'annotatedDatasetDescription'
          property :annotated_dataset_display_name, as: 'annotatedDatasetDisplayName'
          collection :contributor_emails, as: 'contributorEmails'
          property :instruction, as: 'instruction'
          property :label_group, as: 'labelGroup'
          property :language_code, as: 'languageCode'
          property :question_duration, as: 'questionDuration'
          property :replica_count, as: 'replicaCount'
          property :user_email_address, as: 'userEmailAddress'
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :import_count, as: 'importCount'
          property :total_count, as: 'totalCount'
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annotated_dataset, as: 'annotatedDataset'
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          property :image_bounding_box_details, as: 'imageBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata::Representation
      
          property :image_bounding_poly_details, as: 'imageBoundingPolyDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata::Representation
      
          property :image_classification_details, as: 'imageClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata::Representation
      
          property :image_oriented_bounding_box_details, as: 'imageOrientedBoundingBoxDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata::Representation
      
          property :image_polyline_details, as: 'imagePolylineDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata::Representation
      
          property :image_segmentation_details, as: 'imageSegmentationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata::Representation
      
          collection :partial_failures, as: 'partialFailures', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
          property :progress_percent, as: 'progressPercent'
          property :text_classification_details, as: 'textClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata::Representation
      
          property :text_entity_extraction_details, as: 'textEntityExtractionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata::Representation
      
          property :video_classification_details, as: 'videoClassificationDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata::Representation
      
          property :video_event_details, as: 'videoEventDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata::Representation
      
          property :video_object_detection_details, as: 'videoObjectDetectionDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata::Representation
      
          property :video_object_tracking_details, as: 'videoObjectTrackingDetails', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :example_count, as: 'exampleCount'
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_config, as: 'basicConfig', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig::Representation
      
        end
      end
      
      class GoogleCloudDatalabelingV1p2alpha1OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1GcsDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1GcsDestination::Representation
      
          property :gcs_folder_destination, as: 'gcsFolderDestination', class: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination, decorator: Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination::Representation
      
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation, decorator: Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus, decorator: Google::Apis::DatalabelingV1beta1::GoogleRpcStatus::Representation
      
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
    end
  end
end
