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
      
      # Different types of dataset errors and the stats associated with each error.
      class DataErrors
        include Google::Apis::Core::Hashable
      
        # Number of records having errors associated with the enum.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Type of the error.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @error_type = args[:error_type] if args.key?(:error_type)
        end
      end
      
      # Contains stats about the data which was uploaded and preprocessed to be
      # use by downstream pipelines like training, evals pipelines.
      class DataStats
        include Google::Apis::Core::Hashable
      
        # Different types of data errors and the counts associated with them.
        # Corresponds to the JSON property `dataErrors`
        # @return [Array<Google::Apis::SpeechV1p1beta1::DataErrors>]
        attr_accessor :data_errors
      
        # The number of examples used for testing.
        # Corresponds to the JSON property `testExampleCount`
        # @return [Fixnum]
        attr_accessor :test_example_count
      
        # The number of examples used for training.
        # Corresponds to the JSON property `trainingExampleCount`
        # @return [Fixnum]
        attr_accessor :training_example_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_errors = args[:data_errors] if args.key?(:data_errors)
          @test_example_count = args[:test_example_count] if args.key?(:test_example_count)
          @training_example_count = args[:training_example_count] if args.key?(:training_example_count)
        end
      end
      
      # Specifies the parameters needed for creating a dataset. In addition this
      # is also the message returned to the client by the `CreateDataset` method.
      # It is included in the `result.response` field of the `Operation`
      # returned by the `GetOperation` call of the `google::longrunning::Operations`
      # service.
      class Dataset
        include Google::Apis::Core::Hashable
      
        # Output only. All the blocking operations associated with this dataset.
        # Like (pre-processing, training-model, testing-model)
        # Corresponds to the JSON property `blockingOperationIds`
        # @return [Array<String>]
        attr_accessor :blocking_operation_ids
      
        # If set, the log data to be used in this dataset is restricted to the
        # bucket specified. This field is only applicable if use_logged_data is true.
        # If use_logged_data is true, but this field is not set, then all logs will
        # be used for training the models. See: RecognitionMetadata for information
        # on setting up data logs.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Output only. The timestamp this dataset is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Location where the data should be processed. If not specified then we will
        # pick a location on behalf of the user for storing and processing the data.
        # Currently only us-central is supported.
        # Corresponds to the JSON property `dataProcessingRegion`
        # @return [String]
        attr_accessor :data_processing_region
      
        # Contains stats about the data which was uploaded and preprocessed to be
        # use by downstream pipelines like training, evals pipelines.
        # Corresponds to the JSON property `dataStats`
        # @return [Google::Apis::SpeechV1p1beta1::DataStats]
        attr_accessor :data_stats
      
        # Required. Name of the data set for display.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. True if the data is sufficient to create custom models.
        # Corresponds to the JSON property `hasSufficientData`
        # @return [Boolean]
        attr_accessor :has_sufficient_data
        alias_method :has_sufficient_data?, :has_sufficient_data
      
        # Required. The language of the supplied audio as a
        # [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
        # Example: "en-US".
        # See [Language Support](/speech-to-text/docs/languages)
        # for a list of the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # All the models (including models pending training) built using the dataset.
        # Corresponds to the JSON property `models`
        # @return [Array<Google::Apis::SpeechV1p1beta1::Model>]
        attr_accessor :models
      
        # Output only. Resource name of the dataset. Form :-
        # '/projects/`project_number`/locations/`location_id`/datasets/`dataset_id`'
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp this dataset is last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # URI that points to a file in csv file where each row has following format.
        # <gs_path_to_audio>,<gs_path_to_transcript>,<label>
        # label can be HUMAN_TRANSCRIBED or MACHINE_TRANSCRIBED. To be valid, rows
        # must do the following:
        # 1. Each row must have at least a label and <gs_path_to_transcript>
        # 2. If a row is marked HUMAN_TRANSCRIBED, then you must specify both
        # <gs_path_to_audio> and <gs_path_to_transcript>. Only WAV file formats
        # which encode linear 16-bit pulse-code modulation (PCM) audio format are
        # supported. The maximum audio file size is 50 MB. Also note that the audio
        # has to be single channel audio.
        # 3. There has to be at least 500 rows labelled HUMAN_TRANSCRIBED covering
        # at least ~10K words in order to get reliable word error rate results.
        # 4. To create a language model, you should provide at least 100,000 words
        # in your transcriptions as training data if you have conversational and
        # captions type of data. You should provide at least 10,000 words if you
        # have short utterances like voice commands and search type of use cases.
        # Currently, only Google Cloud Storage URIs are
        # supported, which must be specified in the following format:
        # `gs://bucket_name/object_name` (other URI formats will be ignored).
        # For more information, see
        # [Request URIs](/storage/docs/reference-uris).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        # If this is true, then use the previously logged data (for the project)
        # The logs data for this project will be preprocessed and prepared for
        # downstream pipelines (like training)
        # Corresponds to the JSON property `useLoggedData`
        # @return [Boolean]
        attr_accessor :use_logged_data
        alias_method :use_logged_data?, :use_logged_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocking_operation_ids = args[:blocking_operation_ids] if args.key?(:blocking_operation_ids)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_processing_region = args[:data_processing_region] if args.key?(:data_processing_region)
          @data_stats = args[:data_stats] if args.key?(:data_stats)
          @display_name = args[:display_name] if args.key?(:display_name)
          @has_sufficient_data = args[:has_sufficient_data] if args.key?(:has_sufficient_data)
          @language_code = args[:language_code] if args.key?(:language_code)
          @models = args[:models] if args.key?(:models)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
          @use_logged_data = args[:use_logged_data] if args.key?(:use_logged_data)
        end
      end
      
      # Message sent by the client for the `DeployModel` method.
      class DeployModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message sent by the client for the `EvaluateModel` method.
      class EvaluateModelRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The only message returned to the client by the `EvaluateModel` method. This
      # is also returned as part of the Dataset message returned to the client by
      # the CreateDataset method. It is included in the `result.response` field of
      # the `Operation` returned by the `GetOperation` call of the
      # `google::longrunning::Operations` service.
      class EvaluateModelResponse
        include Google::Apis::Core::Hashable
      
        # If true then it means we are referring to the results of an enhanced
        # version of the model_type. Currently only PHONE_CALL model_type has an
        # enhanced version.
        # Corresponds to the JSON property `isEnhancedModel`
        # @return [Boolean]
        attr_accessor :is_enhanced_model
        alias_method :is_enhanced_model?, :is_enhanced_model
      
        # Required. The type of model used in this evaluation.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
        # Number of words used in the word_error_rate computation.
        # Corresponds to the JSON property `wordCount`
        # @return [Fixnum]
        attr_accessor :word_count
      
        # Word error rate metric computed on the test set using the AutoML model.
        # Corresponds to the JSON property `wordErrorRate`
        # @return [Float]
        attr_accessor :word_error_rate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_enhanced_model = args[:is_enhanced_model] if args.key?(:is_enhanced_model)
          @model_type = args[:model_type] if args.key?(:model_type)
          @word_count = args[:word_count] if args.key?(:word_count)
          @word_error_rate = args[:word_error_rate] if args.key?(:word_error_rate)
        end
      end
      
      # 
      class ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # Repeated list of data sets containing details about each data set.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::SpeechV1p1beta1::Dataset>]
        attr_accessor :datasets
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
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
      
      # Message received by the client for the `ListLogDataStats` method.
      class ListLogDataStatsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. True if user has opted in for log data collection.
        # Corresponds to the JSON property `logDataEnabled`
        # @return [Boolean]
        attr_accessor :log_data_enabled
        alias_method :log_data_enabled?, :log_data_enabled
      
        # The stats for each bucket.
        # Corresponds to the JSON property `logDataStats`
        # @return [Array<Google::Apis::SpeechV1p1beta1::LogBucketStats>]
        attr_accessor :log_data_stats
      
        # The overall count for log data (including all bucket data).
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_data_enabled = args[:log_data_enabled] if args.key?(:log_data_enabled)
          @log_data_stats = args[:log_data_stats] if args.key?(:log_data_stats)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # 
      class ListModelsResponse
        include Google::Apis::Core::Hashable
      
        # Repeated list of models containing details about each model.
        # Corresponds to the JSON property `models`
        # @return [Array<Google::Apis::SpeechV1p1beta1::Model>]
        attr_accessor :models
      
        # Token to retrieve the next page of results, or empty if there are no
        # more results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @models = args[:models] if args.key?(:models)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Stats for log data within a bucket.
      class LogBucketStats
        include Google::Apis::Core::Hashable
      
        # The display name for the bucket in which logs are collected.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # Number of audio samples that have been collected in this bucket.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @count = args[:count] if args.key?(:count)
        end
      end
      
      # The top-level message sent by the client for the `LongRunningRecognize`
      # method.
      class LongRunningRecognizeRequest
        include Google::Apis::Core::Hashable
      
        # Contains audio data in the encoding specified in the `RecognitionConfig`.
        # Either `content` or `uri` must be supplied. Supplying both or neither
        # returns google.rpc.Code.INVALID_ARGUMENT. See
        # [content limits](/speech-to-text/quotas#content).
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::SpeechV1p1beta1::RecognitionAudio]
        attr_accessor :audio
      
        # Provides information to the recognizer that specifies how to process the
        # request.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::SpeechV1p1beta1::RecognitionConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # Specifies the model parameters needed for training a model. In addition this
      # is also the message returned to the client by the `CreateModel` method.
      # It is included in the `result.response` field of the `Operation`
      # returned by the `GetOperation` call of the `google::longrunning::Operations`
      # service.
      class Model
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when this model was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Display name of the model to be trained.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Evaluation results associated with this model. A model can
        # contain multiple sub-models in which case the evaluation results for
        # all of those are available. If there are no sub models then there would
        # be just a single EvaluateModelResponse.
        # Corresponds to the JSON property `evaluateModelResponses`
        # @return [Array<Google::Apis::SpeechV1p1beta1::EvaluateModelResponse>]
        attr_accessor :evaluate_model_responses
      
        # Output only. Resource name of the model.
        # Format: "projects/`project_id`/locations/`location_id`/models/`model_id`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Type of the training to perform.
        # Corresponds to the JSON property `trainingType`
        # @return [String]
        attr_accessor :training_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @evaluate_model_responses = args[:evaluate_model_responses] if args.key?(:evaluate_model_responses)
          @name = args[:name] if args.key?(:name)
          @training_type = args[:training_type] if args.key?(:training_type)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by
        # [gRPC](https://github.com/grpc). The error model is designed to be:
        # - Simple to use and understand for most users
        # - Flexible enough to meet unexpected needs
        # # Overview
        # The `Status` message contains three pieces of data: error code, error message,
        # and error details. The error code should be an enum value of
        # google.rpc.Code, but it may accept additional error codes if needed.  The
        # error message should be a developer-facing English message that helps
        # developers *understand* and *resolve* the error. If a localized user-facing
        # error message is needed, put the localized message in the error details or
        # localize it in the client. The optional error details may contain arbitrary
        # information about the error. There is a predefined set of error detail types
        # in the package `google.rpc` that can be used for common error conditions.
        # # Language mapping
        # The `Status` message is the logical representation of the error model, but it
        # is not necessarily the actual wire format. When the `Status` message is
        # exposed in different client libraries and different wire protocols, it can be
        # mapped differently. For example, it will likely be mapped to some exceptions
        # in Java, but more likely mapped to some error codes in C.
        # # Other uses
        # The error model and the `Status` message can be used in a variety of
        # environments, either with or without APIs, to provide a
        # consistent developer experience across different environments.
        # Example uses of this error model include:
        # - Partial errors. If a service needs to return partial errors to the client,
        # it may embed the `Status` in the normal response to indicate the partial
        # errors.
        # - Workflow errors. A typical workflow has multiple steps. Each step may
        # have a `Status` message for error reporting.
        # - Batch operations. If a client uses batch request and batch response, the
        # `Status` message should be used directly inside batch response, one for
        # each error sub-response.
        # - Asynchronous operations. If an API call embeds asynchronous operation
        # results in its response, the status of those operations should be
        # represented directly using the `Status` message.
        # - Logging. If some API errors are stored in logs, the message `Status` could
        # be used directly after any stripping needed for security/privacy reasons.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SpeechV1p1beta1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should have the format of `operations/some/unique/name`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Contains audio data in the encoding specified in the `RecognitionConfig`.
      # Either `content` or `uri` must be supplied. Supplying both or neither
      # returns google.rpc.Code.INVALID_ARGUMENT. See
      # [content limits](/speech-to-text/quotas#content).
      class RecognitionAudio
        include Google::Apis::Core::Hashable
      
        # The audio data bytes encoded as specified in
        # `RecognitionConfig`. Note: as with all bytes fields, protobuffers use a
        # pure binary representation, whereas JSON representations use base64.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # URI that points to a file that contains audio data bytes as specified in
        # `RecognitionConfig`. The file must not be compressed (for example, gzip).
        # Currently, only Google Cloud Storage URIs are
        # supported, which must be specified in the following format:
        # `gs://bucket_name/object_name` (other URI formats return
        # google.rpc.Code.INVALID_ARGUMENT). For more information, see
        # [Request URIs](https://cloud.google.com/storage/docs/reference-uris).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Provides information to the recognizer that specifies how to process the
      # request.
      class RecognitionConfig
        include Google::Apis::Core::Hashable
      
        # *Optional* A list of up to 3 additional
        # [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags,
        # listing possible alternative languages of the supplied audio.
        # See [Language Support](/speech-to-text/docs/languages)
        # for a list of the currently supported language codes.
        # If alternative languages are listed, recognition result will contain
        # recognition in the most likely language detected including the main
        # language_code. The recognition result will include the language tag
        # of the language detected in the audio.
        # Note: This feature is only supported for Voice Command and Voice Search
        # use cases and performance may vary for other use cases (e.g., phone call
        # transcription).
        # Corresponds to the JSON property `alternativeLanguageCodes`
        # @return [Array<String>]
        attr_accessor :alternative_language_codes
      
        # *Optional* The number of channels in the input audio data.
        # ONLY set this for MULTI-CHANNEL recognition.
        # Valid values for LINEAR16 and FLAC are `1`-`8`.
        # Valid values for OGG_OPUS are '1'-'254'.
        # Valid value for MULAW, AMR, AMR_WB and SPEEX_WITH_HEADER_BYTE is only `1`.
        # If `0` or omitted, defaults to one channel (mono).
        # Note: We only recognize the first channel by default.
        # To perform independent recognition on each channel set
        # `enable_separate_recognition_per_channel` to 'true'.
        # Corresponds to the JSON property `audioChannelCount`
        # @return [Fixnum]
        attr_accessor :audio_channel_count
      
        # *Optional*
        # If set, specifies the estimated number of speakers in the conversation.
        # If not set, defaults to '2'.
        # Ignored unless enable_speaker_diarization is set to true."
        # Corresponds to the JSON property `diarizationSpeakerCount`
        # @return [Fixnum]
        attr_accessor :diarization_speaker_count
      
        # *Optional* If 'true', adds punctuation to recognition result hypotheses.
        # This feature is only available in select languages. Setting this for
        # requests in other languages has no effect at all.
        # The default 'false' value does not add punctuation to result hypotheses.
        # Note: This is currently offered as an experimental service, complimentary
        # to all users. In the future this may be exclusively available as a
        # premium feature.
        # Corresponds to the JSON property `enableAutomaticPunctuation`
        # @return [Boolean]
        attr_accessor :enable_automatic_punctuation
        alias_method :enable_automatic_punctuation?, :enable_automatic_punctuation
      
        # This needs to be set to ‘true’ explicitly and `audio_channel_count` > 1
        # to get each channel recognized separately. The recognition result will
        # contain a `channel_tag` field to state which channel that result belongs
        # to. If this is not true, we will only recognize the first channel. The
        # request is billed cumulatively for all channels recognized:
        # `audio_channel_count` multiplied by the length of the audio.
        # Corresponds to the JSON property `enableSeparateRecognitionPerChannel`
        # @return [Boolean]
        attr_accessor :enable_separate_recognition_per_channel
        alias_method :enable_separate_recognition_per_channel?, :enable_separate_recognition_per_channel
      
        # *Optional* If 'true', enables speaker detection for each recognized word in
        # the top alternative of the recognition result using a speaker_tag provided
        # in the WordInfo.
        # Note: When this is true, we send all the words from the beginning of the
        # audio for the top alternative in every consecutive STREAMING responses.
        # This is done in order to improve our speaker tags as our models learn to
        # identify the speakers in the conversation over time.
        # For non-streaming requests, the diarization results will be provided only
        # in the top alternative of the FINAL SpeechRecognitionResult.
        # Corresponds to the JSON property `enableSpeakerDiarization`
        # @return [Boolean]
        attr_accessor :enable_speaker_diarization
        alias_method :enable_speaker_diarization?, :enable_speaker_diarization
      
        # *Optional* If `true`, the top result includes a list of words and the
        # confidence for those words. If `false`, no word-level confidence
        # information is returned. The default is `false`.
        # Corresponds to the JSON property `enableWordConfidence`
        # @return [Boolean]
        attr_accessor :enable_word_confidence
        alias_method :enable_word_confidence?, :enable_word_confidence
      
        # *Optional* If `true`, the top result includes a list of words and
        # the start and end time offsets (timestamps) for those words. If
        # `false`, no word-level time offset information is returned. The default is
        # `false`.
        # Corresponds to the JSON property `enableWordTimeOffsets`
        # @return [Boolean]
        attr_accessor :enable_word_time_offsets
        alias_method :enable_word_time_offsets?, :enable_word_time_offsets
      
        # Encoding of audio data sent in all `RecognitionAudio` messages.
        # This field is optional for `FLAC` and `WAV` audio files and required
        # for all other audio formats. For details, see AudioEncoding.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # *Required* The language of the supplied audio as a
        # [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
        # Example: "en-US".
        # See [Language Support](/speech-to-text/docs/languages)
        # for a list of the currently supported language codes.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # *Optional* Maximum number of recognition hypotheses to be returned.
        # Specifically, the maximum number of `SpeechRecognitionAlternative` messages
        # within each `SpeechRecognitionResult`.
        # The server may return fewer than `max_alternatives`.
        # Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of
        # one. If omitted, will return a maximum of one.
        # Corresponds to the JSON property `maxAlternatives`
        # @return [Fixnum]
        attr_accessor :max_alternatives
      
        # Description of audio data to be recognized.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SpeechV1p1beta1::RecognitionMetadata]
        attr_accessor :metadata
      
        # *Optional* Which model to select for the given request. Select the model
        # best suited to your domain to get best results. If a model is not
        # explicitly specified, then we auto-select a model based on the parameters
        # in the RecognitionConfig.
        # <table>
        # <tr>
        # <td><b>Model</b></td>
        # <td><b>Description</b></td>
        # </tr>
        # <tr>
        # <td><code>command_and_search</code></td>
        # <td>Best for short queries such as voice commands or voice search.</td>
        # </tr>
        # <tr>
        # <td><code>phone_call</code></td>
        # <td>Best for audio that originated from a phone call (typically
        # recorded at an 8khz sampling rate).</td>
        # </tr>
        # <tr>
        # <td><code>video</code></td>
        # <td>Best for audio that originated from from video or includes multiple
        # speakers. Ideally the audio is recorded at a 16khz or greater
        # sampling rate. This is a premium model that costs more than the
        # standard rate.</td>
        # </tr>
        # <tr>
        # <td><code>default</code></td>
        # <td>Best for audio that is not one of the specific audio models.
        # For example, long-form audio. Ideally the audio is high-fidelity,
        # recorded at a 16khz or greater sampling rate.</td>
        # </tr>
        # </table>
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # *Optional* If set to `true`, the server will attempt to filter out
        # profanities, replacing all but the initial character in each filtered word
        # with asterisks, e.g. "f***". If set to `false` or omitted, profanities
        # won't be filtered out.
        # Corresponds to the JSON property `profanityFilter`
        # @return [Boolean]
        attr_accessor :profanity_filter
        alias_method :profanity_filter?, :profanity_filter
      
        # Sample rate in Hertz of the audio data sent in all
        # `RecognitionAudio` messages. Valid values are: 8000-48000.
        # 16000 is optimal. For best results, set the sampling rate of the audio
        # source to 16000 Hz. If that's not possible, use the native sample rate of
        # the audio source (instead of re-sampling).
        # This field is optional for `FLAC` and `WAV` audio files and required
        # for all other audio formats. For details, see AudioEncoding.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # *Optional* array of SpeechContext.
        # A means to provide context to assist the speech recognition. For more
        # information, see [Phrase Hints](/speech-to-text/docs/basics#phrase-hints).
        # Corresponds to the JSON property `speechContexts`
        # @return [Array<Google::Apis::SpeechV1p1beta1::SpeechContext>]
        attr_accessor :speech_contexts
      
        # *Optional* Set to true to use an enhanced model for speech recognition.
        # If `use_enhanced` is set to true and the `model` field is not set, then
        # an appropriate enhanced model is chosen if:
        # 1. project is eligible for requesting enhanced models
        # 2. an enhanced model exists for the audio
        # If `use_enhanced` is true and an enhanced version of the specified model
        # does not exist, then the speech is recognized using the standard version
        # of the specified model.
        # Enhanced speech models require that you opt-in to data logging using
        # instructions in the
        # [documentation](/speech-to-text/docs/enable-data-logging). If you set
        # `use_enhanced` to true and you have not enabled audio logging, then you
        # will receive an error.
        # Corresponds to the JSON property `useEnhanced`
        # @return [Boolean]
        attr_accessor :use_enhanced
        alias_method :use_enhanced?, :use_enhanced
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_language_codes = args[:alternative_language_codes] if args.key?(:alternative_language_codes)
          @audio_channel_count = args[:audio_channel_count] if args.key?(:audio_channel_count)
          @diarization_speaker_count = args[:diarization_speaker_count] if args.key?(:diarization_speaker_count)
          @enable_automatic_punctuation = args[:enable_automatic_punctuation] if args.key?(:enable_automatic_punctuation)
          @enable_separate_recognition_per_channel = args[:enable_separate_recognition_per_channel] if args.key?(:enable_separate_recognition_per_channel)
          @enable_speaker_diarization = args[:enable_speaker_diarization] if args.key?(:enable_speaker_diarization)
          @enable_word_confidence = args[:enable_word_confidence] if args.key?(:enable_word_confidence)
          @enable_word_time_offsets = args[:enable_word_time_offsets] if args.key?(:enable_word_time_offsets)
          @encoding = args[:encoding] if args.key?(:encoding)
          @language_code = args[:language_code] if args.key?(:language_code)
          @max_alternatives = args[:max_alternatives] if args.key?(:max_alternatives)
          @metadata = args[:metadata] if args.key?(:metadata)
          @model = args[:model] if args.key?(:model)
          @profanity_filter = args[:profanity_filter] if args.key?(:profanity_filter)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @speech_contexts = args[:speech_contexts] if args.key?(:speech_contexts)
          @use_enhanced = args[:use_enhanced] if args.key?(:use_enhanced)
        end
      end
      
      # Description of audio data to be recognized.
      class RecognitionMetadata
        include Google::Apis::Core::Hashable
      
        # Description of the content. Eg. "Recordings of federal supreme court
        # hearings from 2012".
        # Corresponds to the JSON property `audioTopic`
        # @return [String]
        attr_accessor :audio_topic
      
        # The industry vertical to which this speech recognition request most
        # closely applies. This is most indicative of the topics contained
        # in the audio.  Use the 6-digit NAICS code to identify the industry
        # vertical - see https://www.naics.com/search/.
        # Corresponds to the JSON property `industryNaicsCodeOfAudio`
        # @return [Fixnum]
        attr_accessor :industry_naics_code_of_audio
      
        # The use case most closely describing the audio content to be recognized.
        # Corresponds to the JSON property `interactionType`
        # @return [String]
        attr_accessor :interaction_type
      
        # The audio type that most closely describes the audio being recognized.
        # Corresponds to the JSON property `microphoneDistance`
        # @return [String]
        attr_accessor :microphone_distance
      
        # Obfuscated (privacy-protected) ID of the user, to identify number of
        # unique users using the service.
        # Corresponds to the JSON property `obfuscatedId`
        # @return [Fixnum]
        attr_accessor :obfuscated_id
      
        # The original media the speech was recorded on.
        # Corresponds to the JSON property `originalMediaType`
        # @return [String]
        attr_accessor :original_media_type
      
        # Mime type of the original audio file.  For example `audio/m4a`,
        # `audio/x-alaw-basic`, `audio/mp3`, `audio/3gpp`.
        # A list of possible audio mime types is maintained at
        # http://www.iana.org/assignments/media-types/media-types.xhtml#audio
        # Corresponds to the JSON property `originalMimeType`
        # @return [String]
        attr_accessor :original_mime_type
      
        # The device used to make the recording.  Examples 'Nexus 5X' or
        # 'Polycom SoundStation IP 6000' or 'POTS' or 'VoIP' or
        # 'Cardioid Microphone'.
        # Corresponds to the JSON property `recordingDeviceName`
        # @return [String]
        attr_accessor :recording_device_name
      
        # The type of device the speech was recorded with.
        # Corresponds to the JSON property `recordingDeviceType`
        # @return [String]
        attr_accessor :recording_device_type
      
        # A freeform field to tag this input sample with. This can be used for
        # grouping the logs into separate buckets. This enables selective purging of
        # data based on the tags, and also for training models in AutoML.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_topic = args[:audio_topic] if args.key?(:audio_topic)
          @industry_naics_code_of_audio = args[:industry_naics_code_of_audio] if args.key?(:industry_naics_code_of_audio)
          @interaction_type = args[:interaction_type] if args.key?(:interaction_type)
          @microphone_distance = args[:microphone_distance] if args.key?(:microphone_distance)
          @obfuscated_id = args[:obfuscated_id] if args.key?(:obfuscated_id)
          @original_media_type = args[:original_media_type] if args.key?(:original_media_type)
          @original_mime_type = args[:original_mime_type] if args.key?(:original_mime_type)
          @recording_device_name = args[:recording_device_name] if args.key?(:recording_device_name)
          @recording_device_type = args[:recording_device_type] if args.key?(:recording_device_type)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # The top-level message sent by the client for the `Recognize` method.
      class RecognizeRequest
        include Google::Apis::Core::Hashable
      
        # Contains audio data in the encoding specified in the `RecognitionConfig`.
        # Either `content` or `uri` must be supplied. Supplying both or neither
        # returns google.rpc.Code.INVALID_ARGUMENT. See
        # [content limits](/speech-to-text/quotas#content).
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::SpeechV1p1beta1::RecognitionAudio]
        attr_accessor :audio
      
        # Provides information to the recognizer that specifies how to process the
        # request.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::SpeechV1p1beta1::RecognitionConfig]
        attr_accessor :config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @config = args[:config] if args.key?(:config)
        end
      end
      
      # The only message returned to the client by the `Recognize` method. It
      # contains the result as zero or more sequential `SpeechRecognitionResult`
      # messages.
      class RecognizeResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Sequential list of transcription results corresponding to
        # sequential portions of audio.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::SpeechV1p1beta1::SpeechRecognitionResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Message sent by the client to refresh data in a existing dataset.
      class RefreshDataRequest
        include Google::Apis::Core::Hashable
      
        # URI that points to a file in csv file where each row has following format.
        # <gs_path_to_audio>,<gs_path_to_transcript>,<label>
        # label can be HUMAN_TRANSCRIBED or MACHINE_TRANSCRIBED. Few rules for a row
        # to be considered valid are :-
        # 1. Each row must have at least a label and <gs_path_to_transcript>
        # 2. If a row is marked HUMAN_TRANSCRIBED, then both <gs_path_to_audio>
        # and <gs_path_to_transcript> needs to be specified.
        # 3. There has to be minimum 500 number of rows labelled HUMAN_TRANSCRIBED if
        # evaluation stats are required.
        # 4. If use_logged_data_for_training is set to true, then we ignore the rows
        # labelled as MACHINE_TRANSCRIBED.
        # 5. There has to be minimum 100,000 words in the transcripts in order to
        # provide sufficient textual training data for the language model.
        # Currently, only Google Cloud Storage URIs are
        # supported, which must be specified in the following format:
        # `gs://bucket_name/object_name` (other URI formats will be ignored).
        # For more information, see
        # [Request URIs](https://cloud.google.com/storage/docs/reference-uris).
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
      
      # Provides "hints" to the speech recognizer to favor specific words and phrases
      # in the results.
      class SpeechContext
        include Google::Apis::Core::Hashable
      
        # *Optional* A list of strings containing words and phrases "hints" so that
        # the speech recognition is more likely to recognize them. This can be used
        # to improve the accuracy for specific words and phrases, for example, if
        # specific commands are typically spoken by the user. This can also be used
        # to add additional words to the vocabulary of the recognizer. See
        # [usage limits](/speech-to-text/quotas#content).
        # Corresponds to the JSON property `phrases`
        # @return [Array<String>]
        attr_accessor :phrases
      
        # Hint strength to use (high, medium or low). If you use a high strength then
        # you are more likely to see those phrases in the results. If strength is not
        # specified then by default medium strength will be used. If you'd like
        # different phrases to have different strengths, you can specify multiple
        # speech_contexts.
        # Corresponds to the JSON property `strength`
        # @return [String]
        attr_accessor :strength
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phrases = args[:phrases] if args.key?(:phrases)
          @strength = args[:strength] if args.key?(:strength)
        end
      end
      
      # Alternative hypotheses (a.k.a. n-best list).
      class SpeechRecognitionAlternative
        include Google::Apis::Core::Hashable
      
        # Output only. The confidence estimate between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. This field is set only for the top alternative of a non-streaming
        # result or, of a streaming result where `is_final=true`.
        # This field is not guaranteed to be accurate and users should not rely on it
        # to be always provided.
        # The default of 0.0 is a sentinel value indicating `confidence` was not set.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Output only. Transcript text representing the words that the user spoke.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        # Output only. A list of word-specific information for each recognized word.
        # Note: When `enable_speaker_diarization` is true, you will see all the words
        # from the beginning of the audio.
        # Corresponds to the JSON property `words`
        # @return [Array<Google::Apis::SpeechV1p1beta1::WordInfo>]
        attr_accessor :words
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @transcript = args[:transcript] if args.key?(:transcript)
          @words = args[:words] if args.key?(:words)
        end
      end
      
      # A speech recognition result corresponding to a portion of the audio.
      class SpeechRecognitionResult
        include Google::Apis::Core::Hashable
      
        # Output only. May contain one or more recognition hypotheses (up to the
        # maximum specified in `max_alternatives`).
        # These alternatives are ordered in terms of accuracy, with the top (first)
        # alternative being the most probable, as ranked by the recognizer.
        # Corresponds to the JSON property `alternatives`
        # @return [Array<Google::Apis::SpeechV1p1beta1::SpeechRecognitionAlternative>]
        attr_accessor :alternatives
      
        # For multi-channel audio, this is the channel number corresponding to the
        # recognized result for the audio from that channel.
        # For audio_channel_count = N, its output values can range from '1' to 'N'.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # Output only. The
        # [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the
        # language in this result. This language code was detected to have the most
        # likelihood of being spoken in the audio.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternatives = args[:alternatives] if args.key?(:alternatives)
          @channel_tag = args[:channel_tag] if args.key?(:channel_tag)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by
      # [gRPC](https://github.com/grpc). The error model is designed to be:
      # - Simple to use and understand for most users
      # - Flexible enough to meet unexpected needs
      # # Overview
      # The `Status` message contains three pieces of data: error code, error message,
      # and error details. The error code should be an enum value of
      # google.rpc.Code, but it may accept additional error codes if needed.  The
      # error message should be a developer-facing English message that helps
      # developers *understand* and *resolve* the error. If a localized user-facing
      # error message is needed, put the localized message in the error details or
      # localize it in the client. The optional error details may contain arbitrary
      # information about the error. There is a predefined set of error detail types
      # in the package `google.rpc` that can be used for common error conditions.
      # # Language mapping
      # The `Status` message is the logical representation of the error model, but it
      # is not necessarily the actual wire format. When the `Status` message is
      # exposed in different client libraries and different wire protocols, it can be
      # mapped differently. For example, it will likely be mapped to some exceptions
      # in Java, but more likely mapped to some error codes in C.
      # # Other uses
      # The error model and the `Status` message can be used in a variety of
      # environments, either with or without APIs, to provide a
      # consistent developer experience across different environments.
      # Example uses of this error model include:
      # - Partial errors. If a service needs to return partial errors to the client,
      # it may embed the `Status` in the normal response to indicate the partial
      # errors.
      # - Workflow errors. A typical workflow has multiple steps. Each step may
      # have a `Status` message for error reporting.
      # - Batch operations. If a client uses batch request and batch response, the
      # `Status` message should be used directly inside batch response, one for
      # each error sub-response.
      # - Asynchronous operations. If an API call embeds asynchronous operation
      # results in its response, the status of those operations should be
      # represented directly using the `Status` message.
      # - Logging. If some API errors are stored in logs, the message `Status` could
      # be used directly after any stripping needed for security/privacy reasons.
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # Word-specific information for recognized words.
      class WordInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The confidence estimate between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. This field is set only for the top alternative of a non-streaming
        # result or, of a streaming result where `is_final=true`.
        # This field is not guaranteed to be accurate and users should not rely on it
        # to be always provided.
        # The default of 0.0 is a sentinel value indicating `confidence` was not set.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Output only. Time offset relative to the beginning of the audio,
        # and corresponding to the end of the spoken word.
        # This field is only set if `enable_word_time_offsets=true` and only
        # in the top hypothesis.
        # This is an experimental feature and the accuracy of the time offset can
        # vary.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. A distinct integer value is assigned for every speaker within
        # the audio. This field specifies which one of those speakers was detected to
        # have spoken this word. Value ranges from '1' to diarization_speaker_count.
        # speaker_tag is set if enable_speaker_diarization = 'true' and only in the
        # top alternative.
        # Corresponds to the JSON property `speakerTag`
        # @return [Fixnum]
        attr_accessor :speaker_tag
      
        # Output only. Time offset relative to the beginning of the audio,
        # and corresponding to the start of the spoken word.
        # This field is only set if `enable_word_time_offsets=true` and only
        # in the top hypothesis.
        # This is an experimental feature and the accuracy of the time offset can
        # vary.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The word corresponding to this set of information.
        # Corresponds to the JSON property `word`
        # @return [String]
        attr_accessor :word
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @end_time = args[:end_time] if args.key?(:end_time)
          @speaker_tag = args[:speaker_tag] if args.key?(:speaker_tag)
          @start_time = args[:start_time] if args.key?(:start_time)
          @word = args[:word] if args.key?(:word)
        end
      end
    end
  end
end
