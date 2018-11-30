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
    module SpeechV1p1beta1
      
      class DataErrors
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluateModelRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EvaluateModelResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLogDataStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogBucketStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LongRunningRecognizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Model
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecognitionAudio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecognitionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecognitionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecognizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RecognizeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpeechContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpeechRecognitionAlternative
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpeechRecognitionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WordInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataErrors
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count'
          property :error_type, as: 'errorType'
        end
      end
      
      class DataStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_errors, as: 'dataErrors', class: Google::Apis::SpeechV1p1beta1::DataErrors, decorator: Google::Apis::SpeechV1p1beta1::DataErrors::Representation
      
          property :test_example_count, as: 'testExampleCount'
          property :training_example_count, as: 'trainingExampleCount'
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :blocking_operation_ids, as: 'blockingOperationIds'
          property :bucket_name, as: 'bucketName'
          property :create_time, as: 'createTime'
          property :data_processing_region, as: 'dataProcessingRegion'
          property :data_stats, as: 'dataStats', class: Google::Apis::SpeechV1p1beta1::DataStats, decorator: Google::Apis::SpeechV1p1beta1::DataStats::Representation
      
          property :display_name, as: 'displayName'
          property :has_sufficient_data, as: 'hasSufficientData'
          property :language_code, as: 'languageCode'
          collection :models, as: 'models', class: Google::Apis::SpeechV1p1beta1::Model, decorator: Google::Apis::SpeechV1p1beta1::Model::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
          property :use_logged_data, as: 'useLoggedData'
        end
      end
      
      class DeployModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EvaluateModelRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EvaluateModelResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_enhanced_model, as: 'isEnhancedModel'
          property :model_type, as: 'modelType'
          property :word_count, as: 'wordCount'
          property :word_error_rate, as: 'wordErrorRate'
        end
      end
      
      class ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::SpeechV1p1beta1::Dataset, decorator: Google::Apis::SpeechV1p1beta1::Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLogDataStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_data_enabled, as: 'logDataEnabled'
          collection :log_data_stats, as: 'logDataStats', class: Google::Apis::SpeechV1p1beta1::LogBucketStats, decorator: Google::Apis::SpeechV1p1beta1::LogBucketStats::Representation
      
          property :total_count, as: 'totalCount'
        end
      end
      
      class ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::SpeechV1p1beta1::Model, decorator: Google::Apis::SpeechV1p1beta1::Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class LogBucketStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket_name, as: 'bucketName'
          property :count, as: 'count'
        end
      end
      
      class LongRunningRecognizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::SpeechV1p1beta1::RecognitionAudio, decorator: Google::Apis::SpeechV1p1beta1::RecognitionAudio::Representation
      
          property :config, as: 'config', class: Google::Apis::SpeechV1p1beta1::RecognitionConfig, decorator: Google::Apis::SpeechV1p1beta1::RecognitionConfig::Representation
      
        end
      end
      
      class Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          collection :evaluate_model_responses, as: 'evaluateModelResponses', class: Google::Apis::SpeechV1p1beta1::EvaluateModelResponse, decorator: Google::Apis::SpeechV1p1beta1::EvaluateModelResponse::Representation
      
          property :name, as: 'name'
          property :training_type, as: 'trainingType'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::SpeechV1p1beta1::Status, decorator: Google::Apis::SpeechV1p1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class RecognitionAudio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :uri, as: 'uri'
        end
      end
      
      class RecognitionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternative_language_codes, as: 'alternativeLanguageCodes'
          property :audio_channel_count, as: 'audioChannelCount'
          property :diarization_speaker_count, as: 'diarizationSpeakerCount'
          property :enable_automatic_punctuation, as: 'enableAutomaticPunctuation'
          property :enable_separate_recognition_per_channel, as: 'enableSeparateRecognitionPerChannel'
          property :enable_speaker_diarization, as: 'enableSpeakerDiarization'
          property :enable_word_confidence, as: 'enableWordConfidence'
          property :enable_word_time_offsets, as: 'enableWordTimeOffsets'
          property :encoding, as: 'encoding'
          property :language_code, as: 'languageCode'
          property :max_alternatives, as: 'maxAlternatives'
          property :metadata, as: 'metadata', class: Google::Apis::SpeechV1p1beta1::RecognitionMetadata, decorator: Google::Apis::SpeechV1p1beta1::RecognitionMetadata::Representation
      
          property :model, as: 'model'
          property :profanity_filter, as: 'profanityFilter'
          property :sample_rate_hertz, as: 'sampleRateHertz'
          collection :speech_contexts, as: 'speechContexts', class: Google::Apis::SpeechV1p1beta1::SpeechContext, decorator: Google::Apis::SpeechV1p1beta1::SpeechContext::Representation
      
          property :use_enhanced, as: 'useEnhanced'
        end
      end
      
      class RecognitionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_topic, as: 'audioTopic'
          property :industry_naics_code_of_audio, as: 'industryNaicsCodeOfAudio'
          property :interaction_type, as: 'interactionType'
          property :microphone_distance, as: 'microphoneDistance'
          property :obfuscated_id, :numeric_string => true, as: 'obfuscatedId'
          property :original_media_type, as: 'originalMediaType'
          property :original_mime_type, as: 'originalMimeType'
          property :recording_device_name, as: 'recordingDeviceName'
          property :recording_device_type, as: 'recordingDeviceType'
          collection :tags, as: 'tags'
        end
      end
      
      class RecognizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::SpeechV1p1beta1::RecognitionAudio, decorator: Google::Apis::SpeechV1p1beta1::RecognitionAudio::Representation
      
          property :config, as: 'config', class: Google::Apis::SpeechV1p1beta1::RecognitionConfig, decorator: Google::Apis::SpeechV1p1beta1::RecognitionConfig::Representation
      
        end
      end
      
      class RecognizeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::SpeechV1p1beta1::SpeechRecognitionResult, decorator: Google::Apis::SpeechV1p1beta1::SpeechRecognitionResult::Representation
      
        end
      end
      
      class RefreshDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class SpeechContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :phrases, as: 'phrases'
          property :strength, as: 'strength'
        end
      end
      
      class SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
          collection :words, as: 'words', class: Google::Apis::SpeechV1p1beta1::WordInfo, decorator: Google::Apis::SpeechV1p1beta1::WordInfo::Representation
      
        end
      end
      
      class SpeechRecognitionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::SpeechV1p1beta1::SpeechRecognitionAlternative, decorator: Google::Apis::SpeechV1p1beta1::SpeechRecognitionAlternative::Representation
      
          property :channel_tag, as: 'channelTag'
          property :language_code, as: 'languageCode'
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
      
      class WordInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :end_time, as: 'endTime'
          property :speaker_tag, as: 'speakerTag'
          property :start_time, as: 'startTime'
          property :word, as: 'word'
        end
      end
    end
  end
end
