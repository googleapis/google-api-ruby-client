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
    module TranslateV3
      
      class BatchDocumentInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDocumentOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchTranslateDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchTranslateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DatasetOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectLanguageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectLanguageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentOutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentTranslation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Example
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsInputSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsOutputDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Glossary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlossaryEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlossaryInputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlossaryTerm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlossaryTermsPair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GlossaryTermsSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportDataRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageCodePair
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LanguageCodesSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDatasetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListExamplesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGlossariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGlossaryEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListModelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class OutputConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupportedLanguage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupportedLanguages
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranslateDocumentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranslateDocumentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranslateTextGlossaryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranslateTextRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TranslateTextResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Translation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WaitOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDocumentInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::TranslateV3::GcsSource, decorator: Google::Apis::TranslateV3::GcsSource::Representation
      
        end
      end
      
      class BatchDocumentOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::TranslateV3::GcsDestination, decorator: Google::Apis::TranslateV3::GcsDestination::Representation
      
        end
      end
      
      class BatchTranslateDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customized_attribution, as: 'customizedAttribution'
          property :enable_shadow_removal_native_pdf, as: 'enableShadowRemovalNativePdf'
          hash :format_conversions, as: 'formatConversions'
          hash :glossaries, as: 'glossaries', class: Google::Apis::TranslateV3::TranslateTextGlossaryConfig, decorator: Google::Apis::TranslateV3::TranslateTextGlossaryConfig::Representation
      
          collection :input_configs, as: 'inputConfigs', class: Google::Apis::TranslateV3::BatchDocumentInputConfig, decorator: Google::Apis::TranslateV3::BatchDocumentInputConfig::Representation
      
          hash :models, as: 'models'
          property :output_config, as: 'outputConfig', class: Google::Apis::TranslateV3::BatchDocumentOutputConfig, decorator: Google::Apis::TranslateV3::BatchDocumentOutputConfig::Representation
      
          property :source_language_code, as: 'sourceLanguageCode'
          collection :target_language_codes, as: 'targetLanguageCodes'
        end
      end
      
      class BatchTranslateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :glossaries, as: 'glossaries', class: Google::Apis::TranslateV3::TranslateTextGlossaryConfig, decorator: Google::Apis::TranslateV3::TranslateTextGlossaryConfig::Representation
      
          collection :input_configs, as: 'inputConfigs', class: Google::Apis::TranslateV3::InputConfig, decorator: Google::Apis::TranslateV3::InputConfig::Representation
      
          hash :labels, as: 'labels'
          hash :models, as: 'models'
          property :output_config, as: 'outputConfig', class: Google::Apis::TranslateV3::OutputConfig, decorator: Google::Apis::TranslateV3::OutputConfig::Representation
      
          property :source_language_code, as: 'sourceLanguageCode'
          collection :target_language_codes, as: 'targetLanguageCodes'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Dataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :example_count, as: 'exampleCount'
          property :name, as: 'name'
          property :source_language_code, as: 'sourceLanguageCode'
          property :target_language_code, as: 'targetLanguageCode'
          property :test_example_count, as: 'testExampleCount'
          property :train_example_count, as: 'trainExampleCount'
          property :update_time, as: 'updateTime'
          property :validate_example_count, as: 'validateExampleCount'
        end
      end
      
      class DatasetInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :input_files, as: 'inputFiles', class: Google::Apis::TranslateV3::InputFile, decorator: Google::Apis::TranslateV3::InputFile::Representation
      
        end
      end
      
      class DatasetOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::TranslateV3::GcsOutputDestination, decorator: Google::Apis::TranslateV3::GcsOutputDestination::Representation
      
        end
      end
      
      class DetectLanguageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          hash :labels, as: 'labels'
          property :mime_type, as: 'mimeType'
          property :model, as: 'model'
        end
      end
      
      class DetectLanguageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :languages, as: 'languages', class: Google::Apis::TranslateV3::DetectedLanguage, decorator: Google::Apis::TranslateV3::DetectedLanguage::Representation
      
        end
      end
      
      class DetectedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence, as: 'confidence'
          property :language_code, as: 'languageCode'
        end
      end
      
      class DocumentInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, :base64 => true, as: 'content'
          property :gcs_source, as: 'gcsSource', class: Google::Apis::TranslateV3::GcsSource, decorator: Google::Apis::TranslateV3::GcsSource::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class DocumentOutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::TranslateV3::GcsDestination, decorator: Google::Apis::TranslateV3::GcsDestination::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class DocumentTranslation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :byte_stream_outputs, as: 'byteStreamOutputs'
          property :detected_language_code, as: 'detectedLanguageCode'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Example
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :source_text, as: 'sourceText'
          property :target_text, as: 'targetText'
          property :usage, as: 'usage'
        end
      end
      
      class ExportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_config, as: 'outputConfig', class: Google::Apis::TranslateV3::DatasetOutputConfig, decorator: Google::Apis::TranslateV3::DatasetOutputConfig::Representation
      
        end
      end
      
      class GcsDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri_prefix, as: 'outputUriPrefix'
        end
      end
      
      class GcsInputSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
        end
      end
      
      class GcsOutputDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri_prefix, as: 'outputUriPrefix'
        end
      end
      
      class GcsSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_uri, as: 'inputUri'
        end
      end
      
      class Glossary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :end_time, as: 'endTime'
          property :entry_count, as: 'entryCount'
          property :input_config, as: 'inputConfig', class: Google::Apis::TranslateV3::GlossaryInputConfig, decorator: Google::Apis::TranslateV3::GlossaryInputConfig::Representation
      
          property :language_codes_set, as: 'languageCodesSet', class: Google::Apis::TranslateV3::LanguageCodesSet, decorator: Google::Apis::TranslateV3::LanguageCodesSet::Representation
      
          property :language_pair, as: 'languagePair', class: Google::Apis::TranslateV3::LanguageCodePair, decorator: Google::Apis::TranslateV3::LanguageCodePair::Representation
      
          property :name, as: 'name'
          property :submit_time, as: 'submitTime'
        end
      end
      
      class GlossaryEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :terms_pair, as: 'termsPair', class: Google::Apis::TranslateV3::GlossaryTermsPair, decorator: Google::Apis::TranslateV3::GlossaryTermsPair::Representation
      
          property :terms_set, as: 'termsSet', class: Google::Apis::TranslateV3::GlossaryTermsSet, decorator: Google::Apis::TranslateV3::GlossaryTermsSet::Representation
      
        end
      end
      
      class GlossaryInputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::TranslateV3::GcsSource, decorator: Google::Apis::TranslateV3::GcsSource::Representation
      
        end
      end
      
      class GlossaryTerm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class GlossaryTermsPair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_term, as: 'sourceTerm', class: Google::Apis::TranslateV3::GlossaryTerm, decorator: Google::Apis::TranslateV3::GlossaryTerm::Representation
      
          property :target_term, as: 'targetTerm', class: Google::Apis::TranslateV3::GlossaryTerm, decorator: Google::Apis::TranslateV3::GlossaryTerm::Representation
      
        end
      end
      
      class GlossaryTermsSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :terms, as: 'terms', class: Google::Apis::TranslateV3::GlossaryTerm, decorator: Google::Apis::TranslateV3::GlossaryTerm::Representation
      
        end
      end
      
      class ImportDataRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_config, as: 'inputConfig', class: Google::Apis::TranslateV3::DatasetInputConfig, decorator: Google::Apis::TranslateV3::DatasetInputConfig::Representation
      
        end
      end
      
      class InputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::TranslateV3::GcsSource, decorator: Google::Apis::TranslateV3::GcsSource::Representation
      
          property :mime_type, as: 'mimeType'
        end
      end
      
      class InputFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_source, as: 'gcsSource', class: Google::Apis::TranslateV3::GcsInputSource, decorator: Google::Apis::TranslateV3::GcsInputSource::Representation
      
          property :usage, as: 'usage'
        end
      end
      
      class LanguageCodePair
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :source_language_code, as: 'sourceLanguageCode'
          property :target_language_code, as: 'targetLanguageCode'
        end
      end
      
      class LanguageCodesSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :language_codes, as: 'languageCodes'
        end
      end
      
      class ListDatasetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :datasets, as: 'datasets', class: Google::Apis::TranslateV3::Dataset, decorator: Google::Apis::TranslateV3::Dataset::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListExamplesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :examples, as: 'examples', class: Google::Apis::TranslateV3::Example, decorator: Google::Apis::TranslateV3::Example::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGlossariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :glossaries, as: 'glossaries', class: Google::Apis::TranslateV3::Glossary, decorator: Google::Apis::TranslateV3::Glossary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListGlossaryEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :glossary_entries, as: 'glossaryEntries', class: Google::Apis::TranslateV3::GlossaryEntry, decorator: Google::Apis::TranslateV3::GlossaryEntry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::TranslateV3::Location, decorator: Google::Apis::TranslateV3::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListModelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :models, as: 'models', class: Google::Apis::TranslateV3::Model, decorator: Google::Apis::TranslateV3::Model::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::TranslateV3::Operation, decorator: Google::Apis::TranslateV3::Operation::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Model
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :dataset, as: 'dataset'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :source_language_code, as: 'sourceLanguageCode'
          property :target_language_code, as: 'targetLanguageCode'
          property :test_example_count, as: 'testExampleCount'
          property :train_example_count, as: 'trainExampleCount'
          property :update_time, as: 'updateTime'
          property :validate_example_count, as: 'validateExampleCount'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::TranslateV3::Status, decorator: Google::Apis::TranslateV3::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OutputConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_destination, as: 'gcsDestination', class: Google::Apis::TranslateV3::GcsDestination, decorator: Google::Apis::TranslateV3::GcsDestination::Representation
      
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
      
      class SupportedLanguage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :language_code, as: 'languageCode'
          property :support_source, as: 'supportSource'
          property :support_target, as: 'supportTarget'
        end
      end
      
      class SupportedLanguages
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :languages, as: 'languages', class: Google::Apis::TranslateV3::SupportedLanguage, decorator: Google::Apis::TranslateV3::SupportedLanguage::Representation
      
        end
      end
      
      class TranslateDocumentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :customized_attribution, as: 'customizedAttribution'
          property :document_input_config, as: 'documentInputConfig', class: Google::Apis::TranslateV3::DocumentInputConfig, decorator: Google::Apis::TranslateV3::DocumentInputConfig::Representation
      
          property :document_output_config, as: 'documentOutputConfig', class: Google::Apis::TranslateV3::DocumentOutputConfig, decorator: Google::Apis::TranslateV3::DocumentOutputConfig::Representation
      
          property :enable_rotation_correction, as: 'enableRotationCorrection'
          property :enable_shadow_removal_native_pdf, as: 'enableShadowRemovalNativePdf'
          property :glossary_config, as: 'glossaryConfig', class: Google::Apis::TranslateV3::TranslateTextGlossaryConfig, decorator: Google::Apis::TranslateV3::TranslateTextGlossaryConfig::Representation
      
          property :is_translate_native_pdf_only, as: 'isTranslateNativePdfOnly'
          hash :labels, as: 'labels'
          property :model, as: 'model'
          property :source_language_code, as: 'sourceLanguageCode'
          property :target_language_code, as: 'targetLanguageCode'
        end
      end
      
      class TranslateDocumentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :document_translation, as: 'documentTranslation', class: Google::Apis::TranslateV3::DocumentTranslation, decorator: Google::Apis::TranslateV3::DocumentTranslation::Representation
      
          property :glossary_config, as: 'glossaryConfig', class: Google::Apis::TranslateV3::TranslateTextGlossaryConfig, decorator: Google::Apis::TranslateV3::TranslateTextGlossaryConfig::Representation
      
          property :glossary_document_translation, as: 'glossaryDocumentTranslation', class: Google::Apis::TranslateV3::DocumentTranslation, decorator: Google::Apis::TranslateV3::DocumentTranslation::Representation
      
          property :model, as: 'model'
        end
      end
      
      class TranslateTextGlossaryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :glossary, as: 'glossary'
          property :ignore_case, as: 'ignoreCase'
        end
      end
      
      class TranslateTextRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents'
          property :glossary_config, as: 'glossaryConfig', class: Google::Apis::TranslateV3::TranslateTextGlossaryConfig, decorator: Google::Apis::TranslateV3::TranslateTextGlossaryConfig::Representation
      
          hash :labels, as: 'labels'
          property :mime_type, as: 'mimeType'
          property :model, as: 'model'
          property :source_language_code, as: 'sourceLanguageCode'
          property :target_language_code, as: 'targetLanguageCode'
        end
      end
      
      class TranslateTextResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :glossary_translations, as: 'glossaryTranslations', class: Google::Apis::TranslateV3::Translation, decorator: Google::Apis::TranslateV3::Translation::Representation
      
          collection :translations, as: 'translations', class: Google::Apis::TranslateV3::Translation, decorator: Google::Apis::TranslateV3::Translation::Representation
      
        end
      end
      
      class Translation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detected_language_code, as: 'detectedLanguageCode'
          property :glossary_config, as: 'glossaryConfig', class: Google::Apis::TranslateV3::TranslateTextGlossaryConfig, decorator: Google::Apis::TranslateV3::TranslateTextGlossaryConfig::Representation
      
          property :model, as: 'model'
          property :translated_text, as: 'translatedText'
        end
      end
      
      class WaitOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
        end
      end
    end
  end
end
