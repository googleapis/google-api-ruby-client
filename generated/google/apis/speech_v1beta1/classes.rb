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
    module SpeechV1beta1
      
      # The top-level message sent by the client for the `AsyncRecognize` method.
      class AsyncRecognizeRequest
        include Google::Apis::Core::Hashable
      
        # Contains audio data in the encoding specified in the `RecognitionConfig`.
        # Either `content` or `uri` must be supplied. Supplying both or neither
        # returns google.rpc.Code.INVALID_ARGUMENT. See
        # [audio limits](https://cloud.google.com/speech/limits#content).
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::SpeechV1beta1::RecognitionAudio]
        attr_accessor :audio
      
        # Provides information to the recognizer that specifies how to process the
        # request.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::SpeechV1beta1::RecognitionConfig]
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
        # @return [Google::Apis::SpeechV1beta1::Status]
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
      # [audio limits](https://cloud.google.com/speech/limits#content).
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
        # `RecognitionConfig`. Currently, only Google Cloud Storage URIs are
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
      
        # *Required* Encoding of audio data sent in all `RecognitionAudio` messages.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # *Optional* The language of the supplied audio as a BCP-47 language tag.
        # Example: "en-GB"  https://www.rfc-editor.org/rfc/bcp/bcp47.txt
        # If omitted, defaults to "en-US". See
        # [Language Support](https://cloud.google.com/speech/docs/languages)
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
      
        # *Optional* If set to `true`, the server will attempt to filter out
        # profanities, replacing all but the initial character in each filtered word
        # with asterisks, e.g. "f***". If set to `false` or omitted, profanities
        # won't be filtered out.
        # Corresponds to the JSON property `profanityFilter`
        # @return [Boolean]
        attr_accessor :profanity_filter
        alias_method :profanity_filter?, :profanity_filter
      
        # *Required* Sample rate in Hertz of the audio data sent in all
        # `RecognitionAudio` messages. Valid values are: 8000-48000.
        # 16000 is optimal. For best results, set the sampling rate of the audio
        # source to 16000 Hz. If that's not possible, use the native sample rate of
        # the audio source (instead of re-sampling).
        # Corresponds to the JSON property `sampleRate`
        # @return [Fixnum]
        attr_accessor :sample_rate
      
        # Provides "hints" to the speech recognizer to favor specific words and phrases
        # in the results.
        # Corresponds to the JSON property `speechContext`
        # @return [Google::Apis::SpeechV1beta1::SpeechContext]
        attr_accessor :speech_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
          @language_code = args[:language_code] if args.key?(:language_code)
          @max_alternatives = args[:max_alternatives] if args.key?(:max_alternatives)
          @profanity_filter = args[:profanity_filter] if args.key?(:profanity_filter)
          @sample_rate = args[:sample_rate] if args.key?(:sample_rate)
          @speech_context = args[:speech_context] if args.key?(:speech_context)
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
        # [usage limits](https://cloud.google.com/speech/limits#content).
        # Corresponds to the JSON property `phrases`
        # @return [Array<String>]
        attr_accessor :phrases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phrases = args[:phrases] if args.key?(:phrases)
        end
      end
      
      # Alternative hypotheses (a.k.a. n-best list).
      class SpeechRecognitionAlternative
        include Google::Apis::Core::Hashable
      
        # *Output-only* The confidence estimate between 0.0 and 1.0. A higher number
        # indicates an estimated greater likelihood that the recognized words are
        # correct. This field is typically provided only for the top hypothesis, and
        # only for `is_final=true` results. Clients should not rely on the
        # `confidence` field as it is not guaranteed to be accurate, or even set, in
        # any of the results.
        # The default of 0.0 is a sentinel value indicating `confidence` was not set.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # *Output-only* Transcript text representing the words that the user spoke.
        # Corresponds to the JSON property `transcript`
        # @return [String]
        attr_accessor :transcript
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @transcript = args[:transcript] if args.key?(:transcript)
        end
      end
      
      # A speech recognition result corresponding to a portion of the audio.
      class SpeechRecognitionResult
        include Google::Apis::Core::Hashable
      
        # *Output-only* May contain one or more recognition hypotheses (up to the
        # maximum specified in `max_alternatives`).
        # Corresponds to the JSON property `alternatives`
        # @return [Array<Google::Apis::SpeechV1beta1::SpeechRecognitionAlternative>]
        attr_accessor :alternatives
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternatives = args[:alternatives] if args.key?(:alternatives)
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
      
      # The top-level message sent by the client for the `SyncRecognize` method.
      class SyncRecognizeRequest
        include Google::Apis::Core::Hashable
      
        # Contains audio data in the encoding specified in the `RecognitionConfig`.
        # Either `content` or `uri` must be supplied. Supplying both or neither
        # returns google.rpc.Code.INVALID_ARGUMENT. See
        # [audio limits](https://cloud.google.com/speech/limits#content).
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::SpeechV1beta1::RecognitionAudio]
        attr_accessor :audio
      
        # Provides information to the recognizer that specifies how to process the
        # request.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::SpeechV1beta1::RecognitionConfig]
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
      
      # The only message returned to the client by `SyncRecognize`. method. It
      # contains the result as zero or more sequential `SpeechRecognitionResult`
      # messages.
      class SyncRecognizeResponse
        include Google::Apis::Core::Hashable
      
        # *Output-only* Sequential list of transcription results corresponding to
        # sequential portions of audio.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::SpeechV1beta1::SpeechRecognitionResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
    end
  end
end
