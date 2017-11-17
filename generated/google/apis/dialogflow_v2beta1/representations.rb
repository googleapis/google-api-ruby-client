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
    module DialogflowV2beta1
      
      class Agent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteEntityTypesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteIntentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateEntitiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateEntityTypesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateIntentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Context
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectIntentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityTypeBatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EntityTypeEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExportAgentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputAudioConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Intent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentBatch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentFollowupIntentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageBasicCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageBasicCardButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageBasicCardButtonOpenUriAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageCardButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageCarouselSelect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageCarouselSelectItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageLinkOutSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageListSelect
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageListSelectItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageQuickReplies
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageSelectItemInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageSimpleResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageSimpleResponses
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageSuggestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageSuggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentMessageText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentTrainingPhrase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntentTrainingPhrasePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListContextsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListIntentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSessionEntityTypesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OriginalDetectIntentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAgentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SessionEntityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrainAgentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebhookRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebhookResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Agent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avatar_uri, as: 'avatarUri'
          property :classification_threshold, as: 'classificationThreshold'
          property :default_language_code, as: 'defaultLanguageCode'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :enable_logging, as: 'enableLogging'
          property :match_mode, as: 'matchMode'
          property :parent, as: 'parent'
          collection :supported_language_codes, as: 'supportedLanguageCodes'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class BatchCreateEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV2beta1::EntityTypeEntity, decorator: Google::Apis::DialogflowV2beta1::EntityTypeEntity::Representation
      
          property :language_code, as: 'languageCode'
        end
      end
      
      class BatchDeleteEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_values, as: 'entityValues'
          property :language_code, as: 'languageCode'
        end
      end
      
      class BatchDeleteEntityTypesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_type_names, as: 'entityTypeNames'
        end
      end
      
      class BatchDeleteIntentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV2beta1::Intent, decorator: Google::Apis::DialogflowV2beta1::Intent::Representation
      
        end
      end
      
      class BatchUpdateEntitiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV2beta1::EntityTypeEntity, decorator: Google::Apis::DialogflowV2beta1::EntityTypeEntity::Representation
      
          property :language_code, as: 'languageCode'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class BatchUpdateEntityTypesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity_type_batch_inline, as: 'entityTypeBatchInline', class: Google::Apis::DialogflowV2beta1::EntityTypeBatch, decorator: Google::Apis::DialogflowV2beta1::EntityTypeBatch::Representation
      
          property :entity_type_batch_uri, as: 'entityTypeBatchUri'
          property :language_code, as: 'languageCode'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class BatchUpdateEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV2beta1::EntityType, decorator: Google::Apis::DialogflowV2beta1::EntityType::Representation
      
        end
      end
      
      class BatchUpdateIntentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intent_batch_inline, as: 'intentBatchInline', class: Google::Apis::DialogflowV2beta1::IntentBatch, decorator: Google::Apis::DialogflowV2beta1::IntentBatch::Representation
      
          property :intent_batch_uri, as: 'intentBatchUri'
          property :intent_view, as: 'intentView'
          property :language_code, as: 'languageCode'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class BatchUpdateIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV2beta1::Intent, decorator: Google::Apis::DialogflowV2beta1::Intent::Representation
      
        end
      end
      
      class Context
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lifespan_count, as: 'lifespanCount'
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
        end
      end
      
      class DetectIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :input_audio, :base64 => true, as: 'inputAudio'
          property :query_input, as: 'queryInput', class: Google::Apis::DialogflowV2beta1::QueryInput, decorator: Google::Apis::DialogflowV2beta1::QueryInput::Representation
      
          property :query_params, as: 'queryParams', class: Google::Apis::DialogflowV2beta1::QueryParameters, decorator: Google::Apis::DialogflowV2beta1::QueryParameters::Representation
      
        end
      end
      
      class DetectIntentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV2beta1::QueryResult, decorator: Google::Apis::DialogflowV2beta1::QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :webhook_status, as: 'webhookStatus', class: Google::Apis::DialogflowV2beta1::Status, decorator: Google::Apis::DialogflowV2beta1::Status::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_expansion_mode, as: 'autoExpansionMode'
          property :display_name, as: 'displayName'
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV2beta1::EntityTypeEntity, decorator: Google::Apis::DialogflowV2beta1::EntityTypeEntity::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class EntityTypeBatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV2beta1::EntityType, decorator: Google::Apis::DialogflowV2beta1::EntityType::Representation
      
        end
      end
      
      class EntityTypeEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :synonyms, as: 'synonyms'
          property :value, as: 'value'
        end
      end
      
      class EventInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          hash :parameters, as: 'parameters'
        end
      end
      
      class ExportAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class ExportAgentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class ImportAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class InputAudioConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_encoding, as: 'audioEncoding'
          property :language_code, as: 'languageCode'
          collection :phrase_hints, as: 'phraseHints'
          property :sample_rate_hertz, as: 'sampleRateHertz'
        end
      end
      
      class Intent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :default_response_platforms, as: 'defaultResponsePlatforms'
          property :display_name, as: 'displayName'
          collection :events, as: 'events'
          collection :followup_intent_info, as: 'followupIntentInfo', class: Google::Apis::DialogflowV2beta1::IntentFollowupIntentInfo, decorator: Google::Apis::DialogflowV2beta1::IntentFollowupIntentInfo::Representation
      
          collection :input_context_names, as: 'inputContextNames'
          property :is_fallback, as: 'isFallback'
          collection :messages, as: 'messages', class: Google::Apis::DialogflowV2beta1::IntentMessage, decorator: Google::Apis::DialogflowV2beta1::IntentMessage::Representation
      
          property :ml_enabled, as: 'mlEnabled'
          property :name, as: 'name'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV2beta1::Context, decorator: Google::Apis::DialogflowV2beta1::Context::Representation
      
          collection :parameters, as: 'parameters', class: Google::Apis::DialogflowV2beta1::IntentParameter, decorator: Google::Apis::DialogflowV2beta1::IntentParameter::Representation
      
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
          property :priority, as: 'priority'
          property :reset_contexts, as: 'resetContexts'
          property :root_followup_intent_name, as: 'rootFollowupIntentName'
          collection :training_phrases, as: 'trainingPhrases', class: Google::Apis::DialogflowV2beta1::IntentTrainingPhrase, decorator: Google::Apis::DialogflowV2beta1::IntentTrainingPhrase::Representation
      
          property :webhook_state, as: 'webhookState'
        end
      end
      
      class IntentBatch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV2beta1::Intent, decorator: Google::Apis::DialogflowV2beta1::Intent::Representation
      
        end
      end
      
      class IntentFollowupIntentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_intent_name, as: 'followupIntentName'
          property :parent_followup_intent_name, as: 'parentFollowupIntentName'
        end
      end
      
      class IntentMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :basic_card, as: 'basicCard', class: Google::Apis::DialogflowV2beta1::IntentMessageBasicCard, decorator: Google::Apis::DialogflowV2beta1::IntentMessageBasicCard::Representation
      
          property :card, as: 'card', class: Google::Apis::DialogflowV2beta1::IntentMessageCard, decorator: Google::Apis::DialogflowV2beta1::IntentMessageCard::Representation
      
          property :carousel_select, as: 'carouselSelect', class: Google::Apis::DialogflowV2beta1::IntentMessageCarouselSelect, decorator: Google::Apis::DialogflowV2beta1::IntentMessageCarouselSelect::Representation
      
          property :image, as: 'image', class: Google::Apis::DialogflowV2beta1::IntentMessageImage, decorator: Google::Apis::DialogflowV2beta1::IntentMessageImage::Representation
      
          property :link_out_suggestion, as: 'linkOutSuggestion', class: Google::Apis::DialogflowV2beta1::IntentMessageLinkOutSuggestion, decorator: Google::Apis::DialogflowV2beta1::IntentMessageLinkOutSuggestion::Representation
      
          property :list_select, as: 'listSelect', class: Google::Apis::DialogflowV2beta1::IntentMessageListSelect, decorator: Google::Apis::DialogflowV2beta1::IntentMessageListSelect::Representation
      
          hash :payload, as: 'payload'
          property :platform, as: 'platform'
          property :quick_replies, as: 'quickReplies', class: Google::Apis::DialogflowV2beta1::IntentMessageQuickReplies, decorator: Google::Apis::DialogflowV2beta1::IntentMessageQuickReplies::Representation
      
          property :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV2beta1::IntentMessageSimpleResponses, decorator: Google::Apis::DialogflowV2beta1::IntentMessageSimpleResponses::Representation
      
          property :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV2beta1::IntentMessageSuggestions, decorator: Google::Apis::DialogflowV2beta1::IntentMessageSuggestions::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV2beta1::IntentMessageText, decorator: Google::Apis::DialogflowV2beta1::IntentMessageText::Representation
      
        end
      end
      
      class IntentMessageBasicCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV2beta1::IntentMessageBasicCardButton, decorator: Google::Apis::DialogflowV2beta1::IntentMessageBasicCardButton::Representation
      
          property :formatted_text, as: 'formattedText'
          property :image, as: 'image', class: Google::Apis::DialogflowV2beta1::IntentMessageImage, decorator: Google::Apis::DialogflowV2beta1::IntentMessageImage::Representation
      
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class IntentMessageBasicCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :open_uri_action, as: 'openUriAction', class: Google::Apis::DialogflowV2beta1::IntentMessageBasicCardButtonOpenUriAction, decorator: Google::Apis::DialogflowV2beta1::IntentMessageBasicCardButtonOpenUriAction::Representation
      
          property :title, as: 'title'
        end
      end
      
      class IntentMessageBasicCardButtonOpenUriAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class IntentMessageCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::DialogflowV2beta1::IntentMessageCardButton, decorator: Google::Apis::DialogflowV2beta1::IntentMessageCardButton::Representation
      
          property :image_uri, as: 'imageUri'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class IntentMessageCardButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :postback, as: 'postback'
          property :text, as: 'text'
        end
      end
      
      class IntentMessageCarouselSelect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DialogflowV2beta1::IntentMessageCarouselSelectItem, decorator: Google::Apis::DialogflowV2beta1::IntentMessageCarouselSelectItem::Representation
      
        end
      end
      
      class IntentMessageCarouselSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV2beta1::IntentMessageImage, decorator: Google::Apis::DialogflowV2beta1::IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV2beta1::IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV2beta1::IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class IntentMessageImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_uri, as: 'imageUri'
        end
      end
      
      class IntentMessageLinkOutSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_name, as: 'destinationName'
          property :uri, as: 'uri'
        end
      end
      
      class IntentMessageListSelect
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::DialogflowV2beta1::IntentMessageListSelectItem, decorator: Google::Apis::DialogflowV2beta1::IntentMessageListSelectItem::Representation
      
          property :title, as: 'title'
        end
      end
      
      class IntentMessageListSelectItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image, as: 'image', class: Google::Apis::DialogflowV2beta1::IntentMessageImage, decorator: Google::Apis::DialogflowV2beta1::IntentMessageImage::Representation
      
          property :info, as: 'info', class: Google::Apis::DialogflowV2beta1::IntentMessageSelectItemInfo, decorator: Google::Apis::DialogflowV2beta1::IntentMessageSelectItemInfo::Representation
      
          property :title, as: 'title'
        end
      end
      
      class IntentMessageQuickReplies
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :quick_replies, as: 'quickReplies'
          property :title, as: 'title'
        end
      end
      
      class IntentMessageSelectItemInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          collection :synonyms, as: 'synonyms'
        end
      end
      
      class IntentMessageSimpleResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_text, as: 'displayText'
          property :ssml, as: 'ssml'
          property :text_to_speech, as: 'textToSpeech'
        end
      end
      
      class IntentMessageSimpleResponses
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :simple_responses, as: 'simpleResponses', class: Google::Apis::DialogflowV2beta1::IntentMessageSimpleResponse, decorator: Google::Apis::DialogflowV2beta1::IntentMessageSimpleResponse::Representation
      
        end
      end
      
      class IntentMessageSuggestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class IntentMessageSuggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :suggestions, as: 'suggestions', class: Google::Apis::DialogflowV2beta1::IntentMessageSuggestion, decorator: Google::Apis::DialogflowV2beta1::IntentMessageSuggestion::Representation
      
        end
      end
      
      class IntentMessageText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :text, as: 'text'
        end
      end
      
      class IntentParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_value, as: 'defaultValue'
          property :display_name, as: 'displayName'
          property :entity_type_display_name, as: 'entityTypeDisplayName'
          property :is_list, as: 'isList'
          property :mandatory, as: 'mandatory'
          property :name, as: 'name'
          collection :prompts, as: 'prompts'
          property :value, as: 'value'
        end
      end
      
      class IntentTrainingPhrase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :parts, as: 'parts', class: Google::Apis::DialogflowV2beta1::IntentTrainingPhrasePart, decorator: Google::Apis::DialogflowV2beta1::IntentTrainingPhrasePart::Representation
      
          property :times_added_count, as: 'timesAddedCount'
          property :type, as: 'type'
        end
      end
      
      class IntentTrainingPhrasePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias, as: 'alias'
          property :entity_type, as: 'entityType'
          property :text, as: 'text'
          property :user_defined, as: 'userDefined'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListContextsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::DialogflowV2beta1::Context, decorator: Google::Apis::DialogflowV2beta1::Context::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entity_types, as: 'entityTypes', class: Google::Apis::DialogflowV2beta1::EntityType, decorator: Google::Apis::DialogflowV2beta1::EntityType::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListIntentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :intents, as: 'intents', class: Google::Apis::DialogflowV2beta1::Intent, decorator: Google::Apis::DialogflowV2beta1::Intent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSessionEntityTypesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV2beta1::SessionEntityType, decorator: Google::Apis::DialogflowV2beta1::SessionEntityType::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DialogflowV2beta1::Status, decorator: Google::Apis::DialogflowV2beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OriginalDetectIntentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :payload, as: 'payload'
          property :source, as: 'source'
        end
      end
      
      class QueryInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_config, as: 'audioConfig', class: Google::Apis::DialogflowV2beta1::InputAudioConfig, decorator: Google::Apis::DialogflowV2beta1::InputAudioConfig::Representation
      
          property :event, as: 'event', class: Google::Apis::DialogflowV2beta1::EventInput, decorator: Google::Apis::DialogflowV2beta1::EventInput::Representation
      
          property :text, as: 'text', class: Google::Apis::DialogflowV2beta1::TextInput, decorator: Google::Apis::DialogflowV2beta1::TextInput::Representation
      
        end
      end
      
      class QueryParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contexts, as: 'contexts', class: Google::Apis::DialogflowV2beta1::Context, decorator: Google::Apis::DialogflowV2beta1::Context::Representation
      
          property :geo_location, as: 'geoLocation', class: Google::Apis::DialogflowV2beta1::LatLng, decorator: Google::Apis::DialogflowV2beta1::LatLng::Representation
      
          hash :payload, as: 'payload'
          property :reset_contexts, as: 'resetContexts'
          collection :session_entity_types, as: 'sessionEntityTypes', class: Google::Apis::DialogflowV2beta1::SessionEntityType, decorator: Google::Apis::DialogflowV2beta1::SessionEntityType::Representation
      
          property :time_zone, as: 'timeZone'
        end
      end
      
      class QueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :all_required_params_present, as: 'allRequiredParamsPresent'
          hash :diagnostic_info, as: 'diagnosticInfo'
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV2beta1::IntentMessage, decorator: Google::Apis::DialogflowV2beta1::IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          property :intent, as: 'intent', class: Google::Apis::DialogflowV2beta1::Intent, decorator: Google::Apis::DialogflowV2beta1::Intent::Representation
      
          property :intent_detection_confidence, as: 'intentDetectionConfidence'
          property :language_code, as: 'languageCode'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV2beta1::Context, decorator: Google::Apis::DialogflowV2beta1::Context::Representation
      
          hash :parameters, as: 'parameters'
          property :query_text, as: 'queryText'
          property :speech_recognition_confidence, as: 'speechRecognitionConfidence'
          hash :webhook_payload, as: 'webhookPayload'
          property :webhook_source, as: 'webhookSource'
        end
      end
      
      class RestoreAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_content, :base64 => true, as: 'agentContent'
          property :agent_uri, as: 'agentUri'
        end
      end
      
      class SearchAgentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :agents, as: 'agents', class: Google::Apis::DialogflowV2beta1::Agent, decorator: Google::Apis::DialogflowV2beta1::Agent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SessionEntityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entities, as: 'entities', class: Google::Apis::DialogflowV2beta1::EntityTypeEntity, decorator: Google::Apis::DialogflowV2beta1::EntityTypeEntity::Representation
      
          property :entity_override_mode, as: 'entityOverrideMode'
          property :name, as: 'name'
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
      
      class TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :language_code, as: 'languageCode'
          property :text, as: 'text'
        end
      end
      
      class TrainAgentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class WebhookRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :original_detect_intent_request, as: 'originalDetectIntentRequest', class: Google::Apis::DialogflowV2beta1::OriginalDetectIntentRequest, decorator: Google::Apis::DialogflowV2beta1::OriginalDetectIntentRequest::Representation
      
          property :query_result, as: 'queryResult', class: Google::Apis::DialogflowV2beta1::QueryResult, decorator: Google::Apis::DialogflowV2beta1::QueryResult::Representation
      
          property :response_id, as: 'responseId'
          property :session, as: 'session'
        end
      end
      
      class WebhookResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :followup_event_input, as: 'followupEventInput', class: Google::Apis::DialogflowV2beta1::EventInput, decorator: Google::Apis::DialogflowV2beta1::EventInput::Representation
      
          collection :fulfillment_messages, as: 'fulfillmentMessages', class: Google::Apis::DialogflowV2beta1::IntentMessage, decorator: Google::Apis::DialogflowV2beta1::IntentMessage::Representation
      
          property :fulfillment_text, as: 'fulfillmentText'
          collection :output_contexts, as: 'outputContexts', class: Google::Apis::DialogflowV2beta1::Context, decorator: Google::Apis::DialogflowV2beta1::Context::Representation
      
          hash :payload, as: 'payload'
          property :source, as: 'source'
        end
      end
    end
  end
end
