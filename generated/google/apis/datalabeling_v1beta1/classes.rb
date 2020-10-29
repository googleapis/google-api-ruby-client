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
      
      # Metadata of a CreateInstruction operation.
      class GoogleCloudDatalabelingV1alpha1CreateInstructionMetadata
        include Google::Apis::Core::Hashable
      
        # Timestamp when create instruction request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the created Instruction. projects/`project_id`/instructions/`
        # instruction_id`
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Partial failures encountered. E.g. single files that couldn't be read. Status
        # details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @instruction = args[:instruction] if args.key?(:instruction)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Metadata of an ExportData operation.
      class GoogleCloudDatalabelingV1alpha1ExportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when export dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be exported. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ExportDataset longrunning operation.
      class GoogleCloudDatalabelingV1alpha1ExportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Ouptut only. The name of dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples exported successfully.
        # Corresponds to the JSON property `exportCount`
        # @return [Fixnum]
        attr_accessor :export_count
      
        # Statistics about annotation specs.
        # Corresponds to the JSON property `labelStats`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelStats]
        attr_accessor :label_stats
      
        # The configuration of output data.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1OutputConfig]
        attr_accessor :output_config
      
        # Output only. Total number of examples requested to export
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @dataset = args[:dataset] if args.key?(:dataset)
          @export_count = args[:export_count] if args.key?(:export_count)
          @label_stats = args[:label_stats] if args.key?(:label_stats)
          @output_config = args[:output_config] if args.key?(:output_config)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Export destination of the data.Only gcs path is allowed in output_uri.
      class GoogleCloudDatalabelingV1alpha1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The format of the gcs destination. Only "text/csv" and "application/
        # json" are supported.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Required. The output uri of destination file.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Export folder destination of the data.
      class GoogleCloudDatalabelingV1alpha1GcsFolderDestination
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage directory to export data to.
        # Corresponds to the JSON property `outputFolderUri`
        # @return [String]
        attr_accessor :output_folder_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_folder_uri = args[:output_folder_uri] if args.key?(:output_folder_uri)
        end
      end
      
      # Configuration for how human labeling task should be done.
      class GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description for AnnotatedDataset. The description
        # can be up to 10000 characters long.
        # Corresponds to the JSON property `annotatedDatasetDescription`
        # @return [String]
        attr_accessor :annotated_dataset_description
      
        # Required. A human-readable name for AnnotatedDataset defined by users. Maximum
        # of 64 characters .
        # Corresponds to the JSON property `annotatedDatasetDisplayName`
        # @return [String]
        attr_accessor :annotated_dataset_display_name
      
        # Optional. If you want your own labeling contributors to manage and work on
        # this labeling request, you can set these contributors here. We will give them
        # access to the question types in crowdcompute. Note that these emails must be
        # registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
        # Corresponds to the JSON property `contributorEmails`
        # @return [Array<String>]
        attr_accessor :contributor_emails
      
        # Required. Instruction resource name.
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Optional. A human-readable label used to logically group labeling tasks. This
        # string must match the regular expression `[a-zA-Z\\d_-]`0,128``.
        # Corresponds to the JSON property `labelGroup`
        # @return [String]
        attr_accessor :label_group
      
        # Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when
        # task is language related. For example, French text classification.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Maximum duration for contributors to answer a question. Maximum is
        # 3600 seconds. Default is 3600 seconds.
        # Corresponds to the JSON property `questionDuration`
        # @return [String]
        attr_accessor :question_duration
      
        # Optional. Replication of questions. Each question will be sent to up to this
        # number of contributors to label. Aggregated answers will be returned. Default
        # is set to 1. For image related labeling, valid values are 1, 3, 5.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Email of the user who started the labeling task and should be notified by
        # email. If empty no notification will be sent.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset_description = args[:annotated_dataset_description] if args.key?(:annotated_dataset_description)
          @annotated_dataset_display_name = args[:annotated_dataset_display_name] if args.key?(:annotated_dataset_display_name)
          @contributor_emails = args[:contributor_emails] if args.key?(:contributor_emails)
          @instruction = args[:instruction] if args.key?(:instruction)
          @label_group = args[:label_group] if args.key?(:label_group)
          @language_code = args[:language_code] if args.key?(:language_code)
          @question_duration = args[:question_duration] if args.key?(:question_duration)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # Metadata of an ImportData operation.
      class GoogleCloudDatalabelingV1alpha1ImportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when import dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of imported dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ImportData longrunning operation.
      class GoogleCloudDatalabelingV1alpha1ImportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Ouptut only. The name of imported dataset.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples imported successfully.
        # Corresponds to the JSON property `importCount`
        # @return [Fixnum]
        attr_accessor :import_count
      
        # Output only. Total number of examples requested to import
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @import_count = args[:import_count] if args.key?(:import_count)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Details of a LabelImageBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImageBoundingPoly operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a LabelImageClassification operation.
      class GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageOrientedBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImagePolyline operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageSegmentation operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag:
      # 23
      class GoogleCloudDatalabelingV1alpha1LabelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when labeling request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be labeled. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Details of a LabelImageBoundingBox operation metadata.
        # Corresponds to the JSON property `imageBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageBoundingBoxOperationMetadata]
        attr_accessor :image_bounding_box_details
      
        # Details of LabelImageBoundingPoly operation metadata.
        # Corresponds to the JSON property `imageBoundingPolyDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageBoundingPolyOperationMetadata]
        attr_accessor :image_bounding_poly_details
      
        # Metadata of a LabelImageClassification operation.
        # Corresponds to the JSON property `imageClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageClassificationOperationMetadata]
        attr_accessor :image_classification_details
      
        # Details of a LabelImageOrientedBoundingBox operation metadata.
        # Corresponds to the JSON property `imageOrientedBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageOrientedBoundingBoxOperationMetadata]
        attr_accessor :image_oriented_bounding_box_details
      
        # Details of LabelImagePolyline operation metadata.
        # Corresponds to the JSON property `imagePolylineDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImagePolylineOperationMetadata]
        attr_accessor :image_polyline_details
      
        # Details of a LabelImageSegmentation operation metadata.
        # Corresponds to the JSON property `imageSegmentationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelImageSegmentationOperationMetadata]
        attr_accessor :image_segmentation_details
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        # Output only. Progress of label operation. Range: [0, 100].
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Details of a LabelTextClassification operation metadata.
        # Corresponds to the JSON property `textClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata]
        attr_accessor :text_classification_details
      
        # Details of a LabelTextEntityExtraction operation metadata.
        # Corresponds to the JSON property `textEntityExtractionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata]
        attr_accessor :text_entity_extraction_details
      
        # Details of a LabelVideoClassification operation metadata.
        # Corresponds to the JSON property `videoClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata]
        attr_accessor :video_classification_details
      
        # Details of a LabelVideoEvent operation metadata.
        # Corresponds to the JSON property `videoEventDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata]
        attr_accessor :video_event_details
      
        # Details of a LabelVideoObjectDetection operation metadata.
        # Corresponds to the JSON property `videoObjectDetectionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata]
        attr_accessor :video_object_detection_details
      
        # Details of a LabelVideoObjectTracking operation metadata.
        # Corresponds to the JSON property `videoObjectTrackingDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata]
        attr_accessor :video_object_tracking_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @image_bounding_box_details = args[:image_bounding_box_details] if args.key?(:image_bounding_box_details)
          @image_bounding_poly_details = args[:image_bounding_poly_details] if args.key?(:image_bounding_poly_details)
          @image_classification_details = args[:image_classification_details] if args.key?(:image_classification_details)
          @image_oriented_bounding_box_details = args[:image_oriented_bounding_box_details] if args.key?(:image_oriented_bounding_box_details)
          @image_polyline_details = args[:image_polyline_details] if args.key?(:image_polyline_details)
          @image_segmentation_details = args[:image_segmentation_details] if args.key?(:image_segmentation_details)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @text_classification_details = args[:text_classification_details] if args.key?(:text_classification_details)
          @text_entity_extraction_details = args[:text_entity_extraction_details] if args.key?(:text_entity_extraction_details)
          @video_classification_details = args[:video_classification_details] if args.key?(:video_classification_details)
          @video_event_details = args[:video_event_details] if args.key?(:video_event_details)
          @video_object_detection_details = args[:video_object_detection_details] if args.key?(:video_object_detection_details)
          @video_object_tracking_details = args[:video_object_tracking_details] if args.key?(:video_object_tracking_details)
        end
      end
      
      # Statistics about annotation specs.
      class GoogleCloudDatalabelingV1alpha1LabelStats
        include Google::Apis::Core::Hashable
      
        # Map of each annotation spec's example count. Key is the annotation spec name
        # and value is the number of examples for that annotation spec. If the annotated
        # dataset does not have annotation spec, the map will return a pair where the
        # key is empty string and value is the total number of annotations.
        # Corresponds to the JSON property `exampleCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_count = args[:example_count] if args.key?(:example_count)
        end
      end
      
      # Details of a LabelTextClassification operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelTextClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelTextEntityExtraction operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelTextEntityExtractionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoClassification operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelVideoClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoEvent operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelVideoEventOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectDetection operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelVideoObjectDetectionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectTracking operation metadata.
      class GoogleCloudDatalabelingV1alpha1LabelVideoObjectTrackingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # The configuration of output data.
      class GoogleCloudDatalabelingV1alpha1OutputConfig
        include Google::Apis::Core::Hashable
      
        # Export destination of the data.Only gcs path is allowed in output_uri.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1GcsDestination]
        attr_accessor :gcs_destination
      
        # Export folder destination of the data.
        # Corresponds to the JSON property `gcsFolderDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1alpha1GcsFolderDestination]
        attr_accessor :gcs_folder_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @gcs_folder_destination = args[:gcs_folder_destination] if args.key?(:gcs_folder_destination)
        end
      end
      
      # AnnotatedDataset is a set holding annotations for data in a Dataset. Each
      # labeling task will generate an AnnotatedDataset under the Dataset that the
      # task is requested for.
      class GoogleCloudDatalabelingV1beta1AnnotatedDataset
        include Google::Apis::Core::Hashable
      
        # Output only. Source of the annotation.
        # Corresponds to the JSON property `annotationSource`
        # @return [String]
        attr_accessor :annotation_source
      
        # Output only. Type of the annotation. It is specified when starting labeling
        # task.
        # Corresponds to the JSON property `annotationType`
        # @return [String]
        attr_accessor :annotation_type
      
        # Output only. The names of any related resources that are blocking changes to
        # the annotated dataset.
        # Corresponds to the JSON property `blockingResources`
        # @return [Array<String>]
        attr_accessor :blocking_resources
      
        # Output only. Number of examples that have annotation in the annotated dataset.
        # Corresponds to the JSON property `completedExampleCount`
        # @return [Fixnum]
        attr_accessor :completed_example_count
      
        # Output only. Time the AnnotatedDataset was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The description of the AnnotatedDataset. It is specified in
        # HumanAnnotationConfig when user starts a labeling task. Maximum of 10000
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The display name of the AnnotatedDataset. It is specified in
        # HumanAnnotationConfig when user starts a labeling task. Maximum of 64
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Number of examples in the annotated dataset.
        # Corresponds to the JSON property `exampleCount`
        # @return [Fixnum]
        attr_accessor :example_count
      
        # Statistics about annotation specs.
        # Corresponds to the JSON property `labelStats`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelStats]
        attr_accessor :label_stats
      
        # Metadata on AnnotatedDataset.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata]
        attr_accessor :metadata
      
        # Output only. AnnotatedDataset resource name in format of: projects/`project_id`
        # /datasets/`dataset_id`/annotatedDatasets/ `annotated_dataset_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_source = args[:annotation_source] if args.key?(:annotation_source)
          @annotation_type = args[:annotation_type] if args.key?(:annotation_type)
          @blocking_resources = args[:blocking_resources] if args.key?(:blocking_resources)
          @completed_example_count = args[:completed_example_count] if args.key?(:completed_example_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @example_count = args[:example_count] if args.key?(:example_count)
          @label_stats = args[:label_stats] if args.key?(:label_stats)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata on AnnotatedDataset.
      class GoogleCloudDatalabelingV1beta1AnnotatedDatasetMetadata
        include Google::Apis::Core::Hashable
      
        # Config for image bounding poly (and bounding box) human labeling task.
        # Corresponds to the JSON property `boundingPolyConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig]
        attr_accessor :bounding_poly_config
      
        # Config for video event human labeling task.
        # Corresponds to the JSON property `eventConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EventConfig]
        attr_accessor :event_config
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `humanAnnotationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :human_annotation_config
      
        # Config for image classification human labeling task.
        # Corresponds to the JSON property `imageClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig]
        attr_accessor :image_classification_config
      
        # Config for video object detection human labeling task. Object detection will
        # be conducted on the images extracted from the video, and those objects will be
        # labeled with bounding boxes. User need to specify the number of images to be
        # extracted per second as the extraction frame rate.
        # Corresponds to the JSON property `objectDetectionConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionConfig]
        attr_accessor :object_detection_config
      
        # Config for video object tracking human labeling task.
        # Corresponds to the JSON property `objectTrackingConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingConfig]
        attr_accessor :object_tracking_config
      
        # Config for image polyline human labeling task.
        # Corresponds to the JSON property `polylineConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PolylineConfig]
        attr_accessor :polyline_config
      
        # Config for image segmentation
        # Corresponds to the JSON property `segmentationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SegmentationConfig]
        attr_accessor :segmentation_config
      
        # Config for text classification human labeling task.
        # Corresponds to the JSON property `textClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig]
        attr_accessor :text_classification_config
      
        # Config for text entity extraction human labeling task.
        # Corresponds to the JSON property `textEntityExtractionConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig]
        attr_accessor :text_entity_extraction_config
      
        # Config for video classification human labeling task. Currently two types of
        # video classification are supported: 1. Assign labels on the entire video. 2.
        # Split the video into multiple video clips based on camera shot, and assign
        # labels on each video clip.
        # Corresponds to the JSON property `videoClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationConfig]
        attr_accessor :video_classification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly_config = args[:bounding_poly_config] if args.key?(:bounding_poly_config)
          @event_config = args[:event_config] if args.key?(:event_config)
          @human_annotation_config = args[:human_annotation_config] if args.key?(:human_annotation_config)
          @image_classification_config = args[:image_classification_config] if args.key?(:image_classification_config)
          @object_detection_config = args[:object_detection_config] if args.key?(:object_detection_config)
          @object_tracking_config = args[:object_tracking_config] if args.key?(:object_tracking_config)
          @polyline_config = args[:polyline_config] if args.key?(:polyline_config)
          @segmentation_config = args[:segmentation_config] if args.key?(:segmentation_config)
          @text_classification_config = args[:text_classification_config] if args.key?(:text_classification_config)
          @text_entity_extraction_config = args[:text_entity_extraction_config] if args.key?(:text_entity_extraction_config)
          @video_classification_config = args[:video_classification_config] if args.key?(:video_classification_config)
        end
      end
      
      # Annotation for Example. Each example may have one or more annotations. For
      # example in image classification problem, each image might have one or more
      # labels. We call labels binded with this image an Annotation.
      class GoogleCloudDatalabelingV1beta1Annotation
        include Google::Apis::Core::Hashable
      
        # Additional information associated with the annotation.
        # Corresponds to the JSON property `annotationMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationMetadata]
        attr_accessor :annotation_metadata
      
        # Output only. Sentiment for this annotation.
        # Corresponds to the JSON property `annotationSentiment`
        # @return [String]
        attr_accessor :annotation_sentiment
      
        # Output only. The source of the annotation.
        # Corresponds to the JSON property `annotationSource`
        # @return [String]
        attr_accessor :annotation_source
      
        # Annotation value for an example.
        # Corresponds to the JSON property `annotationValue`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationValue]
        attr_accessor :annotation_value
      
        # Output only. Unique name of this annotation, format is: projects/`project_id`/
        # datasets/`dataset_id`/annotatedDatasets/`annotated_dataset`/examples/`
        # example_id`/annotations/`annotation_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_metadata = args[:annotation_metadata] if args.key?(:annotation_metadata)
          @annotation_sentiment = args[:annotation_sentiment] if args.key?(:annotation_sentiment)
          @annotation_source = args[:annotation_source] if args.key?(:annotation_source)
          @annotation_value = args[:annotation_value] if args.key?(:annotation_value)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Additional information associated with the annotation.
      class GoogleCloudDatalabelingV1beta1AnnotationMetadata
        include Google::Apis::Core::Hashable
      
        # General information useful for labels coming from contributors.
        # Corresponds to the JSON property `operatorMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OperatorMetadata]
        attr_accessor :operator_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator_metadata = args[:operator_metadata] if args.key?(:operator_metadata)
        end
      end
      
      # Container of information related to one possible annotation that can be used
      # in a labeling task. For example, an image classification task where images are
      # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
      # AnnotationSpec for `cat`.
      class GoogleCloudDatalabelingV1beta1AnnotationSpec
        include Google::Apis::Core::Hashable
      
        # Optional. User-provided description of the annotation specification. The
        # description can be up to 10,000 characters long.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the AnnotationSpec. Maximum of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This is the integer index of the AnnotationSpec. The index for
        # the whole AnnotationSpecSet is sequential starting from 0. For example, an
        # AnnotationSpecSet with classes `dog` and `cat`, might contain one
        # AnnotationSpec with `` display_name: "dog", index: 0 `` and one AnnotationSpec
        # with `` display_name: "cat", index: 1 ``. This is especially useful for model
        # training as it encodes the string labels into numeric values.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # An AnnotationSpecSet is a collection of label definitions. For example, in
      # image classification tasks, you define a set of possible labels for images as
      # an AnnotationSpecSet. An AnnotationSpecSet is immutable upon creation.
      class GoogleCloudDatalabelingV1beta1AnnotationSpecSet
        include Google::Apis::Core::Hashable
      
        # Required. The array of AnnotationSpecs that you define when you create the
        # AnnotationSpecSet. These are the possible labels for the labeling task.
        # Corresponds to the JSON property `annotationSpecs`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec>]
        attr_accessor :annotation_specs
      
        # Output only. The names of any related resources that are blocking changes to
        # the annotation spec set.
        # Corresponds to the JSON property `blockingResources`
        # @return [Array<String>]
        attr_accessor :blocking_resources
      
        # Optional. User-provided description of the annotation specification set. The
        # description can be up to 10,000 characters long.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name for AnnotationSpecSet that you define when you
        # create it. Maximum of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The AnnotationSpecSet resource name in the following format: "
        # projects/`project_id`/annotationSpecSets/`annotation_spec_set_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_specs = args[:annotation_specs] if args.key?(:annotation_specs)
          @blocking_resources = args[:blocking_resources] if args.key?(:blocking_resources)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Annotation spec set with the setting of allowing multi labels or not.
      class GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If allow_multi_label is true, contributors are able to choose
        # multiple labels from one annotation spec set.
        # Corresponds to the JSON property `allowMultiLabel`
        # @return [Boolean]
        attr_accessor :allow_multi_label
        alias_method :allow_multi_label?, :allow_multi_label
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_multi_label = args[:allow_multi_label] if args.key?(:allow_multi_label)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
        end
      end
      
      # Annotation value for an example.
      class GoogleCloudDatalabelingV1beta1AnnotationValue
        include Google::Apis::Core::Hashable
      
        # Image bounding poly annotation. It represents a polygon including bounding box
        # in the image.
        # Corresponds to the JSON property `imageBoundingPolyAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation]
        attr_accessor :image_bounding_poly_annotation
      
        # Image classification annotation definition.
        # Corresponds to the JSON property `imageClassificationAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation]
        attr_accessor :image_classification_annotation
      
        # A polyline for the image annotation.
        # Corresponds to the JSON property `imagePolylineAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation]
        attr_accessor :image_polyline_annotation
      
        # Image segmentation annotation.
        # Corresponds to the JSON property `imageSegmentationAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation]
        attr_accessor :image_segmentation_annotation
      
        # Text classification annotation.
        # Corresponds to the JSON property `textClassificationAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationAnnotation]
        attr_accessor :text_classification_annotation
      
        # Text entity extraction annotation.
        # Corresponds to the JSON property `textEntityExtractionAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation]
        attr_accessor :text_entity_extraction_annotation
      
        # Video classification annotation.
        # Corresponds to the JSON property `videoClassificationAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation]
        attr_accessor :video_classification_annotation
      
        # Video event annotation.
        # Corresponds to the JSON property `videoEventAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoEventAnnotation]
        attr_accessor :video_event_annotation
      
        # Video object tracking annotation.
        # Corresponds to the JSON property `videoObjectTrackingAnnotation`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation]
        attr_accessor :video_object_tracking_annotation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_bounding_poly_annotation = args[:image_bounding_poly_annotation] if args.key?(:image_bounding_poly_annotation)
          @image_classification_annotation = args[:image_classification_annotation] if args.key?(:image_classification_annotation)
          @image_polyline_annotation = args[:image_polyline_annotation] if args.key?(:image_polyline_annotation)
          @image_segmentation_annotation = args[:image_segmentation_annotation] if args.key?(:image_segmentation_annotation)
          @text_classification_annotation = args[:text_classification_annotation] if args.key?(:text_classification_annotation)
          @text_entity_extraction_annotation = args[:text_entity_extraction_annotation] if args.key?(:text_entity_extraction_annotation)
          @video_classification_annotation = args[:video_classification_annotation] if args.key?(:video_classification_annotation)
          @video_event_annotation = args[:video_event_annotation] if args.key?(:video_event_annotation)
          @video_object_tracking_annotation = args[:video_object_tracking_annotation] if args.key?(:video_object_tracking_annotation)
        end
      end
      
      # Records a failed evaluation job run.
      class GoogleCloudDatalabelingV1beta1Attempt
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attemptTime`
        # @return [String]
        attr_accessor :attempt_time
      
        # Details of errors that occurred.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attempt_time = args[:attempt_time] if args.key?(:attempt_time)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # The BigQuery location for input data. If used in an EvaluationJob, this is
      # where the service saves the prediction input and output sampled from the model
      # version.
      class GoogleCloudDatalabelingV1beta1BigQuerySource
        include Google::Apis::Core::Hashable
      
        # Required. BigQuery URI to a table, up to 2,000 characters long. If you specify
        # the URI of a table that does not exist, Data Labeling Service creates a table
        # at the URI with the correct schema when you create your EvaluationJob. If you
        # specify the URI of a table that already exists, it must have the [correct
        # schema](/ml-engine/docs/continuous-evaluation/create-job#table-schema).
        # Provide the table URI in the following format: "bq://`your_project_id`/ `
        # your_dataset_name`/`your_table_name`" [Learn more](/ml-engine/docs/continuous-
        # evaluation/create-job#table-schema).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
        end
      end
      
      # Options regarding evaluation between bounding boxes.
      class GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions
        include Google::Apis::Core::Hashable
      
        # Minimum [intersection-over-union (IOU)](/vision/automl/object-detection/docs/
        # evaluate#intersection-over-union) required for 2 bounding boxes to be
        # considered a match. This must be a number between 0 and 1.
        # Corresponds to the JSON property `iouThreshold`
        # @return [Float]
        attr_accessor :iou_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iou_threshold = args[:iou_threshold] if args.key?(:iou_threshold)
        end
      end
      
      # A bounding polygon in the image.
      class GoogleCloudDatalabelingV1beta1BoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Config for image bounding poly (and bounding box) human labeling task.
      class GoogleCloudDatalabelingV1beta1BoundingPolyConfig
        include Google::Apis::Core::Hashable
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Optional. Instruction message showed on contributors UI.
        # Corresponds to the JSON property `instructionMessage`
        # @return [String]
        attr_accessor :instruction_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @instruction_message = args[:instruction_message] if args.key?(:instruction_message)
        end
      end
      
      # Metadata for classification annotations.
      class GoogleCloudDatalabelingV1beta1ClassificationMetadata
        include Google::Apis::Core::Hashable
      
        # Whether the classification task is multi-label or not.
        # Corresponds to the JSON property `isMultiLabel`
        # @return [Boolean]
        attr_accessor :is_multi_label
        alias_method :is_multi_label?, :is_multi_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_multi_label = args[:is_multi_label] if args.key?(:is_multi_label)
        end
      end
      
      # Metrics calculated for a classification model.
      class GoogleCloudDatalabelingV1beta1ClassificationMetrics
        include Google::Apis::Core::Hashable
      
        # Confusion matrix of the model running the classification. Only applicable when
        # the metrics entry aggregates multiple labels. Not applicable when the entry is
        # for a single label.
        # Corresponds to the JSON property `confusionMatrix`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfusionMatrix]
        attr_accessor :confusion_matrix
      
        # Precision-recall curve based on ground truth labels, predicted labels, and
        # scores for the predicted labels.
        # Corresponds to the JSON property `prCurve`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PrCurve]
        attr_accessor :pr_curve
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confusion_matrix = args[:confusion_matrix] if args.key?(:confusion_matrix)
          @pr_curve = args[:pr_curve] if args.key?(:pr_curve)
        end
      end
      
      # 
      class GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry
        include Google::Apis::Core::Hashable
      
        # Threshold used for this entry. For classification tasks, this is a
        # classification threshold: a predicted label is categorized as positive or
        # negative (in the context of this point on the PR curve) based on whether the
        # label's score meets this threshold. For image object detection (bounding box)
        # tasks, this is the [intersection-over-union (IOU)](/vision/automl/object-
        # detection/docs/evaluate#intersection-over-union) threshold for the context of
        # this point on the PR curve.
        # Corresponds to the JSON property `confidenceThreshold`
        # @return [Float]
        attr_accessor :confidence_threshold
      
        # Harmonic mean of recall and precision.
        # Corresponds to the JSON property `f1Score`
        # @return [Float]
        attr_accessor :f1_score
      
        # The harmonic mean of recall_at1 and precision_at1.
        # Corresponds to the JSON property `f1ScoreAt1`
        # @return [Float]
        attr_accessor :f1_score_at1
      
        # The harmonic mean of recall_at5 and precision_at5.
        # Corresponds to the JSON property `f1ScoreAt5`
        # @return [Float]
        attr_accessor :f1_score_at5
      
        # Precision value.
        # Corresponds to the JSON property `precision`
        # @return [Float]
        attr_accessor :precision
      
        # Precision value for entries with label that has highest score.
        # Corresponds to the JSON property `precisionAt1`
        # @return [Float]
        attr_accessor :precision_at1
      
        # Precision value for entries with label that has highest 5 scores.
        # Corresponds to the JSON property `precisionAt5`
        # @return [Float]
        attr_accessor :precision_at5
      
        # Recall value.
        # Corresponds to the JSON property `recall`
        # @return [Float]
        attr_accessor :recall
      
        # Recall value for entries with label that has highest score.
        # Corresponds to the JSON property `recallAt1`
        # @return [Float]
        attr_accessor :recall_at1
      
        # Recall value for entries with label that has highest 5 scores.
        # Corresponds to the JSON property `recallAt5`
        # @return [Float]
        attr_accessor :recall_at5
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_threshold = args[:confidence_threshold] if args.key?(:confidence_threshold)
          @f1_score = args[:f1_score] if args.key?(:f1_score)
          @f1_score_at1 = args[:f1_score_at1] if args.key?(:f1_score_at1)
          @f1_score_at5 = args[:f1_score_at5] if args.key?(:f1_score_at5)
          @precision = args[:precision] if args.key?(:precision)
          @precision_at1 = args[:precision_at1] if args.key?(:precision_at1)
          @precision_at5 = args[:precision_at5] if args.key?(:precision_at5)
          @recall = args[:recall] if args.key?(:recall)
          @recall_at1 = args[:recall_at1] if args.key?(:recall_at1)
          @recall_at5 = args[:recall_at5] if args.key?(:recall_at5)
        end
      end
      
      # Confusion matrix of the model running the classification. Only applicable when
      # the metrics entry aggregates multiple labels. Not applicable when the entry is
      # for a single label.
      class GoogleCloudDatalabelingV1beta1ConfusionMatrix
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `row`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Row>]
        attr_accessor :row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row = args[:row] if args.key?(:row)
        end
      end
      
      # 
      class GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # Number of items predicted to have this label. (The ground truth label for
        # these items is the `Row.annotationSpec` of this entry's parent.)
        # Corresponds to the JSON property `itemCount`
        # @return [Fixnum]
        attr_accessor :item_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @item_count = args[:item_count] if args.key?(:item_count)
        end
      end
      
      # Request message for CreateAnnotationSpecSet.
      class GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest
        include Google::Apis::Core::Hashable
      
        # An AnnotationSpecSet is a collection of label definitions. For example, in
        # image classification tasks, you define a set of possible labels for images as
        # an AnnotationSpecSet. An AnnotationSpecSet is immutable upon creation.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet]
        attr_accessor :annotation_spec_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
        end
      end
      
      # Request message for CreateDataset.
      class GoogleCloudDatalabelingV1beta1CreateDatasetRequest
        include Google::Apis::Core::Hashable
      
        # Dataset is the resource to hold your data. You can request multiple labeling
        # tasks for a dataset while each one will generate an AnnotatedDataset.
        # Corresponds to the JSON property `dataset`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset]
        attr_accessor :dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
        end
      end
      
      # Request message for CreateEvaluationJob.
      class GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest
        include Google::Apis::Core::Hashable
      
        # Defines an evaluation job that runs periodically to generate Evaluations. [
        # Creating an evaluation job](/ml-engine/docs/continuous-evaluation/create-job)
        # is the starting point for using continuous evaluation.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob]
        attr_accessor :job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
        end
      end
      
      # Metadata of a CreateInstruction operation.
      class GoogleCloudDatalabelingV1beta1CreateInstructionMetadata
        include Google::Apis::Core::Hashable
      
        # Timestamp when create instruction request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the created Instruction. projects/`project_id`/instructions/`
        # instruction_id`
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Partial failures encountered. E.g. single files that couldn't be read. Status
        # details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @instruction = args[:instruction] if args.key?(:instruction)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Request message for CreateInstruction.
      class GoogleCloudDatalabelingV1beta1CreateInstructionRequest
        include Google::Apis::Core::Hashable
      
        # Instruction of how to perform the labeling task for human operators. Currently
        # only PDF instruction is supported.
        # Corresponds to the JSON property `instruction`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction]
        attr_accessor :instruction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instruction = args[:instruction] if args.key?(:instruction)
        end
      end
      
      # Deprecated: this instruction format is not supported any more. Instruction
      # from a CSV file.
      class GoogleCloudDatalabelingV1beta1CsvInstruction
        include Google::Apis::Core::Hashable
      
        # CSV file for the instruction. Only gcs path is allowed.
        # Corresponds to the JSON property `gcsFileUri`
        # @return [String]
        attr_accessor :gcs_file_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_file_uri = args[:gcs_file_uri] if args.key?(:gcs_file_uri)
        end
      end
      
      # DataItem is a piece of data, without annotation. For example, an image.
      class GoogleCloudDatalabelingV1beta1DataItem
        include Google::Apis::Core::Hashable
      
        # Container of information about an image.
        # Corresponds to the JSON property `imagePayload`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePayload]
        attr_accessor :image_payload
      
        # Output only. Name of the data item, in format of: projects/`project_id`/
        # datasets/`dataset_id`/dataItems/`data_item_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Container of information about a piece of text.
        # Corresponds to the JSON property `textPayload`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextPayload]
        attr_accessor :text_payload
      
        # Container of information of a video.
        # Corresponds to the JSON property `videoPayload`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoPayload]
        attr_accessor :video_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_payload = args[:image_payload] if args.key?(:image_payload)
          @name = args[:name] if args.key?(:name)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @video_payload = args[:video_payload] if args.key?(:video_payload)
        end
      end
      
      # Dataset is the resource to hold your data. You can request multiple labeling
      # tasks for a dataset while each one will generate an AnnotatedDataset.
      class GoogleCloudDatalabelingV1beta1Dataset
        include Google::Apis::Core::Hashable
      
        # Output only. The names of any related resources that are blocking changes to
        # the dataset.
        # Corresponds to the JSON property `blockingResources`
        # @return [Array<String>]
        attr_accessor :blocking_resources
      
        # Output only. Time the dataset is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The number of data items in the dataset.
        # Corresponds to the JSON property `dataItemCount`
        # @return [Fixnum]
        attr_accessor :data_item_count
      
        # Optional. User-provided description of the annotation specification set. The
        # description can be up to 10000 characters long.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the dataset. Maximum of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. This is populated with the original input configs where
        # ImportData is called. It is available only after the clients import data to
        # this dataset.
        # Corresponds to the JSON property `inputConfigs`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig>]
        attr_accessor :input_configs
      
        # Last time that the Dataset is migrated to AI Platform V2. If any of the
        # AnnotatedDataset is migrated, the last_migration_time in Dataset is also
        # updated.
        # Corresponds to the JSON property `lastMigrateTime`
        # @return [String]
        attr_accessor :last_migrate_time
      
        # Output only. Dataset resource name, format is: projects/`project_id`/datasets/`
        # dataset_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocking_resources = args[:blocking_resources] if args.key?(:blocking_resources)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_item_count = args[:data_item_count] if args.key?(:data_item_count)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_configs = args[:input_configs] if args.key?(:input_configs)
          @last_migrate_time = args[:last_migrate_time] if args.key?(:last_migrate_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Describes an evaluation between a machine learning model's predictions and
      # ground truth labels. Created when an EvaluationJob runs successfully.
      class GoogleCloudDatalabelingV1beta1Evaluation
        include Google::Apis::Core::Hashable
      
        # Output only. Type of task that the model version being evaluated performs, as
        # defined in the evaluationJobConfig.inputConfig.annotationType field of the
        # evaluation job that created this evaluation.
        # Corresponds to the JSON property `annotationType`
        # @return [String]
        attr_accessor :annotation_type
      
        # Configuration details used for calculating evaluation metrics and creating an
        # Evaluation.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationConfig]
        attr_accessor :config
      
        # Output only. Timestamp for when this evaluation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The number of items in the ground truth dataset that were used
        # for this evaluation. Only populated when the evaulation is for certain
        # AnnotationTypes.
        # Corresponds to the JSON property `evaluatedItemCount`
        # @return [Fixnum]
        attr_accessor :evaluated_item_count
      
        # Output only. Timestamp for when the evaluation job that created this
        # evaluation ran.
        # Corresponds to the JSON property `evaluationJobRunTime`
        # @return [String]
        attr_accessor :evaluation_job_run_time
      
        # Output only. Metrics comparing predictions to ground truth labels.
        # Corresponds to the JSON property `evaluationMetrics`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationMetrics]
        attr_accessor :evaluation_metrics
      
        # Output only. Resource name of an evaluation. The name has the following format:
        # "projects/`project_id`/datasets/`dataset_id`/evaluations/ `evaluation_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_type = args[:annotation_type] if args.key?(:annotation_type)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @evaluated_item_count = args[:evaluated_item_count] if args.key?(:evaluated_item_count)
          @evaluation_job_run_time = args[:evaluation_job_run_time] if args.key?(:evaluation_job_run_time)
          @evaluation_metrics = args[:evaluation_metrics] if args.key?(:evaluation_metrics)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Configuration details used for calculating evaluation metrics and creating an
      # Evaluation.
      class GoogleCloudDatalabelingV1beta1EvaluationConfig
        include Google::Apis::Core::Hashable
      
        # Options regarding evaluation between bounding boxes.
        # Corresponds to the JSON property `boundingBoxEvaluationOptions`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingBoxEvaluationOptions]
        attr_accessor :bounding_box_evaluation_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_box_evaluation_options = args[:bounding_box_evaluation_options] if args.key?(:bounding_box_evaluation_options)
        end
      end
      
      # Defines an evaluation job that runs periodically to generate Evaluations. [
      # Creating an evaluation job](/ml-engine/docs/continuous-evaluation/create-job)
      # is the starting point for using continuous evaluation.
      class GoogleCloudDatalabelingV1beta1EvaluationJob
        include Google::Apis::Core::Hashable
      
        # Required. Name of the AnnotationSpecSet describing all the labels that your
        # machine learning model outputs. You must create this resource before you
        # create an evaluation job and provide its name in the following format: "
        # projects/`project_id`/annotationSpecSets/`annotation_spec_set_id`"
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Output only. Every time the evaluation job runs and an error occurs, the
        # failed attempt is appended to this array.
        # Corresponds to the JSON property `attempts`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Attempt>]
        attr_accessor :attempts
      
        # Output only. Timestamp of when this evaluation job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Description of the job. The description can be up to 25,000
        # characters long.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Configures specific details of how a continuous evaluation job works. Provide
        # this configuration when you create an EvaluationJob.
        # Corresponds to the JSON property `evaluationJobConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJobConfig]
        attr_accessor :evaluation_job_config
      
        # Required. Whether you want Data Labeling Service to provide ground truth
        # labels for prediction input. If you want the service to assign human labelers
        # to annotate your data, set this to `true`. If you want to provide your own
        # ground truth labels in the evaluation job's BigQuery table, set this to `false`
        # .
        # Corresponds to the JSON property `labelMissingGroundTruth`
        # @return [Boolean]
        attr_accessor :label_missing_ground_truth
        alias_method :label_missing_ground_truth?, :label_missing_ground_truth
      
        # Required. The [AI Platform Prediction model version](/ml-engine/docs/
        # prediction-overview) to be evaluated. Prediction input and output is sampled
        # from this model version. When creating an evaluation job, specify the model
        # version in the following format: "projects/`project_id`/models/`model_name`/
        # versions/`version_name`" There can only be one evaluation job per model
        # version.
        # Corresponds to the JSON property `modelVersion`
        # @return [String]
        attr_accessor :model_version
      
        # Output only. After you create a job, Data Labeling Service assigns a name to
        # the job with the following format: "projects/`project_id`/evaluationJobs/ `
        # evaluation_job_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Describes the interval at which the job runs. This interval must be
        # at least 1 day, and it is rounded to the nearest day. For example, if you
        # specify a 50-hour interval, the job runs every 2 days. You can provide the
        # schedule in [crontab format](/scheduler/docs/configuring/cron-job-schedules)
        # or in an [English-like format](/appengine/docs/standard/python/config/cronref#
        # schedule_format). Regardless of what you specify, the job will run at 10:00 AM
        # UTC. Only the interval from this schedule is used, not the specific time of
        # day.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Output only. Describes the current state of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @attempts = args[:attempts] if args.key?(:attempts)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @evaluation_job_config = args[:evaluation_job_config] if args.key?(:evaluation_job_config)
          @label_missing_ground_truth = args[:label_missing_ground_truth] if args.key?(:label_missing_ground_truth)
          @model_version = args[:model_version] if args.key?(:model_version)
          @name = args[:name] if args.key?(:name)
          @schedule = args[:schedule] if args.key?(:schedule)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Provides details for how an evaluation job sends email alerts based on the
      # results of a run.
      class GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig
        include Google::Apis::Core::Hashable
      
        # Required. An email address to send alerts to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. A number between 0 and 1 that describes a minimum mean average
        # precision threshold. When the evaluation job runs, if it calculates that your
        # model version's predictions from the recent interval have meanAveragePrecision
        # below this threshold, then it sends an alert to your specified email.
        # Corresponds to the JSON property `minAcceptableMeanAveragePrecision`
        # @return [Float]
        attr_accessor :min_acceptable_mean_average_precision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @min_acceptable_mean_average_precision = args[:min_acceptable_mean_average_precision] if args.key?(:min_acceptable_mean_average_precision)
        end
      end
      
      # Configures specific details of how a continuous evaluation job works. Provide
      # this configuration when you create an EvaluationJob.
      class GoogleCloudDatalabelingV1beta1EvaluationJobConfig
        include Google::Apis::Core::Hashable
      
        # Required. Prediction keys that tell Data Labeling Service where to find the
        # data for evaluation in your BigQuery table. When the service samples
        # prediction input and output from your model version and saves it to BigQuery,
        # the data gets stored as JSON strings in the BigQuery table. These keys tell
        # Data Labeling Service how to parse the JSON. You can provide the following
        # entries in this field: * `data_json_key`: the data key for prediction input.
        # You must provide either this key or `reference_json_key`. * `
        # reference_json_key`: the data reference key for prediction input. You must
        # provide either this key or `data_json_key`. * `label_json_key`: the label key
        # for prediction output. Required. * `label_score_json_key`: the score key for
        # prediction output. Required. * `bounding_box_json_key`: the bounding box key
        # for prediction output. Required if your model version perform image object
        # detection. Learn [how to configure prediction keys](/ml-engine/docs/continuous-
        # evaluation/create-job#prediction-keys).
        # Corresponds to the JSON property `bigqueryImportKeys`
        # @return [Hash<String,String>]
        attr_accessor :bigquery_import_keys
      
        # Config for image bounding poly (and bounding box) human labeling task.
        # Corresponds to the JSON property `boundingPolyConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig]
        attr_accessor :bounding_poly_config
      
        # Configuration details used for calculating evaluation metrics and creating an
        # Evaluation.
        # Corresponds to the JSON property `evaluationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationConfig]
        attr_accessor :evaluation_config
      
        # Provides details for how an evaluation job sends email alerts based on the
        # results of a run.
        # Corresponds to the JSON property `evaluationJobAlertConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJobAlertConfig]
        attr_accessor :evaluation_job_alert_config
      
        # Required. The maximum number of predictions to sample and save to BigQuery
        # during each evaluation interval. This limit overrides `
        # example_sample_percentage`: even if the service has not sampled enough
        # predictions to fulfill `example_sample_perecentage` during an interval, it
        # stops sampling predictions when it meets this limit.
        # Corresponds to the JSON property `exampleCount`
        # @return [Fixnum]
        attr_accessor :example_count
      
        # Required. Fraction of predictions to sample and save to BigQuery during each
        # evaluation interval. For example, 0.1 means 10% of predictions served by your
        # model version get saved to BigQuery.
        # Corresponds to the JSON property `exampleSamplePercentage`
        # @return [Float]
        attr_accessor :example_sample_percentage
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `humanAnnotationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :human_annotation_config
      
        # Config for image classification human labeling task.
        # Corresponds to the JSON property `imageClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig]
        attr_accessor :image_classification_config
      
        # The configuration of input data, including data type, location, etc.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig]
        attr_accessor :input_config
      
        # Config for text classification human labeling task.
        # Corresponds to the JSON property `textClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig]
        attr_accessor :text_classification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_import_keys = args[:bigquery_import_keys] if args.key?(:bigquery_import_keys)
          @bounding_poly_config = args[:bounding_poly_config] if args.key?(:bounding_poly_config)
          @evaluation_config = args[:evaluation_config] if args.key?(:evaluation_config)
          @evaluation_job_alert_config = args[:evaluation_job_alert_config] if args.key?(:evaluation_job_alert_config)
          @example_count = args[:example_count] if args.key?(:example_count)
          @example_sample_percentage = args[:example_sample_percentage] if args.key?(:example_sample_percentage)
          @human_annotation_config = args[:human_annotation_config] if args.key?(:human_annotation_config)
          @image_classification_config = args[:image_classification_config] if args.key?(:image_classification_config)
          @input_config = args[:input_config] if args.key?(:input_config)
          @text_classification_config = args[:text_classification_config] if args.key?(:text_classification_config)
        end
      end
      
      # 
      class GoogleCloudDatalabelingV1beta1EvaluationMetrics
        include Google::Apis::Core::Hashable
      
        # Metrics calculated for a classification model.
        # Corresponds to the JSON property `classificationMetrics`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ClassificationMetrics]
        attr_accessor :classification_metrics
      
        # Metrics calculated for an image object detection (bounding box) model.
        # Corresponds to the JSON property `objectDetectionMetrics`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics]
        attr_accessor :object_detection_metrics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification_metrics = args[:classification_metrics] if args.key?(:classification_metrics)
          @object_detection_metrics = args[:object_detection_metrics] if args.key?(:object_detection_metrics)
        end
      end
      
      # Config for video event human labeling task.
      class GoogleCloudDatalabelingV1beta1EventConfig
        include Google::Apis::Core::Hashable
      
        # Required. The list of annotation spec set resource name. Similar to video
        # classification, we support selecting event from multiple AnnotationSpecSet at
        # the same time.
        # Corresponds to the JSON property `annotationSpecSets`
        # @return [Array<String>]
        attr_accessor :annotation_spec_sets
      
        # Videos will be cut to smaller clips to make it easier for labelers to work on.
        # Users can configure is field in seconds, if not set, default value is 60s.
        # Corresponds to the JSON property `clipLength`
        # @return [Fixnum]
        attr_accessor :clip_length
      
        # The overlap length between different video clips. Users can configure is field
        # in seconds, if not set, default value is 1s.
        # Corresponds to the JSON property `overlapLength`
        # @return [Fixnum]
        attr_accessor :overlap_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_sets = args[:annotation_spec_sets] if args.key?(:annotation_spec_sets)
          @clip_length = args[:clip_length] if args.key?(:clip_length)
          @overlap_length = args[:overlap_length] if args.key?(:overlap_length)
        end
      end
      
      # An Example is a piece of data and its annotation. For example, an image with
      # label "house".
      class GoogleCloudDatalabelingV1beta1Example
        include Google::Apis::Core::Hashable
      
        # Output only. Annotations for the piece of data in Example. One piece of data
        # can have multiple annotations.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Annotation>]
        attr_accessor :annotations
      
        # Container of information about an image.
        # Corresponds to the JSON property `imagePayload`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImagePayload]
        attr_accessor :image_payload
      
        # Output only. Name of the example, in format of: projects/`project_id`/datasets/
        # `dataset_id`/annotatedDatasets/ `annotated_dataset_id`/examples/`example_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Container of information about a piece of text.
        # Corresponds to the JSON property `textPayload`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextPayload]
        attr_accessor :text_payload
      
        # Container of information of a video.
        # Corresponds to the JSON property `videoPayload`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoPayload]
        attr_accessor :video_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @image_payload = args[:image_payload] if args.key?(:image_payload)
          @name = args[:name] if args.key?(:name)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @video_payload = args[:video_payload] if args.key?(:video_payload)
        end
      end
      
      # Example comparisons comparing ground truth output and predictions for a
      # specific input.
      class GoogleCloudDatalabelingV1beta1ExampleComparison
        include Google::Apis::Core::Hashable
      
        # An Example is a piece of data and its annotation. For example, an image with
        # label "house".
        # Corresponds to the JSON property `groundTruthExample`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example]
        attr_accessor :ground_truth_example
      
        # Predictions by the model for the input.
        # Corresponds to the JSON property `modelCreatedExamples`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example>]
        attr_accessor :model_created_examples
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ground_truth_example = args[:ground_truth_example] if args.key?(:ground_truth_example)
          @model_created_examples = args[:model_created_examples] if args.key?(:model_created_examples)
        end
      end
      
      # Metadata of an ExportData operation.
      class GoogleCloudDatalabelingV1beta1ExportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when export dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be exported. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ExportDataset longrunning operation.
      class GoogleCloudDatalabelingV1beta1ExportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Ouptut only. The name of dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples exported successfully.
        # Corresponds to the JSON property `exportCount`
        # @return [Fixnum]
        attr_accessor :export_count
      
        # Statistics about annotation specs.
        # Corresponds to the JSON property `labelStats`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelStats]
        attr_accessor :label_stats
      
        # The configuration of output data.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OutputConfig]
        attr_accessor :output_config
      
        # Output only. Total number of examples requested to export
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @dataset = args[:dataset] if args.key?(:dataset)
          @export_count = args[:export_count] if args.key?(:export_count)
          @label_stats = args[:label_stats] if args.key?(:label_stats)
          @output_config = args[:output_config] if args.key?(:output_config)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Request message for ExportData API.
      class GoogleCloudDatalabelingV1beta1ExportDataRequest
        include Google::Apis::Core::Hashable
      
        # Required. Annotated dataset resource name. DataItem in Dataset and their
        # annotations in specified annotated dataset will be exported. It's in format of
        # projects/`project_id`/datasets/`dataset_id`/annotatedDatasets/ `
        # annotated_dataset_id`
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Optional. Filter is not supported at this moment.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The configuration of output data.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OutputConfig]
        attr_accessor :output_config
      
        # Email of the user who started the export task and should be notified by email.
        # If empty no notification will be sent.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @filter = args[:filter] if args.key?(:filter)
          @output_config = args[:output_config] if args.key?(:output_config)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # A feedback message inside a feedback thread.
      class GoogleCloudDatalabelingV1beta1FeedbackMessage
        include Google::Apis::Core::Hashable
      
        # String content of the feedback. Maximum of 10000 characters.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The image storing this feedback if the feedback is an image representing
        # operator's comments.
        # Corresponds to the JSON property `image`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :image
      
        # Name of the feedback message in a feedback thread. Format: 'project/`
        # project_id`/datasets/`dataset_id`/annotatedDatasets/`annotated_dataset_id`/
        # feedbackThreads/`feedback_thread_id`/feedbackMessage/`feedback_message_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metadata describing the feedback from the operator.
        # Corresponds to the JSON property `operatorFeedbackMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata]
        attr_accessor :operator_feedback_metadata
      
        # Metadata describing the feedback from the labeling task requester.
        # Corresponds to the JSON property `requesterFeedbackMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata]
        attr_accessor :requester_feedback_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @create_time = args[:create_time] if args.key?(:create_time)
          @image = args[:image] if args.key?(:image)
          @name = args[:name] if args.key?(:name)
          @operator_feedback_metadata = args[:operator_feedback_metadata] if args.key?(:operator_feedback_metadata)
          @requester_feedback_metadata = args[:requester_feedback_metadata] if args.key?(:requester_feedback_metadata)
        end
      end
      
      # A feedback thread of a certain labeling task on a certain annotated dataset.
      class GoogleCloudDatalabelingV1beta1FeedbackThread
        include Google::Apis::Core::Hashable
      
        # Metadata regarding the feedback thread.
        # Corresponds to the JSON property `feedbackThreadMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata]
        attr_accessor :feedback_thread_metadata
      
        # Name of the feedback thread. Format: 'project/`project_id`/datasets/`
        # dataset_id`/annotatedDatasets/`annotated_dataset_id`/feedbackThreads/`
        # feedback_thread_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_thread_metadata = args[:feedback_thread_metadata] if args.key?(:feedback_thread_metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class GoogleCloudDatalabelingV1beta1FeedbackThreadMetadata
        include Google::Apis::Core::Hashable
      
        # When the thread is created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # When the thread is last updated.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # An image thumbnail of this thread.
        # Corresponds to the JSON property `thumbnail`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :thumbnail
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @status = args[:status] if args.key?(:status)
          @thumbnail = args[:thumbnail] if args.key?(:thumbnail)
        end
      end
      
      # Export destination of the data.Only gcs path is allowed in output_uri.
      class GoogleCloudDatalabelingV1beta1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The format of the gcs destination. Only "text/csv" and "application/
        # json" are supported.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Required. The output uri of destination file.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Export folder destination of the data.
      class GoogleCloudDatalabelingV1beta1GcsFolderDestination
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage directory to export data to.
        # Corresponds to the JSON property `outputFolderUri`
        # @return [String]
        attr_accessor :output_folder_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_folder_uri = args[:output_folder_uri] if args.key?(:output_folder_uri)
        end
      end
      
      # Source of the Cloud Storage file to be imported.
      class GoogleCloudDatalabelingV1beta1GcsSource
        include Google::Apis::Core::Hashable
      
        # Required. The input URI of source file. This must be a Cloud Storage path (`gs:
        # //...`).
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # Required. The format of the source file. Only "text/csv" is supported.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Configuration for how human labeling task should be done.
      class GoogleCloudDatalabelingV1beta1HumanAnnotationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description for AnnotatedDataset. The description
        # can be up to 10000 characters long.
        # Corresponds to the JSON property `annotatedDatasetDescription`
        # @return [String]
        attr_accessor :annotated_dataset_description
      
        # Required. A human-readable name for AnnotatedDataset defined by users. Maximum
        # of 64 characters .
        # Corresponds to the JSON property `annotatedDatasetDisplayName`
        # @return [String]
        attr_accessor :annotated_dataset_display_name
      
        # Optional. If you want your own labeling contributors to manage and work on
        # this labeling request, you can set these contributors here. We will give them
        # access to the question types in crowdcompute. Note that these emails must be
        # registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
        # Corresponds to the JSON property `contributorEmails`
        # @return [Array<String>]
        attr_accessor :contributor_emails
      
        # Required. Instruction resource name.
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Optional. A human-readable label used to logically group labeling tasks. This
        # string must match the regular expression `[a-zA-Z\\d_-]`0,128``.
        # Corresponds to the JSON property `labelGroup`
        # @return [String]
        attr_accessor :label_group
      
        # Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when
        # task is language related. For example, French text classification.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Maximum duration for contributors to answer a question. Maximum is
        # 3600 seconds. Default is 3600 seconds.
        # Corresponds to the JSON property `questionDuration`
        # @return [String]
        attr_accessor :question_duration
      
        # Optional. Replication of questions. Each question will be sent to up to this
        # number of contributors to label. Aggregated answers will be returned. Default
        # is set to 1. For image related labeling, valid values are 1, 3, 5.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Email of the user who started the labeling task and should be notified by
        # email. If empty no notification will be sent.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset_description = args[:annotated_dataset_description] if args.key?(:annotated_dataset_description)
          @annotated_dataset_display_name = args[:annotated_dataset_display_name] if args.key?(:annotated_dataset_display_name)
          @contributor_emails = args[:contributor_emails] if args.key?(:contributor_emails)
          @instruction = args[:instruction] if args.key?(:instruction)
          @label_group = args[:label_group] if args.key?(:label_group)
          @language_code = args[:language_code] if args.key?(:language_code)
          @question_duration = args[:question_duration] if args.key?(:question_duration)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # Image bounding poly annotation. It represents a polygon including bounding box
      # in the image.
      class GoogleCloudDatalabelingV1beta1ImageBoundingPolyAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # A bounding polygon in the image.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Normalized bounding polygon.
        # Corresponds to the JSON property `normalizedBoundingPoly`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly]
        attr_accessor :normalized_bounding_poly
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @normalized_bounding_poly = args[:normalized_bounding_poly] if args.key?(:normalized_bounding_poly)
        end
      end
      
      # Image classification annotation definition.
      class GoogleCloudDatalabelingV1beta1ImageClassificationAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
        end
      end
      
      # Config for image classification human labeling task.
      class GoogleCloudDatalabelingV1beta1ImageClassificationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If allow_multi_label is true, contributors are able to choose
        # multiple labels for one image.
        # Corresponds to the JSON property `allowMultiLabel`
        # @return [Boolean]
        attr_accessor :allow_multi_label
        alias_method :allow_multi_label?, :allow_multi_label
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Optional. The type of how to aggregate answers.
        # Corresponds to the JSON property `answerAggregationType`
        # @return [String]
        attr_accessor :answer_aggregation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_multi_label = args[:allow_multi_label] if args.key?(:allow_multi_label)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @answer_aggregation_type = args[:answer_aggregation_type] if args.key?(:answer_aggregation_type)
        end
      end
      
      # Container of information about an image.
      class GoogleCloudDatalabelingV1beta1ImagePayload
        include Google::Apis::Core::Hashable
      
        # A byte string of a thumbnail image.
        # Corresponds to the JSON property `imageThumbnail`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :image_thumbnail
      
        # Image uri from the user bucket.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # Image format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Signed uri of the image file in the service bucket.
        # Corresponds to the JSON property `signedUri`
        # @return [String]
        attr_accessor :signed_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_thumbnail = args[:image_thumbnail] if args.key?(:image_thumbnail)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @signed_uri = args[:signed_uri] if args.key?(:signed_uri)
        end
      end
      
      # A polyline for the image annotation.
      class GoogleCloudDatalabelingV1beta1ImagePolylineAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # Normalized polyline.
        # Corresponds to the JSON property `normalizedPolyline`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedPolyline]
        attr_accessor :normalized_polyline
      
        # A line with multiple line segments.
        # Corresponds to the JSON property `polyline`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Polyline]
        attr_accessor :polyline
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @normalized_polyline = args[:normalized_polyline] if args.key?(:normalized_polyline)
          @polyline = args[:polyline] if args.key?(:polyline)
        end
      end
      
      # Image segmentation annotation.
      class GoogleCloudDatalabelingV1beta1ImageSegmentationAnnotation
        include Google::Apis::Core::Hashable
      
        # The mapping between rgb color and annotation spec. The key is the rgb color
        # represented in format of rgb(0, 0, 0). The value is the AnnotationSpec.
        # Corresponds to the JSON property `annotationColors`
        # @return [Hash<String,Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec>]
        attr_accessor :annotation_colors
      
        # A byte string of a full image's color map.
        # Corresponds to the JSON property `imageBytes`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :image_bytes
      
        # Image format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_colors = args[:annotation_colors] if args.key?(:annotation_colors)
          @image_bytes = args[:image_bytes] if args.key?(:image_bytes)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Metadata of an ImportData operation.
      class GoogleCloudDatalabelingV1beta1ImportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when import dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of imported dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ImportData longrunning operation.
      class GoogleCloudDatalabelingV1beta1ImportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Ouptut only. The name of imported dataset.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples imported successfully.
        # Corresponds to the JSON property `importCount`
        # @return [Fixnum]
        attr_accessor :import_count
      
        # Output only. Total number of examples requested to import
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @import_count = args[:import_count] if args.key?(:import_count)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Request message for ImportData API.
      class GoogleCloudDatalabelingV1beta1ImportDataRequest
        include Google::Apis::Core::Hashable
      
        # The configuration of input data, including data type, location, etc.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1InputConfig]
        attr_accessor :input_config
      
        # Email of the user who started the import task and should be notified by email.
        # If empty no notification will be sent.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # The configuration of input data, including data type, location, etc.
      class GoogleCloudDatalabelingV1beta1InputConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The type of annotation to be performed on this data. You must
        # specify this field if you are using this InputConfig in an EvaluationJob.
        # Corresponds to the JSON property `annotationType`
        # @return [String]
        attr_accessor :annotation_type
      
        # The BigQuery location for input data. If used in an EvaluationJob, this is
        # where the service saves the prediction input and output sampled from the model
        # version.
        # Corresponds to the JSON property `bigquerySource`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BigQuerySource]
        attr_accessor :bigquery_source
      
        # Metadata for classification annotations.
        # Corresponds to the JSON property `classificationMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ClassificationMetadata]
        attr_accessor :classification_metadata
      
        # Required. Data type must be specifed when user tries to import data.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Source of the Cloud Storage file to be imported.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsSource]
        attr_accessor :gcs_source
      
        # Metadata for the text.
        # Corresponds to the JSON property `textMetadata`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextMetadata]
        attr_accessor :text_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_type = args[:annotation_type] if args.key?(:annotation_type)
          @bigquery_source = args[:bigquery_source] if args.key?(:bigquery_source)
          @classification_metadata = args[:classification_metadata] if args.key?(:classification_metadata)
          @data_type = args[:data_type] if args.key?(:data_type)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @text_metadata = args[:text_metadata] if args.key?(:text_metadata)
        end
      end
      
      # Instruction of how to perform the labeling task for human operators. Currently
      # only PDF instruction is supported.
      class GoogleCloudDatalabelingV1beta1Instruction
        include Google::Apis::Core::Hashable
      
        # Output only. The names of any related resources that are blocking changes to
        # the instruction.
        # Corresponds to the JSON property `blockingResources`
        # @return [Array<String>]
        attr_accessor :blocking_resources
      
        # Output only. Creation time of instruction.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Deprecated: this instruction format is not supported any more. Instruction
        # from a CSV file.
        # Corresponds to the JSON property `csvInstruction`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CsvInstruction]
        attr_accessor :csv_instruction
      
        # Required. The data type of this instruction.
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Optional. User-provided description of the instruction. The description can be
        # up to 10000 characters long.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name of the instruction. Maximum of 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Instruction resource name, format: projects/`project_id`/
        # instructions/`instruction_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Instruction from a PDF file.
        # Corresponds to the JSON property `pdfInstruction`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PdfInstruction]
        attr_accessor :pdf_instruction
      
        # Output only. Last update time of instruction.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocking_resources = args[:blocking_resources] if args.key?(:blocking_resources)
          @create_time = args[:create_time] if args.key?(:create_time)
          @csv_instruction = args[:csv_instruction] if args.key?(:csv_instruction)
          @data_type = args[:data_type] if args.key?(:data_type)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @pdf_instruction = args[:pdf_instruction] if args.key?(:pdf_instruction)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details of a LabelImageBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImageBoundingPoly operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a LabelImageClassification operation.
      class GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageOrientedBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImagePolyline operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Request message for starting an image labeling task.
      class GoogleCloudDatalabelingV1beta1LabelImageRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        # Config for image bounding poly (and bounding box) human labeling task.
        # Corresponds to the JSON property `boundingPolyConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPolyConfig]
        attr_accessor :bounding_poly_config
      
        # Required. The type of image labeling task.
        # Corresponds to the JSON property `feature`
        # @return [String]
        attr_accessor :feature
      
        # Config for image classification human labeling task.
        # Corresponds to the JSON property `imageClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImageClassificationConfig]
        attr_accessor :image_classification_config
      
        # Config for image polyline human labeling task.
        # Corresponds to the JSON property `polylineConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PolylineConfig]
        attr_accessor :polyline_config
      
        # Config for image segmentation
        # Corresponds to the JSON property `segmentationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SegmentationConfig]
        attr_accessor :segmentation_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
          @bounding_poly_config = args[:bounding_poly_config] if args.key?(:bounding_poly_config)
          @feature = args[:feature] if args.key?(:feature)
          @image_classification_config = args[:image_classification_config] if args.key?(:image_classification_config)
          @polyline_config = args[:polyline_config] if args.key?(:polyline_config)
          @segmentation_config = args[:segmentation_config] if args.key?(:segmentation_config)
        end
      end
      
      # Details of a LabelImageSegmentation operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag:
      # 23
      class GoogleCloudDatalabelingV1beta1LabelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when labeling request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be labeled. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Details of a LabelImageBoundingBox operation metadata.
        # Corresponds to the JSON property `imageBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageBoundingBoxOperationMetadata]
        attr_accessor :image_bounding_box_details
      
        # Details of LabelImageBoundingPoly operation metadata.
        # Corresponds to the JSON property `imageBoundingPolyDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageBoundingPolyOperationMetadata]
        attr_accessor :image_bounding_poly_details
      
        # Metadata of a LabelImageClassification operation.
        # Corresponds to the JSON property `imageClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageClassificationOperationMetadata]
        attr_accessor :image_classification_details
      
        # Details of a LabelImageOrientedBoundingBox operation metadata.
        # Corresponds to the JSON property `imageOrientedBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageOrientedBoundingBoxOperationMetadata]
        attr_accessor :image_oriented_bounding_box_details
      
        # Details of LabelImagePolyline operation metadata.
        # Corresponds to the JSON property `imagePolylineDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImagePolylineOperationMetadata]
        attr_accessor :image_polyline_details
      
        # Details of a LabelImageSegmentation operation metadata.
        # Corresponds to the JSON property `imageSegmentationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageSegmentationOperationMetadata]
        attr_accessor :image_segmentation_details
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        # Output only. Progress of label operation. Range: [0, 100].
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Details of a LabelTextClassification operation metadata.
        # Corresponds to the JSON property `textClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata]
        attr_accessor :text_classification_details
      
        # Details of a LabelTextEntityExtraction operation metadata.
        # Corresponds to the JSON property `textEntityExtractionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata]
        attr_accessor :text_entity_extraction_details
      
        # Details of a LabelVideoClassification operation metadata.
        # Corresponds to the JSON property `videoClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata]
        attr_accessor :video_classification_details
      
        # Details of a LabelVideoEvent operation metadata.
        # Corresponds to the JSON property `videoEventDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata]
        attr_accessor :video_event_details
      
        # Details of a LabelVideoObjectDetection operation metadata.
        # Corresponds to the JSON property `videoObjectDetectionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata]
        attr_accessor :video_object_detection_details
      
        # Details of a LabelVideoObjectTracking operation metadata.
        # Corresponds to the JSON property `videoObjectTrackingDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata]
        attr_accessor :video_object_tracking_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @image_bounding_box_details = args[:image_bounding_box_details] if args.key?(:image_bounding_box_details)
          @image_bounding_poly_details = args[:image_bounding_poly_details] if args.key?(:image_bounding_poly_details)
          @image_classification_details = args[:image_classification_details] if args.key?(:image_classification_details)
          @image_oriented_bounding_box_details = args[:image_oriented_bounding_box_details] if args.key?(:image_oriented_bounding_box_details)
          @image_polyline_details = args[:image_polyline_details] if args.key?(:image_polyline_details)
          @image_segmentation_details = args[:image_segmentation_details] if args.key?(:image_segmentation_details)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @text_classification_details = args[:text_classification_details] if args.key?(:text_classification_details)
          @text_entity_extraction_details = args[:text_entity_extraction_details] if args.key?(:text_entity_extraction_details)
          @video_classification_details = args[:video_classification_details] if args.key?(:video_classification_details)
          @video_event_details = args[:video_event_details] if args.key?(:video_event_details)
          @video_object_detection_details = args[:video_object_detection_details] if args.key?(:video_object_detection_details)
          @video_object_tracking_details = args[:video_object_tracking_details] if args.key?(:video_object_tracking_details)
        end
      end
      
      # Statistics about annotation specs.
      class GoogleCloudDatalabelingV1beta1LabelStats
        include Google::Apis::Core::Hashable
      
        # Map of each annotation spec's example count. Key is the annotation spec name
        # and value is the number of examples for that annotation spec. If the annotated
        # dataset does not have annotation spec, the map will return a pair where the
        # key is empty string and value is the total number of annotations.
        # Corresponds to the JSON property `exampleCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_count = args[:example_count] if args.key?(:example_count)
        end
      end
      
      # Details of a LabelTextClassification operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelTextClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelTextEntityExtraction operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelTextEntityExtractionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Request message for LabelText.
      class GoogleCloudDatalabelingV1beta1LabelTextRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        # Required. The type of text labeling task.
        # Corresponds to the JSON property `feature`
        # @return [String]
        attr_accessor :feature
      
        # Config for text classification human labeling task.
        # Corresponds to the JSON property `textClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextClassificationConfig]
        attr_accessor :text_classification_config
      
        # Config for text entity extraction human labeling task.
        # Corresponds to the JSON property `textEntityExtractionConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig]
        attr_accessor :text_entity_extraction_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
          @feature = args[:feature] if args.key?(:feature)
          @text_classification_config = args[:text_classification_config] if args.key?(:text_classification_config)
          @text_entity_extraction_config = args[:text_entity_extraction_config] if args.key?(:text_entity_extraction_config)
        end
      end
      
      # Details of a LabelVideoClassification operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelVideoClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoEvent operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelVideoEventOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectDetection operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelVideoObjectDetectionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectTracking operation metadata.
      class GoogleCloudDatalabelingV1beta1LabelVideoObjectTrackingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Request message for LabelVideo.
      class GoogleCloudDatalabelingV1beta1LabelVideoRequest
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        # Config for video event human labeling task.
        # Corresponds to the JSON property `eventConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EventConfig]
        attr_accessor :event_config
      
        # Required. The type of video labeling task.
        # Corresponds to the JSON property `feature`
        # @return [String]
        attr_accessor :feature
      
        # Config for video object detection human labeling task. Object detection will
        # be conducted on the images extracted from the video, and those objects will be
        # labeled with bounding boxes. User need to specify the number of images to be
        # extracted per second as the extraction frame rate.
        # Corresponds to the JSON property `objectDetectionConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectDetectionConfig]
        attr_accessor :object_detection_config
      
        # Config for video object tracking human labeling task.
        # Corresponds to the JSON property `objectTrackingConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingConfig]
        attr_accessor :object_tracking_config
      
        # Config for video classification human labeling task. Currently two types of
        # video classification are supported: 1. Assign labels on the entire video. 2.
        # Split the video into multiple video clips based on camera shot, and assign
        # labels on each video clip.
        # Corresponds to the JSON property `videoClassificationConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoClassificationConfig]
        attr_accessor :video_classification_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
          @event_config = args[:event_config] if args.key?(:event_config)
          @feature = args[:feature] if args.key?(:feature)
          @object_detection_config = args[:object_detection_config] if args.key?(:object_detection_config)
          @object_tracking_config = args[:object_tracking_config] if args.key?(:object_tracking_config)
          @video_classification_config = args[:video_classification_config] if args.key?(:video_classification_config)
        end
      end
      
      # Results of listing annotated datasets for a dataset.
      class GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of annotated datasets to return.
        # Corresponds to the JSON property `annotatedDatasets`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset>]
        attr_accessor :annotated_datasets
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_datasets = args[:annotated_datasets] if args.key?(:annotated_datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results of listing annotation spec set under a project.
      class GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of annotation spec sets.
        # Corresponds to the JSON property `annotationSpecSets`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet>]
        attr_accessor :annotation_spec_sets
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_sets = args[:annotation_spec_sets] if args.key?(:annotation_spec_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results of listing data items in a dataset.
      class GoogleCloudDatalabelingV1beta1ListDataItemsResponse
        include Google::Apis::Core::Hashable
      
        # The list of data items to return.
        # Corresponds to the JSON property `dataItems`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem>]
        attr_accessor :data_items
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_items = args[:data_items] if args.key?(:data_items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results of listing datasets within a project.
      class GoogleCloudDatalabelingV1beta1ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The list of datasets to return.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset>]
        attr_accessor :datasets
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @datasets = args[:datasets] if args.key?(:datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results for listing evaluation jobs.
      class GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of evaluation jobs to return.
        # Corresponds to the JSON property `evaluationJobs`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob>]
        attr_accessor :evaluation_jobs
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @evaluation_jobs = args[:evaluation_jobs] if args.key?(:evaluation_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results of listing Examples in and annotated dataset.
      class GoogleCloudDatalabelingV1beta1ListExamplesResponse
        include Google::Apis::Core::Hashable
      
        # The list of examples to return.
        # Corresponds to the JSON property `examples`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example>]
        attr_accessor :examples
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @examples = args[:examples] if args.key?(:examples)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results for listing FeedbackMessages.
      class GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
        include Google::Apis::Core::Hashable
      
        # The list of feedback messages to return.
        # Corresponds to the JSON property `feedbackMessages`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage>]
        attr_accessor :feedback_messages
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_messages = args[:feedback_messages] if args.key?(:feedback_messages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results for listing FeedbackThreads.
      class GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
        include Google::Apis::Core::Hashable
      
        # The list of feedback threads to return.
        # Corresponds to the JSON property `feedbackThreads`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread>]
        attr_accessor :feedback_threads
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_threads = args[:feedback_threads] if args.key?(:feedback_threads)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Results of listing instructions under a project.
      class GoogleCloudDatalabelingV1beta1ListInstructionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Instructions to return.
        # Corresponds to the JSON property `instructions`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction>]
        attr_accessor :instructions
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instructions = args[:instructions] if args.key?(:instructions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Normalized bounding polygon.
      class GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly
        include Google::Apis::Core::Hashable
      
        # The bounding polygon normalized vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
        end
      end
      
      # Normalized polyline.
      class GoogleCloudDatalabelingV1beta1NormalizedPolyline
        include Google::Apis::Core::Hashable
      
        # The normalized polyline vertices.
        # Corresponds to the JSON property `normalizedVertices`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedVertex>]
        attr_accessor :normalized_vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_vertices = args[:normalized_vertices] if args.key?(:normalized_vertices)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the normalized vertex
      # coordinates are relative to the original image and range from 0 to 1.
      class GoogleCloudDatalabelingV1beta1NormalizedVertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Y coordinate.
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
      
      # Config for video object detection human labeling task. Object detection will
      # be conducted on the images extracted from the video, and those objects will be
      # labeled with bounding boxes. User need to specify the number of images to be
      # extracted per second as the extraction frame rate.
      class GoogleCloudDatalabelingV1beta1ObjectDetectionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Required. Number of frames per second to be extracted from the video.
        # Corresponds to the JSON property `extractionFrameRate`
        # @return [Float]
        attr_accessor :extraction_frame_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @extraction_frame_rate = args[:extraction_frame_rate] if args.key?(:extraction_frame_rate)
        end
      end
      
      # Metrics calculated for an image object detection (bounding box) model.
      class GoogleCloudDatalabelingV1beta1ObjectDetectionMetrics
        include Google::Apis::Core::Hashable
      
        # Precision-recall curve.
        # Corresponds to the JSON property `prCurve`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PrCurve]
        attr_accessor :pr_curve
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pr_curve = args[:pr_curve] if args.key?(:pr_curve)
        end
      end
      
      # Config for video object tracking human labeling task.
      class GoogleCloudDatalabelingV1beta1ObjectTrackingConfig
        include Google::Apis::Core::Hashable
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Videos will be cut to smaller clips to make it easier for labelers to work on.
        # Users can configure is field in seconds, if not set, default value is 20s.
        # Corresponds to the JSON property `clipLength`
        # @return [Fixnum]
        attr_accessor :clip_length
      
        # The overlap length between different video clips. Users can configure is field
        # in seconds, if not set, default value is 0.3s.
        # Corresponds to the JSON property `overlapLength`
        # @return [Fixnum]
        attr_accessor :overlap_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @clip_length = args[:clip_length] if args.key?(:clip_length)
          @overlap_length = args[:overlap_length] if args.key?(:overlap_length)
        end
      end
      
      # Video frame level annotation for object detection and tracking.
      class GoogleCloudDatalabelingV1beta1ObjectTrackingFrame
        include Google::Apis::Core::Hashable
      
        # A bounding polygon in the image.
        # Corresponds to the JSON property `boundingPoly`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1BoundingPoly]
        attr_accessor :bounding_poly
      
        # Normalized bounding polygon.
        # Corresponds to the JSON property `normalizedBoundingPoly`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1NormalizedBoundingPoly]
        attr_accessor :normalized_bounding_poly
      
        # The time offset of this frame relative to the beginning of the video.
        # Corresponds to the JSON property `timeOffset`
        # @return [String]
        attr_accessor :time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounding_poly = args[:bounding_poly] if args.key?(:bounding_poly)
          @normalized_bounding_poly = args[:normalized_bounding_poly] if args.key?(:normalized_bounding_poly)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
        end
      end
      
      # Metadata describing the feedback from the operator.
      class GoogleCloudDatalabelingV1beta1OperatorFeedbackMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # General information useful for labels coming from contributors.
      class GoogleCloudDatalabelingV1beta1OperatorMetadata
        include Google::Apis::Core::Hashable
      
        # Comments from contributors.
        # Corresponds to the JSON property `comments`
        # @return [Array<String>]
        attr_accessor :comments
      
        # The total number of contributors that choose this label.
        # Corresponds to the JSON property `labelVotes`
        # @return [Fixnum]
        attr_accessor :label_votes
      
        # Confidence score corresponding to a label. For examle, if 3 contributors have
        # answered the question and 2 of them agree on the final label, the confidence
        # score will be 0.67 (2/3).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # The total number of contributors that answer this question.
        # Corresponds to the JSON property `totalVotes`
        # @return [Fixnum]
        attr_accessor :total_votes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comments = args[:comments] if args.key?(:comments)
          @label_votes = args[:label_votes] if args.key?(:label_votes)
          @score = args[:score] if args.key?(:score)
          @total_votes = args[:total_votes] if args.key?(:total_votes)
        end
      end
      
      # The configuration of output data.
      class GoogleCloudDatalabelingV1beta1OutputConfig
        include Google::Apis::Core::Hashable
      
        # Export destination of the data.Only gcs path is allowed in output_uri.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsDestination]
        attr_accessor :gcs_destination
      
        # Export folder destination of the data.
        # Corresponds to the JSON property `gcsFolderDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1GcsFolderDestination]
        attr_accessor :gcs_folder_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @gcs_folder_destination = args[:gcs_folder_destination] if args.key?(:gcs_folder_destination)
        end
      end
      
      # Request message for PauseEvaluationJob.
      class GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Instruction from a PDF file.
      class GoogleCloudDatalabelingV1beta1PdfInstruction
        include Google::Apis::Core::Hashable
      
        # PDF file for the instruction. Only gcs path is allowed.
        # Corresponds to the JSON property `gcsFileUri`
        # @return [String]
        attr_accessor :gcs_file_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_file_uri = args[:gcs_file_uri] if args.key?(:gcs_file_uri)
        end
      end
      
      # A line with multiple line segments.
      class GoogleCloudDatalabelingV1beta1Polyline
        include Google::Apis::Core::Hashable
      
        # The polyline vertices.
        # Corresponds to the JSON property `vertices`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Vertex>]
        attr_accessor :vertices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vertices = args[:vertices] if args.key?(:vertices)
        end
      end
      
      # Config for image polyline human labeling task.
      class GoogleCloudDatalabelingV1beta1PolylineConfig
        include Google::Apis::Core::Hashable
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Optional. Instruction message showed on contributors UI.
        # Corresponds to the JSON property `instructionMessage`
        # @return [String]
        attr_accessor :instruction_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @instruction_message = args[:instruction_message] if args.key?(:instruction_message)
        end
      end
      
      # 
      class GoogleCloudDatalabelingV1beta1PrCurve
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # Area under the precision-recall curve. Not to be confused with area under a
        # receiver operating characteristic (ROC) curve.
        # Corresponds to the JSON property `areaUnderCurve`
        # @return [Float]
        attr_accessor :area_under_curve
      
        # Entries that make up the precision-recall graph. Each entry is a "point" on
        # the graph drawn for a different `confidence_threshold`.
        # Corresponds to the JSON property `confidenceMetricsEntries`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfidenceMetricsEntry>]
        attr_accessor :confidence_metrics_entries
      
        # Mean average prcision of this curve.
        # Corresponds to the JSON property `meanAveragePrecision`
        # @return [Float]
        attr_accessor :mean_average_precision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @area_under_curve = args[:area_under_curve] if args.key?(:area_under_curve)
          @confidence_metrics_entries = args[:confidence_metrics_entries] if args.key?(:confidence_metrics_entries)
          @mean_average_precision = args[:mean_average_precision] if args.key?(:mean_average_precision)
        end
      end
      
      # Metadata describing the feedback from the labeling task requester.
      class GoogleCloudDatalabelingV1beta1RequesterFeedbackMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message ResumeEvaluationJob.
      class GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A row in the confusion matrix. Each entry in this row has the same ground
      # truth label.
      class GoogleCloudDatalabelingV1beta1Row
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # A list of the confusion matrix entries. One entry for each possible predicted
        # label.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ConfusionMatrixEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Results of searching evaluations.
      class GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse
        include Google::Apis::Core::Hashable
      
        # The list of evaluations matching the search.
        # Corresponds to the JSON property `evaluations`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation>]
        attr_accessor :evaluations
      
        # A token to retrieve next page of results.
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
      
      # Request message of SearchExampleComparisons.
      class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Requested page size. Server may return fewer results than requested.
        # Default value is 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A token identifying a page of results for the server to return.
        # Typically obtained by the nextPageToken of the response to a previous search
        # rquest. If you don't specify this field, the API call requests the first page
        # of the search.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Results of searching example comparisons.
      class GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
        include Google::Apis::Core::Hashable
      
        # A list of example comparisons matching the search criteria.
        # Corresponds to the JSON property `exampleComparisons`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ExampleComparison>]
        attr_accessor :example_comparisons
      
        # A token to retrieve next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_comparisons = args[:example_comparisons] if args.key?(:example_comparisons)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Config for image segmentation
      class GoogleCloudDatalabelingV1beta1SegmentationConfig
        include Google::Apis::Core::Hashable
      
        # Required. Annotation spec set resource name. format: projects/`project_id`/
        # annotationSpecSets/`annotation_spec_set_id`
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Instruction message showed on labelers UI.
        # Corresponds to the JSON property `instructionMessage`
        # @return [String]
        attr_accessor :instruction_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @instruction_message = args[:instruction_message] if args.key?(:instruction_message)
        end
      end
      
      # Config for setting up sentiments.
      class GoogleCloudDatalabelingV1beta1SentimentConfig
        include Google::Apis::Core::Hashable
      
        # If set to true, contributors will have the option to select sentiment of the
        # label they selected, to mark it as negative or positive label. Default is
        # false.
        # Corresponds to the JSON property `enableLabelSentimentSelection`
        # @return [Boolean]
        attr_accessor :enable_label_sentiment_selection
        alias_method :enable_label_sentiment_selection?, :enable_label_sentiment_selection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_label_sentiment_selection = args[:enable_label_sentiment_selection] if args.key?(:enable_label_sentiment_selection)
        end
      end
      
      # Start and end position in a sequence (e.g. text segment).
      class GoogleCloudDatalabelingV1beta1SequentialSegment
        include Google::Apis::Core::Hashable
      
        # End position (exclusive).
        # Corresponds to the JSON property `end`
        # @return [Fixnum]
        attr_accessor :end
      
        # Start position (inclusive).
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Text classification annotation.
      class GoogleCloudDatalabelingV1beta1TextClassificationAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
        end
      end
      
      # Config for text classification human labeling task.
      class GoogleCloudDatalabelingV1beta1TextClassificationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If allow_multi_label is true, contributors are able to choose
        # multiple labels for one text segment.
        # Corresponds to the JSON property `allowMultiLabel`
        # @return [Boolean]
        attr_accessor :allow_multi_label
        alias_method :allow_multi_label?, :allow_multi_label
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        # Config for setting up sentiments.
        # Corresponds to the JSON property `sentimentConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SentimentConfig]
        attr_accessor :sentiment_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_multi_label = args[:allow_multi_label] if args.key?(:allow_multi_label)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
          @sentiment_config = args[:sentiment_config] if args.key?(:sentiment_config)
        end
      end
      
      # Text entity extraction annotation.
      class GoogleCloudDatalabelingV1beta1TextEntityExtractionAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # Start and end position in a sequence (e.g. text segment).
        # Corresponds to the JSON property `sequentialSegment`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SequentialSegment]
        attr_accessor :sequential_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @sequential_segment = args[:sequential_segment] if args.key?(:sequential_segment)
        end
      end
      
      # Config for text entity extraction human labeling task.
      class GoogleCloudDatalabelingV1beta1TextEntityExtractionConfig
        include Google::Apis::Core::Hashable
      
        # Required. Annotation spec set resource name.
        # Corresponds to the JSON property `annotationSpecSet`
        # @return [String]
        attr_accessor :annotation_spec_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set = args[:annotation_spec_set] if args.key?(:annotation_spec_set)
        end
      end
      
      # Metadata for the text.
      class GoogleCloudDatalabelingV1beta1TextMetadata
        include Google::Apis::Core::Hashable
      
        # The language of this text, as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/
        # bcp47.txt). Default value is en-US.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # Container of information about a piece of text.
      class GoogleCloudDatalabelingV1beta1TextPayload
        include Google::Apis::Core::Hashable
      
        # Text content.
        # Corresponds to the JSON property `textContent`
        # @return [String]
        attr_accessor :text_content
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text_content = args[:text_content] if args.key?(:text_content)
        end
      end
      
      # A time period inside of an example that has a time dimension (e.g. video).
      class GoogleCloudDatalabelingV1beta1TimeSegment
        include Google::Apis::Core::Hashable
      
        # End of the time segment (exclusive), represented as the duration since the
        # example start.
        # Corresponds to the JSON property `endTimeOffset`
        # @return [String]
        attr_accessor :end_time_offset
      
        # Start of the time segment (inclusive), represented as the duration since the
        # example start.
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_offset = args[:end_time_offset] if args.key?(:end_time_offset)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
        end
      end
      
      # A vertex represents a 2D point in the image. NOTE: the vertex coordinates are
      # in the same scale as the original image.
      class GoogleCloudDatalabelingV1beta1Vertex
        include Google::Apis::Core::Hashable
      
        # X coordinate.
        # Corresponds to the JSON property `x`
        # @return [Fixnum]
        attr_accessor :x
      
        # Y coordinate.
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
      
      # Video classification annotation.
      class GoogleCloudDatalabelingV1beta1VideoClassificationAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # A time period inside of an example that has a time dimension (e.g. video).
        # Corresponds to the JSON property `timeSegment`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment]
        attr_accessor :time_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @time_segment = args[:time_segment] if args.key?(:time_segment)
        end
      end
      
      # Config for video classification human labeling task. Currently two types of
      # video classification are supported: 1. Assign labels on the entire video. 2.
      # Split the video into multiple video clips based on camera shot, and assign
      # labels on each video clip.
      class GoogleCloudDatalabelingV1beta1VideoClassificationConfig
        include Google::Apis::Core::Hashable
      
        # Required. The list of annotation spec set configs. Since watching a video clip
        # takes much longer time than an image, we support label with multiple
        # AnnotationSpecSet at the same time. Labels in each AnnotationSpecSet will be
        # shown in a group to contributors. Contributors can select one or more (
        # depending on whether to allow multi label) from each group.
        # Corresponds to the JSON property `annotationSpecSetConfigs`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSetConfig>]
        attr_accessor :annotation_spec_set_configs
      
        # Optional. Option to apply shot detection on the video.
        # Corresponds to the JSON property `applyShotDetection`
        # @return [Boolean]
        attr_accessor :apply_shot_detection
        alias_method :apply_shot_detection?, :apply_shot_detection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec_set_configs = args[:annotation_spec_set_configs] if args.key?(:annotation_spec_set_configs)
          @apply_shot_detection = args[:apply_shot_detection] if args.key?(:apply_shot_detection)
        end
      end
      
      # Video event annotation.
      class GoogleCloudDatalabelingV1beta1VideoEventAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # A time period inside of an example that has a time dimension (e.g. video).
        # Corresponds to the JSON property `timeSegment`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment]
        attr_accessor :time_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @time_segment = args[:time_segment] if args.key?(:time_segment)
        end
      end
      
      # Video object tracking annotation.
      class GoogleCloudDatalabelingV1beta1VideoObjectTrackingAnnotation
        include Google::Apis::Core::Hashable
      
        # Container of information related to one possible annotation that can be used
        # in a labeling task. For example, an image classification task where images are
        # labeled as `dog` or `cat` must reference an AnnotationSpec for `dog` and an
        # AnnotationSpec for `cat`.
        # Corresponds to the JSON property `annotationSpec`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpec]
        attr_accessor :annotation_spec
      
        # The list of frames where this object track appears.
        # Corresponds to the JSON property `objectTrackingFrames`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ObjectTrackingFrame>]
        attr_accessor :object_tracking_frames
      
        # A time period inside of an example that has a time dimension (e.g. video).
        # Corresponds to the JSON property `timeSegment`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1TimeSegment]
        attr_accessor :time_segment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_spec = args[:annotation_spec] if args.key?(:annotation_spec)
          @object_tracking_frames = args[:object_tracking_frames] if args.key?(:object_tracking_frames)
          @time_segment = args[:time_segment] if args.key?(:time_segment)
        end
      end
      
      # Container of information of a video.
      class GoogleCloudDatalabelingV1beta1VideoPayload
        include Google::Apis::Core::Hashable
      
        # FPS of the video.
        # Corresponds to the JSON property `frameRate`
        # @return [Float]
        attr_accessor :frame_rate
      
        # Video format.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Signed uri of the video file in the service bucket.
        # Corresponds to the JSON property `signedUri`
        # @return [String]
        attr_accessor :signed_uri
      
        # The list of video thumbnails.
        # Corresponds to the JSON property `videoThumbnails`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1VideoThumbnail>]
        attr_accessor :video_thumbnails
      
        # Video uri from the user bucket.
        # Corresponds to the JSON property `videoUri`
        # @return [String]
        attr_accessor :video_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frame_rate = args[:frame_rate] if args.key?(:frame_rate)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @signed_uri = args[:signed_uri] if args.key?(:signed_uri)
          @video_thumbnails = args[:video_thumbnails] if args.key?(:video_thumbnails)
          @video_uri = args[:video_uri] if args.key?(:video_uri)
        end
      end
      
      # Container of information of a video thumbnail.
      class GoogleCloudDatalabelingV1beta1VideoThumbnail
        include Google::Apis::Core::Hashable
      
        # A byte string of the video frame.
        # Corresponds to the JSON property `thumbnail`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :thumbnail
      
        # Time offset relative to the beginning of the video, corresponding to the video
        # frame where the thumbnail has been extracted from.
        # Corresponds to the JSON property `timeOffset`
        # @return [String]
        attr_accessor :time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @thumbnail = args[:thumbnail] if args.key?(:thumbnail)
          @time_offset = args[:time_offset] if args.key?(:time_offset)
        end
      end
      
      # Metadata of a CreateInstruction operation.
      class GoogleCloudDatalabelingV1p1alpha1CreateInstructionMetadata
        include Google::Apis::Core::Hashable
      
        # Timestamp when create instruction request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the created Instruction. projects/`project_id`/instructions/`
        # instruction_id`
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Partial failures encountered. E.g. single files that couldn't be read. Status
        # details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @instruction = args[:instruction] if args.key?(:instruction)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Metadata of an ExportData operation.
      class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when export dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be exported. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ExportDataset longrunning operation.
      class GoogleCloudDatalabelingV1p1alpha1ExportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Ouptut only. The name of dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples exported successfully.
        # Corresponds to the JSON property `exportCount`
        # @return [Fixnum]
        attr_accessor :export_count
      
        # Statistics about annotation specs.
        # Corresponds to the JSON property `labelStats`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelStats]
        attr_accessor :label_stats
      
        # The configuration of output data.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1OutputConfig]
        attr_accessor :output_config
      
        # Output only. Total number of examples requested to export
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @dataset = args[:dataset] if args.key?(:dataset)
          @export_count = args[:export_count] if args.key?(:export_count)
          @label_stats = args[:label_stats] if args.key?(:label_stats)
          @output_config = args[:output_config] if args.key?(:output_config)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Export destination of the data.Only gcs path is allowed in output_uri.
      class GoogleCloudDatalabelingV1p1alpha1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The format of the gcs destination. Only "text/csv" and "application/
        # json" are supported.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Required. The output uri of destination file.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Export folder destination of the data.
      class GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage directory to export data to.
        # Corresponds to the JSON property `outputFolderUri`
        # @return [String]
        attr_accessor :output_folder_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_folder_uri = args[:output_folder_uri] if args.key?(:output_folder_uri)
        end
      end
      
      # Metadata of an GenerateAnalysisReport operation.
      class GoogleCloudDatalabelingV1p1alpha1GenerateAnalysisReportOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Timestamp when generate report request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the dataset for which the analysis report is generated. Format: "
        # projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
        end
      end
      
      # Configuration for how human labeling task should be done.
      class GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description for AnnotatedDataset. The description
        # can be up to 10000 characters long.
        # Corresponds to the JSON property `annotatedDatasetDescription`
        # @return [String]
        attr_accessor :annotated_dataset_description
      
        # Required. A human-readable name for AnnotatedDataset defined by users. Maximum
        # of 64 characters .
        # Corresponds to the JSON property `annotatedDatasetDisplayName`
        # @return [String]
        attr_accessor :annotated_dataset_display_name
      
        # Optional. If you want your own labeling contributors to manage and work on
        # this labeling request, you can set these contributors here. We will give them
        # access to the question types in crowdcompute. Note that these emails must be
        # registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
        # Corresponds to the JSON property `contributorEmails`
        # @return [Array<String>]
        attr_accessor :contributor_emails
      
        # Required. Instruction resource name.
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Optional. A human-readable label used to logically group labeling tasks. This
        # string must match the regular expression `[a-zA-Z\\d_-]`0,128``.
        # Corresponds to the JSON property `labelGroup`
        # @return [String]
        attr_accessor :label_group
      
        # Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when
        # task is language related. For example, French text classification.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Maximum duration for contributors to answer a question. Maximum is
        # 3600 seconds. Default is 3600 seconds.
        # Corresponds to the JSON property `questionDuration`
        # @return [String]
        attr_accessor :question_duration
      
        # Optional. Replication of questions. Each question will be sent to up to this
        # number of contributors to label. Aggregated answers will be returned. Default
        # is set to 1. For image related labeling, valid values are 1, 3, 5.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Email of the user who started the labeling task and should be notified by
        # email. If empty no notification will be sent.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset_description = args[:annotated_dataset_description] if args.key?(:annotated_dataset_description)
          @annotated_dataset_display_name = args[:annotated_dataset_display_name] if args.key?(:annotated_dataset_display_name)
          @contributor_emails = args[:contributor_emails] if args.key?(:contributor_emails)
          @instruction = args[:instruction] if args.key?(:instruction)
          @label_group = args[:label_group] if args.key?(:label_group)
          @language_code = args[:language_code] if args.key?(:language_code)
          @question_duration = args[:question_duration] if args.key?(:question_duration)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # Metadata of an ImportData operation.
      class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when import dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of imported dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ImportData longrunning operation.
      class GoogleCloudDatalabelingV1p1alpha1ImportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Ouptut only. The name of imported dataset.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples imported successfully.
        # Corresponds to the JSON property `importCount`
        # @return [Fixnum]
        attr_accessor :import_count
      
        # Output only. Total number of examples requested to import
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @import_count = args[:import_count] if args.key?(:import_count)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Details of a LabelImageBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImageBoundingPoly operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a LabelImageClassification operation.
      class GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageOrientedBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImagePolyline operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageSegmentation operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag:
      # 23
      class GoogleCloudDatalabelingV1p1alpha1LabelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when labeling request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be labeled. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Details of a LabelImageBoundingBox operation metadata.
        # Corresponds to the JSON property `imageBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingBoxOperationMetadata]
        attr_accessor :image_bounding_box_details
      
        # Details of LabelImageBoundingPoly operation metadata.
        # Corresponds to the JSON property `imageBoundingPolyDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageBoundingPolyOperationMetadata]
        attr_accessor :image_bounding_poly_details
      
        # Metadata of a LabelImageClassification operation.
        # Corresponds to the JSON property `imageClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageClassificationOperationMetadata]
        attr_accessor :image_classification_details
      
        # Details of a LabelImageOrientedBoundingBox operation metadata.
        # Corresponds to the JSON property `imageOrientedBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageOrientedBoundingBoxOperationMetadata]
        attr_accessor :image_oriented_bounding_box_details
      
        # Details of LabelImagePolyline operation metadata.
        # Corresponds to the JSON property `imagePolylineDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImagePolylineOperationMetadata]
        attr_accessor :image_polyline_details
      
        # Details of a LabelImageSegmentation operation metadata.
        # Corresponds to the JSON property `imageSegmentationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelImageSegmentationOperationMetadata]
        attr_accessor :image_segmentation_details
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        # Output only. Progress of label operation. Range: [0, 100].
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Details of a LabelTextClassification operation metadata.
        # Corresponds to the JSON property `textClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata]
        attr_accessor :text_classification_details
      
        # Details of a LabelTextEntityExtraction operation metadata.
        # Corresponds to the JSON property `textEntityExtractionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata]
        attr_accessor :text_entity_extraction_details
      
        # Details of a LabelVideoClassification operation metadata.
        # Corresponds to the JSON property `videoClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata]
        attr_accessor :video_classification_details
      
        # Details of a LabelVideoEvent operation metadata.
        # Corresponds to the JSON property `videoEventDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata]
        attr_accessor :video_event_details
      
        # Details of a LabelVideoObjectDetection operation metadata.
        # Corresponds to the JSON property `videoObjectDetectionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata]
        attr_accessor :video_object_detection_details
      
        # Details of a LabelVideoObjectTracking operation metadata.
        # Corresponds to the JSON property `videoObjectTrackingDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata]
        attr_accessor :video_object_tracking_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @image_bounding_box_details = args[:image_bounding_box_details] if args.key?(:image_bounding_box_details)
          @image_bounding_poly_details = args[:image_bounding_poly_details] if args.key?(:image_bounding_poly_details)
          @image_classification_details = args[:image_classification_details] if args.key?(:image_classification_details)
          @image_oriented_bounding_box_details = args[:image_oriented_bounding_box_details] if args.key?(:image_oriented_bounding_box_details)
          @image_polyline_details = args[:image_polyline_details] if args.key?(:image_polyline_details)
          @image_segmentation_details = args[:image_segmentation_details] if args.key?(:image_segmentation_details)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @text_classification_details = args[:text_classification_details] if args.key?(:text_classification_details)
          @text_entity_extraction_details = args[:text_entity_extraction_details] if args.key?(:text_entity_extraction_details)
          @video_classification_details = args[:video_classification_details] if args.key?(:video_classification_details)
          @video_event_details = args[:video_event_details] if args.key?(:video_event_details)
          @video_object_detection_details = args[:video_object_detection_details] if args.key?(:video_object_detection_details)
          @video_object_tracking_details = args[:video_object_tracking_details] if args.key?(:video_object_tracking_details)
        end
      end
      
      # Statistics about annotation specs.
      class GoogleCloudDatalabelingV1p1alpha1LabelStats
        include Google::Apis::Core::Hashable
      
        # Map of each annotation spec's example count. Key is the annotation spec name
        # and value is the number of examples for that annotation spec. If the annotated
        # dataset does not have annotation spec, the map will return a pair where the
        # key is empty string and value is the total number of annotations.
        # Corresponds to the JSON property `exampleCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_count = args[:example_count] if args.key?(:example_count)
        end
      end
      
      # Details of a LabelTextClassification operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelTextClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelTextEntityExtraction operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelTextEntityExtractionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoClassification operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoEvent operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoEventOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectDetection operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectDetectionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectTracking operation metadata.
      class GoogleCloudDatalabelingV1p1alpha1LabelVideoObjectTrackingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # The configuration of output data.
      class GoogleCloudDatalabelingV1p1alpha1OutputConfig
        include Google::Apis::Core::Hashable
      
        # Export destination of the data.Only gcs path is allowed in output_uri.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1GcsDestination]
        attr_accessor :gcs_destination
      
        # Export folder destination of the data.
        # Corresponds to the JSON property `gcsFolderDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p1alpha1GcsFolderDestination]
        attr_accessor :gcs_folder_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @gcs_folder_destination = args[:gcs_folder_destination] if args.key?(:gcs_folder_destination)
        end
      end
      
      # Metadata of a CreateInstruction operation.
      class GoogleCloudDatalabelingV1p2alpha1CreateInstructionMetadata
        include Google::Apis::Core::Hashable
      
        # Timestamp when create instruction request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The name of the created Instruction. projects/`project_id`/instructions/`
        # instruction_id`
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Partial failures encountered. E.g. single files that couldn't be read. Status
        # details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @instruction = args[:instruction] if args.key?(:instruction)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Metadata of an ExportData operation.
      class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when export dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be exported. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ExportDataset longrunning operation.
      class GoogleCloudDatalabelingV1p2alpha1ExportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Ouptut only. The name of dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples exported successfully.
        # Corresponds to the JSON property `exportCount`
        # @return [Fixnum]
        attr_accessor :export_count
      
        # Statistics about annotation specs.
        # Corresponds to the JSON property `labelStats`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelStats]
        attr_accessor :label_stats
      
        # The configuration of output data.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1OutputConfig]
        attr_accessor :output_config
      
        # Output only. Total number of examples requested to export
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @dataset = args[:dataset] if args.key?(:dataset)
          @export_count = args[:export_count] if args.key?(:export_count)
          @label_stats = args[:label_stats] if args.key?(:label_stats)
          @output_config = args[:output_config] if args.key?(:output_config)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Export destination of the data.Only gcs path is allowed in output_uri.
      class GoogleCloudDatalabelingV1p2alpha1GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. The format of the gcs destination. Only "text/csv" and "application/
        # json" are supported.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Required. The output uri of destination file.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
        end
      end
      
      # Export folder destination of the data.
      class GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage directory to export data to.
        # Corresponds to the JSON property `outputFolderUri`
        # @return [String]
        attr_accessor :output_folder_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_folder_uri = args[:output_folder_uri] if args.key?(:output_folder_uri)
        end
      end
      
      # Configuration for how human labeling task should be done.
      class GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A human-readable description for AnnotatedDataset. The description
        # can be up to 10000 characters long.
        # Corresponds to the JSON property `annotatedDatasetDescription`
        # @return [String]
        attr_accessor :annotated_dataset_description
      
        # Required. A human-readable name for AnnotatedDataset defined by users. Maximum
        # of 64 characters .
        # Corresponds to the JSON property `annotatedDatasetDisplayName`
        # @return [String]
        attr_accessor :annotated_dataset_display_name
      
        # Optional. If you want your own labeling contributors to manage and work on
        # this labeling request, you can set these contributors here. We will give them
        # access to the question types in crowdcompute. Note that these emails must be
        # registered in crowdcompute worker UI: https://crowd-compute.appspot.com/
        # Corresponds to the JSON property `contributorEmails`
        # @return [Array<String>]
        attr_accessor :contributor_emails
      
        # Required. Instruction resource name.
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Optional. A human-readable label used to logically group labeling tasks. This
        # string must match the regular expression `[a-zA-Z\\d_-]`0,128``.
        # Corresponds to the JSON property `labelGroup`
        # @return [String]
        attr_accessor :label_group
      
        # Optional. The Language of this question, as a [BCP-47](https://www.rfc-editor.
        # org/rfc/bcp/bcp47.txt). Default value is en-US. Only need to set this when
        # task is language related. For example, French text classification.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Maximum duration for contributors to answer a question. Maximum is
        # 3600 seconds. Default is 3600 seconds.
        # Corresponds to the JSON property `questionDuration`
        # @return [String]
        attr_accessor :question_duration
      
        # Optional. Replication of questions. Each question will be sent to up to this
        # number of contributors to label. Aggregated answers will be returned. Default
        # is set to 1. For image related labeling, valid values are 1, 3, 5.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Email of the user who started the labeling task and should be notified by
        # email. If empty no notification will be sent.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset_description = args[:annotated_dataset_description] if args.key?(:annotated_dataset_description)
          @annotated_dataset_display_name = args[:annotated_dataset_display_name] if args.key?(:annotated_dataset_display_name)
          @contributor_emails = args[:contributor_emails] if args.key?(:contributor_emails)
          @instruction = args[:instruction] if args.key?(:instruction)
          @label_group = args[:label_group] if args.key?(:label_group)
          @language_code = args[:language_code] if args.key?(:language_code)
          @question_duration = args[:question_duration] if args.key?(:question_duration)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # Metadata of an ImportData operation.
      class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when import dataset request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of imported dataset. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
        end
      end
      
      # Response used for ImportData longrunning operation.
      class GoogleCloudDatalabelingV1p2alpha1ImportDataOperationResponse
        include Google::Apis::Core::Hashable
      
        # Ouptut only. The name of imported dataset.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Number of examples imported successfully.
        # Corresponds to the JSON property `importCount`
        # @return [Fixnum]
        attr_accessor :import_count
      
        # Output only. Total number of examples requested to import
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @import_count = args[:import_count] if args.key?(:import_count)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # Details of a LabelImageBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImageBoundingPoly operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a LabelImageClassification operation.
      class GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageOrientedBoundingBox operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of LabelImagePolyline operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelImageSegmentation operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Metadata of a labeling operation, such as LabelImage or LabelVideo. Next tag:
      # 23
      class GoogleCloudDatalabelingV1p2alpha1LabelOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The name of annotated dataset in format "projects/*/datasets/*/
        # annotatedDatasets/*".
        # Corresponds to the JSON property `annotatedDataset`
        # @return [String]
        attr_accessor :annotated_dataset
      
        # Output only. Timestamp when labeling request was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of dataset to be labeled. "projects/*/datasets/*"
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Details of a LabelImageBoundingBox operation metadata.
        # Corresponds to the JSON property `imageBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingBoxOperationMetadata]
        attr_accessor :image_bounding_box_details
      
        # Details of LabelImageBoundingPoly operation metadata.
        # Corresponds to the JSON property `imageBoundingPolyDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageBoundingPolyOperationMetadata]
        attr_accessor :image_bounding_poly_details
      
        # Metadata of a LabelImageClassification operation.
        # Corresponds to the JSON property `imageClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageClassificationOperationMetadata]
        attr_accessor :image_classification_details
      
        # Details of a LabelImageOrientedBoundingBox operation metadata.
        # Corresponds to the JSON property `imageOrientedBoundingBoxDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageOrientedBoundingBoxOperationMetadata]
        attr_accessor :image_oriented_bounding_box_details
      
        # Details of LabelImagePolyline operation metadata.
        # Corresponds to the JSON property `imagePolylineDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImagePolylineOperationMetadata]
        attr_accessor :image_polyline_details
      
        # Details of a LabelImageSegmentation operation metadata.
        # Corresponds to the JSON property `imageSegmentationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelImageSegmentationOperationMetadata]
        attr_accessor :image_segmentation_details
      
        # Output only. Partial failures encountered. E.g. single files that couldn't be
        # read. Status details field will contain standard GCP error details.
        # Corresponds to the JSON property `partialFailures`
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleRpcStatus>]
        attr_accessor :partial_failures
      
        # Output only. Progress of label operation. Range: [0, 100].
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Details of a LabelTextClassification operation metadata.
        # Corresponds to the JSON property `textClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata]
        attr_accessor :text_classification_details
      
        # Details of a LabelTextEntityExtraction operation metadata.
        # Corresponds to the JSON property `textEntityExtractionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata]
        attr_accessor :text_entity_extraction_details
      
        # Details of a LabelVideoClassification operation metadata.
        # Corresponds to the JSON property `videoClassificationDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata]
        attr_accessor :video_classification_details
      
        # Details of a LabelVideoEvent operation metadata.
        # Corresponds to the JSON property `videoEventDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata]
        attr_accessor :video_event_details
      
        # Details of a LabelVideoObjectDetection operation metadata.
        # Corresponds to the JSON property `videoObjectDetectionDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata]
        attr_accessor :video_object_detection_details
      
        # Details of a LabelVideoObjectTracking operation metadata.
        # Corresponds to the JSON property `videoObjectTrackingDetails`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata]
        attr_accessor :video_object_tracking_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotated_dataset = args[:annotated_dataset] if args.key?(:annotated_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dataset = args[:dataset] if args.key?(:dataset)
          @image_bounding_box_details = args[:image_bounding_box_details] if args.key?(:image_bounding_box_details)
          @image_bounding_poly_details = args[:image_bounding_poly_details] if args.key?(:image_bounding_poly_details)
          @image_classification_details = args[:image_classification_details] if args.key?(:image_classification_details)
          @image_oriented_bounding_box_details = args[:image_oriented_bounding_box_details] if args.key?(:image_oriented_bounding_box_details)
          @image_polyline_details = args[:image_polyline_details] if args.key?(:image_polyline_details)
          @image_segmentation_details = args[:image_segmentation_details] if args.key?(:image_segmentation_details)
          @partial_failures = args[:partial_failures] if args.key?(:partial_failures)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @text_classification_details = args[:text_classification_details] if args.key?(:text_classification_details)
          @text_entity_extraction_details = args[:text_entity_extraction_details] if args.key?(:text_entity_extraction_details)
          @video_classification_details = args[:video_classification_details] if args.key?(:video_classification_details)
          @video_event_details = args[:video_event_details] if args.key?(:video_event_details)
          @video_object_detection_details = args[:video_object_detection_details] if args.key?(:video_object_detection_details)
          @video_object_tracking_details = args[:video_object_tracking_details] if args.key?(:video_object_tracking_details)
        end
      end
      
      # Statistics about annotation specs.
      class GoogleCloudDatalabelingV1p2alpha1LabelStats
        include Google::Apis::Core::Hashable
      
        # Map of each annotation spec's example count. Key is the annotation spec name
        # and value is the number of examples for that annotation spec. If the annotated
        # dataset does not have annotation spec, the map will return a pair where the
        # key is empty string and value is the total number of annotations.
        # Corresponds to the JSON property `exampleCount`
        # @return [Hash<String,Fixnum>]
        attr_accessor :example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @example_count = args[:example_count] if args.key?(:example_count)
        end
      end
      
      # Details of a LabelTextClassification operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelTextClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelTextEntityExtraction operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelTextEntityExtractionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoClassification operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoClassificationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoEvent operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoEventOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectDetection operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectDetectionOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # Details of a LabelVideoObjectTracking operation metadata.
      class GoogleCloudDatalabelingV1p2alpha1LabelVideoObjectTrackingOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for how human labeling task should be done.
        # Corresponds to the JSON property `basicConfig`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1HumanAnnotationConfig]
        attr_accessor :basic_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @basic_config = args[:basic_config] if args.key?(:basic_config)
        end
      end
      
      # The configuration of output data.
      class GoogleCloudDatalabelingV1p2alpha1OutputConfig
        include Google::Apis::Core::Hashable
      
        # Export destination of the data.Only gcs path is allowed in output_uri.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1GcsDestination]
        attr_accessor :gcs_destination
      
        # Export folder destination of the data.
        # Corresponds to the JSON property `gcsFolderDestination`
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1p2alpha1GcsFolderDestination]
        attr_accessor :gcs_folder_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @gcs_folder_destination = args[:gcs_folder_destination] if args.key?(:gcs_folder_destination)
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
        # @return [Array<Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::DatalabelingV1beta1::GoogleRpcStatus]
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
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
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
    end
  end
end
