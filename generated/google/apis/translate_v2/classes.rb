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
    module TranslateV2
      
      # 
      class ListDetectionsResponse
        include Google::Apis::Core::Hashable
      
        # A detections contains detection results of several text
        # Corresponds to the JSON property `detections`
        # @return [Array<Array<Google::Apis::TranslateV2::DetectionsResource>>]
        attr_accessor :detections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detections = args[:detections] if args.key?(:detections)
        end
      end
      
      # 
      class DetectionsResource
        include Google::Apis::Core::Hashable
      
        # The confidence of the detection resul of this language.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # A boolean to indicate is the language detection result reliable.
        # Corresponds to the JSON property `isReliable`
        # @return [Boolean]
        attr_accessor :is_reliable
        alias_method :is_reliable?, :is_reliable
      
        # The language we detect
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @is_reliable = args[:is_reliable] if args.key?(:is_reliable)
          @language = args[:language] if args.key?(:language)
        end
      end
      
      # 
      class ListLanguagesResponse
        include Google::Apis::Core::Hashable
      
        # List of source/target languages supported by the translation API. If target
        # parameter is unspecified, the list is sorted by the ASCII code point order of
        # the language code. If target parameter is specified, the list is sorted by the
        # collation order of the language name in the target language.
        # Corresponds to the JSON property `languages`
        # @return [Array<Google::Apis::TranslateV2::LanguagesResource>]
        attr_accessor :languages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @languages = args[:languages] if args.key?(:languages)
        end
      end
      
      # 
      class LanguagesResource
        include Google::Apis::Core::Hashable
      
        # The language code.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The localized name of the language if target parameter is given.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language = args[:language] if args.key?(:language)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class ListTranslationsResponse
        include Google::Apis::Core::Hashable
      
        # Translations contains list of translation results of given text
        # Corresponds to the JSON property `translations`
        # @return [Array<Google::Apis::TranslateV2::TranslationsResource>]
        attr_accessor :translations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @translations = args[:translations] if args.key?(:translations)
        end
      end
      
      # 
      class TranslationsResource
        include Google::Apis::Core::Hashable
      
        # Detected source language if source parameter is unspecified.
        # Corresponds to the JSON property `detectedSourceLanguage`
        # @return [String]
        attr_accessor :detected_source_language
      
        # The translation.
        # Corresponds to the JSON property `translatedText`
        # @return [String]
        attr_accessor :translated_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_source_language = args[:detected_source_language] if args.key?(:detected_source_language)
          @translated_text = args[:translated_text] if args.key?(:translated_text)
        end
      end
    end
  end
end
