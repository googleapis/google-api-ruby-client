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
      
      class AsyncRecognizeRequest
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
      
      class SyncRecognizeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SyncRecognizeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AsyncRecognizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::SpeechV1beta1::RecognitionAudio, decorator: Google::Apis::SpeechV1beta1::RecognitionAudio::Representation
      
          property :config, as: 'config', class: Google::Apis::SpeechV1beta1::RecognitionConfig, decorator: Google::Apis::SpeechV1beta1::RecognitionConfig::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::SpeechV1beta1::Status, decorator: Google::Apis::SpeechV1beta1::Status::Representation
      
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
          property :encoding, as: 'encoding'
          property :language_code, as: 'languageCode'
          property :max_alternatives, as: 'maxAlternatives'
          property :profanity_filter, as: 'profanityFilter'
          property :sample_rate, as: 'sampleRate'
          property :speech_context, as: 'speechContext', class: Google::Apis::SpeechV1beta1::SpeechContext, decorator: Google::Apis::SpeechV1beta1::SpeechContext::Representation
      
        end
      end
      
      class SpeechContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :phrases, as: 'phrases'
        end
      end
      
      class SpeechRecognitionAlternative
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :transcript, as: 'transcript'
        end
      end
      
      class SpeechRecognitionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :alternatives, as: 'alternatives', class: Google::Apis::SpeechV1beta1::SpeechRecognitionAlternative, decorator: Google::Apis::SpeechV1beta1::SpeechRecognitionAlternative::Representation
      
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
      
      class SyncRecognizeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::SpeechV1beta1::RecognitionAudio, decorator: Google::Apis::SpeechV1beta1::RecognitionAudio::Representation
      
          property :config, as: 'config', class: Google::Apis::SpeechV1beta1::RecognitionConfig, decorator: Google::Apis::SpeechV1beta1::RecognitionConfig::Representation
      
        end
      end
      
      class SyncRecognizeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::SpeechV1beta1::SpeechRecognitionResult, decorator: Google::Apis::SpeechV1beta1::SpeechRecognitionResult::Representation
      
        end
      end
    end
  end
end
