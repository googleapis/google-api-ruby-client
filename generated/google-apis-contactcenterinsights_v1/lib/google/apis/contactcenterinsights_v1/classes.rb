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
    module ContactcenterinsightsV1
      
      # The analysis resource.
      class GoogleCloudContactcenterinsightsV1Analysis
        include Google::Apis::Core::Hashable
      
        # The result of an analysis.
        # Corresponds to the JSON property `analysisResult`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisResult]
        attr_accessor :analysis_result
      
        # Output only. The time at which the analysis was created, which occurs when the
        # long-running operation completes.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. The resource name of the analysis. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/analyses/`analysis`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which the analysis was requested.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_result = args[:analysis_result] if args.key?(:analysis_result)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The result of an analysis.
      class GoogleCloudContactcenterinsightsV1AnalysisResult
        include Google::Apis::Core::Hashable
      
        # Call-specific metadata created during analysis.
        # Corresponds to the JSON property `callAnalysisMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata]
        attr_accessor :call_analysis_metadata
      
        # The time at which the analysis ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @call_analysis_metadata = args[:call_analysis_metadata] if args.key?(:call_analysis_metadata)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Call-specific metadata created during analysis.
      class GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata
        include Google::Apis::Core::Hashable
      
        # A list of call annotations that apply to this call.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CallAnnotation>]
        attr_accessor :annotations
      
        # All the entities in the call.
        # Corresponds to the JSON property `entities`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Entity>]
        attr_accessor :entities
      
        # All the matched intents in the call.
        # Corresponds to the JSON property `intents`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Intent>]
        attr_accessor :intents
      
        # Issue Modeling result on a conversation.
        # Corresponds to the JSON property `issueModelResult`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelResult]
        attr_accessor :issue_model_result
      
        # All the matched phrase matchers in the call.
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchData>]
        attr_accessor :phrase_matchers
      
        # Overall conversation-level sentiment for each channel of the call.
        # Corresponds to the JSON property `sentiments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>]
        attr_accessor :sentiments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @entities = args[:entities] if args.key?(:entities)
          @intents = args[:intents] if args.key?(:intents)
          @issue_model_result = args[:issue_model_result] if args.key?(:issue_model_result)
          @phrase_matchers = args[:phrase_matchers] if args.key?(:phrase_matchers)
          @sentiments = args[:sentiments] if args.key?(:sentiments)
        end
      end
      
      # A point in a conversation that marks the start or the end of an annotation.
      class GoogleCloudContactcenterinsightsV1AnnotationBoundary
        include Google::Apis::Core::Hashable
      
        # The index in the sequence of transcribed pieces of the conversation where the
        # boundary is located. This index starts at zero.
        # Corresponds to the JSON property `transcriptIndex`
        # @return [Fixnum]
        attr_accessor :transcript_index
      
        # The word index of this boundary with respect to the first word in the
        # transcript piece. This index starts at zero.
        # Corresponds to the JSON property `wordIndex`
        # @return [Fixnum]
        attr_accessor :word_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transcript_index = args[:transcript_index] if args.key?(:transcript_index)
          @word_index = args[:word_index] if args.key?(:word_index)
        end
      end
      
      # The feedback that the customer has about a certain answer in the conversation.
      class GoogleCloudContactcenterinsightsV1AnswerFeedback
        include Google::Apis::Core::Hashable
      
        # Indicates whether an answer or item was clicked by the human agent.
        # Corresponds to the JSON property `clicked`
        # @return [Boolean]
        attr_accessor :clicked
        alias_method :clicked?, :clicked
      
        # The correctness level of an answer.
        # Corresponds to the JSON property `correctnessLevel`
        # @return [String]
        attr_accessor :correctness_level
      
        # Indicates whether an answer or item was displayed to the human agent in the
        # agent desktop UI.
        # Corresponds to the JSON property `displayed`
        # @return [Boolean]
        attr_accessor :displayed
        alias_method :displayed?, :displayed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clicked = args[:clicked] if args.key?(:clicked)
          @correctness_level = args[:correctness_level] if args.key?(:correctness_level)
          @displayed = args[:displayed] if args.key?(:displayed)
        end
      end
      
      # Agent Assist Article Suggestion data.
      class GoogleCloudContactcenterinsightsV1ArticleSuggestionData
        include Google::Apis::Core::Hashable
      
        # The system's confidence score that this article is a good match for this
        # conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
        # certain).
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # Map that contains metadata about the Article Suggestion and the document that
        # it originates from.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `queryRecord`
        # @return [String]
        attr_accessor :query_record
      
        # The knowledge document that this answer was extracted from. Format: projects/`
        # project`/knowledgeBases/`knowledge_base`/documents/`document`
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Article title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Article URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @metadata = args[:metadata] if args.key?(:metadata)
          @query_record = args[:query_record] if args.key?(:query_record)
          @source = args[:source] if args.key?(:source)
          @title = args[:title] if args.key?(:title)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # The metadata for a bulk analyze conversations operation.
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # The number of requested analyses that have completed successfully so far.
        # Corresponds to the JSON property `completedAnalysesCount`
        # @return [Fixnum]
        attr_accessor :completed_analyses_count
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of requested analyses that have failed so far.
        # Corresponds to the JSON property `failedAnalysesCount`
        # @return [Fixnum]
        attr_accessor :failed_analyses_count
      
        # The request to analyze conversations in bulk.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest]
        attr_accessor :request
      
        # Total number of analyses requested. Computed by the number of conversations
        # returned by `filter` multiplied by `analysis_percentage` in the request.
        # Corresponds to the JSON property `totalRequestedAnalysesCount`
        # @return [Fixnum]
        attr_accessor :total_requested_analyses_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed_analyses_count = args[:completed_analyses_count] if args.key?(:completed_analyses_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failed_analyses_count = args[:failed_analyses_count] if args.key?(:failed_analyses_count)
          @request = args[:request] if args.key?(:request)
          @total_requested_analyses_count = args[:total_requested_analyses_count] if args.key?(:total_requested_analyses_count)
        end
      end
      
      # The request to analyze conversations in bulk.
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Percentage of selected conversation to analyze, between [0, 100].
        # Corresponds to the JSON property `analysisPercentage`
        # @return [Float]
        attr_accessor :analysis_percentage
      
        # Required. Filter used to select the subset of conversations to analyze.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The parent resource to create analyses in.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_percentage = args[:analysis_percentage] if args.key?(:analysis_percentage)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The response for a bulk analyze conversations operation.
      class GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsResponse
        include Google::Apis::Core::Hashable
      
        # Count of failed analyses.
        # Corresponds to the JSON property `failedAnalysisCount`
        # @return [Fixnum]
        attr_accessor :failed_analysis_count
      
        # Count of successful analyses.
        # Corresponds to the JSON property `successfulAnalysisCount`
        # @return [Fixnum]
        attr_accessor :successful_analysis_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_analysis_count = args[:failed_analysis_count] if args.key?(:failed_analysis_count)
          @successful_analysis_count = args[:successful_analysis_count] if args.key?(:successful_analysis_count)
        end
      end
      
      # Response of querying an issue model's statistics.
      class GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse
        include Google::Apis::Core::Hashable
      
        # Aggregated statistics about an issue model.
        # Corresponds to the JSON property `currentStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats]
        attr_accessor :current_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_stats = args[:current_stats] if args.key?(:current_stats)
        end
      end
      
      # The response for calculating conversation statistics.
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponse
        include Google::Apis::Core::Hashable
      
        # The average duration of all conversations. The average is calculated using
        # only conversations that have a time duration.
        # Corresponds to the JSON property `averageDuration`
        # @return [String]
        attr_accessor :average_duration
      
        # The average number of turns per conversation.
        # Corresponds to the JSON property `averageTurnCount`
        # @return [Fixnum]
        attr_accessor :average_turn_count
      
        # The total number of conversations.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # A time series representing conversations over time.
        # Corresponds to the JSON property `conversationCountTimeSeries`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries]
        attr_accessor :conversation_count_time_series
      
        # A map associating each custom highlighter resource name with its respective
        # number of matches in the set of conversations.
        # Corresponds to the JSON property `customHighlighterMatches`
        # @return [Hash<String,Fixnum>]
        attr_accessor :custom_highlighter_matches
      
        # A map associating each issue resource name with its respective number of
        # matches in the set of conversations. Key has the format: `projects//locations//
        # issueModels//issues/` Deprecated, use `issue_matches_stats` field instead.
        # Corresponds to the JSON property `issueMatches`
        # @return [Hash<String,Fixnum>]
        attr_accessor :issue_matches
      
        # A map associating each issue resource name with its respective number of
        # matches in the set of conversations. Key has the format: `projects//locations//
        # issueModels//issues/`
        # Corresponds to the JSON property `issueMatchesStats`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>]
        attr_accessor :issue_matches_stats
      
        # A map associating each smart highlighter display name with its respective
        # number of matches in the set of conversations.
        # Corresponds to the JSON property `smartHighlighterMatches`
        # @return [Hash<String,Fixnum>]
        attr_accessor :smart_highlighter_matches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_duration = args[:average_duration] if args.key?(:average_duration)
          @average_turn_count = args[:average_turn_count] if args.key?(:average_turn_count)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @conversation_count_time_series = args[:conversation_count_time_series] if args.key?(:conversation_count_time_series)
          @custom_highlighter_matches = args[:custom_highlighter_matches] if args.key?(:custom_highlighter_matches)
          @issue_matches = args[:issue_matches] if args.key?(:issue_matches)
          @issue_matches_stats = args[:issue_matches_stats] if args.key?(:issue_matches_stats)
          @smart_highlighter_matches = args[:smart_highlighter_matches] if args.key?(:smart_highlighter_matches)
        end
      end
      
      # A time series representing conversations over time.
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries
        include Google::Apis::Core::Hashable
      
        # The duration of each interval.
        # Corresponds to the JSON property `intervalDuration`
        # @return [String]
        attr_accessor :interval_duration
      
        # An ordered list of intervals from earliest to latest, where each interval
        # represents the number of conversations that transpired during the time window.
        # Corresponds to the JSON property `points`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>]
        attr_accessor :points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval_duration = args[:interval_duration] if args.key?(:interval_duration)
          @points = args[:points] if args.key?(:points)
        end
      end
      
      # A single interval in a time series.
      class GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval
        include Google::Apis::Core::Hashable
      
        # The number of conversations created in this interval.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # The start time of this interval.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A piece of metadata that applies to a window of a call.
      class GoogleCloudContactcenterinsightsV1CallAnnotation
        include Google::Apis::Core::Hashable
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `annotationEndBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary]
        attr_accessor :annotation_end_boundary
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `annotationStartBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary]
        attr_accessor :annotation_start_boundary
      
        # The channel of the audio where the annotation occurs. For single-channel audio,
        # this field is not populated.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # The data for an entity mention annotation. This represents a mention of an `
        # Entity` in the conversation.
        # Corresponds to the JSON property `entityMentionData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EntityMentionData]
        attr_accessor :entity_mention_data
      
        # The data for a hold annotation.
        # Corresponds to the JSON property `holdData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1HoldData]
        attr_accessor :hold_data
      
        # The data for an intent match. Represents an intent match for a text segment in
        # the conversation. A text segment can be part of a sentence, a complete
        # sentence, or an utterance with multiple sentences.
        # Corresponds to the JSON property `intentMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IntentMatchData]
        attr_accessor :intent_match_data
      
        # The data for an interruption annotation.
        # Corresponds to the JSON property `interruptionData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InterruptionData]
        attr_accessor :interruption_data
      
        # The data for an issue match annotation.
        # Corresponds to the JSON property `issueMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueMatchData]
        attr_accessor :issue_match_data
      
        # The data for a matched phrase matcher. Represents information identifying a
        # phrase matcher for a given match.
        # Corresponds to the JSON property `phraseMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchData]
        attr_accessor :phrase_match_data
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentimentData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData]
        attr_accessor :sentiment_data
      
        # The data for a silence annotation.
        # Corresponds to the JSON property `silenceData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SilenceData]
        attr_accessor :silence_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_end_boundary = args[:annotation_end_boundary] if args.key?(:annotation_end_boundary)
          @annotation_start_boundary = args[:annotation_start_boundary] if args.key?(:annotation_start_boundary)
          @channel_tag = args[:channel_tag] if args.key?(:channel_tag)
          @entity_mention_data = args[:entity_mention_data] if args.key?(:entity_mention_data)
          @hold_data = args[:hold_data] if args.key?(:hold_data)
          @intent_match_data = args[:intent_match_data] if args.key?(:intent_match_data)
          @interruption_data = args[:interruption_data] if args.key?(:interruption_data)
          @issue_match_data = args[:issue_match_data] if args.key?(:issue_match_data)
          @phrase_match_data = args[:phrase_match_data] if args.key?(:phrase_match_data)
          @sentiment_data = args[:sentiment_data] if args.key?(:sentiment_data)
          @silence_data = args[:silence_data] if args.key?(:silence_data)
        end
      end
      
      # The conversation resource.
      class GoogleCloudContactcenterinsightsV1Conversation
        include Google::Apis::Core::Hashable
      
        # An opaque, user-specified string representing the human agent who handled the
        # conversation.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Call-specific metadata.
        # Corresponds to the JSON property `callMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationCallMetadata]
        attr_accessor :call_metadata
      
        # Output only. The time at which the conversation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The conversation source, which is a combination of transcript and audio.
        # Corresponds to the JSON property `dataSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationDataSource]
        attr_accessor :data_source
      
        # Output only. All the matched Dialogflow intents in the call. The key
        # corresponds to a Dialogflow intent, format: projects/`project`/agent/`agent`/
        # intents/`intent`
        # Corresponds to the JSON property `dialogflowIntents`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowIntent>]
        attr_accessor :dialogflow_intents
      
        # Output only. The duration of the conversation.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # The time at which this conversation should expire. After this time, the
        # conversation data and any associated analyses will be deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # A map for the user to specify any custom fields. A maximum of 20 labels per
        # conversation is allowed, with a maximum of 256 characters per entry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # A user-specified language code for the conversation.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The analysis resource.
        # Corresponds to the JSON property `latestAnalysis`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis]
        attr_accessor :latest_analysis
      
        # Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Immutable. The resource name of the conversation. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated user ID which the customer sent to us.
        # Corresponds to the JSON property `obfuscatedUserId`
        # @return [String]
        attr_accessor :obfuscated_user_id
      
        # Output only. The annotations that were generated during the customer and agent
        # interaction.
        # Corresponds to the JSON property `runtimeAnnotations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RuntimeAnnotation>]
        attr_accessor :runtime_annotations
      
        # The time at which the conversation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # A message representing the transcript of a conversation.
        # Corresponds to the JSON property `transcript`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscript]
        attr_accessor :transcript
      
        # Input only. The TTL for this resource. If specified, then this TTL will be
        # used to calculate the expire time.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Output only. The number of turns in the conversation.
        # Corresponds to the JSON property `turnCount`
        # @return [Fixnum]
        attr_accessor :turn_count
      
        # Output only. The most recent time at which the conversation was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @call_metadata = args[:call_metadata] if args.key?(:call_metadata)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_source = args[:data_source] if args.key?(:data_source)
          @dialogflow_intents = args[:dialogflow_intents] if args.key?(:dialogflow_intents)
          @duration = args[:duration] if args.key?(:duration)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @language_code = args[:language_code] if args.key?(:language_code)
          @latest_analysis = args[:latest_analysis] if args.key?(:latest_analysis)
          @medium = args[:medium] if args.key?(:medium)
          @name = args[:name] if args.key?(:name)
          @obfuscated_user_id = args[:obfuscated_user_id] if args.key?(:obfuscated_user_id)
          @runtime_annotations = args[:runtime_annotations] if args.key?(:runtime_annotations)
          @start_time = args[:start_time] if args.key?(:start_time)
          @transcript = args[:transcript] if args.key?(:transcript)
          @ttl = args[:ttl] if args.key?(:ttl)
          @turn_count = args[:turn_count] if args.key?(:turn_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Call-specific metadata.
      class GoogleCloudContactcenterinsightsV1ConversationCallMetadata
        include Google::Apis::Core::Hashable
      
        # The audio channel that contains the agent.
        # Corresponds to the JSON property `agentChannel`
        # @return [Fixnum]
        attr_accessor :agent_channel
      
        # The audio channel that contains the customer.
        # Corresponds to the JSON property `customerChannel`
        # @return [Fixnum]
        attr_accessor :customer_channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_channel = args[:agent_channel] if args.key?(:agent_channel)
          @customer_channel = args[:customer_channel] if args.key?(:customer_channel)
        end
      end
      
      # The conversation source, which is a combination of transcript and audio.
      class GoogleCloudContactcenterinsightsV1ConversationDataSource
        include Google::Apis::Core::Hashable
      
        # A Dialogflow source of conversation data.
        # Corresponds to the JSON property `dialogflowSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowSource]
        attr_accessor :dialogflow_source
      
        # A Cloud Storage source of conversation data.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1GcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialogflow_source = args[:dialogflow_source] if args.key?(:dialogflow_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # One channel of conversation-level sentiment data.
      class GoogleCloudContactcenterinsightsV1ConversationLevelSentiment
        include Google::Apis::Core::Hashable
      
        # The channel of the audio that the data applies to.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentimentData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData]
        attr_accessor :sentiment_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_tag = args[:channel_tag] if args.key?(:channel_tag)
          @sentiment_data = args[:sentiment_data] if args.key?(:sentiment_data)
        end
      end
      
      # The call participant speaking for a given utterance.
      class GoogleCloudContactcenterinsightsV1ConversationParticipant
        include Google::Apis::Core::Hashable
      
        # Deprecated. Use `dialogflow_participant_name` instead. The name of the
        # Dialogflow participant. Format: projects/`project`/locations/`location`/
        # conversations/`conversation`/participants/`participant`
        # Corresponds to the JSON property `dialogflowParticipant`
        # @return [String]
        attr_accessor :dialogflow_participant
      
        # The name of the participant provided by Dialogflow. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/participants/`participant`
        # Corresponds to the JSON property `dialogflowParticipantName`
        # @return [String]
        attr_accessor :dialogflow_participant_name
      
        # Obfuscated user ID from Dialogflow.
        # Corresponds to the JSON property `obfuscatedExternalUserId`
        # @return [String]
        attr_accessor :obfuscated_external_user_id
      
        # The role of the participant.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # A user-specified ID representing the participant.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialogflow_participant = args[:dialogflow_participant] if args.key?(:dialogflow_participant)
          @dialogflow_participant_name = args[:dialogflow_participant_name] if args.key?(:dialogflow_participant_name)
          @obfuscated_external_user_id = args[:obfuscated_external_user_id] if args.key?(:obfuscated_external_user_id)
          @role = args[:role] if args.key?(:role)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # A message representing the transcript of a conversation.
      class GoogleCloudContactcenterinsightsV1ConversationTranscript
        include Google::Apis::Core::Hashable
      
        # A list of sequential transcript segments that comprise the conversation.
        # Corresponds to the JSON property `transcriptSegments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>]
        attr_accessor :transcript_segments
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transcript_segments = args[:transcript_segments] if args.key?(:transcript_segments)
        end
      end
      
      # A segment of a full transcript.
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment
        include Google::Apis::Core::Hashable
      
        # For conversations derived from multi-channel audio, this is the channel number
        # corresponding to the audio from that channel. For audioChannelCount = N, its
        # output values can range from '1' to 'N'. A channel tag of 0 indicates that the
        # audio is mono.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A
        # default value of 0.0 indicates that the value is unset.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Metadata from Dialogflow relating to the current transcript segment.
        # Corresponds to the JSON property `dialogflowSegmentMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata]
        attr_accessor :dialogflow_segment_metadata
      
        # The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/
        # bcp/bcp47.txt) language tag. Example: "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The time that the message occurred, if provided.
        # Corresponds to the JSON property `messageTime`
        # @return [String]
        attr_accessor :message_time
      
        # The call participant speaking for a given utterance.
        # Corresponds to the JSON property `segmentParticipant`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationParticipant]
        attr_accessor :segment_participant
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData]
        attr_accessor :sentiment
      
        # The text of this segment.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A list of the word-specific information for each word in the segment.
        # Corresponds to the JSON property `words`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>]
        attr_accessor :words
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel_tag = args[:channel_tag] if args.key?(:channel_tag)
          @confidence = args[:confidence] if args.key?(:confidence)
          @dialogflow_segment_metadata = args[:dialogflow_segment_metadata] if args.key?(:dialogflow_segment_metadata)
          @language_code = args[:language_code] if args.key?(:language_code)
          @message_time = args[:message_time] if args.key?(:message_time)
          @segment_participant = args[:segment_participant] if args.key?(:segment_participant)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @text = args[:text] if args.key?(:text)
          @words = args[:words] if args.key?(:words)
        end
      end
      
      # Metadata from Dialogflow relating to the current transcript segment.
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
        include Google::Apis::Core::Hashable
      
        # Whether the transcript segment was covered under the configured smart reply
        # allowlist in Agent Assist.
        # Corresponds to the JSON property `smartReplyAllowlistCovered`
        # @return [Boolean]
        attr_accessor :smart_reply_allowlist_covered
        alias_method :smart_reply_allowlist_covered?, :smart_reply_allowlist_covered
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @smart_reply_allowlist_covered = args[:smart_reply_allowlist_covered] if args.key?(:smart_reply_allowlist_covered)
        end
      end
      
      # Word-level info for words in a transcript.
      class GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo
        include Google::Apis::Core::Hashable
      
        # A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A
        # default value of 0.0 indicates that the value is unset.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # Time offset of the end of this word relative to the beginning of the total
        # conversation.
        # Corresponds to the JSON property `endOffset`
        # @return [String]
        attr_accessor :end_offset
      
        # Time offset of the start of this word relative to the beginning of the total
        # conversation.
        # Corresponds to the JSON property `startOffset`
        # @return [String]
        attr_accessor :start_offset
      
        # The word itself. Includes punctuation marks that surround the word.
        # Corresponds to the JSON property `word`
        # @return [String]
        attr_accessor :word
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @end_offset = args[:end_offset] if args.key?(:end_offset)
          @start_offset = args[:start_offset] if args.key?(:start_offset)
          @word = args[:word] if args.key?(:word)
        end
      end
      
      # Metadata for a create analysis operation.
      class GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The Conversation that this Analysis Operation belongs to.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Metadata for creating an issue model.
      class GoogleCloudContactcenterinsightsV1CreateIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to create an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CreateIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to create an issue model.
      class GoogleCloudContactcenterinsightsV1CreateIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # The issue model resource.
        # Corresponds to the JSON property `issueModel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel]
        attr_accessor :issue_model
      
        # Required. The parent resource of the issue model.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_model = args[:issue_model] if args.key?(:issue_model)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Metadata for deleting an issue model.
      class GoogleCloudContactcenterinsightsV1DeleteIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to delete an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to delete an issue model.
      class GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the issue model to delete.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata for deploying an issue model.
      class GoogleCloudContactcenterinsightsV1DeployIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to deploy an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeployIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to deploy an issue model.
      class GoogleCloudContactcenterinsightsV1DeployIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The issue model to deploy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response to deploy an issue model.
      class GoogleCloudContactcenterinsightsV1DeployIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The data for a Dialogflow intent. Represents a detected intent in the
      # conversation, e.g. MAKES_PROMISE.
      class GoogleCloudContactcenterinsightsV1DialogflowIntent
        include Google::Apis::Core::Hashable
      
        # The human-readable name of the intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Dialogflow interaction data.
      class GoogleCloudContactcenterinsightsV1DialogflowInteractionData
        include Google::Apis::Core::Hashable
      
        # The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (
        # completely certain).
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The Dialogflow intent resource path. Format: projects/`project`/agent/`agent`/
        # intents/`intent`
        # Corresponds to the JSON property `dialogflowIntentId`
        # @return [String]
        attr_accessor :dialogflow_intent_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence = args[:confidence] if args.key?(:confidence)
          @dialogflow_intent_id = args[:dialogflow_intent_id] if args.key?(:dialogflow_intent_id)
        end
      end
      
      # A Dialogflow source of conversation data.
      class GoogleCloudContactcenterinsightsV1DialogflowSource
        include Google::Apis::Core::Hashable
      
        # Cloud Storage URI that points to a file that contains the conversation audio.
        # Corresponds to the JSON property `audioUri`
        # @return [String]
        attr_accessor :audio_uri
      
        # Output only. The name of the Dialogflow conversation that this conversation
        # resource is derived from. Format: projects/`project`/locations/`location`/
        # conversations/`conversation`
        # Corresponds to the JSON property `dialogflowConversation`
        # @return [String]
        attr_accessor :dialogflow_conversation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_uri = args[:audio_uri] if args.key?(:audio_uri)
          @dialogflow_conversation = args[:dialogflow_conversation] if args.key?(:dialogflow_conversation)
        end
      end
      
      # The data for an entity annotation. Represents a phrase in the conversation
      # that is a known entity, such as a person, an organization, or location.
      class GoogleCloudContactcenterinsightsV1Entity
        include Google::Apis::Core::Hashable
      
        # The representative name for the entity.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Metadata associated with the entity. For most entity types, the metadata is a
        # Wikipedia URL (`wikipedia_url`) and Knowledge Graph MID (`mid`), if they are
        # available. For the metadata associated with other entity types, see the Type
        # table below.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The salience score associated with the entity in the [0, 1.0] range. The
        # salience score for an entity provides information about the importance or
        # centrality of that entity to the entire document text. Scores closer to 0 are
        # less salient, while scores closer to 1.0 are highly salient.
        # Corresponds to the JSON property `salience`
        # @return [Float]
        attr_accessor :salience
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData]
        attr_accessor :sentiment
      
        # The entity type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @salience = args[:salience] if args.key?(:salience)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The data for an entity mention annotation. This represents a mention of an `
      # Entity` in the conversation.
      class GoogleCloudContactcenterinsightsV1EntityMentionData
        include Google::Apis::Core::Hashable
      
        # The key of this entity in conversation entities. Can be used to retrieve the
        # exact `Entity` this mention is attached to.
        # Corresponds to the JSON property `entityUniqueId`
        # @return [String]
        attr_accessor :entity_unique_id
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SentimentData]
        attr_accessor :sentiment
      
        # The type of the entity mention.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity_unique_id = args[:entity_unique_id] if args.key?(:entity_unique_id)
          @sentiment = args[:sentiment] if args.key?(:sentiment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Exact match configuration.
      class GoogleCloudContactcenterinsightsV1ExactMatchConfig
        include Google::Apis::Core::Hashable
      
        # Whether to consider case sensitivity when performing an exact match.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] if args.key?(:case_sensitive)
        end
      end
      
      # Metadata for an export insights operation.
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during export operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to export insights.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to export insights.
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest
        include Google::Apis::Core::Hashable
      
        # A BigQuery Table Reference.
        # Corresponds to the JSON property `bigQueryDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination]
        attr_accessor :big_query_destination
      
        # A filter to reduce results to a specific subset. Useful for exporting
        # conversations with specific properties.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # A fully qualified KMS key name for BigQuery tables protected by CMEK. Format:
        # projects/`project`/locations/`location`/keyRings/`keyring`/cryptoKeys/`key`/
        # cryptoKeyVersions/`version`
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Required. The parent resource to export data from.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Options for what to do if the destination table already exists.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_destination = args[:big_query_destination] if args.key?(:big_query_destination)
          @filter = args[:filter] if args.key?(:filter)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @parent = args[:parent] if args.key?(:parent)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # A BigQuery Table Reference.
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The name of the BigQuery dataset that the snapshot result should be
        # exported to. If this dataset does not exist, the export call returns an
        # INVALID_ARGUMENT error.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # A project ID or number. If specified, then export will attempt to write data
        # to this project instead of the resource project. Otherwise, the resource
        # project will be used.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The BigQuery table name to which the insights data should be written. If this
        # table does not exist, the export call returns an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Response for an export insights operation.
      class GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Agent Assist frequently-asked-question answer data.
      class GoogleCloudContactcenterinsightsV1FaqAnswerData
        include Google::Apis::Core::Hashable
      
        # The piece of text from the `source` knowledge base document.
        # Corresponds to the JSON property `answer`
        # @return [String]
        attr_accessor :answer
      
        # The system's confidence score that this answer is a good match for this
        # conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
        # certain).
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # Map that contains metadata about the FAQ answer and the document that it
        # originates from.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `queryRecord`
        # @return [String]
        attr_accessor :query_record
      
        # The corresponding FAQ question.
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # The knowledge document that this answer was extracted from. Format: projects/`
        # project`/knowledgeBases/`knowledge_base`/documents/`document`.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @metadata = args[:metadata] if args.key?(:metadata)
          @query_record = args[:query_record] if args.key?(:query_record)
          @question = args[:question] if args.key?(:question)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A Cloud Storage source of conversation data.
      class GoogleCloudContactcenterinsightsV1GcsSource
        include Google::Apis::Core::Hashable
      
        # Cloud Storage URI that points to a file that contains the conversation audio.
        # Corresponds to the JSON property `audioUri`
        # @return [String]
        attr_accessor :audio_uri
      
        # Immutable. Cloud Storage URI that points to a file that contains the
        # conversation transcript.
        # Corresponds to the JSON property `transcriptUri`
        # @return [String]
        attr_accessor :transcript_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_uri = args[:audio_uri] if args.key?(:audio_uri)
          @transcript_uri = args[:transcript_uri] if args.key?(:transcript_uri)
        end
      end
      
      # The data for a hold annotation.
      class GoogleCloudContactcenterinsightsV1HoldData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for an IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1IngestConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Partial errors during ingest operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to ingest conversations.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to ingest conversations.
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration that applies to all conversations.
        # Corresponds to the JSON property `conversationConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig]
        attr_accessor :conversation_config
      
        # Configuration for Cloud Storage bucket sources.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource]
        attr_accessor :gcs_source
      
        # Required. The parent resource for new conversations.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Configuration for processing transcript objects.
        # Corresponds to the JSON property `transcriptObjectConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig]
        attr_accessor :transcript_object_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_config = args[:conversation_config] if args.key?(:conversation_config)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @parent = args[:parent] if args.key?(:parent)
          @transcript_object_config = args[:transcript_object_config] if args.key?(:transcript_object_config)
        end
      end
      
      # Configuration that applies to all conversations.
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
        include Google::Apis::Core::Hashable
      
        # An opaque, user-specified string representing the human agent who handled the
        # conversations.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
        end
      end
      
      # Configuration for Cloud Storage bucket sources.
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Required. The Cloud Storage bucket containing source objects.
        # Corresponds to the JSON property `bucketUri`
        # @return [String]
        attr_accessor :bucket_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_uri = args[:bucket_uri] if args.key?(:bucket_uri)
        end
      end
      
      # Configuration for processing transcript objects.
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig
        include Google::Apis::Core::Hashable
      
        # Required. The medium transcript objects represent.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @medium = args[:medium] if args.key?(:medium)
        end
      end
      
      # The response to an IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1IngestConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The data for an intent. Represents a detected intent in the conversation, for
      # example MAKES_PROMISE.
      class GoogleCloudContactcenterinsightsV1Intent
        include Google::Apis::Core::Hashable
      
        # The human-readable name of the intent.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The unique identifier of the intent.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # The data for an intent match. Represents an intent match for a text segment in
      # the conversation. A text segment can be part of a sentence, a complete
      # sentence, or an utterance with multiple sentences.
      class GoogleCloudContactcenterinsightsV1IntentMatchData
        include Google::Apis::Core::Hashable
      
        # The id of the matched intent. Can be used to retrieve the corresponding intent
        # information.
        # Corresponds to the JSON property `intentUniqueId`
        # @return [String]
        attr_accessor :intent_unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intent_unique_id = args[:intent_unique_id] if args.key?(:intent_unique_id)
        end
      end
      
      # The data for an interruption annotation.
      class GoogleCloudContactcenterinsightsV1InterruptionData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The issue resource.
      class GoogleCloudContactcenterinsightsV1Issue
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this issue was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The representative name for the issue.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The resource name of the issue. Format: projects/`project`/
        # locations/`location`/issueModels/`issue_model`/issues/`issue`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The most recent time that this issue was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about the issue.
      class GoogleCloudContactcenterinsightsV1IssueAssignment
        include Google::Apis::Core::Hashable
      
        # Immutable. Display name of the assigned issue. This field is set at time of
        # analyis and immutable since then.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the assigned issue.
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # Score indicating the likelihood of the issue assignment. currently bounded on [
        # 0,1].
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @issue = args[:issue] if args.key?(:issue)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # The data for an issue match annotation.
      class GoogleCloudContactcenterinsightsV1IssueMatchData
        include Google::Apis::Core::Hashable
      
        # Information about the issue.
        # Corresponds to the JSON property `issueAssignment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueAssignment]
        attr_accessor :issue_assignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_assignment = args[:issue_assignment] if args.key?(:issue_assignment)
        end
      end
      
      # The issue model resource.
      class GoogleCloudContactcenterinsightsV1IssueModel
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this issue model was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The representative name for the issue model.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configs for the input data used to create the issue model.
        # Corresponds to the JSON property `inputDataConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig]
        attr_accessor :input_data_config
      
        # Immutable. The resource name of the issue model. Format: projects/`project`/
        # locations/`location`/issueModels/`issue_model`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the model.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Aggregated statistics about an issue model.
        # Corresponds to the JSON property `trainingStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStats]
        attr_accessor :training_stats
      
        # Output only. The most recent time at which the issue model was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_data_config = args[:input_data_config] if args.key?(:input_data_config)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @training_stats = args[:training_stats] if args.key?(:training_stats)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configs for the input data used to create the issue model.
      class GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig
        include Google::Apis::Core::Hashable
      
        # A filter to reduce the conversations used for training the model to a specific
        # subset.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Medium of conversations used in training data. This field is being deprecated.
        # To specify the medium to be used in training a new issue model, set the `
        # medium` field on `filter`.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Output only. Number of conversations used in training. Output only.
        # Corresponds to the JSON property `trainingConversationsCount`
        # @return [Fixnum]
        attr_accessor :training_conversations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @medium = args[:medium] if args.key?(:medium)
          @training_conversations_count = args[:training_conversations_count] if args.key?(:training_conversations_count)
        end
      end
      
      # Aggregated statistics about an issue model.
      class GoogleCloudContactcenterinsightsV1IssueModelLabelStats
        include Google::Apis::Core::Hashable
      
        # Number of conversations the issue model has analyzed at this point in time.
        # Corresponds to the JSON property `analyzedConversationsCount`
        # @return [Fixnum]
        attr_accessor :analyzed_conversations_count
      
        # Statistics on each issue. Key is the issue's resource name.
        # Corresponds to the JSON property `issueStats`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats>]
        attr_accessor :issue_stats
      
        # Number of analyzed conversations for which no issue was applicable at this
        # point in time.
        # Corresponds to the JSON property `unclassifiedConversationsCount`
        # @return [Fixnum]
        attr_accessor :unclassified_conversations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyzed_conversations_count = args[:analyzed_conversations_count] if args.key?(:analyzed_conversations_count)
          @issue_stats = args[:issue_stats] if args.key?(:issue_stats)
          @unclassified_conversations_count = args[:unclassified_conversations_count] if args.key?(:unclassified_conversations_count)
        end
      end
      
      # Aggregated statistics about an issue.
      class GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats
        include Google::Apis::Core::Hashable
      
        # Display name of the issue.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Issue resource. Format: projects/`project`/locations/`location`/issueModels/`
        # issue_model`/issues/`issue`
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # Number of conversations attached to the issue at this point in time.
        # Corresponds to the JSON property `labeledConversationsCount`
        # @return [Fixnum]
        attr_accessor :labeled_conversations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @issue = args[:issue] if args.key?(:issue)
          @labeled_conversations_count = args[:labeled_conversations_count] if args.key?(:labeled_conversations_count)
        end
      end
      
      # Issue Modeling result on a conversation.
      class GoogleCloudContactcenterinsightsV1IssueModelResult
        include Google::Apis::Core::Hashable
      
        # Issue model that generates the result. Format: projects/`project`/locations/`
        # location`/issueModels/`issue_model`
        # Corresponds to the JSON property `issueModel`
        # @return [String]
        attr_accessor :issue_model
      
        # All the matched issues.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueAssignment>]
        attr_accessor :issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_model = args[:issue_model] if args.key?(:issue_model)
          @issues = args[:issues] if args.key?(:issues)
        end
      end
      
      # The response to list analyses.
      class GoogleCloudContactcenterinsightsV1ListAnalysesResponse
        include Google::Apis::Core::Hashable
      
        # The analyses that match the request.
        # Corresponds to the JSON property `analyses`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Analysis>]
        attr_accessor :analyses
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyses = args[:analyses] if args.key?(:analyses)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response of listing conversations.
      class GoogleCloudContactcenterinsightsV1ListConversationsResponse
        include Google::Apis::Core::Hashable
      
        # The conversations that match the request.
        # Corresponds to the JSON property `conversations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation>]
        attr_accessor :conversations
      
        # A token which can be sent as `page_token` to retrieve the next page. If this
        # field is set, it means there is another page available. If it is not set, it
        # means no other pages are available.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversations = args[:conversations] if args.key?(:conversations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response of listing issue models.
      class GoogleCloudContactcenterinsightsV1ListIssueModelsResponse
        include Google::Apis::Core::Hashable
      
        # The issue models that match the request.
        # Corresponds to the JSON property `issueModels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel>]
        attr_accessor :issue_models
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_models = args[:issue_models] if args.key?(:issue_models)
        end
      end
      
      # The response of listing issues.
      class GoogleCloudContactcenterinsightsV1ListIssuesResponse
        include Google::Apis::Core::Hashable
      
        # The issues that match the request.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue>]
        attr_accessor :issues
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
        end
      end
      
      # The response of listing phrase matchers.
      class GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The phrase matchers that match the request.
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatcher>]
        attr_accessor :phrase_matchers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @phrase_matchers = args[:phrase_matchers] if args.key?(:phrase_matchers)
        end
      end
      
      # The response of listing views.
      class GoogleCloudContactcenterinsightsV1ListViewsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The views that match the request.
        # Corresponds to the JSON property `views`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1View>]
        attr_accessor :views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @views = args[:views] if args.key?(:views)
        end
      end
      
      # The data for a matched phrase matcher. Represents information identifying a
      # phrase matcher for a given match.
      class GoogleCloudContactcenterinsightsV1PhraseMatchData
        include Google::Apis::Core::Hashable
      
        # The human-readable name of the phrase matcher.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The unique identifier (the resource name) of the phrase matcher.
        # Corresponds to the JSON property `phraseMatcher`
        # @return [String]
        attr_accessor :phrase_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @phrase_matcher = args[:phrase_matcher] if args.key?(:phrase_matcher)
        end
      end
      
      # The data for a phrase match rule.
      class GoogleCloudContactcenterinsightsV1PhraseMatchRule
        include Google::Apis::Core::Hashable
      
        # Configuration information of a phrase match rule.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig]
        attr_accessor :config
      
        # Specifies whether the phrase must be missing from the transcript segment or
        # present in the transcript segment.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        # Required. The phrase to be matched.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @negated = args[:negated] if args.key?(:negated)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Configuration information of a phrase match rule.
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig
        include Google::Apis::Core::Hashable
      
        # Exact match configuration.
        # Corresponds to the JSON property `exactMatchConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExactMatchConfig]
        attr_accessor :exact_match_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match_config = args[:exact_match_config] if args.key?(:exact_match_config)
        end
      end
      
      # A message representing a rule in the phrase matcher.
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
        include Google::Apis::Core::Hashable
      
        # A list of phase match rules that are included in this group.
        # Corresponds to the JSON property `phraseMatchRules`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRule>]
        attr_accessor :phrase_match_rules
      
        # Required. The type of this phrase match rule group.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @phrase_match_rules = args[:phrase_match_rules] if args.key?(:phrase_match_rules)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The phrase matcher resource.
      class GoogleCloudContactcenterinsightsV1PhraseMatcher
        include Google::Apis::Core::Hashable
      
        # Output only. The most recent time at which the activation status was updated.
        # Corresponds to the JSON property `activationUpdateTime`
        # @return [String]
        attr_accessor :activation_update_time
      
        # Applies the phrase matcher only when it is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # The human-readable name of the phrase matcher.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the phrase matcher. Format: projects/`project`/locations/`
        # location`/phraseMatchers/`phrase_matcher`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A list of phase match rule groups that are included in this matcher.
        # Corresponds to the JSON property `phraseMatchRuleGroups`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>]
        attr_accessor :phrase_match_rule_groups
      
        # Output only. The timestamp of when the revision was created. It is also the
        # create time when a new matcher is added.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. Immutable. The revision ID of the phrase matcher. A new revision
        # is committed whenever the matcher is changed, except when it is activated or
        # deactivated. A server generated random ID will be used. Example: locations/
        # global/phraseMatchers/my-first-matcher@1234567
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # The role whose utterances the phrase matcher should be matched against. If the
        # role is ROLE_UNSPECIFIED it will be matched against any utterances in the
        # transcript.
        # Corresponds to the JSON property `roleMatch`
        # @return [String]
        attr_accessor :role_match
      
        # Required. The type of this phrase matcher.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The most recent time at which the phrase matcher was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The customized version tag to use for the phrase matcher. If not specified, it
        # will default to `revision_id`.
        # Corresponds to the JSON property `versionTag`
        # @return [String]
        attr_accessor :version_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_update_time = args[:activation_update_time] if args.key?(:activation_update_time)
          @active = args[:active] if args.key?(:active)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @phrase_match_rule_groups = args[:phrase_match_rule_groups] if args.key?(:phrase_match_rule_groups)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @role_match = args[:role_match] if args.key?(:role_match)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_tag = args[:version_tag] if args.key?(:version_tag)
        end
      end
      
      # An annotation that was generated during the customer and agent interaction.
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotation
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the annotation. Format: projects/`project`/locations/`
        # location`/conversationDatasets/`dataset`/conversationDataItems/`data_item`/
        # conversationAnnotations/`annotation`
        # Corresponds to the JSON property `annotationId`
        # @return [String]
        attr_accessor :annotation_id
      
        # The feedback that the customer has about a certain answer in the conversation.
        # Corresponds to the JSON property `answerFeedback`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnswerFeedback]
        attr_accessor :answer_feedback
      
        # Agent Assist Article Suggestion data.
        # Corresponds to the JSON property `articleSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ArticleSuggestionData]
        attr_accessor :article_suggestion
      
        # The time at which this annotation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Dialogflow interaction data.
        # Corresponds to the JSON property `dialogflowInteraction`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DialogflowInteractionData]
        attr_accessor :dialogflow_interaction
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `endBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary]
        attr_accessor :end_boundary
      
        # Agent Assist frequently-asked-question answer data.
        # Corresponds to the JSON property `faqAnswer`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FaqAnswerData]
        attr_accessor :faq_answer
      
        # Agent Assist Smart Compose suggestion data.
        # Corresponds to the JSON property `smartComposeSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData]
        attr_accessor :smart_compose_suggestion
      
        # Agent Assist Smart Reply data.
        # Corresponds to the JSON property `smartReply`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SmartReplyData]
        attr_accessor :smart_reply
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `startBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotationBoundary]
        attr_accessor :start_boundary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_id = args[:annotation_id] if args.key?(:annotation_id)
          @answer_feedback = args[:answer_feedback] if args.key?(:answer_feedback)
          @article_suggestion = args[:article_suggestion] if args.key?(:article_suggestion)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dialogflow_interaction = args[:dialogflow_interaction] if args.key?(:dialogflow_interaction)
          @end_boundary = args[:end_boundary] if args.key?(:end_boundary)
          @faq_answer = args[:faq_answer] if args.key?(:faq_answer)
          @smart_compose_suggestion = args[:smart_compose_suggestion] if args.key?(:smart_compose_suggestion)
          @smart_reply = args[:smart_reply] if args.key?(:smart_reply)
          @start_boundary = args[:start_boundary] if args.key?(:start_boundary)
        end
      end
      
      # The data for a sentiment annotation.
      class GoogleCloudContactcenterinsightsV1SentimentData
        include Google::Apis::Core::Hashable
      
        # A non-negative number from 0 to infinity which represents the abolute
        # magnitude of sentiment regardless of score.
        # Corresponds to the JSON property `magnitude`
        # @return [Float]
        attr_accessor :magnitude
      
        # The sentiment score between -1.0 (negative) and 1.0 (positive).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @magnitude = args[:magnitude] if args.key?(:magnitude)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # The settings resource.
      class GoogleCloudContactcenterinsightsV1Settings
        include Google::Apis::Core::Hashable
      
        # Default configuration when creating Analyses in Insights.
        # Corresponds to the JSON property `analysisConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig]
        attr_accessor :analysis_config
      
        # The default TTL for newly-created conversations. If a conversation has a
        # specified expiration, that value will be used instead. Changing this value
        # will not change the expiration of existing conversations. Conversations with
        # no expire time persist until they are deleted.
        # Corresponds to the JSON property `conversationTtl`
        # @return [String]
        attr_accessor :conversation_ttl
      
        # Output only. The time at which the settings was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A language code to be applied to each transcript segment unless the segment
        # already specifies a language code. Language code defaults to "en-US" if it is
        # neither specified on the segment nor here.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Immutable. The resource name of the settings resource. Format: projects/`
        # project`/locations/`location`/settings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A map that maps a notification trigger to a Pub/Sub topic. Each time a
        # specified trigger occurs, Insights will notify the corresponding Pub/Sub topic.
        # Keys are notification triggers. Supported keys are: * "all-triggers": Notify
        # each time any of the supported triggers occurs. * "create-analysis": Notify
        # each time an analysis is created. * "create-conversation": Notify each time a
        # conversation is created. * "export-insights-data": Notify each time an export
        # is complete. * "update-conversation": Notify each time a conversation is
        # updated via UpdateConversation. Values are Pub/Sub topics. The format of each
        # Pub/Sub topic is: projects/`project`/topics/`topic`
        # Corresponds to the JSON property `pubsubNotificationSettings`
        # @return [Hash<String,String>]
        attr_accessor :pubsub_notification_settings
      
        # Output only. The time at which the settings were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_config = args[:analysis_config] if args.key?(:analysis_config)
          @conversation_ttl = args[:conversation_ttl] if args.key?(:conversation_ttl)
          @create_time = args[:create_time] if args.key?(:create_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @pubsub_notification_settings = args[:pubsub_notification_settings] if args.key?(:pubsub_notification_settings)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Default configuration when creating Analyses in Insights.
      class GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
        include Google::Apis::Core::Hashable
      
        # Percentage of conversations created using Dialogflow runtime integration to
        # analyze automatically, between [0, 100].
        # Corresponds to the JSON property `runtimeIntegrationAnalysisPercentage`
        # @return [Float]
        attr_accessor :runtime_integration_analysis_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @runtime_integration_analysis_percentage = args[:runtime_integration_analysis_percentage] if args.key?(:runtime_integration_analysis_percentage)
        end
      end
      
      # The data for a silence annotation.
      class GoogleCloudContactcenterinsightsV1SilenceData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Agent Assist Smart Compose suggestion data.
      class GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData
        include Google::Apis::Core::Hashable
      
        # The system's confidence score that this suggestion is a good match for this
        # conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
        # certain).
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # Map that contains metadata about the Smart Compose suggestion and the document
        # from which it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `queryRecord`
        # @return [String]
        attr_accessor :query_record
      
        # The content of the suggestion.
        # Corresponds to the JSON property `suggestion`
        # @return [String]
        attr_accessor :suggestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @metadata = args[:metadata] if args.key?(:metadata)
          @query_record = args[:query_record] if args.key?(:query_record)
          @suggestion = args[:suggestion] if args.key?(:suggestion)
        end
      end
      
      # Agent Assist Smart Reply data.
      class GoogleCloudContactcenterinsightsV1SmartReplyData
        include Google::Apis::Core::Hashable
      
        # The system's confidence score that this reply is a good match for this
        # conversation, ranging from 0.0 (completely uncertain) to 1.0 (completely
        # certain).
        # Corresponds to the JSON property `confidenceScore`
        # @return [Float]
        attr_accessor :confidence_score
      
        # Map that contains metadata about the Smart Reply and the document from which
        # it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `queryRecord`
        # @return [String]
        attr_accessor :query_record
      
        # The content of the reply.
        # Corresponds to the JSON property `reply`
        # @return [String]
        attr_accessor :reply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @confidence_score = args[:confidence_score] if args.key?(:confidence_score)
          @metadata = args[:metadata] if args.key?(:metadata)
          @query_record = args[:query_record] if args.key?(:query_record)
          @reply = args[:reply] if args.key?(:reply)
        end
      end
      
      # Metadata for undeploying an issue model.
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to undeploy an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to undeploy an issue model.
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The issue model to undeploy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response to undeploy an issue model.
      class GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The View resource.
      class GoogleCloudContactcenterinsightsV1View
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this view was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The human-readable display name of the view.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The resource name of the view. Format: projects/`project`/locations/
        # `location`/views/`view`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The most recent time at which the view was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # String with specific view properties.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The metadata for a bulk analyze conversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # The number of requested analyses that have completed successfully so far.
        # Corresponds to the JSON property `completedAnalysesCount`
        # @return [Fixnum]
        attr_accessor :completed_analyses_count
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of requested analyses that have failed so far.
        # Corresponds to the JSON property `failedAnalysesCount`
        # @return [Fixnum]
        attr_accessor :failed_analyses_count
      
        # The request to analyze conversations in bulk.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest]
        attr_accessor :request
      
        # Total number of analyses requested. Computed by the number of conversations
        # returned by `filter` multiplied by `analysis_percentage` in the request.
        # Corresponds to the JSON property `totalRequestedAnalysesCount`
        # @return [Fixnum]
        attr_accessor :total_requested_analyses_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed_analyses_count = args[:completed_analyses_count] if args.key?(:completed_analyses_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failed_analyses_count = args[:failed_analyses_count] if args.key?(:failed_analyses_count)
          @request = args[:request] if args.key?(:request)
          @total_requested_analyses_count = args[:total_requested_analyses_count] if args.key?(:total_requested_analyses_count)
        end
      end
      
      # The request to analyze conversations in bulk.
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Percentage of selected conversation to analyze, between [0, 100].
        # Corresponds to the JSON property `analysisPercentage`
        # @return [Float]
        attr_accessor :analysis_percentage
      
        # Required. Filter used to select the subset of conversations to analyze.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The parent resource to create analyses in.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_percentage = args[:analysis_percentage] if args.key?(:analysis_percentage)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The response for a bulk analyze conversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsResponse
        include Google::Apis::Core::Hashable
      
        # Count of failed analyses.
        # Corresponds to the JSON property `failedAnalysisCount`
        # @return [Fixnum]
        attr_accessor :failed_analysis_count
      
        # Count of successful analyses.
        # Corresponds to the JSON property `successfulAnalysisCount`
        # @return [Fixnum]
        attr_accessor :successful_analysis_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_analysis_count = args[:failed_analysis_count] if args.key?(:failed_analysis_count)
          @successful_analysis_count = args[:successful_analysis_count] if args.key?(:successful_analysis_count)
        end
      end
      
      # Metadata for a create analysis operation.
      class GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The Conversation that this Analysis Operation belongs to.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Metadata for creating an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to create an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to create an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # The issue model resource.
        # Corresponds to the JSON property `issueModel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModel]
        attr_accessor :issue_model
      
        # Required. The parent resource of the issue model.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_model = args[:issue_model] if args.key?(:issue_model)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Metadata for deleting an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to delete an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to delete an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the issue model to delete.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata for deploying an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to deploy an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to deploy an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The issue model to deploy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response to deploy an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for an export insights operation.
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during export operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to export insights.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to export insights.
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest
        include Google::Apis::Core::Hashable
      
        # A BigQuery Table Reference.
        # Corresponds to the JSON property `bigQueryDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination]
        attr_accessor :big_query_destination
      
        # A filter to reduce results to a specific subset. Useful for exporting
        # conversations with specific properties.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # A fully qualified KMS key name for BigQuery tables protected by CMEK. Format:
        # projects/`project`/locations/`location`/keyRings/`keyring`/cryptoKeys/`key`/
        # cryptoKeyVersions/`version`
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Required. The parent resource to export data from.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Options for what to do if the destination table already exists.
        # Corresponds to the JSON property `writeDisposition`
        # @return [String]
        attr_accessor :write_disposition
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @big_query_destination = args[:big_query_destination] if args.key?(:big_query_destination)
          @filter = args[:filter] if args.key?(:filter)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @parent = args[:parent] if args.key?(:parent)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # A BigQuery Table Reference.
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination
        include Google::Apis::Core::Hashable
      
        # Required. The name of the BigQuery dataset that the snapshot result should be
        # exported to. If this dataset does not exist, the export call returns an
        # INVALID_ARGUMENT error.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # A project ID or number. If specified, then export will attempt to write data
        # to this project instead of the resource project. Otherwise, the resource
        # project will be used.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The BigQuery table name to which the insights data should be written. If this
        # table does not exist, the export call returns an INVALID_ARGUMENT error.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Response for an export insights operation.
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for an IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Partial errors during ingest operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to ingest conversations.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to ingest conversations.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration that applies to all conversations.
        # Corresponds to the JSON property `conversationConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig]
        attr_accessor :conversation_config
      
        # Configuration for Cloud Storage bucket sources.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource]
        attr_accessor :gcs_source
      
        # Required. The parent resource for new conversations.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Configuration for processing transcript objects.
        # Corresponds to the JSON property `transcriptObjectConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig]
        attr_accessor :transcript_object_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_config = args[:conversation_config] if args.key?(:conversation_config)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @parent = args[:parent] if args.key?(:parent)
          @transcript_object_config = args[:transcript_object_config] if args.key?(:transcript_object_config)
        end
      end
      
      # Configuration that applies to all conversations.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig
        include Google::Apis::Core::Hashable
      
        # An opaque, user-specified string representing the human agent who handled the
        # conversations.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
        end
      end
      
      # Configuration for Cloud Storage bucket sources.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Required. The Cloud Storage bucket containing source objects.
        # Corresponds to the JSON property `bucketUri`
        # @return [String]
        attr_accessor :bucket_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_uri = args[:bucket_uri] if args.key?(:bucket_uri)
        end
      end
      
      # Configuration for processing transcript objects.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig
        include Google::Apis::Core::Hashable
      
        # Required. The medium transcript objects represent.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @medium = args[:medium] if args.key?(:medium)
        end
      end
      
      # The response to an IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The issue model resource.
      class GoogleCloudContactcenterinsightsV1alpha1IssueModel
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this issue model was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The representative name for the issue model.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Configs for the input data used to create the issue model.
        # Corresponds to the JSON property `inputDataConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig]
        attr_accessor :input_data_config
      
        # Immutable. The resource name of the issue model. Format: projects/`project`/
        # locations/`location`/issueModels/`issue_model`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the model.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Aggregated statistics about an issue model.
        # Corresponds to the JSON property `trainingStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats]
        attr_accessor :training_stats
      
        # Output only. The most recent time at which the issue model was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @input_data_config = args[:input_data_config] if args.key?(:input_data_config)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @training_stats = args[:training_stats] if args.key?(:training_stats)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configs for the input data used to create the issue model.
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig
        include Google::Apis::Core::Hashable
      
        # A filter to reduce the conversations used for training the model to a specific
        # subset.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Medium of conversations used in training data. This field is being deprecated.
        # To specify the medium to be used in training a new issue model, set the `
        # medium` field on `filter`.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Output only. Number of conversations used in training. Output only.
        # Corresponds to the JSON property `trainingConversationsCount`
        # @return [Fixnum]
        attr_accessor :training_conversations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @medium = args[:medium] if args.key?(:medium)
          @training_conversations_count = args[:training_conversations_count] if args.key?(:training_conversations_count)
        end
      end
      
      # Aggregated statistics about an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats
        include Google::Apis::Core::Hashable
      
        # Number of conversations the issue model has analyzed at this point in time.
        # Corresponds to the JSON property `analyzedConversationsCount`
        # @return [Fixnum]
        attr_accessor :analyzed_conversations_count
      
        # Statistics on each issue. Key is the issue's resource name.
        # Corresponds to the JSON property `issueStats`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats>]
        attr_accessor :issue_stats
      
        # Number of analyzed conversations for which no issue was applicable at this
        # point in time.
        # Corresponds to the JSON property `unclassifiedConversationsCount`
        # @return [Fixnum]
        attr_accessor :unclassified_conversations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyzed_conversations_count = args[:analyzed_conversations_count] if args.key?(:analyzed_conversations_count)
          @issue_stats = args[:issue_stats] if args.key?(:issue_stats)
          @unclassified_conversations_count = args[:unclassified_conversations_count] if args.key?(:unclassified_conversations_count)
        end
      end
      
      # Aggregated statistics about an issue.
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats
        include Google::Apis::Core::Hashable
      
        # Display name of the issue.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Issue resource. Format: projects/`project`/locations/`location`/issueModels/`
        # issue_model`/issues/`issue`
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # Number of conversations attached to the issue at this point in time.
        # Corresponds to the JSON property `labeledConversationsCount`
        # @return [Fixnum]
        attr_accessor :labeled_conversations_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @issue = args[:issue] if args.key?(:issue)
          @labeled_conversations_count = args[:labeled_conversations_count] if args.key?(:labeled_conversations_count)
        end
      end
      
      # Metadata for undeploying an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to undeploy an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to undeploy an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Required. The issue model to undeploy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The response to undeploy an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleLongrunningOperation>]
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
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
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
    end
  end
end
