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
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Blob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Candidate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Citation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1CitationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Content
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1CountTokensRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1CountTokensResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1FileData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1FunctionCall
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1FunctionCallingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1FunctionDeclaration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1FunctionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GenerationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GoogleSearchRetrieval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingAttributionRetrievedContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingAttributionWeb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingChunk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingChunkWeb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1GroundingSupport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Part
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Retrieval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1SafetyRating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1SafetySetting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1SearchEntryPoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Segment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1Tool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1ToolConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1VertexAiSearch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1VertexRagStore
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1VertexRagStoreRagResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAiplatformV1beta1VideoMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModelOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class GoogleCloudAiplatformV1beta1Blob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1beta1Candidate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :citation_metadata, as: 'citationMetadata', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1CitationMetadata, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1CitationMetadata::Representation
      
          property :content, as: 'content', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content::Representation
      
          property :finish_message, as: 'finishMessage'
          property :finish_reason, as: 'finishReason'
          property :grounding_metadata, as: 'groundingMetadata', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingMetadata, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingMetadata::Representation
      
          property :index, as: 'index'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1Citation
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
      
      class GoogleCloudAiplatformV1beta1CitationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Citation, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Citation::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1Content
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :parts, as: 'parts', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Part, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Part::Representation
      
          property :role, as: 'role'
        end
      end
      
      class GoogleCloudAiplatformV1beta1CountTokensRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content::Representation
      
          collection :instances, as: 'instances'
          property :model, as: 'model'
        end
      end
      
      class GoogleCloudAiplatformV1beta1CountTokensResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_billable_characters, as: 'totalBillableCharacters'
          property :total_tokens, as: 'totalTokens'
        end
      end
      
      class GoogleCloudAiplatformV1beta1FileData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_uri, as: 'fileUri'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class GoogleCloudAiplatformV1beta1FunctionCall
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :args, as: 'args'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudAiplatformV1beta1FunctionCallingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_function_names, as: 'allowedFunctionNames'
          property :mode, as: 'mode'
        end
      end
      
      class GoogleCloudAiplatformV1beta1FunctionDeclaration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :name, as: 'name'
          property :parameters, as: 'parameters', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema::Representation
      
          property :response, as: 'response', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1FunctionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cached_content, as: 'cachedContent'
          collection :contents, as: 'contents', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content::Representation
      
          property :generation_config, as: 'generationConfig', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfig, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerationConfig::Representation
      
          collection :safety_settings, as: 'safetySettings', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetySetting, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetySetting::Representation
      
          property :system_instruction, as: 'systemInstruction', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Content::Representation
      
          property :tool_config, as: 'toolConfig', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolConfig, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1ToolConfig::Representation
      
          collection :tools, as: 'tools', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Tool, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Tool::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :candidates, as: 'candidates', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Candidate, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Candidate::Representation
      
          property :prompt_feedback, as: 'promptFeedback', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback::Representation
      
          property :usage_metadata, as: 'usageMetadata', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentResponsePromptFeedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_reason, as: 'blockReason'
          property :block_reason_message, as: 'blockReasonMessage'
          collection :safety_ratings, as: 'safetyRatings', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SafetyRating::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1GenerateContentResponseUsageMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidates_token_count, as: 'candidatesTokenCount'
          property :prompt_token_count, as: 'promptTokenCount'
          property :total_token_count, as: 'totalTokenCount'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GenerationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :candidate_count, as: 'candidateCount'
          property :frequency_penalty, as: 'frequencyPenalty'
          property :max_output_tokens, as: 'maxOutputTokens'
          property :presence_penalty, as: 'presencePenalty'
          property :response_mime_type, as: 'responseMimeType'
          property :response_schema, as: 'responseSchema', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema::Representation
      
          collection :stop_sequences, as: 'stopSequences'
          property :temperature, as: 'temperature'
          property :top_k, as: 'topK'
          property :top_p, as: 'topP'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GoogleSearchRetrieval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :confidence_score, as: 'confidenceScore'
          property :retrieved_context, as: 'retrievedContext', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingAttributionRetrievedContext, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingAttributionRetrievedContext::Representation
      
          property :segment, as: 'segment', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Segment, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Segment::Representation
      
          property :web, as: 'web', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingAttributionWeb, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingAttributionWeb::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingAttributionRetrievedContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingAttributionWeb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingChunk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :retrieved_context, as: 'retrievedContext', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext::Representation
      
          property :web, as: 'web', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkWeb, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunkWeb::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingChunkRetrievedContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingChunkWeb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :grounding_attributions, as: 'groundingAttributions', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingAttribution, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingAttribution::Representation
      
          collection :grounding_chunks, as: 'groundingChunks', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunk, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingChunk::Representation
      
          collection :grounding_supports, as: 'groundingSupports', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingSupport, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GroundingSupport::Representation
      
          collection :retrieval_queries, as: 'retrievalQueries'
          property :search_entry_point, as: 'searchEntryPoint', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SearchEntryPoint, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1SearchEntryPoint::Representation
      
          collection :web_search_queries, as: 'webSearchQueries'
        end
      end
      
      class GoogleCloudAiplatformV1beta1GroundingSupport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :confidence_scores, as: 'confidenceScores'
          collection :grounding_chunk_indices, as: 'groundingChunkIndices'
          property :segment, as: 'segment', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Segment, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Segment::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1Part
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_data, as: 'fileData', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FileData, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FileData::Representation
      
          property :function_call, as: 'functionCall', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCall, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCall::Representation
      
          property :function_response, as: 'functionResponse', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponse, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionResponse::Representation
      
          property :inline_data, as: 'inlineData', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Blob, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Blob::Representation
      
          property :text, as: 'text'
          property :video_metadata, as: 'videoMetadata', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VideoMetadata, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VideoMetadata::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1Retrieval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_attribution, as: 'disableAttribution'
          property :vertex_ai_search, as: 'vertexAiSearch', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexAiSearch, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexAiSearch::Representation
      
          property :vertex_rag_store, as: 'vertexRagStore', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStore, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStore::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1SafetyRating
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
      
      class GoogleCloudAiplatformV1beta1SafetySetting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :method_prop, as: 'method'
          property :threshold, as: 'threshold'
        end
      end
      
      class GoogleCloudAiplatformV1beta1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default, as: 'default'
          property :description, as: 'description'
          collection :enum, as: 'enum'
          property :example, as: 'example'
          property :format, as: 'format'
          property :items, as: 'items', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema::Representation
      
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
          hash :properties, as: 'properties', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Schema::Representation
      
          collection :required, as: 'required'
          property :title, as: 'title'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudAiplatformV1beta1SearchEntryPoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rendered_content, as: 'renderedContent'
          property :sdk_blob, :base64 => true, as: 'sdkBlob'
        end
      end
      
      class GoogleCloudAiplatformV1beta1Segment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_index, as: 'endIndex'
          property :part_index, as: 'partIndex'
          property :start_index, as: 'startIndex'
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudAiplatformV1beta1Tool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :function_declarations, as: 'functionDeclarations', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionDeclaration, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionDeclaration::Representation
      
          property :google_search_retrieval, as: 'googleSearchRetrieval', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GoogleSearchRetrieval, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1GoogleSearchRetrieval::Representation
      
          property :retrieval, as: 'retrieval', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Retrieval, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1Retrieval::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1ToolConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_calling_config, as: 'functionCallingConfig', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCallingConfig, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1FunctionCallingConfig::Representation
      
        end
      end
      
      class GoogleCloudAiplatformV1beta1VertexAiSearch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :datastore, as: 'datastore'
        end
      end
      
      class GoogleCloudAiplatformV1beta1VertexRagStore
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rag_corpora, as: 'ragCorpora'
          collection :rag_resources, as: 'ragResources', class: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStoreRagResource, decorator: Google::Apis::FirebasemlV2beta::GoogleCloudAiplatformV1beta1VertexRagStoreRagResource::Representation
      
          property :similarity_top_k, as: 'similarityTopK'
          property :vector_distance_threshold, as: 'vectorDistanceThreshold'
        end
      end
      
      class GoogleCloudAiplatformV1beta1VertexRagStoreRagResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rag_corpus, as: 'ragCorpus'
          collection :rag_file_ids, as: 'ragFileIds'
        end
      end
      
      class GoogleCloudAiplatformV1beta1VideoMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, as: 'endOffset'
          property :start_offset, as: 'startOffset'
        end
      end
      
      class ModelOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_operation_status, as: 'basicOperationStatus'
          property :name, as: 'name'
        end
      end
    end
  end
end
