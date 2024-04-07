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
    module FirebasemlV2beta
      
      class Blob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Candidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Citation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Content
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CountTokensRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CountTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FunctionCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FunctionCallingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FunctionDeclaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FunctionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroundingAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Part
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PromptFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Retrieval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetrievedContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SafetyRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SafetySetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ToolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UsageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VertexAiSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VertexRagStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Web
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Blob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class Candidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::FirebasemlV2beta::CitationMetadata, decorator: Google::Apis::FirebasemlV2beta::CitationMetadata::Representation
      
          property :content, as: 'content', class: Google::Apis::FirebasemlV2beta::Content, decorator: Google::Apis::FirebasemlV2beta::Content::Representation
      
          property :finish_message, as: 'finishMessage'
          property :finish_reason, as: 'finishReason'
          property :grounding_metadata, as: 'groundingMetadata', class: Google::Apis::FirebasemlV2beta::GroundingMetadata, decorator: Google::Apis::FirebasemlV2beta::GroundingMetadata::Representation
      
          property :index, as: 'index'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::FirebasemlV2beta::SafetyRating, decorator: Google::Apis::FirebasemlV2beta::SafetyRating::Representation
      
        end
      end
      
      class Citation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :license, as: 'license'
          property :publication_date, as: 'publicationDate', class: Google::Apis::FirebasemlV2beta::Date, decorator: Google::Apis::FirebasemlV2beta::Date::Representation
      
          property :start_index, as: 'startIndex'
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class CitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::FirebasemlV2beta::Citation, decorator: Google::Apis::FirebasemlV2beta::Citation::Representation
      
        end
      end
      
      class Content
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parts, as: 'parts', class: Google::Apis::FirebasemlV2beta::Part, decorator: Google::Apis::FirebasemlV2beta::Part::Representation
      
          property :role, as: 'role'
        end
      end
      
      class CountTokensRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::FirebasemlV2beta::Content, decorator: Google::Apis::FirebasemlV2beta::Content::Representation
      
          collection :instances, as: 'instances'
          property :model, as: 'model'
        end
      end
      
      class CountTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_billable_characters, as: 'totalBillableCharacters'
          property :total_tokens, as: 'totalTokens'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class FileData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_uri, as: 'fileUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class FunctionCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :name, as: 'name'
        end
      end
      
      class FunctionCallingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_function_names, as: 'allowedFunctionNames'
          property :mode, as: 'mode'
        end
      end
      
      class FunctionDeclaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :parameters, as: 'parameters', class: Google::Apis::FirebasemlV2beta::Schema, decorator: Google::Apis::FirebasemlV2beta::Schema::Representation
      
          property :response, as: 'response', class: Google::Apis::FirebasemlV2beta::Schema, decorator: Google::Apis::FirebasemlV2beta::Schema::Representation
      
        end
      end
      
      class FunctionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GenerateContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::FirebasemlV2beta::Content, decorator: Google::Apis::FirebasemlV2beta::Content::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::FirebasemlV2beta::GenerationConfig, decorator: Google::Apis::FirebasemlV2beta::GenerationConfig::Representation
      
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::FirebasemlV2beta::SafetySetting, decorator: Google::Apis::FirebasemlV2beta::SafetySetting::Representation
      
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::FirebasemlV2beta::Content, decorator: Google::Apis::FirebasemlV2beta::Content::Representation
      
          property :tool_config, as: 'toolConfig', class: Google::Apis::FirebasemlV2beta::ToolConfig, decorator: Google::Apis::FirebasemlV2beta::ToolConfig::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::FirebasemlV2beta::Tool, decorator: Google::Apis::FirebasemlV2beta::Tool::Representation
      
        end
      end
      
      class GenerateContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::FirebasemlV2beta::Candidate, decorator: Google::Apis::FirebasemlV2beta::Candidate::Representation
      
          property :prompt_feedback, as: 'promptFeedback', class: Google::Apis::FirebasemlV2beta::PromptFeedback, decorator: Google::Apis::FirebasemlV2beta::PromptFeedback::Representation
      
          property :usage_metadata, as: 'usageMetadata', class: Google::Apis::FirebasemlV2beta::UsageMetadata, decorator: Google::Apis::FirebasemlV2beta::UsageMetadata::Representation
      
        end
      end
      
      class GenerationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidate_count, as: 'candidateCount'
          property :frequency_penalty, as: 'frequencyPenalty'
          property :max_output_tokens, as: 'maxOutputTokens'
          property :presence_penalty, as: 'presencePenalty'
          property :response_mime_type, as: 'responseMimeType'
          collection :stop_sequences, as: 'stopSequences'
          property :temperature, as: 'temperature'
          property :top_k, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GroundingAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          property :retrieved_context, as: 'retrievedContext', class: Google::Apis::FirebasemlV2beta::RetrievedContext, decorator: Google::Apis::FirebasemlV2beta::RetrievedContext::Representation
      
          property :segment, as: 'segment', class: Google::Apis::FirebasemlV2beta::Segment, decorator: Google::Apis::FirebasemlV2beta::Segment::Representation
      
          property :web, as: 'web', class: Google::Apis::FirebasemlV2beta::Web, decorator: Google::Apis::FirebasemlV2beta::Web::Representation
      
        end
      end
      
      class GroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :grounding_attributions, as: 'groundingAttributions', class: Google::Apis::FirebasemlV2beta::GroundingAttribution, decorator: Google::Apis::FirebasemlV2beta::GroundingAttribution::Representation
      
          collection :retrieval_queries, as: 'retrievalQueries'
          collection :web_search_queries, as: 'webSearchQueries'
        end
      end
      
      class ModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_operation_status, as: 'basicOperationStatus'
          property :name, as: 'name'
        end
      end
      
      class Part
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_data, as: 'fileData', class: Google::Apis::FirebasemlV2beta::FileData, decorator: Google::Apis::FirebasemlV2beta::FileData::Representation
      
          property :function_call, as: 'functionCall', class: Google::Apis::FirebasemlV2beta::FunctionCall, decorator: Google::Apis::FirebasemlV2beta::FunctionCall::Representation
      
          property :function_response, as: 'functionResponse', class: Google::Apis::FirebasemlV2beta::FunctionResponse, decorator: Google::Apis::FirebasemlV2beta::FunctionResponse::Representation
      
          property :inline_data, as: 'inlineData', class: Google::Apis::FirebasemlV2beta::Blob, decorator: Google::Apis::FirebasemlV2beta::Blob::Representation
      
          property :text, as: 'text'
          property :video_metadata, as: 'videoMetadata', class: Google::Apis::FirebasemlV2beta::VideoMetadata, decorator: Google::Apis::FirebasemlV2beta::VideoMetadata::Representation
      
        end
      end
      
      class PromptFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_reason, as: 'blockReason'
          property :block_reason_message, as: 'blockReasonMessage'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::FirebasemlV2beta::SafetyRating, decorator: Google::Apis::FirebasemlV2beta::SafetyRating::Representation
      
        end
      end
      
      class Retrieval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_attribution, as: 'disableAttribution'
          property :vertex_ai_search, as: 'vertexAiSearch', class: Google::Apis::FirebasemlV2beta::VertexAiSearch, decorator: Google::Apis::FirebasemlV2beta::VertexAiSearch::Representation
      
          property :vertex_rag_store, as: 'vertexRagStore', class: Google::Apis::FirebasemlV2beta::VertexRagStore, decorator: Google::Apis::FirebasemlV2beta::VertexRagStore::Representation
      
        end
      end
      
      class RetrievedContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class SafetyRating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked, as: 'blocked'
          property :category, as: 'category'
          property :probability, as: 'probability'
          property :probability_score, as: 'probabilityScore'
          property :severity, as: 'severity'
          property :severity_score, as: 'severityScore'
        end
      end
      
      class SafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :method_prop, as: 'method'
          property :threshold, as: 'threshold'
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default'
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :example, as: 'example'
          property :format, as: 'format'
          property :items, as: 'items', class: Google::Apis::FirebasemlV2beta::Schema, decorator: Google::Apis::FirebasemlV2beta::Schema::Representation
      
          property :max_items, :numeric_string => true, as: 'maxItems'
          property :max_length, :numeric_string => true, as: 'maxLength'
          property :max_properties, :numeric_string => true, as: 'maxProperties'
          property :maximum, as: 'maximum'
          property :min_items, :numeric_string => true, as: 'minItems'
          property :min_length, :numeric_string => true, as: 'minLength'
          property :min_properties, :numeric_string => true, as: 'minProperties'
          property :minimum, as: 'minimum'
          property :nullable, as: 'nullable'
          property :pattern, as: 'pattern'
          hash :properties, as: 'properties', class: Google::Apis::FirebasemlV2beta::Schema, decorator: Google::Apis::FirebasemlV2beta::Schema::Representation
      
          collection :required, as: 'required'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :part_index, as: 'partIndex'
          property :start_index, as: 'startIndex'
        end
      end
      
      class Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :function_declarations, as: 'functionDeclarations', class: Google::Apis::FirebasemlV2beta::FunctionDeclaration, decorator: Google::Apis::FirebasemlV2beta::FunctionDeclaration::Representation
      
          property :retrieval, as: 'retrieval', class: Google::Apis::FirebasemlV2beta::Retrieval, decorator: Google::Apis::FirebasemlV2beta::Retrieval::Representation
      
        end
      end
      
      class ToolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_calling_config, as: 'functionCallingConfig', class: Google::Apis::FirebasemlV2beta::FunctionCallingConfig, decorator: Google::Apis::FirebasemlV2beta::FunctionCallingConfig::Representation
      
        end
      end
      
      class UsageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidates_token_count, as: 'candidatesTokenCount'
          property :prompt_token_count, as: 'promptTokenCount'
          property :total_token_count, as: 'totalTokenCount'
        end
      end
      
      class VertexAiSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datastore, as: 'datastore'
        end
      end
      
      class VertexRagStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rag_corpora, as: 'ragCorpora'
          property :similarity_top_k, as: 'similarityTopK'
          property :vector_distance_threshold, as: 'vectorDistanceThreshold'
        end
      end
      
      class VideoMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
        end
      end
      
      class Web
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
    end
  end
end
