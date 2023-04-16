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
    module TranslateV3beta1
      
      # Input configuration for BatchTranslateDocument request.
      class BatchDocumentInputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location for the input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::TranslateV3beta1::GcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # Output configuration for BatchTranslateDocument request.
      class BatchDocumentOutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location for the output content.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::TranslateV3beta1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # The BatchTranslateDocument request.
      class BatchTranslateDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This flag is to support user customized attribution. If not provided,
        # the default is `Machine Translated by Google`. Customized attribution should
        # follow rules in https://cloud.google.com/translate/attribution#
        # attribution_and_logos
        # Corresponds to the JSON property `customizedAttribution`
        # @return [String]
        attr_accessor :customized_attribution
      
        # Optional. If true, use the text removal server to remove the shadow text on
        # background image for native pdf translation. Shadow removal feature can only
        # be enabled when is_translate_native_pdf_only: false && pdf_native_only: false
        # Corresponds to the JSON property `enableShadowRemovalNativePdf`
        # @return [Boolean]
        attr_accessor :enable_shadow_removal_native_pdf
        alias_method :enable_shadow_removal_native_pdf?, :enable_shadow_removal_native_pdf
      
        # Optional.
        # Corresponds to the JSON property `formatConversions`
        # @return [Hash<String,String>]
        attr_accessor :format_conversions
      
        # Optional. Glossaries to be applied. It's keyed by target language code.
        # Corresponds to the JSON property `glossaries`
        # @return [Hash<String,Google::Apis::TranslateV3beta1::TranslateTextGlossaryConfig>]
        attr_accessor :glossaries
      
        # Required. Input configurations. The total number of files matched should be <=
        # 100. The total content size to translate should be <= 100M Unicode codepoints.
        # The files must use UTF-8 encoding.
        # Corresponds to the JSON property `inputConfigs`
        # @return [Array<Google::Apis::TranslateV3beta1::BatchDocumentInputConfig>]
        attr_accessor :input_configs
      
        # Optional. The models to use for translation. Map's key is target language code.
        # Map's value is the model name. Value can be a built-in general model, or an
        # AutoML Translation model. The value format depends on model type: - AutoML
        # Translation models: `projects/`project-number-or-id`/locations/`location-id`/
        # models/`model-id`` - General (built-in) models: `projects/`project-number-or-
        # id`/locations/`location-id`/models/general/nmt`, If the map is empty or a
        # specific model is not requested for a language pair, then default google model
        # (nmt) is used.
        # Corresponds to the JSON property `models`
        # @return [Hash<String,String>]
        attr_accessor :models
      
        # Output configuration for BatchTranslateDocument request.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::TranslateV3beta1::BatchDocumentOutputConfig]
        attr_accessor :output_config
      
        # Required. The BCP-47 language code of the input document if known, for example,
        # "en-US" or "sr-Latn". Supported language codes are listed in [Language
        # Support](https://cloud.google.com/translate/docs/languages).
        # Corresponds to the JSON property `sourceLanguageCode`
        # @return [String]
        attr_accessor :source_language_code
      
        # Required. The BCP-47 language code to use for translation of the input
        # document. Specify up to 10 language codes here.
        # Corresponds to the JSON property `targetLanguageCodes`
        # @return [Array<String>]
        attr_accessor :target_language_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customized_attribution = args[:customized_attribution] if args.key?(:customized_attribution)
          @enable_shadow_removal_native_pdf = args[:enable_shadow_removal_native_pdf] if args.key?(:enable_shadow_removal_native_pdf)
          @format_conversions = args[:format_conversions] if args.key?(:format_conversions)
          @glossaries = args[:glossaries] if args.key?(:glossaries)
          @input_configs = args[:input_configs] if args.key?(:input_configs)
          @models = args[:models] if args.key?(:models)
          @output_config = args[:output_config] if args.key?(:output_config)
          @source_language_code = args[:source_language_code] if args.key?(:source_language_code)
          @target_language_codes = args[:target_language_codes] if args.key?(:target_language_codes)
        end
      end
      
      # The batch translation request.
      class BatchTranslateTextRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Glossaries to be applied for translation. It's keyed by target
        # language code.
        # Corresponds to the JSON property `glossaries`
        # @return [Hash<String,Google::Apis::TranslateV3beta1::TranslateTextGlossaryConfig>]
        attr_accessor :glossaries
      
        # Required. Input configurations. The total number of files matched should be <=
        # 100. The total content size should be <= 100M Unicode codepoints. The files
        # must use UTF-8 encoding.
        # Corresponds to the JSON property `inputConfigs`
        # @return [Array<Google::Apis::TranslateV3beta1::InputConfig>]
        attr_accessor :input_configs
      
        # Optional. The labels with user-defined metadata for the request. Label keys
        # and values can be no longer than 63 characters (Unicode codepoints), can only
        # contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter. See https://cloud.google.com/translate/docs/labels
        # for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The models to use for translation. Map's key is target language code.
        # Map's value is model name. Value can be a built-in general model, or an
        # AutoML Translation model. The value format depends on model type: - AutoML
        # Translation models: `projects/`project-number-or-id`/locations/`location-id`/
        # models/`model-id`` - General (built-in) models: `projects/`project-number-or-
        # id`/locations/`location-id`/models/general/nmt`, If the map is empty or a
        # specific model is not requested for a language pair, then default google model
        # (nmt) is used.
        # Corresponds to the JSON property `models`
        # @return [Hash<String,String>]
        attr_accessor :models
      
        # Output configuration for BatchTranslateText request.
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::TranslateV3beta1::OutputConfig]
        attr_accessor :output_config
      
        # Required. Source language code.
        # Corresponds to the JSON property `sourceLanguageCode`
        # @return [String]
        attr_accessor :source_language_code
      
        # Required. Specify up to 10 language codes here.
        # Corresponds to the JSON property `targetLanguageCodes`
        # @return [Array<String>]
        attr_accessor :target_language_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glossaries = args[:glossaries] if args.key?(:glossaries)
          @input_configs = args[:input_configs] if args.key?(:input_configs)
          @labels = args[:labels] if args.key?(:labels)
          @models = args[:models] if args.key?(:models)
          @output_config = args[:output_config] if args.key?(:output_config)
          @source_language_code = args[:source_language_code] if args.key?(:source_language_code)
          @target_language_codes = args[:target_language_codes] if args.key?(:target_language_codes)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request message for language detection.
      class DetectLanguageRequest
        include Google::Apis::Core::Hashable
      
        # The content of the input stored as a string.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # Optional. The labels with user-defined metadata for the request. Label keys
        # and values can be no longer than 63 characters (Unicode codepoints), can only
        # contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter. See https://cloud.google.com/translate/docs/labels
        # for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The format of the source text, for example, "text/html", "text/plain"
        # . If left blank, the MIME type defaults to "text/html".
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Optional. The language detection model to be used. Format: `projects/`project-
        # number-or-id`/locations/`location-id`/models/language-detection/`model-id``
        # Only one language detection model is currently supported: `projects/`project-
        # number-or-id`/locations/`location-id`/models/language-detection/default`. If
        # not specified, the default model is used.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @labels = args[:labels] if args.key?(:labels)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # The response message for language detection.
      class DetectLanguageResponse
        include Google::Apis::Core::Hashable
      
        # A list of detected languages sorted by detection confidence in descending
        # order. The most probable language first.
        # Corresponds to the JSON property `languages`
        # @return [Array<Google::Apis::TranslateV3beta1::DetectedLanguage>]
        attr_accessor :languages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @languages = args[:languages] if args.key?(:languages)
        end
      end
      
      # The response message for language detection.
      class DetectedLanguage
        include Google::Apis::Core::Hashable
      
        # The confidence of the detection result for this language.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The BCP-47 language code of source content in the request, detected
        # automatically.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # A document translation request input config.
      class DocumentInputConfig
        include Google::Apis::Core::Hashable
      
        # Document's content represented as a stream of bytes.
        # Corresponds to the JSON property `content`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :content
      
        # The Google Cloud Storage location for the input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::TranslateV3beta1::GcsSource]
        attr_accessor :gcs_source
      
        # Specifies the input document's mime_type. If not specified it will be
        # determined using the file extension for gcs_source provided files. For a file
        # provided through bytes content the mime_type must be provided. Currently
        # supported mime types are: - application/pdf - application/vnd.openxmlformats-
        # officedocument.wordprocessingml.document - application/vnd.openxmlformats-
        # officedocument.presentationml.presentation - application/vnd.openxmlformats-
        # officedocument.spreadsheetml.sheet
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A document translation request output config.
      class DocumentOutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location for the output content.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::TranslateV3beta1::GcsDestination]
        attr_accessor :gcs_destination
      
        # Optional. Specifies the translated document's mime_type. If not specified, the
        # translated file's mime type will be the same as the input file's mime type.
        # Currently only support the output mime type to be the same as input mime type.
        # - application/pdf - application/vnd.openxmlformats-officedocument.
        # wordprocessingml.document - application/vnd.openxmlformats-officedocument.
        # presentationml.presentation - application/vnd.openxmlformats-officedocument.
        # spreadsheetml.sheet
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A translated document message.
      class DocumentTranslation
        include Google::Apis::Core::Hashable
      
        # The array of translated documents. It is expected to be size 1 for now. We may
        # produce multiple translated documents in the future for other type of file
        # formats.
        # Corresponds to the JSON property `byteStreamOutputs`
        # @return [Array<String>]
        attr_accessor :byte_stream_outputs
      
        # The detected language for the input document. If the user did not provide the
        # source language for the input document, this field will have the language code
        # automatically detected. If the source language was passed, auto-detection of
        # the language does not occur and this field is empty.
        # Corresponds to the JSON property `detectedLanguageCode`
        # @return [String]
        attr_accessor :detected_language_code
      
        # The translated document's mime type.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @byte_stream_outputs = args[:byte_stream_outputs] if args.key?(:byte_stream_outputs)
          @detected_language_code = args[:detected_language_code] if args.key?(:detected_language_code)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The Google Cloud Storage location for the output content.
      class GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. There must be no files under 'output_uri_prefix'. 'output_uri_prefix'
        # must end with "/" and start with "gs://", otherwise an INVALID_ARGUMENT (400)
        # error is returned.
        # Corresponds to the JSON property `outputUriPrefix`
        # @return [String]
        attr_accessor :output_uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri_prefix = args[:output_uri_prefix] if args.key?(:output_uri_prefix)
        end
      end
      
      # The Google Cloud Storage location for the input content.
      class GcsSource
        include Google::Apis::Core::Hashable
      
        # Required. Source data URI. For example, `gs://my_bucket/my_object`.
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
      
      # Represents a glossary built from user provided data.
      class Glossary
        include Google::Apis::Core::Hashable
      
        # Output only. When the glossary creation was finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The number of entries defined in the glossary.
        # Corresponds to the JSON property `entryCount`
        # @return [Fixnum]
        attr_accessor :entry_count
      
        # Input configuration for glossaries.
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::TranslateV3beta1::GlossaryInputConfig]
        attr_accessor :input_config
      
        # Used with equivalent term set glossaries.
        # Corresponds to the JSON property `languageCodesSet`
        # @return [Google::Apis::TranslateV3beta1::LanguageCodesSet]
        attr_accessor :language_codes_set
      
        # Used with unidirectional glossaries.
        # Corresponds to the JSON property `languagePair`
        # @return [Google::Apis::TranslateV3beta1::LanguageCodePair]
        attr_accessor :language_pair
      
        # Required. The resource name of the glossary. Glossary names have the form `
        # projects/`project-number-or-id`/locations/`location-id`/glossaries/`glossary-
        # id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. When CreateGlossary was called.
        # Corresponds to the JSON property `submitTime`
        # @return [String]
        attr_accessor :submit_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @entry_count = args[:entry_count] if args.key?(:entry_count)
          @input_config = args[:input_config] if args.key?(:input_config)
          @language_codes_set = args[:language_codes_set] if args.key?(:language_codes_set)
          @language_pair = args[:language_pair] if args.key?(:language_pair)
          @name = args[:name] if args.key?(:name)
          @submit_time = args[:submit_time] if args.key?(:submit_time)
        end
      end
      
      # Input configuration for glossaries.
      class GlossaryInputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location for the input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::TranslateV3beta1::GcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # Input configuration for BatchTranslateText request.
      class InputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location for the input content.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::TranslateV3beta1::GcsSource]
        attr_accessor :gcs_source
      
        # Optional. Can be "text/plain" or "text/html". For `.tsv`, "text/html" is used
        # if mime_type is missing. For `.html`, this field must be "text/html" or empty.
        # For `.txt`, this field must be "text/plain" or empty.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Used with unidirectional glossaries.
      class LanguageCodePair
        include Google::Apis::Core::Hashable
      
        # Required. The BCP-47 language code of the input text, for example, "en-US".
        # Expected to be an exact match for GlossaryTerm.language_code.
        # Corresponds to the JSON property `sourceLanguageCode`
        # @return [String]
        attr_accessor :source_language_code
      
        # Required. The BCP-47 language code for translation output, for example, "zh-CN"
        # . Expected to be an exact match for GlossaryTerm.language_code.
        # Corresponds to the JSON property `targetLanguageCode`
        # @return [String]
        attr_accessor :target_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @source_language_code = args[:source_language_code] if args.key?(:source_language_code)
          @target_language_code = args[:target_language_code] if args.key?(:target_language_code)
        end
      end
      
      # Used with equivalent term set glossaries.
      class LanguageCodesSet
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code(s) for terms defined in the glossary. All entries are
        # unique. The list contains at least two entries. Expected to be an exact match
        # for GlossaryTerm.language_code.
        # Corresponds to the JSON property `languageCodes`
        # @return [Array<String>]
        attr_accessor :language_codes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_codes = args[:language_codes] if args.key?(:language_codes)
        end
      end
      
      # Response message for ListGlossaries.
      class ListGlossariesResponse
        include Google::Apis::Core::Hashable
      
        # The list of glossaries for a project.
        # Corresponds to the JSON property `glossaries`
        # @return [Array<Google::Apis::TranslateV3beta1::Glossary>]
        attr_accessor :glossaries
      
        # A token to retrieve a page of results. Pass this value in the [
        # ListGlossariesRequest.page_token] field in the subsequent call to `
        # ListGlossaries` method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glossaries = args[:glossaries] if args.key?(:glossaries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::TranslateV3beta1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::TranslateV3beta1::Operation>]
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
      
      # A resource that represents Google Cloud Platform location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::TranslateV3beta1::Status]
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
      
      # Output configuration for BatchTranslateText request.
      class OutputConfig
        include Google::Apis::Core::Hashable
      
        # The Google Cloud Storage location for the output content.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::TranslateV3beta1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # A single supported language response corresponds to information related to one
      # supported language.
      class SupportedLanguage
        include Google::Apis::Core::Hashable
      
        # Human readable name of the language localized in the display language
        # specified in the request.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Supported language code, generally consisting of its ISO 639-1 identifier, for
        # example, 'en', 'ja'. In certain cases, BCP-47 codes including language and
        # region identifiers are returned (for example, 'zh-TW' and 'zh-CN')
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Can be used as source language.
        # Corresponds to the JSON property `supportSource`
        # @return [Boolean]
        attr_accessor :support_source
        alias_method :support_source?, :support_source
      
        # Can be used as target language.
        # Corresponds to the JSON property `supportTarget`
        # @return [Boolean]
        attr_accessor :support_target
        alias_method :support_target?, :support_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @language_code = args[:language_code] if args.key?(:language_code)
          @support_source = args[:support_source] if args.key?(:support_source)
          @support_target = args[:support_target] if args.key?(:support_target)
        end
      end
      
      # The response message for discovering supported languages.
      class SupportedLanguages
        include Google::Apis::Core::Hashable
      
        # A list of supported language responses. This list contains an entry for each
        # language the Translation API supports.
        # Corresponds to the JSON property `languages`
        # @return [Array<Google::Apis::TranslateV3beta1::SupportedLanguage>]
        attr_accessor :languages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @languages = args[:languages] if args.key?(:languages)
        end
      end
      
      # A document translation request.
      class TranslateDocumentRequest
        include Google::Apis::Core::Hashable
      
        # Optional. This flag is to support user customized attribution. If not provided,
        # the default is `Machine Translated by Google`. Customized attribution should
        # follow rules in https://cloud.google.com/translate/attribution#
        # attribution_and_logos
        # Corresponds to the JSON property `customizedAttribution`
        # @return [String]
        attr_accessor :customized_attribution
      
        # A document translation request input config.
        # Corresponds to the JSON property `documentInputConfig`
        # @return [Google::Apis::TranslateV3beta1::DocumentInputConfig]
        attr_accessor :document_input_config
      
        # A document translation request output config.
        # Corresponds to the JSON property `documentOutputConfig`
        # @return [Google::Apis::TranslateV3beta1::DocumentOutputConfig]
        attr_accessor :document_output_config
      
        # Optional. If true, enable auto rotation correction in DVS.
        # Corresponds to the JSON property `enableRotationCorrection`
        # @return [Boolean]
        attr_accessor :enable_rotation_correction
        alias_method :enable_rotation_correction?, :enable_rotation_correction
      
        # Optional. If true, use the text removal server to remove the shadow text on
        # background image for native pdf translation. Shadow removal feature can only
        # be enabled when is_translate_native_pdf_only: false && pdf_native_only: false
        # Corresponds to the JSON property `enableShadowRemovalNativePdf`
        # @return [Boolean]
        attr_accessor :enable_shadow_removal_native_pdf
        alias_method :enable_shadow_removal_native_pdf?, :enable_shadow_removal_native_pdf
      
        # Configures which glossary should be used for a specific target language, and
        # defines options for applying that glossary.
        # Corresponds to the JSON property `glossaryConfig`
        # @return [Google::Apis::TranslateV3beta1::TranslateTextGlossaryConfig]
        attr_accessor :glossary_config
      
        # Optional. is_translate_native_pdf_only field for external customers. If true,
        # the page limit of online native pdf translation is 300 and only native pdf
        # pages will be translated.
        # Corresponds to the JSON property `isTranslateNativePdfOnly`
        # @return [Boolean]
        attr_accessor :is_translate_native_pdf_only
        alias_method :is_translate_native_pdf_only?, :is_translate_native_pdf_only
      
        # Optional. The labels with user-defined metadata for the request. Label keys
        # and values can be no longer than 63 characters (Unicode codepoints), can only
        # contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter. See https://cloud.google.com/translate/docs/advanced/
        # labels for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The `model` type requested for this translation. The format depends
        # on model type: - AutoML Translation models: `projects/`project-number-or-id`/
        # locations/`location-id`/models/`model-id`` - General (built-in) models: `
        # projects/`project-number-or-id`/locations/`location-id`/models/general/nmt`,
        # If not provided, the default Google model (NMT) will be used for translation.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. The BCP-47 language code of the input document if known, for example,
        # "en-US" or "sr-Latn". Supported language codes are listed in Language Support.
        # If the source language isn't specified, the API attempts to identify the
        # source language automatically and returns the source language within the
        # response. Source language must be specified if the request contains a glossary
        # or a custom model.
        # Corresponds to the JSON property `sourceLanguageCode`
        # @return [String]
        attr_accessor :source_language_code
      
        # Required. The BCP-47 language code to use for translation of the input
        # document, set to one of the language codes listed in Language Support.
        # Corresponds to the JSON property `targetLanguageCode`
        # @return [String]
        attr_accessor :target_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customized_attribution = args[:customized_attribution] if args.key?(:customized_attribution)
          @document_input_config = args[:document_input_config] if args.key?(:document_input_config)
          @document_output_config = args[:document_output_config] if args.key?(:document_output_config)
          @enable_rotation_correction = args[:enable_rotation_correction] if args.key?(:enable_rotation_correction)
          @enable_shadow_removal_native_pdf = args[:enable_shadow_removal_native_pdf] if args.key?(:enable_shadow_removal_native_pdf)
          @glossary_config = args[:glossary_config] if args.key?(:glossary_config)
          @is_translate_native_pdf_only = args[:is_translate_native_pdf_only] if args.key?(:is_translate_native_pdf_only)
          @labels = args[:labels] if args.key?(:labels)
          @model = args[:model] if args.key?(:model)
          @source_language_code = args[:source_language_code] if args.key?(:source_language_code)
          @target_language_code = args[:target_language_code] if args.key?(:target_language_code)
        end
      end
      
      # A translated document response message.
      class TranslateDocumentResponse
        include Google::Apis::Core::Hashable
      
        # A translated document message.
        # Corresponds to the JSON property `documentTranslation`
        # @return [Google::Apis::TranslateV3beta1::DocumentTranslation]
        attr_accessor :document_translation
      
        # Configures which glossary should be used for a specific target language, and
        # defines options for applying that glossary.
        # Corresponds to the JSON property `glossaryConfig`
        # @return [Google::Apis::TranslateV3beta1::TranslateTextGlossaryConfig]
        attr_accessor :glossary_config
      
        # A translated document message.
        # Corresponds to the JSON property `glossaryDocumentTranslation`
        # @return [Google::Apis::TranslateV3beta1::DocumentTranslation]
        attr_accessor :glossary_document_translation
      
        # Only present when 'model' is present in the request. 'model' is normalized to
        # have a project number. For example: If the 'model' field in
        # TranslateDocumentRequest is: `projects/`project-id`/locations/`location-id`/
        # models/general/nmt` then `model` here would be normalized to `projects/`
        # project-number`/locations/`location-id`/models/general/nmt`.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_translation = args[:document_translation] if args.key?(:document_translation)
          @glossary_config = args[:glossary_config] if args.key?(:glossary_config)
          @glossary_document_translation = args[:glossary_document_translation] if args.key?(:glossary_document_translation)
          @model = args[:model] if args.key?(:model)
        end
      end
      
      # Configures which glossary should be used for a specific target language, and
      # defines options for applying that glossary.
      class TranslateTextGlossaryConfig
        include Google::Apis::Core::Hashable
      
        # Required. Specifies the glossary used for this translation. Use this format:
        # projects/*/locations/*/glossaries/*
        # Corresponds to the JSON property `glossary`
        # @return [String]
        attr_accessor :glossary
      
        # Optional. Indicates match is case-insensitive. Default value is false if
        # missing.
        # Corresponds to the JSON property `ignoreCase`
        # @return [Boolean]
        attr_accessor :ignore_case
        alias_method :ignore_case?, :ignore_case
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glossary = args[:glossary] if args.key?(:glossary)
          @ignore_case = args[:ignore_case] if args.key?(:ignore_case)
        end
      end
      
      # The request message for synchronous translation.
      class TranslateTextRequest
        include Google::Apis::Core::Hashable
      
        # Required. The content of the input in string format. We recommend the total
        # content be less than 30k codepoints. The max length of this field is 1024. Use
        # BatchTranslateText for larger text.
        # Corresponds to the JSON property `contents`
        # @return [Array<String>]
        attr_accessor :contents
      
        # Configures which glossary should be used for a specific target language, and
        # defines options for applying that glossary.
        # Corresponds to the JSON property `glossaryConfig`
        # @return [Google::Apis::TranslateV3beta1::TranslateTextGlossaryConfig]
        attr_accessor :glossary_config
      
        # Optional. The labels with user-defined metadata for the request. Label keys
        # and values can be no longer than 63 characters (Unicode codepoints), can only
        # contain lowercase letters, numeric characters, underscores and dashes.
        # International characters are allowed. Label values are optional. Label keys
        # must start with a letter. See https://cloud.google.com/translate/docs/labels
        # for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The format of the source text, for example, "text/html", "text/plain"
        # . If left blank, the MIME type defaults to "text/html".
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # Optional. The `model` type requested for this translation. The format depends
        # on model type: - AutoML Translation models: `projects/`project-number-or-id`/
        # locations/`location-id`/models/`model-id`` - General (built-in) models: `
        # projects/`project-number-or-id`/locations/`location-id`/models/general/nmt`,
        # For global (non-regionalized) requests, use `location-id` `global`. For
        # example, `projects/`project-number-or-id`/locations/global/models/general/nmt`.
        # If not provided, the default Google model (NMT) will be used
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Optional. The BCP-47 language code of the input text if known, for example, "
        # en-US" or "sr-Latn". Supported language codes are listed in Language Support.
        # If the source language isn't specified, the API attempts to identify the
        # source language automatically and returns the source language within the
        # response.
        # Corresponds to the JSON property `sourceLanguageCode`
        # @return [String]
        attr_accessor :source_language_code
      
        # Required. The BCP-47 language code to use for translation of the input text,
        # set to one of the language codes listed in Language Support.
        # Corresponds to the JSON property `targetLanguageCode`
        # @return [String]
        attr_accessor :target_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @glossary_config = args[:glossary_config] if args.key?(:glossary_config)
          @labels = args[:labels] if args.key?(:labels)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @model = args[:model] if args.key?(:model)
          @source_language_code = args[:source_language_code] if args.key?(:source_language_code)
          @target_language_code = args[:target_language_code] if args.key?(:target_language_code)
        end
      end
      
      # 
      class TranslateTextResponse
        include Google::Apis::Core::Hashable
      
        # Text translation responses if a glossary is provided in the request. This can
        # be the same as `translations` if no terms apply. This field has the same
        # length as `contents`.
        # Corresponds to the JSON property `glossaryTranslations`
        # @return [Array<Google::Apis::TranslateV3beta1::Translation>]
        attr_accessor :glossary_translations
      
        # Text translation responses with no glossary applied. This field has the same
        # length as `contents`.
        # Corresponds to the JSON property `translations`
        # @return [Array<Google::Apis::TranslateV3beta1::Translation>]
        attr_accessor :translations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glossary_translations = args[:glossary_translations] if args.key?(:glossary_translations)
          @translations = args[:translations] if args.key?(:translations)
        end
      end
      
      # A single translation response.
      class Translation
        include Google::Apis::Core::Hashable
      
        # The BCP-47 language code of source text in the initial request, detected
        # automatically, if no source language was passed within the initial request. If
        # the source language was passed, auto-detection of the language does not occur
        # and this field is empty.
        # Corresponds to the JSON property `detectedLanguageCode`
        # @return [String]
        attr_accessor :detected_language_code
      
        # Configures which glossary should be used for a specific target language, and
        # defines options for applying that glossary.
        # Corresponds to the JSON property `glossaryConfig`
        # @return [Google::Apis::TranslateV3beta1::TranslateTextGlossaryConfig]
        attr_accessor :glossary_config
      
        # Only present when `model` is present in the request. `model` here is
        # normalized to have project number. For example: If the `model` requested in
        # TranslationTextRequest is `projects/`project-id`/locations/`location-id`/
        # models/general/nmt` then `model` here would be normalized to `projects/`
        # project-number`/locations/`location-id`/models/general/nmt`.
        # Corresponds to the JSON property `model`
        # @return [String]
        attr_accessor :model
      
        # Text translated into the target language. If an error occurs during
        # translation, this field might be excluded from the response.
        # Corresponds to the JSON property `translatedText`
        # @return [String]
        attr_accessor :translated_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_language_code = args[:detected_language_code] if args.key?(:detected_language_code)
          @glossary_config = args[:glossary_config] if args.key?(:glossary_config)
          @model = args[:model] if args.key?(:model)
          @translated_text = args[:translated_text] if args.key?(:translated_text)
        end
      end
      
      # The request message for Operations.WaitOperation.
      class WaitOperationRequest
        include Google::Apis::Core::Hashable
      
        # The maximum duration to wait before timing out. If left blank, the wait will
        # be at most the time permitted by the underlying HTTP/RPC protocol. If RPC
        # context deadline is also specified, the shorter one will be used.
        # Corresponds to the JSON property `timeout`
        # @return [String]
        attr_accessor :timeout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @timeout = args[:timeout] if args.key?(:timeout)
        end
      end
    end
  end
end
