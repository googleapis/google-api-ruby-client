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
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
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
      
        # Results of scoring QaScorecards.
        # Corresponds to the JSON property `qaScorecardResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResult>]
        attr_accessor :qa_scorecard_results
      
        # Overall conversation-level sentiment for each channel of the call.
        # Corresponds to the JSON property `sentiments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>]
        attr_accessor :sentiments
      
        # Conversation-level silence data.
        # Corresponds to the JSON property `silence`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationLevelSilence]
        attr_accessor :silence
      
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
          @qa_scorecard_results = args[:qa_scorecard_results] if args.key?(:qa_scorecard_results)
          @sentiments = args[:sentiments] if args.key?(:sentiments)
          @silence = args[:silence] if args.key?(:silence)
        end
      end
      
      # The CCAI Insights project wide analysis rule. This rule will be applied to all
      # conversations that match the filter defined in the rule. For a conversation
      # matches the filter, the annotators specified in the rule will be run. If a
      # conversation matches multiple rules, a union of all the annotators will be run.
      # One project can have multiple analysis rules.
      class GoogleCloudContactcenterinsightsV1AnalysisRule
        include Google::Apis::Core::Hashable
      
        # If true, apply this rule to conversations. Otherwise, this rule is inactive
        # and saved as a draft.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Percentage of conversations that we should apply this analysis setting
        # automatically, between [0, 1]. For example, 0.1 means 10%. Conversations are
        # sampled in a determenestic way. The original runtime_percentage & upload
        # percentage will be replaced by defining filters on the conversation.
        # Corresponds to the JSON property `analysisPercentage`
        # @return [Float]
        attr_accessor :analysis_percentage
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector]
        attr_accessor :annotator_selector
      
        # Filter for the conversations that should apply this analysis rule. An empty
        # filter means this analysis rule applies to all conversations. Refer to https://
        # cloud.google.com/contact-center/insights/docs/filtering for details.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Output only. The time at which this analysis rule was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Display Name of the analysis rule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the analysis rule. Format: projects/`project`/
        # locations/`location`/analysisRules/`analysis_rule`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The most recent time at which this analysis rule was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @analysis_percentage = args[:analysis_percentage] if args.key?(:analysis_percentage)
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Selector of all available annotators and phrase matchers to run.
      class GoogleCloudContactcenterinsightsV1AnnotatorSelector
        include Google::Apis::Core::Hashable
      
        # The issue model to run. If not provided, the most recently deployed topic
        # model will be used. The provided issue model will only be used for inference
        # if the issue model is deployed and if run_issue_model_annotator is set to true.
        # If more than one issue model is provided, only the first provided issue model
        # will be used for inference.
        # Corresponds to the JSON property `issueModels`
        # @return [Array<String>]
        attr_accessor :issue_models
      
        # The list of phrase matchers to run. If not provided, all active phrase
        # matchers will be used. If inactive phrase matchers are provided, they will not
        # be used. Phrase matchers will be run only if run_phrase_matcher_annotator is
        # set to true. Format: projects/`project`/locations/`location`/phraseMatchers/`
        # phrase_matcher`
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Array<String>]
        attr_accessor :phrase_matchers
      
        # Configuration for the QA feature.
        # Corresponds to the JSON property `qaConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig]
        attr_accessor :qa_config
      
        # Whether to run the entity annotator.
        # Corresponds to the JSON property `runEntityAnnotator`
        # @return [Boolean]
        attr_accessor :run_entity_annotator
        alias_method :run_entity_annotator?, :run_entity_annotator
      
        # Whether to run the intent annotator.
        # Corresponds to the JSON property `runIntentAnnotator`
        # @return [Boolean]
        attr_accessor :run_intent_annotator
        alias_method :run_intent_annotator?, :run_intent_annotator
      
        # Whether to run the interruption annotator.
        # Corresponds to the JSON property `runInterruptionAnnotator`
        # @return [Boolean]
        attr_accessor :run_interruption_annotator
        alias_method :run_interruption_annotator?, :run_interruption_annotator
      
        # Whether to run the issue model annotator. A model should have already been
        # deployed for this to take effect.
        # Corresponds to the JSON property `runIssueModelAnnotator`
        # @return [Boolean]
        attr_accessor :run_issue_model_annotator
        alias_method :run_issue_model_annotator?, :run_issue_model_annotator
      
        # Whether to run the active phrase matcher annotator(s).
        # Corresponds to the JSON property `runPhraseMatcherAnnotator`
        # @return [Boolean]
        attr_accessor :run_phrase_matcher_annotator
        alias_method :run_phrase_matcher_annotator?, :run_phrase_matcher_annotator
      
        # Whether to run the QA annotator.
        # Corresponds to the JSON property `runQaAnnotator`
        # @return [Boolean]
        attr_accessor :run_qa_annotator
        alias_method :run_qa_annotator?, :run_qa_annotator
      
        # Whether to run the sentiment annotator.
        # Corresponds to the JSON property `runSentimentAnnotator`
        # @return [Boolean]
        attr_accessor :run_sentiment_annotator
        alias_method :run_sentiment_annotator?, :run_sentiment_annotator
      
        # Whether to run the silence annotator.
        # Corresponds to the JSON property `runSilenceAnnotator`
        # @return [Boolean]
        attr_accessor :run_silence_annotator
        alias_method :run_silence_annotator?, :run_silence_annotator
      
        # Whether to run the summarization annotator.
        # Corresponds to the JSON property `runSummarizationAnnotator`
        # @return [Boolean]
        attr_accessor :run_summarization_annotator
        alias_method :run_summarization_annotator?, :run_summarization_annotator
      
        # Configuration for summarization.
        # Corresponds to the JSON property `summarizationConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig]
        attr_accessor :summarization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_models = args[:issue_models] if args.key?(:issue_models)
          @phrase_matchers = args[:phrase_matchers] if args.key?(:phrase_matchers)
          @qa_config = args[:qa_config] if args.key?(:qa_config)
          @run_entity_annotator = args[:run_entity_annotator] if args.key?(:run_entity_annotator)
          @run_intent_annotator = args[:run_intent_annotator] if args.key?(:run_intent_annotator)
          @run_interruption_annotator = args[:run_interruption_annotator] if args.key?(:run_interruption_annotator)
          @run_issue_model_annotator = args[:run_issue_model_annotator] if args.key?(:run_issue_model_annotator)
          @run_phrase_matcher_annotator = args[:run_phrase_matcher_annotator] if args.key?(:run_phrase_matcher_annotator)
          @run_qa_annotator = args[:run_qa_annotator] if args.key?(:run_qa_annotator)
          @run_sentiment_annotator = args[:run_sentiment_annotator] if args.key?(:run_sentiment_annotator)
          @run_silence_annotator = args[:run_silence_annotator] if args.key?(:run_silence_annotator)
          @run_summarization_annotator = args[:run_summarization_annotator] if args.key?(:run_summarization_annotator)
          @summarization_config = args[:summarization_config] if args.key?(:summarization_config)
        end
      end
      
      # Configuration for the QA feature.
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig
        include Google::Apis::Core::Hashable
      
        # Container for a list of scorecards.
        # Corresponds to the JSON property `scorecardList`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList]
        attr_accessor :scorecard_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scorecard_list = args[:scorecard_list] if args.key?(:scorecard_list)
        end
      end
      
      # Container for a list of scorecards.
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList
        include Google::Apis::Core::Hashable
      
        # List of QaScorecardRevisions.
        # Corresponds to the JSON property `qaScorecardRevisions`
        # @return [Array<String>]
        attr_accessor :qa_scorecard_revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_scorecard_revisions = args[:qa_scorecard_revisions] if args.key?(:qa_scorecard_revisions)
        end
      end
      
      # Configuration for summarization.
      class GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig
        include Google::Apis::Core::Hashable
      
        # Resource name of the Dialogflow conversation profile. Format: projects/`
        # project`/locations/`location`/conversationProfiles/`conversation_profile`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # The resource name of the existing created generator. Format: projects//
        # locations//generators/
        # Corresponds to the JSON property `generator`
        # @return [String]
        attr_accessor :generator
      
        # Default summarization model to be used.
        # Corresponds to the JSON property `summarizationModel`
        # @return [String]
        attr_accessor :summarization_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @generator = args[:generator] if args.key?(:generator)
          @summarization_model = args[:summarization_model] if args.key?(:summarization_model)
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
      
      # The message to appeal an assessment.
      class GoogleCloudContactcenterinsightsV1AppealAssessmentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The assessment resource.
      class GoogleCloudContactcenterinsightsV1Assessment
        include Google::Apis::Core::Hashable
      
        # Information about an agent involved in the conversation.
        # Corresponds to the JSON property `agentInfo`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo]
        attr_accessor :agent_info
      
        # Output only. The time at which the assessment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The resource name of the assessment. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/assessments/`assessment`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the assessment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time at which the assessment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_info = args[:agent_info] if args.key?(:agent_info)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The CCAI Insights project wide assessment rule. This assessment rule will be
      # applied to all conversations from the previous sampling cycle that match the
      # sample rule defined in the assessment rule. One project can have multiple
      # assessment rules.
      class GoogleCloudContactcenterinsightsV1AssessmentRule
        include Google::Apis::Core::Hashable
      
        # If true, apply this rule to conversations. Otherwise, this rule is inactive.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Output only. The time at which this assessment rule was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Display Name of the assessment rule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the assessment rule. Format: projects/`
        # project`/locations/`location`/assessmentRules/`assessment_rule`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for sampling conversations.
        # Corresponds to the JSON property `sampleRule`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleRule]
        attr_accessor :sample_rule
      
        # Message for schedule info.
        # Corresponds to the JSON property `scheduleInfo`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ScheduleInfo]
        attr_accessor :schedule_info
      
        # Output only. The most recent time at which this assessment rule was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @sample_rule = args[:sample_rule] if args.key?(:sample_rule)
          @schedule_info = args[:schedule_info] if args.key?(:schedule_info)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An AuthorizedView represents a view of accessible Insights resources (for
      # example, Conversation and Scorecard). Who have read access to the
      # AuthorizedView resource will have access to these Insight resources as well.
      class GoogleCloudContactcenterinsightsV1AuthorizedView
        include Google::Apis::Core::Hashable
      
        # A filter to reduce conversation results to a specific subset. The
        # AuthorizedView's assigned permission (read/write) could be applied to the
        # subset of conversations. If conversation_filter is empty, there is no
        # restriction on the conversations that the AuthorizedView can access. Having *
        # authorizedViews.get* access to the AuthorizedView means having the same read/
        # write access to the Conversations (as well as metadata/annotations linked to
        # the conversation) that this AuthorizedView has.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Output only. The time at which the authorized view was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Display Name. Limit 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the AuthorizedView. Format: projects/`project`
        # /locations/`location`/authorizedViewSets/`authorized_view_set`/authorizedViews/
        # `authorized_view`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The most recent time at which the authorized view was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An AuthorizedViewSet contains a set of AuthorizedView resources.
      class GoogleCloudContactcenterinsightsV1AuthorizedViewSet
        include Google::Apis::Core::Hashable
      
        # Output only. Create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Display Name. Limit 64 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The resource name of the AuthorizedViewSet. Format: projects/`
        # project`/locations/`location`/authorizedViewSets/`authorized_view_set`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Update time.
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
      
        # Output only. Partial errors during bulk analyze operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
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
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
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
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
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
      
      # The metadata for a bulk delete conversations operation.
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during bulk delete conversations operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to delete conversations in bulk.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest]
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
      
      # The request to delete conversations in bulk.
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Filter used to select the subset of conversations to delete.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # If set to true, all of this conversation's analyses will also be deleted.
        # Otherwise, the request will only succeed if the conversation has no analyses.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Maximum number of conversations to delete.
        # Corresponds to the JSON property `maxDeleteCount`
        # @return [Fixnum]
        attr_accessor :max_delete_count
      
        # Required. The parent resource to delete conversations from. Format: projects/`
        # project`/locations/`location`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
          @max_delete_count = args[:max_delete_count] if args.key?(:max_delete_count)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The response for a bulk delete conversations operation.
      class GoogleCloudContactcenterinsightsV1BulkDeleteConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsMetadata
        include Google::Apis::Core::Hashable
      
        # Partial errors during deletion operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # Request for the BulkDeleteFeedbackLabels endpoint.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Request for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A filter to reduce results to a specific subset. Supports
        # disjunctions (OR) and conjunctions (AND). Supported fields: * `issue_model_id`
        # * `qa_question_id` * `qa_scorecard_id` * `min_create_time` * `max_create_time`
        # * `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        # TOPIC_MODELING
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The parent resource for new feedback labels.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Response for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the BulkDownloadFeedbackLabel endpoint.
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Statistics for BulkDownloadFeedbackLabels operation.
        # Corresponds to the JSON property `downloadStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats]
        attr_accessor :download_stats
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during ingest operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # Request for the BulkDownloadFeedbackLabel endpoint.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @download_stats = args[:download_stats] if args.key?(:download_stats)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Statistics for BulkDownloadFeedbackLabels operation.
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats
        include Google::Apis::Core::Hashable
      
        # Output only. Full name of the files written to Cloud storage.
        # Corresponds to the JSON property `fileNames`
        # @return [Array<String>]
        attr_accessor :file_names
      
        # The number of objects processed during the download operation.
        # Corresponds to the JSON property `processedObjectCount`
        # @return [Fixnum]
        attr_accessor :processed_object_count
      
        # The number of new feedback labels downloaded during this operation. Different
        # from "processed" because some labels might not be downloaded because an error.
        # Corresponds to the JSON property `successfulDownloadCount`
        # @return [Fixnum]
        attr_accessor :successful_download_count
      
        # Total number of files written to the provided Cloud Storage bucket.
        # Corresponds to the JSON property `totalFilesWritten`
        # @return [Fixnum]
        attr_accessor :total_files_written
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_names = args[:file_names] if args.key?(:file_names)
          @processed_object_count = args[:processed_object_count] if args.key?(:processed_object_count)
          @successful_download_count = args[:successful_download_count] if args.key?(:successful_download_count)
          @total_files_written = args[:total_files_written] if args.key?(:total_files_written)
        end
      end
      
      # Request for the BulkDownloadFeedbackLabel endpoint.
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Filter parent conversations to download feedback labels for. When
        # specified, the feedback labels will be downloaded for the conversations that
        # match the filter. If `template_qa_scorecard_id` is set, all the conversations
        # that match the filter will be paired with the questions under the scorecard
        # for labeling.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Optional. The type of feedback labels that will be downloaded.
        # Corresponds to the JSON property `feedbackLabelType`
        # @return [String]
        attr_accessor :feedback_label_type
      
        # Optional. A filter to reduce results to a specific subset. Supports
        # disjunctions (OR) and conjunctions (AND). Supported fields: * `issue_model_id`
        # * `qa_question_id` * `qa_scorecard_id` * `min_create_time` * `max_create_time`
        # * `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        # TOPIC_MODELING
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Google Cloud Storage Object details to write the feedback labels to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination]
        attr_accessor :gcs_destination
      
        # Optional. Limits the maximum number of feedback labels that will be downloaded.
        # The first `N` feedback labels will be downloaded.
        # Corresponds to the JSON property `maxDownloadCount`
        # @return [Fixnum]
        attr_accessor :max_download_count
      
        # Required. The parent resource for new feedback labels.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Google Sheets document details to write the feedback labels to.
        # Corresponds to the JSON property `sheetsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination]
        attr_accessor :sheets_destination
      
        # Optional. If set, a template for labeling conversations and scorecard
        # questions will be created from the conversation_filter and the questions under
        # the scorecard(s). The feedback label `filter` will be ignored.
        # Corresponds to the JSON property `templateQaScorecardId`
        # @return [Array<String>]
        attr_accessor :template_qa_scorecard_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @feedback_label_type = args[:feedback_label_type] if args.key?(:feedback_label_type)
          @filter = args[:filter] if args.key?(:filter)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @max_download_count = args[:max_download_count] if args.key?(:max_download_count)
          @parent = args[:parent] if args.key?(:parent)
          @sheets_destination = args[:sheets_destination] if args.key?(:sheets_destination)
          @template_qa_scorecard_id = args[:template_qa_scorecard_id] if args.key?(:template_qa_scorecard_id)
        end
      end
      
      # Google Cloud Storage Object details to write the feedback labels to.
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination
        include Google::Apis::Core::Hashable
      
        # Optional. Add whitespace to the JSON file. Makes easier to read, but increases
        # file size. Only applicable for JSON format.
        # Corresponds to the JSON property `addWhitespace`
        # @return [Boolean]
        attr_accessor :add_whitespace
        alias_method :add_whitespace?, :add_whitespace
      
        # Optional. Always print fields with no presence. This is useful for printing
        # fields that are not set, like implicit 0 value or empty lists/maps. Only
        # applicable for JSON format.
        # Corresponds to the JSON property `alwaysPrintEmptyFields`
        # @return [Boolean]
        attr_accessor :always_print_empty_fields
        alias_method :always_print_empty_fields?, :always_print_empty_fields
      
        # Required. File format in which the labels will be exported.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Required. The Google Cloud Storage URI to write the feedback labels to. The
        # file name will be used as a prefix for the files written to the bucket if the
        # output needs to be split across multiple files, otherwise it will be used as
        # is. The file extension will be appended to the file name based on the format
        # selected. E.g. `gs://bucket_name/object_uri_prefix`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        # Optional. The number of records per file. Applicable for either format.
        # Corresponds to the JSON property `recordsPerFileCount`
        # @return [Fixnum]
        attr_accessor :records_per_file_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_whitespace = args[:add_whitespace] if args.key?(:add_whitespace)
          @always_print_empty_fields = args[:always_print_empty_fields] if args.key?(:always_print_empty_fields)
          @format = args[:format] if args.key?(:format)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
          @records_per_file_count = args[:records_per_file_count] if args.key?(:records_per_file_count)
        end
      end
      
      # Google Sheets document details to write the feedback labels to.
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination
        include Google::Apis::Core::Hashable
      
        # Optional. The title of the new sheet to write the feedback labels to.
        # Corresponds to the JSON property `sheetTitle`
        # @return [String]
        attr_accessor :sheet_title
      
        # Required. The Google Sheets document to write the feedback labels to.
        # Retrieved from Google Sheets URI. E.g. `https://docs.google.com/spreadsheets/d/
        # 1234567890` The spreadsheet must be shared with the Insights P4SA. The
        # spreadsheet ID written to will be returned as `file_names` in the
        # BulkDownloadFeedbackLabelsMetadata.
        # Corresponds to the JSON property `spreadsheetUri`
        # @return [String]
        attr_accessor :spreadsheet_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_title = args[:sheet_title] if args.key?(:sheet_title)
          @spreadsheet_uri = args[:spreadsheet_uri] if args.key?(:spreadsheet_uri)
        end
      end
      
      # Response for the BulkDownloadFeedbackLabel endpoint.
      class GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for bulk uploading feedback labels.
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage Object details to get the feedback label file from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource]
        attr_accessor :gcs_source
      
        # Google Sheets document details to get the feedback label file from.
        # Corresponds to the JSON property `sheetsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource]
        attr_accessor :sheets_source
      
        # Optional. If set, upload will not happen and the labels will be validated. If
        # not set, then default behavior will be to upload the labels after validation
        # is complete.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @sheets_source = args[:sheets_source] if args.key?(:sheets_source)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Google Cloud Storage Object details to get the feedback label file from.
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Required. File format which will be ingested.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Required. The Google Cloud Storage URI of the file to import. Format: `gs://
        # bucket_name/object_name`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Google Sheets document details to get the feedback label file from.
      class GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource
        include Google::Apis::Core::Hashable
      
        # Required. The Google Sheets document to write the feedback labels to.
        # Retrieved from Google Sheets URI. E.g. `https://docs.google.com/spreadsheets/d/
        # 1234567890` The spreadsheet must be shared with the Insights P4SA.
        # Corresponds to the JSON property `spreadsheetUri`
        # @return [String]
        attr_accessor :spreadsheet_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spreadsheet_uri = args[:spreadsheet_uri] if args.key?(:spreadsheet_uri)
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
      
      # The request for calculating conversation statistics.
      class GoogleCloudContactcenterinsightsV1CalculateStatsRequest
        include Google::Apis::Core::Hashable
      
        # A filter to reduce results to a specific subset. This field is useful for
        # getting statistics about conversations with specific properties.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
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
      
        # A map for the user to specify any custom fields. A maximum of 100 labels per
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
      
        # Conversation summarization suggestion data.
        # Corresponds to the JSON property `latestSummary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData]
        attr_accessor :latest_summary
      
        # Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Input only. JSON metadata encoded as a string. This field is primarily used by
        # Insights integrations with various telephony systems and must be in one of
        # Insight's supported formats.
        # Corresponds to the JSON property `metadataJson`
        # @return [String]
        attr_accessor :metadata_json
      
        # Immutable. The resource name of the conversation. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated user ID which the customer sent to us.
        # Corresponds to the JSON property `obfuscatedUserId`
        # @return [String]
        attr_accessor :obfuscated_user_id
      
        # Conversation metadata related to quality management.
        # Corresponds to the JSON property `qualityMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadata]
        attr_accessor :quality_metadata
      
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
          @latest_summary = args[:latest_summary] if args.key?(:latest_summary)
          @medium = args[:medium] if args.key?(:medium)
          @metadata_json = args[:metadata_json] if args.key?(:metadata_json)
          @name = args[:name] if args.key?(:name)
          @obfuscated_user_id = args[:obfuscated_user_id] if args.key?(:obfuscated_user_id)
          @quality_metadata = args[:quality_metadata] if args.key?(:quality_metadata)
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
      
        # Cloud Storage URI that points to a file that contains the conversation
        # metadata.
        # Corresponds to the JSON property `metadataUri`
        # @return [String]
        attr_accessor :metadata_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialogflow_source = args[:dialogflow_source] if args.key?(:dialogflow_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @metadata_uri = args[:metadata_uri] if args.key?(:metadata_uri)
        end
      end
      
      # A wrapper for holding the audio for any given turn.
      class GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio
        include Google::Apis::Core::Hashable
      
        # The duration of the audio.
        # Corresponds to the JSON property `audioDuration`
        # @return [String]
        attr_accessor :audio_duration
      
        # The Cloud Storage URI of the audio for any given turn.
        # Corresponds to the JSON property `audioGcsUri`
        # @return [String]
        attr_accessor :audio_gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_duration = args[:audio_duration] if args.key?(:audio_duration)
          @audio_gcs_uri = args[:audio_gcs_uri] if args.key?(:audio_gcs_uri)
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
      
      # Conversation-level silence data.
      class GoogleCloudContactcenterinsightsV1ConversationLevelSilence
        include Google::Apis::Core::Hashable
      
        # Amount of time calculated to be in silence.
        # Corresponds to the JSON property `silenceDuration`
        # @return [String]
        attr_accessor :silence_duration
      
        # Percentage of the total conversation spent in silence.
        # Corresponds to the JSON property `silencePercentage`
        # @return [Float]
        attr_accessor :silence_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @silence_duration = args[:silence_duration] if args.key?(:silence_duration)
          @silence_percentage = args[:silence_percentage] if args.key?(:silence_percentage)
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
      
      # Conversation metadata related to quality management.
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadata
        include Google::Apis::Core::Hashable
      
        # Information about agents involved in the call.
        # Corresponds to the JSON property `agentInfo`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo>]
        attr_accessor :agent_info
      
        # An arbitrary integer value indicating the customer's satisfaction rating.
        # Corresponds to the JSON property `customerSatisfactionRating`
        # @return [Fixnum]
        attr_accessor :customer_satisfaction_rating
      
        # Input only. The feedback labels associated with the conversation.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel>]
        attr_accessor :feedback_labels
      
        # An arbitrary string value specifying the menu path the customer took.
        # Corresponds to the JSON property `menuPath`
        # @return [String]
        attr_accessor :menu_path
      
        # The amount of time the customer waited to connect with an agent.
        # Corresponds to the JSON property `waitDuration`
        # @return [String]
        attr_accessor :wait_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_info = args[:agent_info] if args.key?(:agent_info)
          @customer_satisfaction_rating = args[:customer_satisfaction_rating] if args.key?(:customer_satisfaction_rating)
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @menu_path = args[:menu_path] if args.key?(:menu_path)
          @wait_duration = args[:wait_duration] if args.key?(:wait_duration)
        end
      end
      
      # Information about an agent involved in the conversation.
      class GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo
        include Google::Apis::Core::Hashable
      
        # A user-specified string representing the agent.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The agent type, e.g. HUMAN_AGENT.
        # Corresponds to the JSON property `agentType`
        # @return [String]
        attr_accessor :agent_type
      
        # The agent's deployment display name. Only applicable to automated agents.
        # Corresponds to the JSON property `deploymentDisplayName`
        # @return [String]
        attr_accessor :deployment_display_name
      
        # The agent's deployment ID. Only applicable to automated agents.
        # Corresponds to the JSON property `deploymentId`
        # @return [String]
        attr_accessor :deployment_id
      
        # The agent's name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A user-provided string indicating the outcome of the agent's segment of the
        # call.
        # Corresponds to the JSON property `dispositionCode`
        # @return [String]
        attr_accessor :disposition_code
      
        # The agent's location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A user-specified string representing the agent's team. Deprecated in favor of
        # the `teams` field.
        # Corresponds to the JSON property `team`
        # @return [String]
        attr_accessor :team
      
        # User-specified strings representing the agent's teams.
        # Corresponds to the JSON property `teams`
        # @return [Array<String>]
        attr_accessor :teams
      
        # The agent's version display name. Only applicable to automated agents.
        # Corresponds to the JSON property `versionDisplayName`
        # @return [String]
        attr_accessor :version_display_name
      
        # The agent's version ID. Only applicable to automated agents.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @agent_type = args[:agent_type] if args.key?(:agent_type)
          @deployment_display_name = args[:deployment_display_name] if args.key?(:deployment_display_name)
          @deployment_id = args[:deployment_id] if args.key?(:deployment_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @disposition_code = args[:disposition_code] if args.key?(:disposition_code)
          @location = args[:location] if args.key?(:location)
          @team = args[:team] if args.key?(:team)
          @teams = args[:teams] if args.key?(:teams)
          @version_display_name = args[:version_display_name] if args.key?(:version_display_name)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # Conversation summarization suggestion data.
      class GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData
        include Google::Apis::Core::Hashable
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # The confidence score of the summarization.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The name of the model that generates this summary. Format: projects/`project`/
        # locations/`location`/conversationModels/`conversation_model`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Agent Assist generator ID.
        # Corresponds to the JSON property `generatorId`
        # @return [String]
        attr_accessor :generator_id
      
        # A map that contains metadata about the summarization and the document from
        # which it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The summarization content that is concatenated into one string.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The summarization content that is divided into sections. The key is the
        # section's name and the value is the section's content. There is no specific
        # format for the key or value.
        # Corresponds to the JSON property `textSections`
        # @return [Hash<String,String>]
        attr_accessor :text_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @generator_id = args[:generator_id] if args.key?(:generator_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
          @text_sections = args[:text_sections] if args.key?(:text_sections)
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
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Metadata for creating an issue.
      class GoogleCloudContactcenterinsightsV1CreateIssueMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to create an issue.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1CreateIssueRequest]
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
      
      # The request to create an issue.
      class GoogleCloudContactcenterinsightsV1CreateIssueRequest
        include Google::Apis::Core::Hashable
      
        # The issue resource.
        # Corresponds to the JSON property `issue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Issue]
        attr_accessor :issue
      
        # Required. The parent resource of the issue.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue = args[:issue] if args.key?(:issue)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Dataset resource represents a collection of conversations that may be bounded (
      # Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic
      # Dataset, e.g. live traffic, or agent training traffic)
      class GoogleCloudContactcenterinsightsV1Dataset
        include Google::Apis::Core::Hashable
      
        # Output only. Dataset create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Dataset description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name for the dataaset
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. Identifier. Resource name of the dataset. Format: projects/`project`
        # /locations/`location`/datasets/`dataset`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Option TTL for the dataset.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Dataset usage type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Dataset update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # The metadata for deleting a QaQuestionTag Resource.
      class GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for deleting a QaQuestionTag.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest]
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
      
      # The request for deleting a QaQuestionTag.
      class GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the QaQuestionTag to delete.
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
      
      # The request to deploy a QaScorecardRevision
      class GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest
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
      
      # A dimension determines the grouping key for the query. In SQL terms, these
      # would be part of both the "SELECT" and "GROUP BY" clauses.
      class GoogleCloudContactcenterinsightsV1Dimension
        include Google::Apis::Core::Hashable
      
        # Metadata about the agent dimension.
        # Corresponds to the JSON property `agentDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata]
        attr_accessor :agent_dimension_metadata
      
        # Metadata about the client sentiment category dimension.
        # Corresponds to the JSON property `clientSentimentCategoryDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata]
        attr_accessor :client_sentiment_category_dimension_metadata
      
        # Metadata about the conversation profile dimension.
        # Corresponds to the JSON property `conversationProfileDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata]
        attr_accessor :conversation_profile_dimension_metadata
      
        # Metadata about the Conversational Agents playbook dimension.
        # Corresponds to the JSON property `conversationalAgentsPlaybookDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata]
        attr_accessor :conversational_agents_playbook_dimension_metadata
      
        # Metadata about the Conversational Agents tool dimension.
        # Corresponds to the JSON property `conversationalAgentsToolDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata]
        attr_accessor :conversational_agents_tool_dimension_metadata
      
        # The key of the dimension.
        # Corresponds to the JSON property `dimensionKey`
        # @return [String]
        attr_accessor :dimension_key
      
        # Metadata about the issue dimension.
        # Corresponds to the JSON property `issueDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata]
        attr_accessor :issue_dimension_metadata
      
        # Metadata about conversation labels.
        # Corresponds to the JSON property `labelDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata]
        attr_accessor :label_dimension_metadata
      
        # Metadata about the conversation medium dimension.
        # Corresponds to the JSON property `mediumDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata]
        attr_accessor :medium_dimension_metadata
      
        # Metadata about the QA question-answer dimension. This is useful for showing
        # the answer distribution for questions for a given scorecard.
        # Corresponds to the JSON property `qaQuestionAnswerDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata]
        attr_accessor :qa_question_answer_dimension_metadata
      
        # Metadata about the QA question dimension.
        # Corresponds to the JSON property `qaQuestionDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata]
        attr_accessor :qa_question_dimension_metadata
      
        # Metadata about the QA scorecard dimension.
        # Corresponds to the JSON property `qaScorecardDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata]
        attr_accessor :qa_scorecard_dimension_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_dimension_metadata = args[:agent_dimension_metadata] if args.key?(:agent_dimension_metadata)
          @client_sentiment_category_dimension_metadata = args[:client_sentiment_category_dimension_metadata] if args.key?(:client_sentiment_category_dimension_metadata)
          @conversation_profile_dimension_metadata = args[:conversation_profile_dimension_metadata] if args.key?(:conversation_profile_dimension_metadata)
          @conversational_agents_playbook_dimension_metadata = args[:conversational_agents_playbook_dimension_metadata] if args.key?(:conversational_agents_playbook_dimension_metadata)
          @conversational_agents_tool_dimension_metadata = args[:conversational_agents_tool_dimension_metadata] if args.key?(:conversational_agents_tool_dimension_metadata)
          @dimension_key = args[:dimension_key] if args.key?(:dimension_key)
          @issue_dimension_metadata = args[:issue_dimension_metadata] if args.key?(:issue_dimension_metadata)
          @label_dimension_metadata = args[:label_dimension_metadata] if args.key?(:label_dimension_metadata)
          @medium_dimension_metadata = args[:medium_dimension_metadata] if args.key?(:medium_dimension_metadata)
          @qa_question_answer_dimension_metadata = args[:qa_question_answer_dimension_metadata] if args.key?(:qa_question_answer_dimension_metadata)
          @qa_question_dimension_metadata = args[:qa_question_dimension_metadata] if args.key?(:qa_question_dimension_metadata)
          @qa_scorecard_dimension_metadata = args[:qa_scorecard_dimension_metadata] if args.key?(:qa_scorecard_dimension_metadata)
        end
      end
      
      # Metadata about the agent dimension.
      class GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The agent's deployment display name. Only applicable to automated
        # agents. This will be populated for AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDeploymentDisplayName`
        # @return [String]
        attr_accessor :agent_deployment_display_name
      
        # Optional. The agent's deployment ID. Only applicable to automated agents. This
        # will be populated for AGENT and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDeploymentId`
        # @return [String]
        attr_accessor :agent_deployment_id
      
        # Optional. The agent's name This will be populated for AGENT, AGENT_TEAM,
        # AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDisplayName`
        # @return [String]
        attr_accessor :agent_display_name
      
        # Optional. A user-specified string representing the agent. This will be
        # populated for AGENT, AGENT_TEAM, AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID
        # dimensions.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Optional. A user-specified string representing the agent's team.
        # Corresponds to the JSON property `agentTeam`
        # @return [String]
        attr_accessor :agent_team
      
        # Optional. The agent's version display name. Only applicable to automated
        # agents. This will be populated for AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID
        # dimensions.
        # Corresponds to the JSON property `agentVersionDisplayName`
        # @return [String]
        attr_accessor :agent_version_display_name
      
        # Optional. The agent's version ID. Only applicable to automated agents. This
        # will be populated for AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentVersionId`
        # @return [String]
        attr_accessor :agent_version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_deployment_display_name = args[:agent_deployment_display_name] if args.key?(:agent_deployment_display_name)
          @agent_deployment_id = args[:agent_deployment_id] if args.key?(:agent_deployment_id)
          @agent_display_name = args[:agent_display_name] if args.key?(:agent_display_name)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @agent_team = args[:agent_team] if args.key?(:agent_team)
          @agent_version_display_name = args[:agent_version_display_name] if args.key?(:agent_version_display_name)
          @agent_version_id = args[:agent_version_id] if args.key?(:agent_version_id)
        end
      end
      
      # Metadata about the client sentiment category dimension.
      class GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The client sentiment category.
        # Corresponds to the JSON property `sentimentCategory`
        # @return [String]
        attr_accessor :sentiment_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sentiment_category = args[:sentiment_category] if args.key?(:sentiment_category)
        end
      end
      
      # Metadata about the conversation profile dimension.
      class GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation profile ID.
        # Corresponds to the JSON property `conversationProfileId`
        # @return [String]
        attr_accessor :conversation_profile_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile_id = args[:conversation_profile_id] if args.key?(:conversation_profile_id)
        end
      end
      
      # Metadata about the Conversational Agents playbook dimension.
      class GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The dialogflow playbook display name.
        # Corresponds to the JSON property `playbookDisplayName`
        # @return [String]
        attr_accessor :playbook_display_name
      
        # Optional. The dialogflow playbook ID.
        # Corresponds to the JSON property `playbookId`
        # @return [String]
        attr_accessor :playbook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @playbook_display_name = args[:playbook_display_name] if args.key?(:playbook_display_name)
          @playbook_id = args[:playbook_id] if args.key?(:playbook_id)
        end
      end
      
      # Metadata about the Conversational Agents tool dimension.
      class GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The dialogflow tool display name.
        # Corresponds to the JSON property `toolDisplayName`
        # @return [String]
        attr_accessor :tool_display_name
      
        # Optional. The dialogflow tool ID.
        # Corresponds to the JSON property `toolId`
        # @return [String]
        attr_accessor :tool_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_display_name = args[:tool_display_name] if args.key?(:tool_display_name)
          @tool_id = args[:tool_id] if args.key?(:tool_id)
        end
      end
      
      # Metadata about the issue dimension.
      class GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # The issue display name.
        # Corresponds to the JSON property `issueDisplayName`
        # @return [String]
        attr_accessor :issue_display_name
      
        # The issue ID.
        # Corresponds to the JSON property `issueId`
        # @return [String]
        attr_accessor :issue_id
      
        # The parent issue model ID.
        # Corresponds to the JSON property `issueModelId`
        # @return [String]
        attr_accessor :issue_model_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_display_name = args[:issue_display_name] if args.key?(:issue_display_name)
          @issue_id = args[:issue_id] if args.key?(:issue_id)
          @issue_model_id = args[:issue_model_id] if args.key?(:issue_model_id)
        end
      end
      
      # Metadata about conversation labels.
      class GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The label key.
        # Corresponds to the JSON property `labelKey`
        # @return [String]
        attr_accessor :label_key
      
        # Optional. The label value.
        # Corresponds to the JSON property `labelValue`
        # @return [String]
        attr_accessor :label_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_key = args[:label_key] if args.key?(:label_key)
          @label_value = args[:label_value] if args.key?(:label_value)
        end
      end
      
      # Metadata about the conversation medium dimension.
      class GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation medium. Currently supports : PHONE_CALL, CHAT.
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
      
      # Metadata about the QA question-answer dimension. This is useful for showing
      # the answer distribution for questions for a given scorecard.
      class GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `answerValue`
        # @return [String]
        attr_accessor :answer_value
      
        # Optional. The QA question ID.
        # Corresponds to the JSON property `qaQuestionId`
        # @return [String]
        attr_accessor :qa_question_id
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @qa_question_id = args[:qa_question_id] if args.key?(:qa_question_id)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
          @question_body = args[:question_body] if args.key?(:question_body)
        end
      end
      
      # Metadata about the QA question dimension.
      class GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The QA question ID.
        # Corresponds to the JSON property `qaQuestionId`
        # @return [String]
        attr_accessor :qa_question_id
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question_id = args[:qa_question_id] if args.key?(:qa_question_id)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
          @question_body = args[:question_body] if args.key?(:question_body)
        end
      end
      
      # Metadata about the QA scorecard dimension.
      class GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
        end
      end
      
      # A customer-managed encryption key specification that can be applied to all
      # created resources (e.g. `Conversation`).
      class GoogleCloudContactcenterinsightsV1EncryptionSpec
        include Google::Apis::Core::Hashable
      
        # Required. The name of customer-managed encryption key that is used to secure a
        # resource and its sub-resources. If empty, the resource is secured by our
        # default encryption key. Only the key in the same location as this resource is
        # allowed to be used for encryption. Format: `projects/`project`/locations/`
        # location`/keyRings/`keyRing`/cryptoKeys/`key``
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Immutable. The resource name of the encryption key specification resource.
        # Format: projects/`project`/locations/`location`/encryptionSpec
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @name = args[:name] if args.key?(:name)
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
      
        # The number of conversations that were exported successfully.
        # Corresponds to the JSON property `completedExportCount`
        # @return [Fixnum]
        attr_accessor :completed_export_count
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of conversations that failed to be exported.
        # Corresponds to the JSON property `failedExportCount`
        # @return [Fixnum]
        attr_accessor :failed_export_count
      
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
          @completed_export_count = args[:completed_export_count] if args.key?(:completed_export_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failed_export_count = args[:failed_export_count] if args.key?(:failed_export_count)
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
      
        # Optional. Version of the export schema.
        # Corresponds to the JSON property `exportSchemaVersion`
        # @return [String]
        attr_accessor :export_schema_version
      
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
          @export_schema_version = args[:export_schema_version] if args.key?(:export_schema_version)
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
      
      # Metadata used for export issue model.
      class GoogleCloudContactcenterinsightsV1ExportIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to export an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequest]
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
      
      # Request to export an issue model.
      class GoogleCloudContactcenterinsightsV1ExportIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage Object URI to save the issue model to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination]
        attr_accessor :gcs_destination
      
        # Required. The issue model to export.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Google Cloud Storage Object URI to save the issue model to.
      class GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. Format: `gs:///`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Response from export issue model
      class GoogleCloudContactcenterinsightsV1ExportIssueModelResponse
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
      
      # Represents a conversation, resource, and label provided by the user. Can take
      # the form of a string label or a QaAnswer label. QaAnswer labels are used for
      # Quality AI example conversations. String labels are used for Topic Modeling.
      # AgentAssistSummary labels are used for Agent Assist Summarization.
      class GoogleCloudContactcenterinsightsV1FeedbackLabel
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the label.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # String label used for Topic Modeling.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Name of the resource to be labeled. Supported resources are: * `projects/`
        # project`/locations/`location`/qaScorecards/`scorecard`/revisions/`revision`/
        # qaQuestions/`question`` * `projects/`project`/locations/`location`/issueModels/
        # `issue_model`` * `projects/`project`/locations/`location`/generators/`
        # generator_id``
        # Corresponds to the JSON property `labeledResource`
        # @return [String]
        attr_accessor :labeled_resource
      
        # Immutable. Resource name of the FeedbackLabel. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/feedbackLabels/`
        # feedback_label`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `qaAnswerLabel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue]
        attr_accessor :qa_answer_label
      
        # Output only. Update time of the label.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @label = args[:label] if args.key?(:label)
          @labeled_resource = args[:labeled_resource] if args.key?(:labeled_resource)
          @name = args[:name] if args.key?(:name)
          @qa_answer_label = args[:qa_answer_label] if args.key?(:qa_answer_label)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The message to finalize an assessment. Finalizing makes an assessment and its
      # notes immutable.
      class GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The response from a GenerateConversationSignedAudio request.
      class GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse
        include Google::Apis::Core::Hashable
      
        # Signed audio URIs for a conversation.
        # Corresponds to the JSON property `signedAudioUris`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SignedAudioUris]
        attr_accessor :signed_audio_uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signed_audio_uris = args[:signed_audio_uris] if args.key?(:signed_audio_uris)
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
      
      # Metadata used for import issue model.
      class GoogleCloudContactcenterinsightsV1ImportIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to import an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequest]
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
      
      # Request to import an issue model.
      class GoogleCloudContactcenterinsightsV1ImportIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, will create an issue model from the imported file
        # with randomly generated IDs for the issue model and corresponding issues.
        # Otherwise, replaces an existing model with the same ID as the file.
        # Corresponds to the JSON property `createNewModel`
        # @return [Boolean]
        attr_accessor :create_new_model
        alias_method :create_new_model?, :create_new_model
      
        # Google Cloud Storage Object URI to get the issue model file from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource]
        attr_accessor :gcs_source
      
        # Required. The parent resource of the issue model.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_new_model = args[:create_new_model] if args.key?(:create_new_model)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Google Cloud Storage Object URI to get the issue model file from.
      class GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Required. Format: `gs:///`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Response from import issue model
      class GoogleCloudContactcenterinsightsV1ImportIssueModelResponse
        include Google::Apis::Core::Hashable
      
        # The issue model resource.
        # Corresponds to the JSON property `issueModel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IssueModel]
        attr_accessor :issue_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_model = args[:issue_model] if args.key?(:issue_model)
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
      
        # Statistics for IngestConversations operation.
        # Corresponds to the JSON property `ingestConversationsStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats]
        attr_accessor :ingest_conversations_stats
      
        # Output only. Partial errors during ingest operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to ingest conversations.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1IngestConversationsRequest]
        attr_accessor :request
      
        # Output only. Stores the conversation resources produced by ingest sampling
        # operations.
        # Corresponds to the JSON property `sampledConversations`
        # @return [Array<String>]
        attr_accessor :sampled_conversations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ingest_conversations_stats = args[:ingest_conversations_stats] if args.key?(:ingest_conversations_stats)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @sampled_conversations = args[:sampled_conversations] if args.key?(:sampled_conversations)
        end
      end
      
      # Statistics for IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects skipped because another conversation with
        # the same transcript uri had already been ingested.
        # Corresponds to the JSON property `duplicatesSkippedCount`
        # @return [Fixnum]
        attr_accessor :duplicates_skipped_count
      
        # Output only. The number of objects which were unable to be ingested due to
        # errors. The errors are populated in the partial_errors field.
        # Corresponds to the JSON property `failedIngestCount`
        # @return [Fixnum]
        attr_accessor :failed_ingest_count
      
        # Output only. The number of objects processed during the ingest operation.
        # Corresponds to the JSON property `processedObjectCount`
        # @return [Fixnum]
        attr_accessor :processed_object_count
      
        # Output only. The number of new conversations added during this ingest
        # operation.
        # Corresponds to the JSON property `successfulIngestCount`
        # @return [Fixnum]
        attr_accessor :successful_ingest_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicates_skipped_count = args[:duplicates_skipped_count] if args.key?(:duplicates_skipped_count)
          @failed_ingest_count = args[:failed_ingest_count] if args.key?(:failed_ingest_count)
          @processed_object_count = args[:processed_object_count] if args.key?(:processed_object_count)
          @successful_ingest_count = args[:successful_ingest_count] if args.key?(:successful_ingest_count)
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
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig]
        attr_accessor :redaction_config
      
        # Optional. If set, this fields indicates the number of objects to ingest from
        # the Cloud Storage bucket. If empty, the entire bucket will be ingested. Unless
        # they are first deleted, conversations produced through sampling won't be
        # ingested by subsequent ingest requests.
        # Corresponds to the JSON property `sampleSize`
        # @return [Fixnum]
        attr_accessor :sample_size
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig]
        attr_accessor :speech_config
      
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
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @sample_size = args[:sample_size] if args.key?(:sample_size)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
          @transcript_object_config = args[:transcript_object_config] if args.key?(:transcript_object_config)
        end
      end
      
      # Configuration that applies to all conversations.
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates which of the channels, 1 or 2, contains the agent. Note
        # that this must be set for conversations to be properly displayed and analyzed.
        # Corresponds to the JSON property `agentChannel`
        # @return [Fixnum]
        attr_accessor :agent_channel
      
        # Optional. An opaque, user-specified string representing a human agent who
        # handled all conversations in the import. Note that this will be overridden if
        # per-conversation metadata is provided through the `metadata_bucket_uri`.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Optional. Indicates which of the channels, 1 or 2, contains the agent. Note
        # that this must be set for conversations to be properly displayed and analyzed.
        # Corresponds to the JSON property `customerChannel`
        # @return [Fixnum]
        attr_accessor :customer_channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_channel = args[:agent_channel] if args.key?(:agent_channel)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @customer_channel = args[:customer_channel] if args.key?(:customer_channel)
        end
      end
      
      # Configuration for Cloud Storage bucket sources.
      class GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Optional. The Cloud Storage path to the conversation audio file. Note that: [1]
        # Audio files will be transcribed if not already. [2] Audio files and
        # transcript files must be in separate buckets / folders. [3] A source file and
        # its corresponding audio file must share the same name to be properly ingested,
        # E.g. `gs://bucket/transcript/conversation1.json` and `gs://bucket/audio/
        # conversation1.mp3`.
        # Corresponds to the JSON property `audioBucketUri`
        # @return [String]
        attr_accessor :audio_bucket_uri
      
        # Optional. Specifies the type of the objects in `bucket_uri`. Avoid passing
        # this. This is inferred from the `transcript_bucket_uri`, `audio_bucket_uri`.
        # Corresponds to the JSON property `bucketObjectType`
        # @return [String]
        attr_accessor :bucket_object_type
      
        # Optional. The Cloud Storage bucket containing source objects. Avoid passing
        # this. Pass this through one of `transcript_bucket_uri` or `audio_bucket_uri`.
        # Corresponds to the JSON property `bucketUri`
        # @return [String]
        attr_accessor :bucket_uri
      
        # Optional. Custom keys to extract as conversation labels from metadata files in
        # `metadata_bucket_uri`. Keys not included in this field will be ignored. Note
        # that there is a limit of 100 labels per conversation.
        # Corresponds to the JSON property `customMetadataKeys`
        # @return [Array<String>]
        attr_accessor :custom_metadata_keys
      
        # Optional. The Cloud Storage path to the conversation metadata. Note that: [1]
        # Metadata files are expected to be in JSON format. [2] Metadata and source
        # files (transcripts or audio) must be in separate buckets / folders. [3] A
        # source file and its corresponding metadata file must share the same name to be
        # properly ingested, E.g. `gs://bucket/audio/conversation1.mp3` and `gs://bucket/
        # metadata/conversation1.json`.
        # Corresponds to the JSON property `metadataBucketUri`
        # @return [String]
        attr_accessor :metadata_bucket_uri
      
        # Optional. The Cloud Storage path to the conversation transcripts. Note that: [
        # 1] Transcript files are expected to be in JSON format. [2] Transcript, audio,
        # metadata files must be in separate buckets / folders. [3] A source file and
        # its corresponding metadata file must share the same name to be properly
        # ingested, E.g. `gs://bucket/audio/conversation1.mp3` and `gs://bucket/metadata/
        # conversation1.json`.
        # Corresponds to the JSON property `transcriptBucketUri`
        # @return [String]
        attr_accessor :transcript_bucket_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_bucket_uri = args[:audio_bucket_uri] if args.key?(:audio_bucket_uri)
          @bucket_object_type = args[:bucket_object_type] if args.key?(:bucket_object_type)
          @bucket_uri = args[:bucket_uri] if args.key?(:bucket_uri)
          @custom_metadata_keys = args[:custom_metadata_keys] if args.key?(:custom_metadata_keys)
          @metadata_bucket_uri = args[:metadata_bucket_uri] if args.key?(:metadata_bucket_uri)
          @transcript_bucket_uri = args[:transcript_bucket_uri] if args.key?(:transcript_bucket_uri)
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
      
      # Metadata for initializing a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during initializing operation that might cause the operation
        # output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to initialize a location-level encryption specification.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest]
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
      
      # The request to initialize a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest
        include Google::Apis::Core::Hashable
      
        # A customer-managed encryption key specification that can be applied to all
        # created resources (e.g. `Conversation`).
        # Corresponds to the JSON property `encryptionSpec`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1EncryptionSpec]
        attr_accessor :encryption_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_spec = args[:encryption_spec] if args.key?(:encryption_spec)
        end
      end
      
      # The response to initialize a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecResponse
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
      
        # Representative description of the issue.
        # Corresponds to the JSON property `displayDescription`
        # @return [String]
        attr_accessor :display_description
      
        # The representative name for the issue.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The resource name of the issue. Format: projects/`project`/
        # locations/`location`/issueModels/`issue_model`/issues/`issue`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Resource names of the sample representative utterances that match
        # to this issue.
        # Corresponds to the JSON property `sampleUtterances`
        # @return [Array<String>]
        attr_accessor :sample_utterances
      
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
          @display_description = args[:display_description] if args.key?(:display_description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @sample_utterances = args[:sample_utterances] if args.key?(:sample_utterances)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about the issue.
      class GoogleCloudContactcenterinsightsV1IssueAssignment
        include Google::Apis::Core::Hashable
      
        # Immutable. Display name of the assigned issue. This field is set at time of
        # analysis and immutable since then.
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
      
        # Output only. Number of issues in this issue model.
        # Corresponds to the JSON property `issueCount`
        # @return [Fixnum]
        attr_accessor :issue_count
      
        # Language of the model.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Type of the model.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
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
          @issue_count = args[:issue_count] if args.key?(:issue_count)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model_type = args[:model_type] if args.key?(:model_type)
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
        # subset. Refer to https://cloud.google.com/contact-center/insights/docs/
        # filtering for details.
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
      
      # The response for listing all feedback labels.
      class GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The feedback labels that match the request.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel>]
        attr_accessor :feedback_labels
      
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
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # The response of listing views.
      class GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse
        include Google::Apis::Core::Hashable
      
        # The analysis_rule that match the request.
        # Corresponds to the JSON property `analysisRules`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnalysisRule>]
        attr_accessor :analysis_rules
      
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
          @analysis_rules = args[:analysis_rules] if args.key?(:analysis_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response of listing assessment rules.
      class GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse
        include Google::Apis::Core::Hashable
      
        # The assessment rules that match the request.
        # Corresponds to the JSON property `assessmentRules`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AssessmentRule>]
        attr_accessor :assessment_rules
      
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
          @assessment_rules = args[:assessment_rules] if args.key?(:assessment_rules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response of listing assessments.
      class GoogleCloudContactcenterinsightsV1ListAssessmentsResponse
        include Google::Apis::Core::Hashable
      
        # The assessments that match the request.
        # Corresponds to the JSON property `assessments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Assessment>]
        attr_accessor :assessments
      
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
          @assessments = args[:assessments] if args.key?(:assessments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response from a ListAuthorizedViewSet request.
      class GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse
        include Google::Apis::Core::Hashable
      
        # The AuthorizedViewSets under the parent.
        # Corresponds to the JSON property `authorizedViewSets`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedViewSet>]
        attr_accessor :authorized_view_sets
      
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
          @authorized_view_sets = args[:authorized_view_sets] if args.key?(:authorized_view_sets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response from a ListAuthorizedViews request.
      class GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse
        include Google::Apis::Core::Hashable
      
        # The AuthorizedViews under the parent.
        # Corresponds to the JSON property `authorizedViews`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView>]
        attr_accessor :authorized_views
      
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
          @authorized_views = args[:authorized_views] if args.key?(:authorized_views)
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
      
      # The response to list datasets.
      class GoogleCloudContactcenterinsightsV1ListDatasetsResponse
        include Google::Apis::Core::Hashable
      
        # The datasets that match the request.
        # Corresponds to the JSON property `datasets`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset>]
        attr_accessor :datasets
      
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
          @datasets = args[:datasets] if args.key?(:datasets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for listing feedback labels.
      class GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The feedback labels that match the request.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1FeedbackLabel>]
        attr_accessor :feedback_labels
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
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
      
      # The response of listing notes.
      class GoogleCloudContactcenterinsightsV1ListNotesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The notes that match the request.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notes = args[:notes] if args.key?(:notes)
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
      
      # The response from a ListQaQuestionTags request.
      class GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The parent resource of the questions.
        # Corresponds to the JSON property `qaQuestionTags`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag>]
        attr_accessor :qa_question_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @qa_question_tags = args[:qa_question_tags] if args.key?(:qa_question_tags)
        end
      end
      
      # The response from a ListQaQuestions request.
      class GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The QaQuestions under the parent.
        # Corresponds to the JSON property `qaQuestions`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestion>]
        attr_accessor :qa_questions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @qa_questions = args[:qa_questions] if args.key?(:qa_questions)
        end
      end
      
      # The response from a ListQaScorecardRevisions request.
      class GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The QaScorecards under the parent.
        # Corresponds to the JSON property `qaScorecardRevisions`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardRevision>]
        attr_accessor :qa_scorecard_revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @qa_scorecard_revisions = args[:qa_scorecard_revisions] if args.key?(:qa_scorecard_revisions)
        end
      end
      
      # The response from a ListQaScorecards request.
      class GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The QaScorecards under the parent.
        # Corresponds to the JSON property `qaScorecards`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard>]
        attr_accessor :qa_scorecards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @qa_scorecards = args[:qa_scorecards] if args.key?(:qa_scorecards)
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
      
      # The conversation assessment note resource.
      class GoogleCloudContactcenterinsightsV1Note
        include Google::Apis::Core::Hashable
      
        # A note about the entire parent assessment.
        # Corresponds to the JSON property `assessmentNote`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteAssessmentNote]
        attr_accessor :assessment_note
      
        # The note content.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # A note about a conversation turn.
        # Corresponds to the JSON property `conversationTurnNote`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteConversationTurnNote]
        attr_accessor :conversation_turn_note
      
        # Output only. The time at which the note was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The resource name of the note. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/assessments/`assessment`/
        # notes/`note`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Information about a user.
        # Corresponds to the JSON property `noteCreator`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UserInfo]
        attr_accessor :note_creator
      
        # A note about a QA question.
        # Corresponds to the JSON property `qaQuestionNote`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1NoteQaQuestionNote]
        attr_accessor :qa_question_note
      
        # Output only. The time at which the note was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assessment_note = args[:assessment_note] if args.key?(:assessment_note)
          @content = args[:content] if args.key?(:content)
          @conversation_turn_note = args[:conversation_turn_note] if args.key?(:conversation_turn_note)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @note_creator = args[:note_creator] if args.key?(:note_creator)
          @qa_question_note = args[:qa_question_note] if args.key?(:qa_question_note)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A note about the entire parent assessment.
      class GoogleCloudContactcenterinsightsV1NoteAssessmentNote
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A note about a conversation turn.
      class GoogleCloudContactcenterinsightsV1NoteConversationTurnNote
        include Google::Apis::Core::Hashable
      
        # The conversation turn index that the note is associated with.
        # Corresponds to the JSON property `turnIndex`
        # @return [Fixnum]
        attr_accessor :turn_index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @turn_index = args[:turn_index] if args.key?(:turn_index)
        end
      end
      
      # A note about a QA question.
      class GoogleCloudContactcenterinsightsV1NoteQaQuestionNote
        include Google::Apis::Core::Hashable
      
        # The question resource that the note is associated with.
        # Corresponds to the JSON property `qaQuestion`
        # @return [String]
        attr_accessor :qa_question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question = args[:qa_question] if args.key?(:qa_question)
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
      
        # Regex match configuration.
        # Corresponds to the JSON property `regexMatchConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RegexMatchConfig]
        attr_accessor :regex_match_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exact_match_config = args[:exact_match_config] if args.key?(:exact_match_config)
          @regex_match_config = args[:regex_match_config] if args.key?(:regex_match_config)
        end
      end
      
      # A message representing a rule in the phrase matcher.
      class GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup
        include Google::Apis::Core::Hashable
      
        # A list of phrase match rules that are included in this group.
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
      
      # The message to publish an assessment. Draft and appealed assessments can be
      # published. Publishing simply changes the state of the assessment to published,
      # allowing the console and authorized views to filter on the state.
      class GoogleCloudContactcenterinsightsV1PublishAssessmentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An answer to a QaQuestion.
      class GoogleCloudContactcenterinsightsV1QaAnswer
        include Google::Apis::Core::Hashable
      
        # Lists all answer sources containing one or more answer values of a specific
        # source type, e.g., all system-generated answer sources, or all manual edit
        # answer sources.
        # Corresponds to the JSON property `answerSources`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource>]
        attr_accessor :answer_sources
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `answerValue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue]
        attr_accessor :answer_value
      
        # The conversation the answer applies to.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The QaQuestion answered by this answer.
        # Corresponds to the JSON property `qaQuestion`
        # @return [String]
        attr_accessor :qa_question
      
        # Question text. E.g., "Did the agent greet the customer?"
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        # User-defined list of arbitrary tags. Matches the value from QaScorecard.
        # ScorecardQuestion.tags. Used for grouping/organization and for weighting the
        # score of each answer.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_sources = args[:answer_sources] if args.key?(:answer_sources)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @conversation = args[:conversation] if args.key?(:conversation)
          @qa_question = args[:qa_question] if args.key?(:qa_question)
          @question_body = args[:question_body] if args.key?(:question_body)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # A question may have multiple answers from varying sources, one of which
      # becomes the "main" answer above. AnswerSource represents each individual
      # answer.
      class GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource
        include Google::Apis::Core::Hashable
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `answerValue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue]
        attr_accessor :answer_value
      
        # What created the answer.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
      # the possible answer values for a question.
      class GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue
        include Google::Apis::Core::Hashable
      
        # Boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A short string used as an identifier. Matches the value used in QaQuestion.
        # AnswerChoice.key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A value of "Not Applicable (N/A)". Should only ever be `true`.
        # Corresponds to the JSON property `naValue`
        # @return [Boolean]
        attr_accessor :na_value
        alias_method :na_value?, :na_value
      
        # Output only. Normalized score of the questions. Calculated as score /
        # potential_score.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # Numerical value.
        # Corresponds to the JSON property `numValue`
        # @return [Float]
        attr_accessor :num_value
      
        # Output only. The maximum potential score of the question.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Output only. Numerical score of the answer.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Output only. A value of "Skip". If provided, this field may only be set to `
        # true`. If a question receives this answer, it will be excluded from any score
        # calculations. This would mean that the question was not evaluated.
        # Corresponds to the JSON property `skipValue`
        # @return [Boolean]
        attr_accessor :skip_value
        alias_method :skip_value?, :skip_value
      
        # String value.
        # Corresponds to the JSON property `strValue`
        # @return [String]
        attr_accessor :str_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @key = args[:key] if args.key?(:key)
          @na_value = args[:na_value] if args.key?(:na_value)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @num_value = args[:num_value] if args.key?(:num_value)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @score = args[:score] if args.key?(:score)
          @skip_value = args[:skip_value] if args.key?(:skip_value)
          @str_value = args[:str_value] if args.key?(:str_value)
        end
      end
      
      # A single question to be scored by the Insights QA feature.
      class GoogleCloudContactcenterinsightsV1QaQuestion
        include Google::Apis::Core::Hashable
      
        # Short, descriptive string, used in the UI where it's not practical to display
        # the full question body. E.g., "Greeting".
        # Corresponds to the JSON property `abbreviation`
        # @return [String]
        attr_accessor :abbreviation
      
        # A list of valid answers to the question, which the LLM must choose from.
        # Corresponds to the JSON property `answerChoices`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice>]
        attr_accessor :answer_choices
      
        # Instructions describing how to determine the answer.
        # Corresponds to the JSON property `answerInstructions`
        # @return [String]
        attr_accessor :answer_instructions
      
        # Output only. The time at which this question was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A wrapper representing metrics calculated against a test-set on a LLM that was
        # fine tuned for this question.
        # Corresponds to the JSON property `metrics`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionMetrics]
        attr_accessor :metrics
      
        # Identifier. The resource name of the question. Format: projects/`project`/
        # locations/`location`/qaScorecards/`qa_scorecard`/revisions/`revision`/
        # qaQuestions/`qa_question`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Defines the order of the question within its parent scorecard revision.
        # Corresponds to the JSON property `order`
        # @return [Fixnum]
        attr_accessor :order
      
        # Configuration for a predefined question. This field will only be set if the
        # Question Type is predefined.
        # Corresponds to the JSON property `predefinedQuestionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig]
        attr_accessor :predefined_question_config
      
        # Question text. E.g., "Did the agent greet the customer?"
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        # The type of question.
        # Corresponds to the JSON property `questionType`
        # @return [String]
        attr_accessor :question_type
      
        # Questions are tagged for categorization and scoring. Tags can either be: -
        # Default Tags: These are predefined categories. They are identified by their
        # string value (e.g., "BUSINESS", "COMPLIANCE", and "CUSTOMER"). - Custom Tags:
        # These are user-defined categories. They are identified by their full resource
        # name (e.g., projects/`project`/locations/`location`/qaQuestionTags/`
        # qa_question_tag`). Both default and custom tags are used to group questions
        # and to influence the scoring of each question.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # Metadata about the tuning operation for the question. Will only be set if a
        # scorecard containing this question has been tuned.
        # Corresponds to the JSON property `tuningMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata]
        attr_accessor :tuning_metadata
      
        # Output only. The most recent time at which the question was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abbreviation = args[:abbreviation] if args.key?(:abbreviation)
          @answer_choices = args[:answer_choices] if args.key?(:answer_choices)
          @answer_instructions = args[:answer_instructions] if args.key?(:answer_instructions)
          @create_time = args[:create_time] if args.key?(:create_time)
          @metrics = args[:metrics] if args.key?(:metrics)
          @name = args[:name] if args.key?(:name)
          @order = args[:order] if args.key?(:order)
          @predefined_question_config = args[:predefined_question_config] if args.key?(:predefined_question_config)
          @question_body = args[:question_body] if args.key?(:question_body)
          @question_type = args[:question_type] if args.key?(:question_type)
          @tags = args[:tags] if args.key?(:tags)
          @tuning_metadata = args[:tuning_metadata] if args.key?(:tuning_metadata)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Message representing a possible answer to the question.
      class GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice
        include Google::Apis::Core::Hashable
      
        # Boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A short string used as an identifier.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A value of "Not Applicable (N/A)". If provided, this field may only be set to `
        # true`. If a question receives this answer, it will be excluded from any score
        # calculations.
        # Corresponds to the JSON property `naValue`
        # @return [Boolean]
        attr_accessor :na_value
        alias_method :na_value?, :na_value
      
        # Numerical value.
        # Corresponds to the JSON property `numValue`
        # @return [Float]
        attr_accessor :num_value
      
        # Numerical score of the answer, used for generating the overall score of a
        # QaScorecardResult. If the answer uses na_value, this field is unused.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # String value.
        # Corresponds to the JSON property `strValue`
        # @return [String]
        attr_accessor :str_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @key = args[:key] if args.key?(:key)
          @na_value = args[:na_value] if args.key?(:na_value)
          @num_value = args[:num_value] if args.key?(:num_value)
          @score = args[:score] if args.key?(:score)
          @str_value = args[:str_value] if args.key?(:str_value)
        end
      end
      
      # A wrapper representing metrics calculated against a test-set on a LLM that was
      # fine tuned for this question.
      class GoogleCloudContactcenterinsightsV1QaQuestionMetrics
        include Google::Apis::Core::Hashable
      
        # Output only. Accuracy of the model. Measures the percentage of correct answers
        # the model gave on the test set.
        # Corresponds to the JSON property `accuracy`
        # @return [Float]
        attr_accessor :accuracy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accuracy = args[:accuracy] if args.key?(:accuracy)
        end
      end
      
      # Configuration for a predefined question. This field will only be set if the
      # Question Type is predefined.
      class GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig
        include Google::Apis::Core::Hashable
      
        # The type of the predefined question.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A tag is a resource which aims to categorize a set of questions across
      # multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.
      class GoogleCloudContactcenterinsightsV1QaQuestionTag
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the question tag was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. A user-specified display name for the tag.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Resource name for the QaQuestionTag Format projects/`project`/
        # locations/`location`/qaQuestionTags/`qa_question_tag` In the above format, the
        # last segment, i.e., qa_question_tag, is a server-generated ID corresponding to
        # the tag resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The list of Scorecard Question IDs that the tag applies to. Each
        # QaQuestionId is represented as a full resource name containing the Question ID.
        # Lastly, Since a tag may not necessarily be referenced by any Scorecard
        # Questions, we treat this field as optional.
        # Corresponds to the JSON property `qaQuestionIds`
        # @return [Array<String>]
        attr_accessor :qa_question_ids
      
        # Output only. The most recent time at which the question tag was updated.
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
          @qa_question_ids = args[:qa_question_ids] if args.key?(:qa_question_ids)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata about the tuning operation for the question. Will only be set if a
      # scorecard containing this question has been tuned.
      class GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata
        include Google::Apis::Core::Hashable
      
        # A list of any applicable data validation warnings about the question's
        # feedback labels.
        # Corresponds to the JSON property `datasetValidationWarnings`
        # @return [Array<String>]
        attr_accessor :dataset_validation_warnings
      
        # Total number of valid labels provided for the question at the time of tuining.
        # Corresponds to the JSON property `totalValidLabelCount`
        # @return [Fixnum]
        attr_accessor :total_valid_label_count
      
        # Error status of the tuning operation for the question. Will only be set if the
        # tuning operation failed.
        # Corresponds to the JSON property `tuningError`
        # @return [String]
        attr_accessor :tuning_error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_validation_warnings = args[:dataset_validation_warnings] if args.key?(:dataset_validation_warnings)
          @total_valid_label_count = args[:total_valid_label_count] if args.key?(:total_valid_label_count)
          @tuning_error = args[:tuning_error] if args.key?(:tuning_error)
        end
      end
      
      # A QaScorecard represents a collection of questions to be scored during
      # analysis.
      class GoogleCloudContactcenterinsightsV1QaScorecard
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this scorecard was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A text description explaining the intent of the scorecard.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The user-specified display name of the scorecard.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether the scorecard is the default one for the project. A default scorecard
        # cannot be deleted and will always appear first in scorecard selector.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # Identifier. The scorecard name. Format: projects/`project`/locations/`location`
        # /qaScorecards/`qa_scorecard`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The source of the scorecard.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. The most recent time at which the scorecard was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_default = args[:is_default] if args.key?(:is_default)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The results of scoring a single conversation against a QaScorecard. Contains a
      # collection of QaAnswers and aggregate score.
      class GoogleCloudContactcenterinsightsV1QaScorecardResult
        include Google::Apis::Core::Hashable
      
        # ID of the agent that handled the conversation.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The conversation scored by this result.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The name of the scorecard result. Format: projects/`project`/
        # locations/`location`/qaScorecardResults/`qa_scorecard_result`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normalized score, which is the score divided by the potential score. Any
        # manual edits are included if they exist.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The maximum potential overall score of the scorecard. Any questions answered
        # using `na_value` are excluded from this calculation.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Set of QaAnswers represented in the result.
        # Corresponds to the JSON property `qaAnswers`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaAnswer>]
        attr_accessor :qa_answers
      
        # The QaScorecardRevision scored by this result.
        # Corresponds to the JSON property `qaScorecardRevision`
        # @return [String]
        attr_accessor :qa_scorecard_revision
      
        # Collection of tags and their scores.
        # Corresponds to the JSON property `qaTagResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>]
        attr_accessor :qa_tag_results
      
        # The overall numerical score of the result, incorporating any manual edits if
        # they exist.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # List of all individual score sets.
        # Corresponds to the JSON property `scoreSources`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>]
        attr_accessor :score_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @qa_answers = args[:qa_answers] if args.key?(:qa_answers)
          @qa_scorecard_revision = args[:qa_scorecard_revision] if args.key?(:qa_scorecard_revision)
          @qa_tag_results = args[:qa_tag_results] if args.key?(:qa_tag_results)
          @score = args[:score] if args.key?(:score)
          @score_sources = args[:score_sources] if args.key?(:score_sources)
        end
      end
      
      # Tags and their corresponding results.
      class GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult
        include Google::Apis::Core::Hashable
      
        # The normalized score the tag applies to.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The potential score the tag applies to.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # The score the tag applies to.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # The tag the score applies to.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @score = args[:score] if args.key?(:score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A scorecard result may have multiple sets of scores from varying sources, one
      # of which becomes the "main" answer above. A ScoreSource represents each
      # individual set of scores.
      class GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource
        include Google::Apis::Core::Hashable
      
        # The normalized score, which is the score divided by the potential score.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The maximum potential overall score of the scorecard. Any questions answered
        # using `na_value` are excluded from this calculation.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Collection of tags and their scores.
        # Corresponds to the JSON property `qaTagResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>]
        attr_accessor :qa_tag_results
      
        # The overall numerical score of the result.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # What created the score.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @qa_tag_results = args[:qa_tag_results] if args.key?(:qa_tag_results)
          @score = args[:score] if args.key?(:score)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # A revision of a QaScorecard. Modifying published scorecard fields would
      # invalidate existing scorecard results — the questions may have changed, or the
      # score weighting will make existing scores impossible to understand. So changes
      # must create a new revision, rather than modifying the existing resource.
      class GoogleCloudContactcenterinsightsV1QaScorecardRevision
        include Google::Apis::Core::Hashable
      
        # Output only. Alternative IDs for this revision of the scorecard, e.g., `latest`
        # .
        # Corresponds to the JSON property `alternateIds`
        # @return [Array<String>]
        attr_accessor :alternate_ids
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The name of the scorecard revision. Format: projects/`project`/
        # locations/`location`/qaScorecards/`qa_scorecard`/revisions/`revision`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A QaScorecard represents a collection of questions to be scored during
        # analysis.
        # Corresponds to the JSON property `snapshot`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaScorecard]
        attr_accessor :snapshot
      
        # Output only. State of the scorecard revision, indicating whether it's ready to
        # be used in analysis.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_ids = args[:alternate_ids] if args.key?(:alternate_ids)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @snapshot = args[:snapshot] if args.key?(:snapshot)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A time window for querying conversations.
      class GoogleCloudContactcenterinsightsV1QueryInterval
        include Google::Apis::Core::Hashable
      
        # Required. The end time of the time window.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The start time of the time window.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The metadata from querying metrics.
      class GoogleCloudContactcenterinsightsV1QueryMetricsMetadata
        include Google::Apis::Core::Hashable
      
        # Whether the result rows were truncated because the result row size is too
        # large to materialize.
        # Corresponds to the JSON property `resultIsTruncated`
        # @return [Boolean]
        attr_accessor :result_is_truncated
        alias_method :result_is_truncated?, :result_is_truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_is_truncated = args[:result_is_truncated] if args.key?(:result_is_truncated)
        end
      end
      
      # The request for querying metrics.
      class GoogleCloudContactcenterinsightsV1QueryMetricsRequest
        include Google::Apis::Core::Hashable
      
        # The dimensions that determine the grouping key for the query. Defaults to no
        # dimension if this field is unspecified. If a dimension is specified, its key
        # must also be specified. Each dimension's key must be unique. If a time
        # granularity is also specified, metric values in the dimension will be bucketed
        # by this granularity. Up to one dimension is supported for now.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dimension>]
        attr_accessor :dimensions
      
        # Required. Filter to select a subset of conversations to compute the metrics.
        # Must specify a window of the conversation create time to compute the metrics.
        # The returned metrics will be from the range [DATE(starting create time), DATE(
        # ending create time)).
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Measures to return. Defaults to all measures if this field is unspecified. A
        # valid mask should traverse from the `measure` field from the response. For
        # example, a path from a measure mask to get the conversation count is "
        # conversation_measure.count".
        # Corresponds to the JSON property `measureMask`
        # @return [String]
        attr_accessor :measure_mask
      
        # The time granularity of each data point in the time series. Defaults to NONE
        # if this field is unspecified.
        # Corresponds to the JSON property `timeGranularity`
        # @return [String]
        attr_accessor :time_granularity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filter = args[:filter] if args.key?(:filter)
          @measure_mask = args[:measure_mask] if args.key?(:measure_mask)
          @time_granularity = args[:time_granularity] if args.key?(:time_granularity)
        end
      end
      
      # The response for querying metrics.
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponse
        include Google::Apis::Core::Hashable
      
        # Required. The location of the data. "projects/`project`/locations/`location`"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A slice contains a total and (if the request specified a time granularity) a
        # time series of metric values. Each slice contains a unique combination of the
        # cardinality of dimensions from the request. For example, if the request
        # specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the
        # data used to compute the metrics has 2 issues in total), the response will
        # have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[
        # Issue 2]
        # Corresponds to the JSON property `macroAverageSlice`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice]
        attr_accessor :macro_average_slice
      
        # A slice contains a total and (if the request specified a time granularity) a
        # time series of metric values. Each slice contains a unique combination of the
        # cardinality of dimensions from the request.
        # Corresponds to the JSON property `slices`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice>]
        attr_accessor :slices
      
        # The metrics last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @macro_average_slice = args[:macro_average_slice] if args.key?(:macro_average_slice)
          @slices = args[:slices] if args.key?(:slices)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A slice contains a total and (if the request specified a time granularity) a
      # time series of metric values. Each slice contains a unique combination of the
      # cardinality of dimensions from the request. For example, if the request
      # specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the
      # data used to compute the metrics has 2 issues in total), the response will
      # have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[
      # Issue 2]
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice
        include Google::Apis::Core::Hashable
      
        # A unique combination of dimensions that this slice represents.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dimension>]
        attr_accessor :dimensions
      
        # A time series of metric values.
        # Corresponds to the JSON property `timeSeries`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries]
        attr_accessor :time_series
      
        # A data point contains the metric values mapped to an interval.
        # Corresponds to the JSON property `total`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint]
        attr_accessor :total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @time_series = args[:time_series] if args.key?(:time_series)
          @total = args[:total] if args.key?(:total)
        end
      end
      
      # A data point contains the metric values mapped to an interval.
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint
        include Google::Apis::Core::Hashable
      
        # The measure related to conversations.
        # Corresponds to the JSON property `conversationMeasure`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure]
        attr_accessor :conversation_measure
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_measure = args[:conversation_measure] if args.key?(:conversation_measure)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # The measure related to conversations.
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure
        include Google::Apis::Core::Hashable
      
        # The average agent's sentiment score.
        # Corresponds to the JSON property `averageAgentSentimentScore`
        # @return [Float]
        attr_accessor :average_agent_sentiment_score
      
        # The average client's sentiment score.
        # Corresponds to the JSON property `averageClientSentimentScore`
        # @return [Float]
        attr_accessor :average_client_sentiment_score
      
        # The average customer satisfaction rating.
        # Corresponds to the JSON property `averageCustomerSatisfactionRating`
        # @return [Float]
        attr_accessor :average_customer_satisfaction_rating
      
        # The average duration.
        # Corresponds to the JSON property `averageDuration`
        # @return [String]
        attr_accessor :average_duration
      
        # The average normalized QA score for a scorecard. When computing the average
        # across a set of conversations, if a conversation has been evaluated with
        # multiple revisions of a scorecard, only the latest revision results will be
        # used. Will exclude 0's in average calculation. Will be only populated if the
        # request specifies a dimension of QA_SCORECARD_ID.
        # Corresponds to the JSON property `averageQaNormalizedScore`
        # @return [Float]
        attr_accessor :average_qa_normalized_score
      
        # Average QA normalized score averaged for questions averaged across all
        # revisions of the parent scorecard. Will be only populated if the request
        # specifies a dimension of QA_QUESTION_ID.
        # Corresponds to the JSON property `averageQaQuestionNormalizedScore`
        # @return [Float]
        attr_accessor :average_qa_question_normalized_score
      
        # The average silence percentage.
        # Corresponds to the JSON property `averageSilencePercentage`
        # @return [Float]
        attr_accessor :average_silence_percentage
      
        # The average turn count.
        # Corresponds to the JSON property `averageTurnCount`
        # @return [Float]
        attr_accessor :average_turn_count
      
        # The conversation count.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # Average QA normalized score for all the tags.
        # Corresponds to the JSON property `qaTagScores`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore>]
        attr_accessor :qa_tag_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_agent_sentiment_score = args[:average_agent_sentiment_score] if args.key?(:average_agent_sentiment_score)
          @average_client_sentiment_score = args[:average_client_sentiment_score] if args.key?(:average_client_sentiment_score)
          @average_customer_satisfaction_rating = args[:average_customer_satisfaction_rating] if args.key?(:average_customer_satisfaction_rating)
          @average_duration = args[:average_duration] if args.key?(:average_duration)
          @average_qa_normalized_score = args[:average_qa_normalized_score] if args.key?(:average_qa_normalized_score)
          @average_qa_question_normalized_score = args[:average_qa_question_normalized_score] if args.key?(:average_qa_question_normalized_score)
          @average_silence_percentage = args[:average_silence_percentage] if args.key?(:average_silence_percentage)
          @average_turn_count = args[:average_turn_count] if args.key?(:average_turn_count)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @qa_tag_scores = args[:qa_tag_scores] if args.key?(:qa_tag_scores)
        end
      end
      
      # Average QA normalized score for the tag.
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        include Google::Apis::Core::Hashable
      
        # Average tag normalized score per tag.
        # Corresponds to the JSON property `averageTagNormalizedScore`
        # @return [Float]
        attr_accessor :average_tag_normalized_score
      
        # Tag name.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_tag_normalized_score = args[:average_tag_normalized_score] if args.key?(:average_tag_normalized_score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A time series of metric values.
      class GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries
        include Google::Apis::Core::Hashable
      
        # The data points that make up the time series .
        # Corresponds to the JSON property `dataPoints`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint>]
        attr_accessor :data_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_points = args[:data_points] if args.key?(:data_points)
        end
      end
      
      # The metadata for querying performance overview.
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for summarizing performance according to different metrics for
      # conversations over a specified time window.
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest
        include Google::Apis::Core::Hashable
      
        # The entity whose performance is being queried is a single agent.
        # Corresponds to the JSON property `agentPerformanceSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource]
        attr_accessor :agent_performance_source
      
        # A time window for querying conversations.
        # Corresponds to the JSON property `comparisonQueryInterval`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryInterval]
        attr_accessor :comparison_query_interval
      
        # Optional. Filter to select a subset of conversations to compute the
        # performance overview. Supports the same filters as the filter field in
        # QueryMetricsRequest. The source and query interval/comparison query interval
        # should not be included here.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # A time window for querying conversations.
        # Corresponds to the JSON property `queryInterval`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QueryInterval]
        attr_accessor :query_interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_performance_source = args[:agent_performance_source] if args.key?(:agent_performance_source)
          @comparison_query_interval = args[:comparison_query_interval] if args.key?(:comparison_query_interval)
          @filter = args[:filter] if args.key?(:filter)
          @query_interval = args[:query_interval] if args.key?(:query_interval)
        end
      end
      
      # The entity whose performance is being queried is a single agent.
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource
        include Google::Apis::Core::Hashable
      
        # Required. Agent id to query performance overview for.
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
      
      # The response for querying performance overview.
      class GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewResponse
        include Google::Apis::Core::Hashable
      
        # The summary text of the performance.
        # Corresponds to the JSON property `summaryText`
        # @return [String]
        attr_accessor :summary_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary_text = args[:summary_text] if args.key?(:summary_text)
        end
      end
      
      # DLP resources used for redaction while ingesting conversations. DLP settings
      # are applied to conversations ingested from the `UploadConversation` and `
      # IngestConversations` endpoints, including conversation coming from CCAI
      # Platform. They are not applied to conversations ingested from the `
      # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
      # integrations. When using Dialogflow / Agent Assist runtime integrations,
      # redaction should be performed in Dialogflow / Agent Assist.
      class GoogleCloudContactcenterinsightsV1RedactionConfig
        include Google::Apis::Core::Hashable
      
        # The fully-qualified DLP deidentify template resource name. Format: `projects/`
        # project`/deidentifyTemplates/`template``
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # The fully-qualified DLP inspect template resource name. Format: `projects/`
        # project`/locations/`location`/inspectTemplates/`template``
        # Corresponds to the JSON property `inspectTemplate`
        # @return [String]
        attr_accessor :inspect_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
        end
      end
      
      # Regex match configuration.
      class GoogleCloudContactcenterinsightsV1RegexMatchConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # Conversation summarization suggestion data.
        # Corresponds to the JSON property `conversationSummarizationSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData]
        attr_accessor :conversation_summarization_suggestion
      
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
      
        # Explicit input used for generating the answer
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput]
        attr_accessor :user_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_id = args[:annotation_id] if args.key?(:annotation_id)
          @answer_feedback = args[:answer_feedback] if args.key?(:answer_feedback)
          @article_suggestion = args[:article_suggestion] if args.key?(:article_suggestion)
          @conversation_summarization_suggestion = args[:conversation_summarization_suggestion] if args.key?(:conversation_summarization_suggestion)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dialogflow_interaction = args[:dialogflow_interaction] if args.key?(:dialogflow_interaction)
          @end_boundary = args[:end_boundary] if args.key?(:end_boundary)
          @faq_answer = args[:faq_answer] if args.key?(:faq_answer)
          @smart_compose_suggestion = args[:smart_compose_suggestion] if args.key?(:smart_compose_suggestion)
          @smart_reply = args[:smart_reply] if args.key?(:smart_reply)
          @start_boundary = args[:start_boundary] if args.key?(:start_boundary)
          @user_input = args[:user_input] if args.key?(:user_input)
        end
      end
      
      # Explicit input used for generating the answer
      class GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput
        include Google::Apis::Core::Hashable
      
        # The resource name of associated generator. Format: `projects//locations//
        # generators/`
        # Corresponds to the JSON property `generatorName`
        # @return [String]
        attr_accessor :generator_name
      
        # Query text. Article Search uses this to store the input query used to generate
        # the search results.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Query source for the answer.
        # Corresponds to the JSON property `querySource`
        # @return [String]
        attr_accessor :query_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_name = args[:generator_name] if args.key?(:generator_name)
          @query = args[:query] if args.key?(:query)
          @query_source = args[:query_source] if args.key?(:query_source)
        end
      end
      
      # The metadata for an SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1SampleConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Partial errors during sample conversations operation that might
        # cause the operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to sample conversations to a dataset.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsRequest]
        attr_accessor :request
      
        # Statistics for SampleConversations operation.
        # Corresponds to the JSON property `sampleConversationsStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats]
        attr_accessor :sample_conversations_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @sample_conversations_stats = args[:sample_conversations_stats] if args.key?(:sample_conversations_stats)
        end
      end
      
      # Statistics for SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects which were unable to be sampled due to
        # errors. The errors are populated in the partial_errors field.
        # Corresponds to the JSON property `failedSampleCount`
        # @return [Fixnum]
        attr_accessor :failed_sample_count
      
        # Output only. The number of new conversations added during this sample
        # operation.
        # Corresponds to the JSON property `successfulSampleCount`
        # @return [Fixnum]
        attr_accessor :successful_sample_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_sample_count = args[:failed_sample_count] if args.key?(:failed_sample_count)
          @successful_sample_count = args[:successful_sample_count] if args.key?(:successful_sample_count)
        end
      end
      
      # The request to sample conversations to a dataset.
      class GoogleCloudContactcenterinsightsV1SampleConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Dataset resource represents a collection of conversations that may be bounded (
        # Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic
        # Dataset, e.g. live traffic, or agent training traffic)
        # Corresponds to the JSON property `destinationDataset`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Dataset]
        attr_accessor :destination_dataset
      
        # Required. The parent resource of the dataset.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Message for sampling conversations.
        # Corresponds to the JSON property `sampleRule`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SampleRule]
        attr_accessor :sample_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
          @parent = args[:parent] if args.key?(:parent)
          @sample_rule = args[:sample_rule] if args.key?(:sample_rule)
        end
      end
      
      # The response to an SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1SampleConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for sampling conversations.
      class GoogleCloudContactcenterinsightsV1SampleRule
        include Google::Apis::Core::Hashable
      
        # To specify the filter for the conversions that should apply this sample rule.
        # An empty filter means this sample rule applies to all conversations.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Optional. Group by dimension to sample the conversation. If no dimension is
        # provided, the sampling will be applied to the project level. Current supported
        # dimensions is 'quality_metadata.agent_info.agent_id'.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Percentage of conversations that we should sample based on the dimension
        # between [0, 100].
        # Corresponds to the JSON property `samplePercentage`
        # @return [Float]
        attr_accessor :sample_percentage
      
        # Number of the conversations that we should sample based on the dimension.
        # Corresponds to the JSON property `sampleRow`
        # @return [Fixnum]
        attr_accessor :sample_row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @dimension = args[:dimension] if args.key?(:dimension)
          @sample_percentage = args[:sample_percentage] if args.key?(:sample_percentage)
          @sample_row = args[:sample_row] if args.key?(:sample_row)
        end
      end
      
      # Message for schedule info.
      class GoogleCloudContactcenterinsightsV1ScheduleInfo
        include Google::Apis::Core::Hashable
      
        # End time of the schedule. If not specified, will keep scheduling new pipelines
        # for execution util the schedule is no longer active or deleted.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The groc expression. Format: `every number [synchronized]` Time units can be:
        # minutes, hours Synchronized is optional and indicates that the schedule should
        # be synchronized to the start of the interval: every 5 minutes synchronized
        # means 00:00, 00:05 ... Otherwise the start time is random within the interval.
        # Example: `every 5 minutes` could be 00:02, 00:07, 00:12, ...
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Start time of the schedule. If not specified, will start as soon as the
        # schedule is created.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The timezone to use for the groc expression. If not specified, defaults to UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @schedule = args[:schedule] if args.key?(:schedule)
          @start_time = args[:start_time] if args.key?(:start_time)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # The response from a ListAuthorizedViews request.
      class GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse
        include Google::Apis::Core::Hashable
      
        # The AuthorizedViews under the parent.
        # Corresponds to the JSON property `authorizedViews`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AuthorizedView>]
        attr_accessor :authorized_views
      
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
          @authorized_views = args[:authorized_views] if args.key?(:authorized_views)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The data for a sentiment annotation.
      class GoogleCloudContactcenterinsightsV1SentimentData
        include Google::Apis::Core::Hashable
      
        # A non-negative number from 0 to infinity which represents the absolute
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
      
      # The CCAI Insights project wide settings. Use these settings to configure the
      # behavior of Insights. View these settings with [`getsettings`](https://cloud.
      # google.com/contact-center/insights/docs/reference/rest/v1/projects.locations/
      # getSettings) and change the settings with [`updateSettings`](https://cloud.
      # google.com/contact-center/insights/docs/reference/rest/v1/projects.locations/
      # updateSettings).
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
        # is complete. * "ingest-conversations": Notify each time an IngestConversations
        # LRO is complete. * "update-conversation": Notify each time a conversation is
        # updated via UpdateConversation. * "upload-conversation": Notify when an
        # UploadConversation LRO is complete. * "update-or-analyze-conversation": Notify
        # when an analysis for a conversation is completed or when the conversation is
        # updated. The message will contain the conversation with transcript, analysis
        # and other metadata. Values are Pub/Sub topics. The format of each Pub/Sub
        # topic is: projects/`project`/topics/`topic`
        # Corresponds to the JSON property `pubsubNotificationSettings`
        # @return [Hash<String,String>]
        attr_accessor :pubsub_notification_settings
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig]
        attr_accessor :redaction_config
      
        # Optional. The path to a Cloud Storage bucket containing conversation screen
        # recordings. If provided, Insights will search in the bucket for a screen
        # recording file matching the conversation data source object name prefix. If
        # matches are found, these file URIs will be stored in the conversation screen
        # recordings field.
        # Corresponds to the JSON property `screenRecordingBucketUri`
        # @return [String]
        attr_accessor :screen_recording_bucket_uri
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig]
        attr_accessor :speech_config
      
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
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @screen_recording_bucket_uri = args[:screen_recording_bucket_uri] if args.key?(:screen_recording_bucket_uri)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Default configuration when creating Analyses in Insights.
      class GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig
        include Google::Apis::Core::Hashable
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1AnnotatorSelector]
        attr_accessor :annotator_selector
      
        # Percentage of conversations created using Dialogflow runtime integration to
        # analyze automatically, between [0, 100].
        # Corresponds to the JSON property `runtimeIntegrationAnalysisPercentage`
        # @return [Float]
        attr_accessor :runtime_integration_analysis_percentage
      
        # Percentage of conversations created using the UploadConversation endpoint to
        # analyze automatically, between [0, 100].
        # Corresponds to the JSON property `uploadConversationAnalysisPercentage`
        # @return [Float]
        attr_accessor :upload_conversation_analysis_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @runtime_integration_analysis_percentage = args[:runtime_integration_analysis_percentage] if args.key?(:runtime_integration_analysis_percentage)
          @upload_conversation_analysis_percentage = args[:upload_conversation_analysis_percentage] if args.key?(:upload_conversation_analysis_percentage)
        end
      end
      
      # Signed audio URIs for a conversation.
      class GoogleCloudContactcenterinsightsV1SignedAudioUris
        include Google::Apis::Core::Hashable
      
        # The signed URI for the audio from the Dialogflow conversation source.
        # Corresponds to the JSON property `signedDialogflowAudioUri`
        # @return [String]
        attr_accessor :signed_dialogflow_audio_uri
      
        # The signed URI for the audio from the Cloud Storage conversation source.
        # Corresponds to the JSON property `signedGcsAudioUri`
        # @return [String]
        attr_accessor :signed_gcs_audio_uri
      
        # The signed URI for the audio corresponding to each turn in the conversation.
        # Corresponds to the JSON property `signedTurnLevelAudios`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio>]
        attr_accessor :signed_turn_level_audios
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @signed_dialogflow_audio_uri = args[:signed_dialogflow_audio_uri] if args.key?(:signed_dialogflow_audio_uri)
          @signed_gcs_audio_uri = args[:signed_gcs_audio_uri] if args.key?(:signed_gcs_audio_uri)
          @signed_turn_level_audios = args[:signed_turn_level_audios] if args.key?(:signed_turn_level_audios)
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
      
      # Speech-to-Text configuration. Speech-to-Text settings are applied to
      # conversations ingested from the `UploadConversation` and `IngestConversations`
      # endpoints, including conversation coming from CCAI Platform. They are not
      # applied to conversations ingested from the `CreateConversation` endpoint.
      class GoogleCloudContactcenterinsightsV1SpeechConfig
        include Google::Apis::Core::Hashable
      
        # Whether to disable word time offsets. If true, the `enable_word_time_offsets`
        # field in the recognition config will be set to false.
        # Corresponds to the JSON property `disableWordTimeOffsets`
        # @return [Boolean]
        attr_accessor :disable_word_time_offsets
        alias_method :disable_word_time_offsets?, :disable_word_time_offsets
      
        # The fully-qualified Speech Recognizer resource name. Format: `projects/`
        # project_id`/locations/`location`/recognizer/`recognizer``
        # Corresponds to the JSON property `speechRecognizer`
        # @return [String]
        attr_accessor :speech_recognizer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_word_time_offsets = args[:disable_word_time_offsets] if args.key?(:disable_word_time_offsets)
          @speech_recognizer = args[:speech_recognizer] if args.key?(:speech_recognizer)
        end
      end
      
      # Request for TuneQaScorecardRevision endpoint.
      class GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest
        include Google::Apis::Core::Hashable
      
        # Required. Filter for selecting the feedback labels that needs to be used for
        # training. This filter can be used to limit the feedback labels used for tuning
        # to a feedback labels created or updated for a specific time-window etc.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. Run in validate only mode, no fine tuning will actually run. Data
        # quality validations like training data distributions will run. Even when set
        # to false, the data quality validations will still run but once the validations
        # complete we will proceed with the fine tune, if applicable.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
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
      
      # The request to undeploy a QaScorecardRevision
      class GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for updating a QaQuestionTag Resource.
      class GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for updating a QaQuestionTag.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest]
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
      
      # The request for updating a QaQuestionTag.
      class GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest
        include Google::Apis::Core::Hashable
      
        # A tag is a resource which aims to categorize a set of questions across
        # multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.
        # Corresponds to the JSON property `qaQuestionTag`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1QaQuestionTag]
        attr_accessor :qa_question_tag
      
        # Optional. The list of fields to be updated. All possible fields can be updated
        # by passing `*`, or a subset of the following updateable fields can be provided:
        # * `qa_question_tag_name` - the name of the tag * `qa_question_ids` - the list
        # of questions the tag applies to
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question_tag = args[:qa_question_tag] if args.key?(:qa_question_tag)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The metadata for an `UploadConversation` operation.
      class GoogleCloudContactcenterinsightsV1UploadConversationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The operation name for a successfully created analysis operation,
        # if any.
        # Corresponds to the JSON property `analysisOperation`
        # @return [String]
        attr_accessor :analysis_operation
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `appliedRedactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig]
        attr_accessor :applied_redaction_config
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to upload a conversation.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1UploadConversationRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_operation = args[:analysis_operation] if args.key?(:analysis_operation)
          @applied_redaction_config = args[:applied_redaction_config] if args.key?(:applied_redaction_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Request to upload a conversation.
      class GoogleCloudContactcenterinsightsV1UploadConversationRequest
        include Google::Apis::Core::Hashable
      
        # The conversation resource.
        # Corresponds to the JSON property `conversation`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1Conversation]
        attr_accessor :conversation
      
        # Optional. A unique ID for the new conversation. This ID will become the final
        # component of the conversation's resource name. If no ID is specified, a server-
        # generated ID will be used. This value should be 4-64 characters and must match
        # the regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`
        # Corresponds to the JSON property `conversationId`
        # @return [String]
        attr_accessor :conversation_id
      
        # Required. The parent resource of the conversation.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1RedactionConfig]
        attr_accessor :redaction_config
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1SpeechConfig]
        attr_accessor :speech_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @conversation_id = args[:conversation_id] if args.key?(:conversation_id)
          @parent = args[:parent] if args.key?(:parent)
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
        end
      end
      
      # Information about a user.
      class GoogleCloudContactcenterinsightsV1UserInfo
        include Google::Apis::Core::Hashable
      
        # The user's username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @username = args[:username] if args.key?(:username)
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
      
        # A filter to reduce conversation results to a specific subset. Refer to https://
        # cloud.google.com/contact-center/insights/docs/filtering for details.
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
      
      # The analysis resource.
      class GoogleCloudContactcenterinsightsV1alpha1Analysis
        include Google::Apis::Core::Hashable
      
        # The result of an analysis.
        # Corresponds to the JSON property `analysisResult`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnalysisResult]
        attr_accessor :analysis_result
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The result of an analysis.
      class GoogleCloudContactcenterinsightsV1alpha1AnalysisResult
        include Google::Apis::Core::Hashable
      
        # Call-specific metadata created during analysis.
        # Corresponds to the JSON property `callAnalysisMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata]
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
      class GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata
        include Google::Apis::Core::Hashable
      
        # A list of call annotations that apply to this call.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CallAnnotation>]
        attr_accessor :annotations
      
        # All the entities in the call.
        # Corresponds to the JSON property `entities`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Entity>]
        attr_accessor :entities
      
        # All the matched intents in the call.
        # Corresponds to the JSON property `intents`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Intent>]
        attr_accessor :intents
      
        # Issue Modeling result on a conversation.
        # Corresponds to the JSON property `issueModelResult`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModelResult]
        attr_accessor :issue_model_result
      
        # All the matched phrase matchers in the call.
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData>]
        attr_accessor :phrase_matchers
      
        # Results of scoring QaScorecards.
        # Corresponds to the JSON property `qaScorecardResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult>]
        attr_accessor :qa_scorecard_results
      
        # Overall conversation-level sentiment for each channel of the call.
        # Corresponds to the JSON property `sentiments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment>]
        attr_accessor :sentiments
      
        # Conversation-level silence data.
        # Corresponds to the JSON property `silence`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence]
        attr_accessor :silence
      
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
          @qa_scorecard_results = args[:qa_scorecard_results] if args.key?(:qa_scorecard_results)
          @sentiments = args[:sentiments] if args.key?(:sentiments)
          @silence = args[:silence] if args.key?(:silence)
        end
      end
      
      # A point in a conversation that marks the start or the end of an annotation.
      class GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary
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
      
      # Selector of all available annotators and phrase matchers to run.
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector
        include Google::Apis::Core::Hashable
      
        # The issue model to run. If not provided, the most recently deployed topic
        # model will be used. The provided issue model will only be used for inference
        # if the issue model is deployed and if run_issue_model_annotator is set to true.
        # If more than one issue model is provided, only the first provided issue model
        # will be used for inference.
        # Corresponds to the JSON property `issueModels`
        # @return [Array<String>]
        attr_accessor :issue_models
      
        # The list of phrase matchers to run. If not provided, all active phrase
        # matchers will be used. If inactive phrase matchers are provided, they will not
        # be used. Phrase matchers will be run only if run_phrase_matcher_annotator is
        # set to true. Format: projects/`project`/locations/`location`/phraseMatchers/`
        # phrase_matcher`
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Array<String>]
        attr_accessor :phrase_matchers
      
        # Configuration for the QA feature.
        # Corresponds to the JSON property `qaConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig]
        attr_accessor :qa_config
      
        # Whether to run the entity annotator.
        # Corresponds to the JSON property `runEntityAnnotator`
        # @return [Boolean]
        attr_accessor :run_entity_annotator
        alias_method :run_entity_annotator?, :run_entity_annotator
      
        # Whether to run the intent annotator.
        # Corresponds to the JSON property `runIntentAnnotator`
        # @return [Boolean]
        attr_accessor :run_intent_annotator
        alias_method :run_intent_annotator?, :run_intent_annotator
      
        # Whether to run the interruption annotator.
        # Corresponds to the JSON property `runInterruptionAnnotator`
        # @return [Boolean]
        attr_accessor :run_interruption_annotator
        alias_method :run_interruption_annotator?, :run_interruption_annotator
      
        # Whether to run the issue model annotator. A model should have already been
        # deployed for this to take effect.
        # Corresponds to the JSON property `runIssueModelAnnotator`
        # @return [Boolean]
        attr_accessor :run_issue_model_annotator
        alias_method :run_issue_model_annotator?, :run_issue_model_annotator
      
        # Whether to run the active phrase matcher annotator(s).
        # Corresponds to the JSON property `runPhraseMatcherAnnotator`
        # @return [Boolean]
        attr_accessor :run_phrase_matcher_annotator
        alias_method :run_phrase_matcher_annotator?, :run_phrase_matcher_annotator
      
        # Whether to run the QA annotator.
        # Corresponds to the JSON property `runQaAnnotator`
        # @return [Boolean]
        attr_accessor :run_qa_annotator
        alias_method :run_qa_annotator?, :run_qa_annotator
      
        # Whether to run the sentiment annotator.
        # Corresponds to the JSON property `runSentimentAnnotator`
        # @return [Boolean]
        attr_accessor :run_sentiment_annotator
        alias_method :run_sentiment_annotator?, :run_sentiment_annotator
      
        # Whether to run the silence annotator.
        # Corresponds to the JSON property `runSilenceAnnotator`
        # @return [Boolean]
        attr_accessor :run_silence_annotator
        alias_method :run_silence_annotator?, :run_silence_annotator
      
        # Whether to run the summarization annotator.
        # Corresponds to the JSON property `runSummarizationAnnotator`
        # @return [Boolean]
        attr_accessor :run_summarization_annotator
        alias_method :run_summarization_annotator?, :run_summarization_annotator
      
        # Configuration for summarization.
        # Corresponds to the JSON property `summarizationConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig]
        attr_accessor :summarization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_models = args[:issue_models] if args.key?(:issue_models)
          @phrase_matchers = args[:phrase_matchers] if args.key?(:phrase_matchers)
          @qa_config = args[:qa_config] if args.key?(:qa_config)
          @run_entity_annotator = args[:run_entity_annotator] if args.key?(:run_entity_annotator)
          @run_intent_annotator = args[:run_intent_annotator] if args.key?(:run_intent_annotator)
          @run_interruption_annotator = args[:run_interruption_annotator] if args.key?(:run_interruption_annotator)
          @run_issue_model_annotator = args[:run_issue_model_annotator] if args.key?(:run_issue_model_annotator)
          @run_phrase_matcher_annotator = args[:run_phrase_matcher_annotator] if args.key?(:run_phrase_matcher_annotator)
          @run_qa_annotator = args[:run_qa_annotator] if args.key?(:run_qa_annotator)
          @run_sentiment_annotator = args[:run_sentiment_annotator] if args.key?(:run_sentiment_annotator)
          @run_silence_annotator = args[:run_silence_annotator] if args.key?(:run_silence_annotator)
          @run_summarization_annotator = args[:run_summarization_annotator] if args.key?(:run_summarization_annotator)
          @summarization_config = args[:summarization_config] if args.key?(:summarization_config)
        end
      end
      
      # Configuration for the QA feature.
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig
        include Google::Apis::Core::Hashable
      
        # Container for a list of scorecards.
        # Corresponds to the JSON property `scorecardList`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList]
        attr_accessor :scorecard_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scorecard_list = args[:scorecard_list] if args.key?(:scorecard_list)
        end
      end
      
      # Container for a list of scorecards.
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList
        include Google::Apis::Core::Hashable
      
        # List of QaScorecardRevisions.
        # Corresponds to the JSON property `qaScorecardRevisions`
        # @return [Array<String>]
        attr_accessor :qa_scorecard_revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_scorecard_revisions = args[:qa_scorecard_revisions] if args.key?(:qa_scorecard_revisions)
        end
      end
      
      # Configuration for summarization.
      class GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig
        include Google::Apis::Core::Hashable
      
        # Resource name of the Dialogflow conversation profile. Format: projects/`
        # project`/locations/`location`/conversationProfiles/`conversation_profile`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # The resource name of the existing created generator. Format: projects//
        # locations//generators/
        # Corresponds to the JSON property `generator`
        # @return [String]
        attr_accessor :generator
      
        # Default summarization model to be used.
        # Corresponds to the JSON property `summarizationModel`
        # @return [String]
        attr_accessor :summarization_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @generator = args[:generator] if args.key?(:generator)
          @summarization_model = args[:summarization_model] if args.key?(:summarization_model)
        end
      end
      
      # The feedback that the customer has about a certain answer in the conversation.
      class GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback
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
      class GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData
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
      
        # Output only. Partial errors during bulk analyze operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
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
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
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
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
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
      
      # The metadata for a bulk delete conversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during bulk delete conversations operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to delete conversations in bulk.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest]
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
      
      # The request to delete conversations in bulk.
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Filter used to select the subset of conversations to delete.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # If set to true, all of this conversation's analyses will also be deleted.
        # Otherwise, the request will only succeed if the conversation has no analyses.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Maximum number of conversations to delete.
        # Corresponds to the JSON property `maxDeleteCount`
        # @return [Fixnum]
        attr_accessor :max_delete_count
      
        # Required. The parent resource to delete conversations from. Format: projects/`
        # project`/locations/`location`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
          @max_delete_count = args[:max_delete_count] if args.key?(:max_delete_count)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The response for a bulk delete conversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsMetadata
        include Google::Apis::Core::Hashable
      
        # Partial errors during deletion operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # Request for the BulkDeleteFeedbackLabels endpoint.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Request for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A filter to reduce results to a specific subset. Supports
        # disjunctions (OR) and conjunctions (AND). Supported fields: * `issue_model_id`
        # * `qa_question_id` * `qa_scorecard_id` * `min_create_time` * `max_create_time`
        # * `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        # TOPIC_MODELING
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The parent resource for new feedback labels.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Response for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A piece of metadata that applies to a window of a call.
      class GoogleCloudContactcenterinsightsV1alpha1CallAnnotation
        include Google::Apis::Core::Hashable
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `annotationEndBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary]
        attr_accessor :annotation_end_boundary
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `annotationStartBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary]
        attr_accessor :annotation_start_boundary
      
        # The channel of the audio where the annotation occurs. For single-channel audio,
        # this field is not populated.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # The data for an entity mention annotation. This represents a mention of an `
        # Entity` in the conversation.
        # Corresponds to the JSON property `entityMentionData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1EntityMentionData]
        attr_accessor :entity_mention_data
      
        # The data for a hold annotation.
        # Corresponds to the JSON property `holdData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1HoldData]
        attr_accessor :hold_data
      
        # The data for an intent match. Represents an intent match for a text segment in
        # the conversation. A text segment can be part of a sentence, a complete
        # sentence, or an utterance with multiple sentences.
        # Corresponds to the JSON property `intentMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IntentMatchData]
        attr_accessor :intent_match_data
      
        # The data for an interruption annotation.
        # Corresponds to the JSON property `interruptionData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1InterruptionData]
        attr_accessor :interruption_data
      
        # The data for an issue match annotation.
        # Corresponds to the JSON property `issueMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueMatchData]
        attr_accessor :issue_match_data
      
        # The data for a matched phrase matcher. Represents information identifying a
        # phrase matcher for a given match.
        # Corresponds to the JSON property `phraseMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData]
        attr_accessor :phrase_match_data
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentimentData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData]
        attr_accessor :sentiment_data
      
        # The data for a silence annotation.
        # Corresponds to the JSON property `silenceData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SilenceData]
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
      class GoogleCloudContactcenterinsightsV1alpha1Conversation
        include Google::Apis::Core::Hashable
      
        # An opaque, user-specified string representing the human agent who handled the
        # conversation.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Call-specific metadata.
        # Corresponds to the JSON property `callMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata]
        attr_accessor :call_metadata
      
        # Output only. The time at which the conversation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The conversation source, which is a combination of transcript and audio.
        # Corresponds to the JSON property `dataSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource]
        attr_accessor :data_source
      
        # Output only. All the matched Dialogflow intents in the call. The key
        # corresponds to a Dialogflow intent, format: projects/`project`/agent/`agent`/
        # intents/`intent`
        # Corresponds to the JSON property `dialogflowIntents`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent>]
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
      
        # A map for the user to specify any custom fields. A maximum of 100 labels per
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Analysis]
        attr_accessor :latest_analysis
      
        # Conversation summarization suggestion data.
        # Corresponds to the JSON property `latestSummary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData]
        attr_accessor :latest_summary
      
        # Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Input only. JSON metadata encoded as a string. This field is primarily used by
        # Insights integrations with various telephony systems and must be in one of
        # Insight's supported formats.
        # Corresponds to the JSON property `metadataJson`
        # @return [String]
        attr_accessor :metadata_json
      
        # Immutable. The resource name of the conversation. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated user ID which the customer sent to us.
        # Corresponds to the JSON property `obfuscatedUserId`
        # @return [String]
        attr_accessor :obfuscated_user_id
      
        # Conversation metadata related to quality management.
        # Corresponds to the JSON property `qualityMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata]
        attr_accessor :quality_metadata
      
        # Output only. The annotations that were generated during the customer and agent
        # interaction.
        # Corresponds to the JSON property `runtimeAnnotations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation>]
        attr_accessor :runtime_annotations
      
        # The time at which the conversation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # A message representing the transcript of a conversation.
        # Corresponds to the JSON property `transcript`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript]
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
          @latest_summary = args[:latest_summary] if args.key?(:latest_summary)
          @medium = args[:medium] if args.key?(:medium)
          @metadata_json = args[:metadata_json] if args.key?(:metadata_json)
          @name = args[:name] if args.key?(:name)
          @obfuscated_user_id = args[:obfuscated_user_id] if args.key?(:obfuscated_user_id)
          @quality_metadata = args[:quality_metadata] if args.key?(:quality_metadata)
          @runtime_annotations = args[:runtime_annotations] if args.key?(:runtime_annotations)
          @start_time = args[:start_time] if args.key?(:start_time)
          @transcript = args[:transcript] if args.key?(:transcript)
          @ttl = args[:ttl] if args.key?(:ttl)
          @turn_count = args[:turn_count] if args.key?(:turn_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Call-specific metadata.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata
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
      class GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource
        include Google::Apis::Core::Hashable
      
        # A Dialogflow source of conversation data.
        # Corresponds to the JSON property `dialogflowSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowSource]
        attr_accessor :dialogflow_source
      
        # A Cloud Storage source of conversation data.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1GcsSource]
        attr_accessor :gcs_source
      
        # Cloud Storage URI that points to a file that contains the conversation
        # metadata.
        # Corresponds to the JSON property `metadataUri`
        # @return [String]
        attr_accessor :metadata_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialogflow_source = args[:dialogflow_source] if args.key?(:dialogflow_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @metadata_uri = args[:metadata_uri] if args.key?(:metadata_uri)
        end
      end
      
      # One channel of conversation-level sentiment data.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment
        include Google::Apis::Core::Hashable
      
        # The channel of the audio that the data applies to.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentimentData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData]
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
      
      # Conversation-level silence data.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence
        include Google::Apis::Core::Hashable
      
        # Amount of time calculated to be in silence.
        # Corresponds to the JSON property `silenceDuration`
        # @return [String]
        attr_accessor :silence_duration
      
        # Percentage of the total conversation spent in silence.
        # Corresponds to the JSON property `silencePercentage`
        # @return [Float]
        attr_accessor :silence_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @silence_duration = args[:silence_duration] if args.key?(:silence_duration)
          @silence_percentage = args[:silence_percentage] if args.key?(:silence_percentage)
        end
      end
      
      # The call participant speaking for a given utterance.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant
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
      
      # Conversation metadata related to quality management.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata
        include Google::Apis::Core::Hashable
      
        # Information about agents involved in the call.
        # Corresponds to the JSON property `agentInfo`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo>]
        attr_accessor :agent_info
      
        # An arbitrary integer value indicating the customer's satisfaction rating.
        # Corresponds to the JSON property `customerSatisfactionRating`
        # @return [Fixnum]
        attr_accessor :customer_satisfaction_rating
      
        # Input only. The feedback labels associated with the conversation.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel>]
        attr_accessor :feedback_labels
      
        # An arbitrary string value specifying the menu path the customer took.
        # Corresponds to the JSON property `menuPath`
        # @return [String]
        attr_accessor :menu_path
      
        # The amount of time the customer waited to connect with an agent.
        # Corresponds to the JSON property `waitDuration`
        # @return [String]
        attr_accessor :wait_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_info = args[:agent_info] if args.key?(:agent_info)
          @customer_satisfaction_rating = args[:customer_satisfaction_rating] if args.key?(:customer_satisfaction_rating)
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @menu_path = args[:menu_path] if args.key?(:menu_path)
          @wait_duration = args[:wait_duration] if args.key?(:wait_duration)
        end
      end
      
      # Information about an agent involved in the conversation.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo
        include Google::Apis::Core::Hashable
      
        # A user-specified string representing the agent.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The agent type, e.g. HUMAN_AGENT.
        # Corresponds to the JSON property `agentType`
        # @return [String]
        attr_accessor :agent_type
      
        # The agent's deployment display name. Only applicable to automated agents.
        # Corresponds to the JSON property `deploymentDisplayName`
        # @return [String]
        attr_accessor :deployment_display_name
      
        # The agent's deployment ID. Only applicable to automated agents.
        # Corresponds to the JSON property `deploymentId`
        # @return [String]
        attr_accessor :deployment_id
      
        # The agent's name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A user-provided string indicating the outcome of the agent's segment of the
        # call.
        # Corresponds to the JSON property `dispositionCode`
        # @return [String]
        attr_accessor :disposition_code
      
        # The agent's location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A user-specified string representing the agent's team. Deprecated in favor of
        # the `teams` field.
        # Corresponds to the JSON property `team`
        # @return [String]
        attr_accessor :team
      
        # User-specified strings representing the agent's teams.
        # Corresponds to the JSON property `teams`
        # @return [Array<String>]
        attr_accessor :teams
      
        # The agent's version display name. Only applicable to automated agents.
        # Corresponds to the JSON property `versionDisplayName`
        # @return [String]
        attr_accessor :version_display_name
      
        # The agent's version ID. Only applicable to automated agents.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @agent_type = args[:agent_type] if args.key?(:agent_type)
          @deployment_display_name = args[:deployment_display_name] if args.key?(:deployment_display_name)
          @deployment_id = args[:deployment_id] if args.key?(:deployment_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @disposition_code = args[:disposition_code] if args.key?(:disposition_code)
          @location = args[:location] if args.key?(:location)
          @team = args[:team] if args.key?(:team)
          @teams = args[:teams] if args.key?(:teams)
          @version_display_name = args[:version_display_name] if args.key?(:version_display_name)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # Conversation summarization suggestion data.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData
        include Google::Apis::Core::Hashable
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # The confidence score of the summarization.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The name of the model that generates this summary. Format: projects/`project`/
        # locations/`location`/conversationModels/`conversation_model`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Agent Assist generator ID.
        # Corresponds to the JSON property `generatorId`
        # @return [String]
        attr_accessor :generator_id
      
        # A map that contains metadata about the summarization and the document from
        # which it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The summarization content that is concatenated into one string.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The summarization content that is divided into sections. The key is the
        # section's name and the value is the section's content. There is no specific
        # format for the key or value.
        # Corresponds to the JSON property `textSections`
        # @return [Hash<String,String>]
        attr_accessor :text_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @generator_id = args[:generator_id] if args.key?(:generator_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
          @text_sections = args[:text_sections] if args.key?(:text_sections)
        end
      end
      
      # A message representing the transcript of a conversation.
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript
        include Google::Apis::Core::Hashable
      
        # A list of sequential transcript segments that comprise the conversation.
        # Corresponds to the JSON property `transcriptSegments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment>]
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
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata]
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant]
        attr_accessor :segment_participant
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData]
        attr_accessor :sentiment
      
        # The text of this segment.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A list of the word-specific information for each word in the segment.
        # Corresponds to the JSON property `words`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo>]
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
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
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
      class GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo
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
      class GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Metadata for creating an issue.
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to create an issue.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest]
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
      
      # The request to create an issue.
      class GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest
        include Google::Apis::Core::Hashable
      
        # The issue resource.
        # Corresponds to the JSON property `issue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Issue]
        attr_accessor :issue
      
        # Required. The parent resource of the issue.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue = args[:issue] if args.key?(:issue)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Dataset resource represents a collection of conversations that may be bounded (
      # Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic
      # Dataset, e.g. live traffic, or agent training traffic)
      class GoogleCloudContactcenterinsightsV1alpha1Dataset
        include Google::Apis::Core::Hashable
      
        # Output only. Dataset create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Dataset description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name for the dataaset
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. Identifier. Resource name of the dataset. Format: projects/`project`
        # /locations/`location`/datasets/`dataset`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Option TTL for the dataset.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Dataset usage type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Dataset update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # The metadata for deleting a QaQuestionTag Resource.
      class GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for deleting a QaQuestionTag.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest]
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
      
      # The request for deleting a QaQuestionTag.
      class GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the QaQuestionTag to delete.
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
      
      # The data for a Dialogflow intent. Represents a detected intent in the
      # conversation, e.g. MAKES_PROMISE.
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent
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
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData
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
      class GoogleCloudContactcenterinsightsV1alpha1DialogflowSource
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
      
      # A dimension determines the grouping key for the query. In SQL terms, these
      # would be part of both the "SELECT" and "GROUP BY" clauses.
      class GoogleCloudContactcenterinsightsV1alpha1Dimension
        include Google::Apis::Core::Hashable
      
        # Metadata about the agent dimension.
        # Corresponds to the JSON property `agentDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata]
        attr_accessor :agent_dimension_metadata
      
        # Metadata about the client sentiment category dimension.
        # Corresponds to the JSON property `clientSentimentCategoryDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata]
        attr_accessor :client_sentiment_category_dimension_metadata
      
        # Metadata about the conversation profile dimension.
        # Corresponds to the JSON property `conversationProfileDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata]
        attr_accessor :conversation_profile_dimension_metadata
      
        # Metadata about the Conversational Agents playbook dimension.
        # Corresponds to the JSON property `conversationalAgentsPlaybookDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata]
        attr_accessor :conversational_agents_playbook_dimension_metadata
      
        # Metadata about the Conversational Agents tool dimension.
        # Corresponds to the JSON property `conversationalAgentsToolDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata]
        attr_accessor :conversational_agents_tool_dimension_metadata
      
        # The key of the dimension.
        # Corresponds to the JSON property `dimensionKey`
        # @return [String]
        attr_accessor :dimension_key
      
        # Metadata about the issue dimension.
        # Corresponds to the JSON property `issueDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata]
        attr_accessor :issue_dimension_metadata
      
        # Metadata about conversation labels.
        # Corresponds to the JSON property `labelDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata]
        attr_accessor :label_dimension_metadata
      
        # Metadata about the conversation medium dimension.
        # Corresponds to the JSON property `mediumDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata]
        attr_accessor :medium_dimension_metadata
      
        # Metadata about the QA question-answer dimension. This is useful for showing
        # the answer distribution for questions for a given scorecard.
        # Corresponds to the JSON property `qaQuestionAnswerDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata]
        attr_accessor :qa_question_answer_dimension_metadata
      
        # Metadata about the QA question dimension.
        # Corresponds to the JSON property `qaQuestionDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata]
        attr_accessor :qa_question_dimension_metadata
      
        # Metadata about the QA scorecard dimension.
        # Corresponds to the JSON property `qaScorecardDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata]
        attr_accessor :qa_scorecard_dimension_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_dimension_metadata = args[:agent_dimension_metadata] if args.key?(:agent_dimension_metadata)
          @client_sentiment_category_dimension_metadata = args[:client_sentiment_category_dimension_metadata] if args.key?(:client_sentiment_category_dimension_metadata)
          @conversation_profile_dimension_metadata = args[:conversation_profile_dimension_metadata] if args.key?(:conversation_profile_dimension_metadata)
          @conversational_agents_playbook_dimension_metadata = args[:conversational_agents_playbook_dimension_metadata] if args.key?(:conversational_agents_playbook_dimension_metadata)
          @conversational_agents_tool_dimension_metadata = args[:conversational_agents_tool_dimension_metadata] if args.key?(:conversational_agents_tool_dimension_metadata)
          @dimension_key = args[:dimension_key] if args.key?(:dimension_key)
          @issue_dimension_metadata = args[:issue_dimension_metadata] if args.key?(:issue_dimension_metadata)
          @label_dimension_metadata = args[:label_dimension_metadata] if args.key?(:label_dimension_metadata)
          @medium_dimension_metadata = args[:medium_dimension_metadata] if args.key?(:medium_dimension_metadata)
          @qa_question_answer_dimension_metadata = args[:qa_question_answer_dimension_metadata] if args.key?(:qa_question_answer_dimension_metadata)
          @qa_question_dimension_metadata = args[:qa_question_dimension_metadata] if args.key?(:qa_question_dimension_metadata)
          @qa_scorecard_dimension_metadata = args[:qa_scorecard_dimension_metadata] if args.key?(:qa_scorecard_dimension_metadata)
        end
      end
      
      # Metadata about the agent dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The agent's deployment display name. Only applicable to automated
        # agents. This will be populated for AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDeploymentDisplayName`
        # @return [String]
        attr_accessor :agent_deployment_display_name
      
        # Optional. The agent's deployment ID. Only applicable to automated agents. This
        # will be populated for AGENT and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDeploymentId`
        # @return [String]
        attr_accessor :agent_deployment_id
      
        # Optional. The agent's name This will be populated for AGENT, AGENT_TEAM,
        # AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDisplayName`
        # @return [String]
        attr_accessor :agent_display_name
      
        # Optional. A user-specified string representing the agent. This will be
        # populated for AGENT, AGENT_TEAM, AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID
        # dimensions.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Optional. A user-specified string representing the agent's team.
        # Corresponds to the JSON property `agentTeam`
        # @return [String]
        attr_accessor :agent_team
      
        # Optional. The agent's version display name. Only applicable to automated
        # agents. This will be populated for AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID
        # dimensions.
        # Corresponds to the JSON property `agentVersionDisplayName`
        # @return [String]
        attr_accessor :agent_version_display_name
      
        # Optional. The agent's version ID. Only applicable to automated agents. This
        # will be populated for AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentVersionId`
        # @return [String]
        attr_accessor :agent_version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_deployment_display_name = args[:agent_deployment_display_name] if args.key?(:agent_deployment_display_name)
          @agent_deployment_id = args[:agent_deployment_id] if args.key?(:agent_deployment_id)
          @agent_display_name = args[:agent_display_name] if args.key?(:agent_display_name)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @agent_team = args[:agent_team] if args.key?(:agent_team)
          @agent_version_display_name = args[:agent_version_display_name] if args.key?(:agent_version_display_name)
          @agent_version_id = args[:agent_version_id] if args.key?(:agent_version_id)
        end
      end
      
      # Metadata about the client sentiment category dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The client sentiment category.
        # Corresponds to the JSON property `sentimentCategory`
        # @return [String]
        attr_accessor :sentiment_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sentiment_category = args[:sentiment_category] if args.key?(:sentiment_category)
        end
      end
      
      # Metadata about the conversation profile dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation profile ID.
        # Corresponds to the JSON property `conversationProfileId`
        # @return [String]
        attr_accessor :conversation_profile_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile_id = args[:conversation_profile_id] if args.key?(:conversation_profile_id)
        end
      end
      
      # Metadata about the Conversational Agents playbook dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The dialogflow playbook display name.
        # Corresponds to the JSON property `playbookDisplayName`
        # @return [String]
        attr_accessor :playbook_display_name
      
        # Optional. The dialogflow playbook ID.
        # Corresponds to the JSON property `playbookId`
        # @return [String]
        attr_accessor :playbook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @playbook_display_name = args[:playbook_display_name] if args.key?(:playbook_display_name)
          @playbook_id = args[:playbook_id] if args.key?(:playbook_id)
        end
      end
      
      # Metadata about the Conversational Agents tool dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The dialogflow tool display name.
        # Corresponds to the JSON property `toolDisplayName`
        # @return [String]
        attr_accessor :tool_display_name
      
        # Optional. The dialogflow tool ID.
        # Corresponds to the JSON property `toolId`
        # @return [String]
        attr_accessor :tool_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_display_name = args[:tool_display_name] if args.key?(:tool_display_name)
          @tool_id = args[:tool_id] if args.key?(:tool_id)
        end
      end
      
      # Metadata about the issue dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # The issue display name.
        # Corresponds to the JSON property `issueDisplayName`
        # @return [String]
        attr_accessor :issue_display_name
      
        # The issue ID.
        # Corresponds to the JSON property `issueId`
        # @return [String]
        attr_accessor :issue_id
      
        # The parent issue model ID.
        # Corresponds to the JSON property `issueModelId`
        # @return [String]
        attr_accessor :issue_model_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_display_name = args[:issue_display_name] if args.key?(:issue_display_name)
          @issue_id = args[:issue_id] if args.key?(:issue_id)
          @issue_model_id = args[:issue_model_id] if args.key?(:issue_model_id)
        end
      end
      
      # Metadata about conversation labels.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The label key.
        # Corresponds to the JSON property `labelKey`
        # @return [String]
        attr_accessor :label_key
      
        # Optional. The label value.
        # Corresponds to the JSON property `labelValue`
        # @return [String]
        attr_accessor :label_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_key = args[:label_key] if args.key?(:label_key)
          @label_value = args[:label_value] if args.key?(:label_value)
        end
      end
      
      # Metadata about the conversation medium dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation medium. Currently supports : PHONE_CALL, CHAT.
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
      
      # Metadata about the QA question-answer dimension. This is useful for showing
      # the answer distribution for questions for a given scorecard.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `answerValue`
        # @return [String]
        attr_accessor :answer_value
      
        # Optional. The QA question ID.
        # Corresponds to the JSON property `qaQuestionId`
        # @return [String]
        attr_accessor :qa_question_id
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @qa_question_id = args[:qa_question_id] if args.key?(:qa_question_id)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
          @question_body = args[:question_body] if args.key?(:question_body)
        end
      end
      
      # Metadata about the QA question dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The QA question ID.
        # Corresponds to the JSON property `qaQuestionId`
        # @return [String]
        attr_accessor :qa_question_id
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question_id = args[:qa_question_id] if args.key?(:qa_question_id)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
          @question_body = args[:question_body] if args.key?(:question_body)
        end
      end
      
      # Metadata about the QA scorecard dimension.
      class GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
        end
      end
      
      # A customer-managed encryption key specification that can be applied to all
      # created resources (e.g. `Conversation`).
      class GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec
        include Google::Apis::Core::Hashable
      
        # Required. The name of customer-managed encryption key that is used to secure a
        # resource and its sub-resources. If empty, the resource is secured by our
        # default encryption key. Only the key in the same location as this resource is
        # allowed to be used for encryption. Format: `projects/`project`/locations/`
        # location`/keyRings/`keyRing`/cryptoKeys/`key``
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Immutable. The resource name of the encryption key specification resource.
        # Format: projects/`project`/locations/`location`/encryptionSpec
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The data for an entity annotation. Represents a phrase in the conversation
      # that is a known entity, such as a person, an organization, or location.
      class GoogleCloudContactcenterinsightsV1alpha1Entity
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData]
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
      class GoogleCloudContactcenterinsightsV1alpha1EntityMentionData
        include Google::Apis::Core::Hashable
      
        # The key of this entity in conversation entities. Can be used to retrieve the
        # exact `Entity` this mention is attached to.
        # Corresponds to the JSON property `entityUniqueId`
        # @return [String]
        attr_accessor :entity_unique_id
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SentimentData]
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
      
      # Metadata for an export insights operation.
      class GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata
        include Google::Apis::Core::Hashable
      
        # The number of conversations that were exported successfully.
        # Corresponds to the JSON property `completedExportCount`
        # @return [Fixnum]
        attr_accessor :completed_export_count
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of conversations that failed to be exported.
        # Corresponds to the JSON property `failedExportCount`
        # @return [Fixnum]
        attr_accessor :failed_export_count
      
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
          @completed_export_count = args[:completed_export_count] if args.key?(:completed_export_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failed_export_count = args[:failed_export_count] if args.key?(:failed_export_count)
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
      
        # Optional. Version of the export schema.
        # Corresponds to the JSON property `exportSchemaVersion`
        # @return [String]
        attr_accessor :export_schema_version
      
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
          @export_schema_version = args[:export_schema_version] if args.key?(:export_schema_version)
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
      
      # Metadata used for export issue model.
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to export an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest]
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
      
      # Request to export an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage Object URI to save the issue model to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination]
        attr_accessor :gcs_destination
      
        # Required. The issue model to export.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Google Cloud Storage Object URI to save the issue model to.
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. Format: `gs:///`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Response from export issue model
      class GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Agent Assist frequently-asked-question answer data.
      class GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData
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
      
      # Represents a conversation, resource, and label provided by the user. Can take
      # the form of a string label or a QaAnswer label. QaAnswer labels are used for
      # Quality AI example conversations. String labels are used for Topic Modeling.
      # AgentAssistSummary labels are used for Agent Assist Summarization.
      class GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the label.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # String label used for Topic Modeling.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Name of the resource to be labeled. Supported resources are: * `projects/`
        # project`/locations/`location`/qaScorecards/`scorecard`/revisions/`revision`/
        # qaQuestions/`question`` * `projects/`project`/locations/`location`/issueModels/
        # `issue_model`` * `projects/`project`/locations/`location`/generators/`
        # generator_id``
        # Corresponds to the JSON property `labeledResource`
        # @return [String]
        attr_accessor :labeled_resource
      
        # Immutable. Resource name of the FeedbackLabel. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/feedbackLabels/`
        # feedback_label`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `qaAnswerLabel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue]
        attr_accessor :qa_answer_label
      
        # Output only. Update time of the label.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @label = args[:label] if args.key?(:label)
          @labeled_resource = args[:labeled_resource] if args.key?(:labeled_resource)
          @name = args[:name] if args.key?(:name)
          @qa_answer_label = args[:qa_answer_label] if args.key?(:qa_answer_label)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Cloud Storage source of conversation data.
      class GoogleCloudContactcenterinsightsV1alpha1GcsSource
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
      class GoogleCloudContactcenterinsightsV1alpha1HoldData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata used for import issue model.
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to import an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest]
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
      
      # Request to import an issue model.
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, will create an issue model from the imported file
        # with randomly generated IDs for the issue model and corresponding issues.
        # Otherwise, replaces an existing model with the same ID as the file.
        # Corresponds to the JSON property `createNewModel`
        # @return [Boolean]
        attr_accessor :create_new_model
        alias_method :create_new_model?, :create_new_model
      
        # Google Cloud Storage Object URI to get the issue model file from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource]
        attr_accessor :gcs_source
      
        # Required. The parent resource of the issue model.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_new_model = args[:create_new_model] if args.key?(:create_new_model)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Google Cloud Storage Object URI to get the issue model file from.
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Required. Format: `gs:///`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Response from import issue model
      class GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelResponse
        include Google::Apis::Core::Hashable
      
        # The issue model resource.
        # Corresponds to the JSON property `issueModel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueModel]
        attr_accessor :issue_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_model = args[:issue_model] if args.key?(:issue_model)
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
      
        # Statistics for IngestConversations operation.
        # Corresponds to the JSON property `ingestConversationsStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats]
        attr_accessor :ingest_conversations_stats
      
        # Output only. Partial errors during ingest operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to ingest conversations.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest]
        attr_accessor :request
      
        # Output only. Stores the conversation resources produced by ingest sampling
        # operations.
        # Corresponds to the JSON property `sampledConversations`
        # @return [Array<String>]
        attr_accessor :sampled_conversations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ingest_conversations_stats = args[:ingest_conversations_stats] if args.key?(:ingest_conversations_stats)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @sampled_conversations = args[:sampled_conversations] if args.key?(:sampled_conversations)
        end
      end
      
      # Statistics for IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects skipped because another conversation with
        # the same transcript uri had already been ingested.
        # Corresponds to the JSON property `duplicatesSkippedCount`
        # @return [Fixnum]
        attr_accessor :duplicates_skipped_count
      
        # Output only. The number of objects which were unable to be ingested due to
        # errors. The errors are populated in the partial_errors field.
        # Corresponds to the JSON property `failedIngestCount`
        # @return [Fixnum]
        attr_accessor :failed_ingest_count
      
        # Output only. The number of objects processed during the ingest operation.
        # Corresponds to the JSON property `processedObjectCount`
        # @return [Fixnum]
        attr_accessor :processed_object_count
      
        # Output only. The number of new conversations added during this ingest
        # operation.
        # Corresponds to the JSON property `successfulIngestCount`
        # @return [Fixnum]
        attr_accessor :successful_ingest_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicates_skipped_count = args[:duplicates_skipped_count] if args.key?(:duplicates_skipped_count)
          @failed_ingest_count = args[:failed_ingest_count] if args.key?(:failed_ingest_count)
          @processed_object_count = args[:processed_object_count] if args.key?(:processed_object_count)
          @successful_ingest_count = args[:successful_ingest_count] if args.key?(:successful_ingest_count)
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
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig]
        attr_accessor :redaction_config
      
        # Optional. If set, this fields indicates the number of objects to ingest from
        # the Cloud Storage bucket. If empty, the entire bucket will be ingested. Unless
        # they are first deleted, conversations produced through sampling won't be
        # ingested by subsequent ingest requests.
        # Corresponds to the JSON property `sampleSize`
        # @return [Fixnum]
        attr_accessor :sample_size
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SpeechConfig]
        attr_accessor :speech_config
      
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
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @sample_size = args[:sample_size] if args.key?(:sample_size)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
          @transcript_object_config = args[:transcript_object_config] if args.key?(:transcript_object_config)
        end
      end
      
      # Configuration that applies to all conversations.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates which of the channels, 1 or 2, contains the agent. Note
        # that this must be set for conversations to be properly displayed and analyzed.
        # Corresponds to the JSON property `agentChannel`
        # @return [Fixnum]
        attr_accessor :agent_channel
      
        # Optional. An opaque, user-specified string representing a human agent who
        # handled all conversations in the import. Note that this will be overridden if
        # per-conversation metadata is provided through the `metadata_bucket_uri`.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Optional. Indicates which of the channels, 1 or 2, contains the agent. Note
        # that this must be set for conversations to be properly displayed and analyzed.
        # Corresponds to the JSON property `customerChannel`
        # @return [Fixnum]
        attr_accessor :customer_channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_channel = args[:agent_channel] if args.key?(:agent_channel)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @customer_channel = args[:customer_channel] if args.key?(:customer_channel)
        end
      end
      
      # Configuration for Cloud Storage bucket sources.
      class GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Optional. The Cloud Storage path to the conversation audio file. Note that: [1]
        # Audio files will be transcribed if not already. [2] Audio files and
        # transcript files must be in separate buckets / folders. [3] A source file and
        # its corresponding audio file must share the same name to be properly ingested,
        # E.g. `gs://bucket/transcript/conversation1.json` and `gs://bucket/audio/
        # conversation1.mp3`.
        # Corresponds to the JSON property `audioBucketUri`
        # @return [String]
        attr_accessor :audio_bucket_uri
      
        # Optional. Specifies the type of the objects in `bucket_uri`. Avoid passing
        # this. This is inferred from the `transcript_bucket_uri`, `audio_bucket_uri`.
        # Corresponds to the JSON property `bucketObjectType`
        # @return [String]
        attr_accessor :bucket_object_type
      
        # Optional. The Cloud Storage bucket containing source objects. Avoid passing
        # this. Pass this through one of `transcript_bucket_uri` or `audio_bucket_uri`.
        # Corresponds to the JSON property `bucketUri`
        # @return [String]
        attr_accessor :bucket_uri
      
        # Optional. Custom keys to extract as conversation labels from metadata files in
        # `metadata_bucket_uri`. Keys not included in this field will be ignored. Note
        # that there is a limit of 100 labels per conversation.
        # Corresponds to the JSON property `customMetadataKeys`
        # @return [Array<String>]
        attr_accessor :custom_metadata_keys
      
        # Optional. The Cloud Storage path to the conversation metadata. Note that: [1]
        # Metadata files are expected to be in JSON format. [2] Metadata and source
        # files (transcripts or audio) must be in separate buckets / folders. [3] A
        # source file and its corresponding metadata file must share the same name to be
        # properly ingested, E.g. `gs://bucket/audio/conversation1.mp3` and `gs://bucket/
        # metadata/conversation1.json`.
        # Corresponds to the JSON property `metadataBucketUri`
        # @return [String]
        attr_accessor :metadata_bucket_uri
      
        # Optional. The Cloud Storage path to the conversation transcripts. Note that: [
        # 1] Transcript files are expected to be in JSON format. [2] Transcript, audio,
        # metadata files must be in separate buckets / folders. [3] A source file and
        # its corresponding metadata file must share the same name to be properly
        # ingested, E.g. `gs://bucket/audio/conversation1.mp3` and `gs://bucket/metadata/
        # conversation1.json`.
        # Corresponds to the JSON property `transcriptBucketUri`
        # @return [String]
        attr_accessor :transcript_bucket_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_bucket_uri = args[:audio_bucket_uri] if args.key?(:audio_bucket_uri)
          @bucket_object_type = args[:bucket_object_type] if args.key?(:bucket_object_type)
          @bucket_uri = args[:bucket_uri] if args.key?(:bucket_uri)
          @custom_metadata_keys = args[:custom_metadata_keys] if args.key?(:custom_metadata_keys)
          @metadata_bucket_uri = args[:metadata_bucket_uri] if args.key?(:metadata_bucket_uri)
          @transcript_bucket_uri = args[:transcript_bucket_uri] if args.key?(:transcript_bucket_uri)
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
      
      # Metadata for initializing a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during initializing operation that might cause the operation
        # output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to initialize a location-level encryption specification.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest]
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
      
      # The request to initialize a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest
        include Google::Apis::Core::Hashable
      
        # A customer-managed encryption key specification that can be applied to all
        # created resources (e.g. `Conversation`).
        # Corresponds to the JSON property `encryptionSpec`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec]
        attr_accessor :encryption_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_spec = args[:encryption_spec] if args.key?(:encryption_spec)
        end
      end
      
      # The response to initialize a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecResponse
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
      class GoogleCloudContactcenterinsightsV1alpha1Intent
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
      class GoogleCloudContactcenterinsightsV1alpha1IntentMatchData
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
      class GoogleCloudContactcenterinsightsV1alpha1InterruptionData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The issue resource.
      class GoogleCloudContactcenterinsightsV1alpha1Issue
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this issue was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Representative description of the issue.
        # Corresponds to the JSON property `displayDescription`
        # @return [String]
        attr_accessor :display_description
      
        # The representative name for the issue.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The resource name of the issue. Format: projects/`project`/
        # locations/`location`/issueModels/`issue_model`/issues/`issue`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Resource names of the sample representative utterances that match
        # to this issue.
        # Corresponds to the JSON property `sampleUtterances`
        # @return [Array<String>]
        attr_accessor :sample_utterances
      
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
          @display_description = args[:display_description] if args.key?(:display_description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @sample_utterances = args[:sample_utterances] if args.key?(:sample_utterances)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about the issue.
      class GoogleCloudContactcenterinsightsV1alpha1IssueAssignment
        include Google::Apis::Core::Hashable
      
        # Immutable. Display name of the assigned issue. This field is set at time of
        # analysis and immutable since then.
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
      class GoogleCloudContactcenterinsightsV1alpha1IssueMatchData
        include Google::Apis::Core::Hashable
      
        # Information about the issue.
        # Corresponds to the JSON property `issueAssignment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueAssignment]
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
      
        # Output only. Number of issues in this issue model.
        # Corresponds to the JSON property `issueCount`
        # @return [Fixnum]
        attr_accessor :issue_count
      
        # Language of the model.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Type of the model.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
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
          @issue_count = args[:issue_count] if args.key?(:issue_count)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model_type = args[:model_type] if args.key?(:model_type)
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
        # subset. Refer to https://cloud.google.com/contact-center/insights/docs/
        # filtering for details.
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
      
      # Issue Modeling result on a conversation.
      class GoogleCloudContactcenterinsightsV1alpha1IssueModelResult
        include Google::Apis::Core::Hashable
      
        # Issue model that generates the result. Format: projects/`project`/locations/`
        # location`/issueModels/`issue_model`
        # Corresponds to the JSON property `issueModel`
        # @return [String]
        attr_accessor :issue_model
      
        # All the matched issues.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1IssueAssignment>]
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
      
      # The response for listing all feedback labels.
      class GoogleCloudContactcenterinsightsV1alpha1ListAllFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The feedback labels that match the request.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel>]
        attr_accessor :feedback_labels
      
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
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for listing feedback labels.
      class GoogleCloudContactcenterinsightsV1alpha1ListFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The feedback labels that match the request.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel>]
        attr_accessor :feedback_labels
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The data for a matched phrase matcher. Represents information identifying a
      # phrase matcher for a given match.
      class GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData
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
      
      # An answer to a QaQuestion.
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswer
        include Google::Apis::Core::Hashable
      
        # Lists all answer sources containing one or more answer values of a specific
        # source type, e.g., all system-generated answer sources, or all manual edit
        # answer sources.
        # Corresponds to the JSON property `answerSources`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource>]
        attr_accessor :answer_sources
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `answerValue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue]
        attr_accessor :answer_value
      
        # The conversation the answer applies to.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The QaQuestion answered by this answer.
        # Corresponds to the JSON property `qaQuestion`
        # @return [String]
        attr_accessor :qa_question
      
        # Question text. E.g., "Did the agent greet the customer?"
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        # User-defined list of arbitrary tags. Matches the value from QaScorecard.
        # ScorecardQuestion.tags. Used for grouping/organization and for weighting the
        # score of each answer.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_sources = args[:answer_sources] if args.key?(:answer_sources)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @conversation = args[:conversation] if args.key?(:conversation)
          @qa_question = args[:qa_question] if args.key?(:qa_question)
          @question_body = args[:question_body] if args.key?(:question_body)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # A question may have multiple answers from varying sources, one of which
      # becomes the "main" answer above. AnswerSource represents each individual
      # answer.
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource
        include Google::Apis::Core::Hashable
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `answerValue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue]
        attr_accessor :answer_value
      
        # What created the answer.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
      # the possible answer values for a question.
      class GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue
        include Google::Apis::Core::Hashable
      
        # Boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A short string used as an identifier. Matches the value used in QaQuestion.
        # AnswerChoice.key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A value of "Not Applicable (N/A)". Should only ever be `true`.
        # Corresponds to the JSON property `naValue`
        # @return [Boolean]
        attr_accessor :na_value
        alias_method :na_value?, :na_value
      
        # Output only. Normalized score of the questions. Calculated as score /
        # potential_score.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # Numerical value.
        # Corresponds to the JSON property `numValue`
        # @return [Float]
        attr_accessor :num_value
      
        # Output only. The maximum potential score of the question.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Output only. Numerical score of the answer.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Output only. A value of "Skip". If provided, this field may only be set to `
        # true`. If a question receives this answer, it will be excluded from any score
        # calculations. This would mean that the question was not evaluated.
        # Corresponds to the JSON property `skipValue`
        # @return [Boolean]
        attr_accessor :skip_value
        alias_method :skip_value?, :skip_value
      
        # String value.
        # Corresponds to the JSON property `strValue`
        # @return [String]
        attr_accessor :str_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @key = args[:key] if args.key?(:key)
          @na_value = args[:na_value] if args.key?(:na_value)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @num_value = args[:num_value] if args.key?(:num_value)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @score = args[:score] if args.key?(:score)
          @skip_value = args[:skip_value] if args.key?(:skip_value)
          @str_value = args[:str_value] if args.key?(:str_value)
        end
      end
      
      # A tag is a resource which aims to categorize a set of questions across
      # multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.
      class GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the question tag was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. A user-specified display name for the tag.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Resource name for the QaQuestionTag Format projects/`project`/
        # locations/`location`/qaQuestionTags/`qa_question_tag` In the above format, the
        # last segment, i.e., qa_question_tag, is a server-generated ID corresponding to
        # the tag resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The list of Scorecard Question IDs that the tag applies to. Each
        # QaQuestionId is represented as a full resource name containing the Question ID.
        # Lastly, Since a tag may not necessarily be referenced by any Scorecard
        # Questions, we treat this field as optional.
        # Corresponds to the JSON property `qaQuestionIds`
        # @return [Array<String>]
        attr_accessor :qa_question_ids
      
        # Output only. The most recent time at which the question tag was updated.
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
          @qa_question_ids = args[:qa_question_ids] if args.key?(:qa_question_ids)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The results of scoring a single conversation against a QaScorecard. Contains a
      # collection of QaAnswers and aggregate score.
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult
        include Google::Apis::Core::Hashable
      
        # ID of the agent that handled the conversation.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The conversation scored by this result.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The name of the scorecard result. Format: projects/`project`/
        # locations/`location`/qaScorecardResults/`qa_scorecard_result`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normalized score, which is the score divided by the potential score. Any
        # manual edits are included if they exist.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The maximum potential overall score of the scorecard. Any questions answered
        # using `na_value` are excluded from this calculation.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Set of QaAnswers represented in the result.
        # Corresponds to the JSON property `qaAnswers`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaAnswer>]
        attr_accessor :qa_answers
      
        # The QaScorecardRevision scored by this result.
        # Corresponds to the JSON property `qaScorecardRevision`
        # @return [String]
        attr_accessor :qa_scorecard_revision
      
        # Collection of tags and their scores.
        # Corresponds to the JSON property `qaTagResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult>]
        attr_accessor :qa_tag_results
      
        # The overall numerical score of the result, incorporating any manual edits if
        # they exist.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # List of all individual score sets.
        # Corresponds to the JSON property `scoreSources`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource>]
        attr_accessor :score_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @qa_answers = args[:qa_answers] if args.key?(:qa_answers)
          @qa_scorecard_revision = args[:qa_scorecard_revision] if args.key?(:qa_scorecard_revision)
          @qa_tag_results = args[:qa_tag_results] if args.key?(:qa_tag_results)
          @score = args[:score] if args.key?(:score)
          @score_sources = args[:score_sources] if args.key?(:score_sources)
        end
      end
      
      # Tags and their corresponding results.
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult
        include Google::Apis::Core::Hashable
      
        # The normalized score the tag applies to.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The potential score the tag applies to.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # The score the tag applies to.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # The tag the score applies to.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @score = args[:score] if args.key?(:score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A scorecard result may have multiple sets of scores from varying sources, one
      # of which becomes the "main" answer above. A ScoreSource represents each
      # individual set of scores.
      class GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource
        include Google::Apis::Core::Hashable
      
        # The normalized score, which is the score divided by the potential score.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The maximum potential overall score of the scorecard. Any questions answered
        # using `na_value` are excluded from this calculation.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Collection of tags and their scores.
        # Corresponds to the JSON property `qaTagResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult>]
        attr_accessor :qa_tag_results
      
        # The overall numerical score of the result.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # What created the score.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @qa_tag_results = args[:qa_tag_results] if args.key?(:qa_tag_results)
          @score = args[:score] if args.key?(:score)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # The metadata from querying metrics.
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsMetadata
        include Google::Apis::Core::Hashable
      
        # Whether the result rows were truncated because the result row size is too
        # large to materialize.
        # Corresponds to the JSON property `resultIsTruncated`
        # @return [Boolean]
        attr_accessor :result_is_truncated
        alias_method :result_is_truncated?, :result_is_truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_is_truncated = args[:result_is_truncated] if args.key?(:result_is_truncated)
        end
      end
      
      # The response for querying metrics.
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponse
        include Google::Apis::Core::Hashable
      
        # Required. The location of the data. "projects/`project`/locations/`location`"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A slice contains a total and (if the request specified a time granularity) a
        # time series of metric values. Each slice contains a unique combination of the
        # cardinality of dimensions from the request. For example, if the request
        # specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the
        # data used to compute the metrics has 2 issues in total), the response will
        # have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[
        # Issue 2]
        # Corresponds to the JSON property `macroAverageSlice`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice]
        attr_accessor :macro_average_slice
      
        # A slice contains a total and (if the request specified a time granularity) a
        # time series of metric values. Each slice contains a unique combination of the
        # cardinality of dimensions from the request.
        # Corresponds to the JSON property `slices`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice>]
        attr_accessor :slices
      
        # The metrics last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @macro_average_slice = args[:macro_average_slice] if args.key?(:macro_average_slice)
          @slices = args[:slices] if args.key?(:slices)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A slice contains a total and (if the request specified a time granularity) a
      # time series of metric values. Each slice contains a unique combination of the
      # cardinality of dimensions from the request. For example, if the request
      # specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the
      # data used to compute the metrics has 2 issues in total), the response will
      # have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[
      # Issue 2]
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice
        include Google::Apis::Core::Hashable
      
        # A unique combination of dimensions that this slice represents.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Dimension>]
        attr_accessor :dimensions
      
        # A time series of metric values.
        # Corresponds to the JSON property `timeSeries`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries]
        attr_accessor :time_series
      
        # A data point contains the metric values mapped to an interval.
        # Corresponds to the JSON property `total`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint]
        attr_accessor :total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @time_series = args[:time_series] if args.key?(:time_series)
          @total = args[:total] if args.key?(:total)
        end
      end
      
      # A data point contains the metric values mapped to an interval.
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint
        include Google::Apis::Core::Hashable
      
        # The measure related to conversations.
        # Corresponds to the JSON property `conversationMeasure`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure]
        attr_accessor :conversation_measure
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_measure = args[:conversation_measure] if args.key?(:conversation_measure)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # The measure related to conversations.
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure
        include Google::Apis::Core::Hashable
      
        # The average agent's sentiment score.
        # Corresponds to the JSON property `averageAgentSentimentScore`
        # @return [Float]
        attr_accessor :average_agent_sentiment_score
      
        # The average client's sentiment score.
        # Corresponds to the JSON property `averageClientSentimentScore`
        # @return [Float]
        attr_accessor :average_client_sentiment_score
      
        # The average customer satisfaction rating.
        # Corresponds to the JSON property `averageCustomerSatisfactionRating`
        # @return [Float]
        attr_accessor :average_customer_satisfaction_rating
      
        # The average duration.
        # Corresponds to the JSON property `averageDuration`
        # @return [String]
        attr_accessor :average_duration
      
        # The average normalized QA score for a scorecard. When computing the average
        # across a set of conversations, if a conversation has been evaluated with
        # multiple revisions of a scorecard, only the latest revision results will be
        # used. Will exclude 0's in average calculation. Will be only populated if the
        # request specifies a dimension of QA_SCORECARD_ID.
        # Corresponds to the JSON property `averageQaNormalizedScore`
        # @return [Float]
        attr_accessor :average_qa_normalized_score
      
        # Average QA normalized score averaged for questions averaged across all
        # revisions of the parent scorecard. Will be only populated if the request
        # specifies a dimension of QA_QUESTION_ID.
        # Corresponds to the JSON property `averageQaQuestionNormalizedScore`
        # @return [Float]
        attr_accessor :average_qa_question_normalized_score
      
        # The average silence percentage.
        # Corresponds to the JSON property `averageSilencePercentage`
        # @return [Float]
        attr_accessor :average_silence_percentage
      
        # The average turn count.
        # Corresponds to the JSON property `averageTurnCount`
        # @return [Float]
        attr_accessor :average_turn_count
      
        # The conversation count.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # Average QA normalized score for all the tags.
        # Corresponds to the JSON property `qaTagScores`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore>]
        attr_accessor :qa_tag_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_agent_sentiment_score = args[:average_agent_sentiment_score] if args.key?(:average_agent_sentiment_score)
          @average_client_sentiment_score = args[:average_client_sentiment_score] if args.key?(:average_client_sentiment_score)
          @average_customer_satisfaction_rating = args[:average_customer_satisfaction_rating] if args.key?(:average_customer_satisfaction_rating)
          @average_duration = args[:average_duration] if args.key?(:average_duration)
          @average_qa_normalized_score = args[:average_qa_normalized_score] if args.key?(:average_qa_normalized_score)
          @average_qa_question_normalized_score = args[:average_qa_question_normalized_score] if args.key?(:average_qa_question_normalized_score)
          @average_silence_percentage = args[:average_silence_percentage] if args.key?(:average_silence_percentage)
          @average_turn_count = args[:average_turn_count] if args.key?(:average_turn_count)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @qa_tag_scores = args[:qa_tag_scores] if args.key?(:qa_tag_scores)
        end
      end
      
      # Average QA normalized score for the tag.
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        include Google::Apis::Core::Hashable
      
        # Average tag normalized score per tag.
        # Corresponds to the JSON property `averageTagNormalizedScore`
        # @return [Float]
        attr_accessor :average_tag_normalized_score
      
        # Tag name.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_tag_normalized_score = args[:average_tag_normalized_score] if args.key?(:average_tag_normalized_score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A time series of metric values.
      class GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries
        include Google::Apis::Core::Hashable
      
        # The data points that make up the time series .
        # Corresponds to the JSON property `dataPoints`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint>]
        attr_accessor :data_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_points = args[:data_points] if args.key?(:data_points)
        end
      end
      
      # The metadata for querying performance overview.
      class GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response for querying performance overview.
      class GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewResponse
        include Google::Apis::Core::Hashable
      
        # The summary text of the performance.
        # Corresponds to the JSON property `summaryText`
        # @return [String]
        attr_accessor :summary_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary_text = args[:summary_text] if args.key?(:summary_text)
        end
      end
      
      # DLP resources used for redaction while ingesting conversations. DLP settings
      # are applied to conversations ingested from the `UploadConversation` and `
      # IngestConversations` endpoints, including conversation coming from CCAI
      # Platform. They are not applied to conversations ingested from the `
      # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
      # integrations. When using Dialogflow / Agent Assist runtime integrations,
      # redaction should be performed in Dialogflow / Agent Assist.
      class GoogleCloudContactcenterinsightsV1alpha1RedactionConfig
        include Google::Apis::Core::Hashable
      
        # The fully-qualified DLP deidentify template resource name. Format: `projects/`
        # project`/deidentifyTemplates/`template``
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # The fully-qualified DLP inspect template resource name. Format: `projects/`
        # project`/locations/`location`/inspectTemplates/`template``
        # Corresponds to the JSON property `inspectTemplate`
        # @return [String]
        attr_accessor :inspect_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
        end
      end
      
      # An annotation that was generated during the customer and agent interaction.
      class GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the annotation. Format: projects/`project`/locations/`
        # location`/conversationDatasets/`dataset`/conversationDataItems/`data_item`/
        # conversationAnnotations/`annotation`
        # Corresponds to the JSON property `annotationId`
        # @return [String]
        attr_accessor :annotation_id
      
        # The feedback that the customer has about a certain answer in the conversation.
        # Corresponds to the JSON property `answerFeedback`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback]
        attr_accessor :answer_feedback
      
        # Agent Assist Article Suggestion data.
        # Corresponds to the JSON property `articleSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData]
        attr_accessor :article_suggestion
      
        # Conversation summarization suggestion data.
        # Corresponds to the JSON property `conversationSummarizationSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData]
        attr_accessor :conversation_summarization_suggestion
      
        # The time at which this annotation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Dialogflow interaction data.
        # Corresponds to the JSON property `dialogflowInteraction`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData]
        attr_accessor :dialogflow_interaction
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `endBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary]
        attr_accessor :end_boundary
      
        # Agent Assist frequently-asked-question answer data.
        # Corresponds to the JSON property `faqAnswer`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData]
        attr_accessor :faq_answer
      
        # Agent Assist Smart Compose suggestion data.
        # Corresponds to the JSON property `smartComposeSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData]
        attr_accessor :smart_compose_suggestion
      
        # Agent Assist Smart Reply data.
        # Corresponds to the JSON property `smartReply`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SmartReplyData]
        attr_accessor :smart_reply
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `startBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary]
        attr_accessor :start_boundary
      
        # Explicit input used for generating the answer
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput]
        attr_accessor :user_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_id = args[:annotation_id] if args.key?(:annotation_id)
          @answer_feedback = args[:answer_feedback] if args.key?(:answer_feedback)
          @article_suggestion = args[:article_suggestion] if args.key?(:article_suggestion)
          @conversation_summarization_suggestion = args[:conversation_summarization_suggestion] if args.key?(:conversation_summarization_suggestion)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dialogflow_interaction = args[:dialogflow_interaction] if args.key?(:dialogflow_interaction)
          @end_boundary = args[:end_boundary] if args.key?(:end_boundary)
          @faq_answer = args[:faq_answer] if args.key?(:faq_answer)
          @smart_compose_suggestion = args[:smart_compose_suggestion] if args.key?(:smart_compose_suggestion)
          @smart_reply = args[:smart_reply] if args.key?(:smart_reply)
          @start_boundary = args[:start_boundary] if args.key?(:start_boundary)
          @user_input = args[:user_input] if args.key?(:user_input)
        end
      end
      
      # Explicit input used for generating the answer
      class GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput
        include Google::Apis::Core::Hashable
      
        # The resource name of associated generator. Format: `projects//locations//
        # generators/`
        # Corresponds to the JSON property `generatorName`
        # @return [String]
        attr_accessor :generator_name
      
        # Query text. Article Search uses this to store the input query used to generate
        # the search results.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Query source for the answer.
        # Corresponds to the JSON property `querySource`
        # @return [String]
        attr_accessor :query_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_name = args[:generator_name] if args.key?(:generator_name)
          @query = args[:query] if args.key?(:query)
          @query_source = args[:query_source] if args.key?(:query_source)
        end
      end
      
      # The metadata for an SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Partial errors during sample conversations operation that might
        # cause the operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to sample conversations to a dataset.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest]
        attr_accessor :request
      
        # Statistics for SampleConversations operation.
        # Corresponds to the JSON property `sampleConversationsStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats]
        attr_accessor :sample_conversations_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @sample_conversations_stats = args[:sample_conversations_stats] if args.key?(:sample_conversations_stats)
        end
      end
      
      # Statistics for SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects which were unable to be sampled due to
        # errors. The errors are populated in the partial_errors field.
        # Corresponds to the JSON property `failedSampleCount`
        # @return [Fixnum]
        attr_accessor :failed_sample_count
      
        # Output only. The number of new conversations added during this sample
        # operation.
        # Corresponds to the JSON property `successfulSampleCount`
        # @return [Fixnum]
        attr_accessor :successful_sample_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_sample_count = args[:failed_sample_count] if args.key?(:failed_sample_count)
          @successful_sample_count = args[:successful_sample_count] if args.key?(:successful_sample_count)
        end
      end
      
      # The request to sample conversations to a dataset.
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Dataset resource represents a collection of conversations that may be bounded (
        # Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic
        # Dataset, e.g. live traffic, or agent training traffic)
        # Corresponds to the JSON property `destinationDataset`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Dataset]
        attr_accessor :destination_dataset
      
        # Required. The parent resource of the dataset.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Message for sampling conversations.
        # Corresponds to the JSON property `sampleRule`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SampleRule]
        attr_accessor :sample_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
          @parent = args[:parent] if args.key?(:parent)
          @sample_rule = args[:sample_rule] if args.key?(:sample_rule)
        end
      end
      
      # The response to an SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1alpha1SampleConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for sampling conversations.
      class GoogleCloudContactcenterinsightsV1alpha1SampleRule
        include Google::Apis::Core::Hashable
      
        # To specify the filter for the conversions that should apply this sample rule.
        # An empty filter means this sample rule applies to all conversations.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Optional. Group by dimension to sample the conversation. If no dimension is
        # provided, the sampling will be applied to the project level. Current supported
        # dimensions is 'quality_metadata.agent_info.agent_id'.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Percentage of conversations that we should sample based on the dimension
        # between [0, 100].
        # Corresponds to the JSON property `samplePercentage`
        # @return [Float]
        attr_accessor :sample_percentage
      
        # Number of the conversations that we should sample based on the dimension.
        # Corresponds to the JSON property `sampleRow`
        # @return [Fixnum]
        attr_accessor :sample_row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @dimension = args[:dimension] if args.key?(:dimension)
          @sample_percentage = args[:sample_percentage] if args.key?(:sample_percentage)
          @sample_row = args[:sample_row] if args.key?(:sample_row)
        end
      end
      
      # The data for a sentiment annotation.
      class GoogleCloudContactcenterinsightsV1alpha1SentimentData
        include Google::Apis::Core::Hashable
      
        # A non-negative number from 0 to infinity which represents the absolute
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
      
      # The data for a silence annotation.
      class GoogleCloudContactcenterinsightsV1alpha1SilenceData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Agent Assist Smart Compose suggestion data.
      class GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData
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
      class GoogleCloudContactcenterinsightsV1alpha1SmartReplyData
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
      
      # Speech-to-Text configuration. Speech-to-Text settings are applied to
      # conversations ingested from the `UploadConversation` and `IngestConversations`
      # endpoints, including conversation coming from CCAI Platform. They are not
      # applied to conversations ingested from the `CreateConversation` endpoint.
      class GoogleCloudContactcenterinsightsV1alpha1SpeechConfig
        include Google::Apis::Core::Hashable
      
        # Whether to disable word time offsets. If true, the `enable_word_time_offsets`
        # field in the recognition config will be set to false.
        # Corresponds to the JSON property `disableWordTimeOffsets`
        # @return [Boolean]
        attr_accessor :disable_word_time_offsets
        alias_method :disable_word_time_offsets?, :disable_word_time_offsets
      
        # The fully-qualified Speech Recognizer resource name. Format: `projects/`
        # project_id`/locations/`location`/recognizer/`recognizer``
        # Corresponds to the JSON property `speechRecognizer`
        # @return [String]
        attr_accessor :speech_recognizer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_word_time_offsets = args[:disable_word_time_offsets] if args.key?(:disable_word_time_offsets)
          @speech_recognizer = args[:speech_recognizer] if args.key?(:speech_recognizer)
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
      
      # The metadata for updating a QaQuestionTag Resource.
      class GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for updating a QaQuestionTag.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest]
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
      
      # The request for updating a QaQuestionTag.
      class GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest
        include Google::Apis::Core::Hashable
      
        # A tag is a resource which aims to categorize a set of questions across
        # multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.
        # Corresponds to the JSON property `qaQuestionTag`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag]
        attr_accessor :qa_question_tag
      
        # Optional. The list of fields to be updated. All possible fields can be updated
        # by passing `*`, or a subset of the following updateable fields can be provided:
        # * `qa_question_tag_name` - the name of the tag * `qa_question_ids` - the list
        # of questions the tag applies to
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question_tag = args[:qa_question_tag] if args.key?(:qa_question_tag)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The metadata for an `UploadConversation` operation.
      class GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The operation name for a successfully created analysis operation,
        # if any.
        # Corresponds to the JSON property `analysisOperation`
        # @return [String]
        attr_accessor :analysis_operation
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `appliedRedactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig]
        attr_accessor :applied_redaction_config
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to upload a conversation.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_operation = args[:analysis_operation] if args.key?(:analysis_operation)
          @applied_redaction_config = args[:applied_redaction_config] if args.key?(:applied_redaction_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Request to upload a conversation.
      class GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest
        include Google::Apis::Core::Hashable
      
        # The conversation resource.
        # Corresponds to the JSON property `conversation`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1Conversation]
        attr_accessor :conversation
      
        # Optional. A unique ID for the new conversation. This ID will become the final
        # component of the conversation's resource name. If no ID is specified, a server-
        # generated ID will be used. This value should be 4-64 characters and must match
        # the regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`
        # Corresponds to the JSON property `conversationId`
        # @return [String]
        attr_accessor :conversation_id
      
        # Required. The parent resource of the conversation.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1RedactionConfig]
        attr_accessor :redaction_config
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1alpha1SpeechConfig]
        attr_accessor :speech_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @conversation_id = args[:conversation_id] if args.key?(:conversation_id)
          @parent = args[:parent] if args.key?(:parent)
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
        end
      end
      
      # The analysis resource.
      class GoogleCloudContactcenterinsightsV1mainAnalysis
        include Google::Apis::Core::Hashable
      
        # The result of an analysis.
        # Corresponds to the JSON property `analysisResult`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnalysisResult]
        attr_accessor :analysis_result
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The result of an analysis.
      class GoogleCloudContactcenterinsightsV1mainAnalysisResult
        include Google::Apis::Core::Hashable
      
        # Call-specific metadata created during analysis.
        # Corresponds to the JSON property `callAnalysisMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnalysisResultCallAnalysisMetadata]
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
      class GoogleCloudContactcenterinsightsV1mainAnalysisResultCallAnalysisMetadata
        include Google::Apis::Core::Hashable
      
        # A list of call annotations that apply to this call.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainCallAnnotation>]
        attr_accessor :annotations
      
        # All the entities in the call.
        # Corresponds to the JSON property `entities`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainEntity>]
        attr_accessor :entities
      
        # All the matched intents in the call.
        # Corresponds to the JSON property `intents`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIntent>]
        attr_accessor :intents
      
        # Issue Modeling result on a conversation.
        # Corresponds to the JSON property `issueModelResult`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueModelResult]
        attr_accessor :issue_model_result
      
        # All the matched phrase matchers in the call.
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainPhraseMatchData>]
        attr_accessor :phrase_matchers
      
        # Results of scoring QaScorecards.
        # Corresponds to the JSON property `qaScorecardResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaScorecardResult>]
        attr_accessor :qa_scorecard_results
      
        # Overall conversation-level sentiment for each channel of the call.
        # Corresponds to the JSON property `sentiments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationLevelSentiment>]
        attr_accessor :sentiments
      
        # Conversation-level silence data.
        # Corresponds to the JSON property `silence`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationLevelSilence]
        attr_accessor :silence
      
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
          @qa_scorecard_results = args[:qa_scorecard_results] if args.key?(:qa_scorecard_results)
          @sentiments = args[:sentiments] if args.key?(:sentiments)
          @silence = args[:silence] if args.key?(:silence)
        end
      end
      
      # A point in a conversation that marks the start or the end of an annotation.
      class GoogleCloudContactcenterinsightsV1mainAnnotationBoundary
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
      
      # Selector of all available annotators and phrase matchers to run.
      class GoogleCloudContactcenterinsightsV1mainAnnotatorSelector
        include Google::Apis::Core::Hashable
      
        # The issue model to run. If not provided, the most recently deployed topic
        # model will be used. The provided issue model will only be used for inference
        # if the issue model is deployed and if run_issue_model_annotator is set to true.
        # If more than one issue model is provided, only the first provided issue model
        # will be used for inference.
        # Corresponds to the JSON property `issueModels`
        # @return [Array<String>]
        attr_accessor :issue_models
      
        # The list of phrase matchers to run. If not provided, all active phrase
        # matchers will be used. If inactive phrase matchers are provided, they will not
        # be used. Phrase matchers will be run only if run_phrase_matcher_annotator is
        # set to true. Format: projects/`project`/locations/`location`/phraseMatchers/`
        # phrase_matcher`
        # Corresponds to the JSON property `phraseMatchers`
        # @return [Array<String>]
        attr_accessor :phrase_matchers
      
        # Configuration for the QA feature.
        # Corresponds to the JSON property `qaConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfig]
        attr_accessor :qa_config
      
        # Whether to run the entity annotator.
        # Corresponds to the JSON property `runEntityAnnotator`
        # @return [Boolean]
        attr_accessor :run_entity_annotator
        alias_method :run_entity_annotator?, :run_entity_annotator
      
        # Whether to run the intent annotator.
        # Corresponds to the JSON property `runIntentAnnotator`
        # @return [Boolean]
        attr_accessor :run_intent_annotator
        alias_method :run_intent_annotator?, :run_intent_annotator
      
        # Whether to run the interruption annotator.
        # Corresponds to the JSON property `runInterruptionAnnotator`
        # @return [Boolean]
        attr_accessor :run_interruption_annotator
        alias_method :run_interruption_annotator?, :run_interruption_annotator
      
        # Whether to run the issue model annotator. A model should have already been
        # deployed for this to take effect.
        # Corresponds to the JSON property `runIssueModelAnnotator`
        # @return [Boolean]
        attr_accessor :run_issue_model_annotator
        alias_method :run_issue_model_annotator?, :run_issue_model_annotator
      
        # Whether to run the active phrase matcher annotator(s).
        # Corresponds to the JSON property `runPhraseMatcherAnnotator`
        # @return [Boolean]
        attr_accessor :run_phrase_matcher_annotator
        alias_method :run_phrase_matcher_annotator?, :run_phrase_matcher_annotator
      
        # Whether to run the QA annotator.
        # Corresponds to the JSON property `runQaAnnotator`
        # @return [Boolean]
        attr_accessor :run_qa_annotator
        alias_method :run_qa_annotator?, :run_qa_annotator
      
        # Whether to run the sentiment annotator.
        # Corresponds to the JSON property `runSentimentAnnotator`
        # @return [Boolean]
        attr_accessor :run_sentiment_annotator
        alias_method :run_sentiment_annotator?, :run_sentiment_annotator
      
        # Whether to run the silence annotator.
        # Corresponds to the JSON property `runSilenceAnnotator`
        # @return [Boolean]
        attr_accessor :run_silence_annotator
        alias_method :run_silence_annotator?, :run_silence_annotator
      
        # Whether to run the summarization annotator.
        # Corresponds to the JSON property `runSummarizationAnnotator`
        # @return [Boolean]
        attr_accessor :run_summarization_annotator
        alias_method :run_summarization_annotator?, :run_summarization_annotator
      
        # Configuration for summarization.
        # Corresponds to the JSON property `summarizationConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorSummarizationConfig]
        attr_accessor :summarization_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_models = args[:issue_models] if args.key?(:issue_models)
          @phrase_matchers = args[:phrase_matchers] if args.key?(:phrase_matchers)
          @qa_config = args[:qa_config] if args.key?(:qa_config)
          @run_entity_annotator = args[:run_entity_annotator] if args.key?(:run_entity_annotator)
          @run_intent_annotator = args[:run_intent_annotator] if args.key?(:run_intent_annotator)
          @run_interruption_annotator = args[:run_interruption_annotator] if args.key?(:run_interruption_annotator)
          @run_issue_model_annotator = args[:run_issue_model_annotator] if args.key?(:run_issue_model_annotator)
          @run_phrase_matcher_annotator = args[:run_phrase_matcher_annotator] if args.key?(:run_phrase_matcher_annotator)
          @run_qa_annotator = args[:run_qa_annotator] if args.key?(:run_qa_annotator)
          @run_sentiment_annotator = args[:run_sentiment_annotator] if args.key?(:run_sentiment_annotator)
          @run_silence_annotator = args[:run_silence_annotator] if args.key?(:run_silence_annotator)
          @run_summarization_annotator = args[:run_summarization_annotator] if args.key?(:run_summarization_annotator)
          @summarization_config = args[:summarization_config] if args.key?(:summarization_config)
        end
      end
      
      # Configuration for the QA feature.
      class GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfig
        include Google::Apis::Core::Hashable
      
        # Container for a list of scorecards.
        # Corresponds to the JSON property `scorecardList`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfigScorecardList]
        attr_accessor :scorecard_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scorecard_list = args[:scorecard_list] if args.key?(:scorecard_list)
        end
      end
      
      # Container for a list of scorecards.
      class GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfigScorecardList
        include Google::Apis::Core::Hashable
      
        # List of QaScorecardRevisions.
        # Corresponds to the JSON property `qaScorecardRevisions`
        # @return [Array<String>]
        attr_accessor :qa_scorecard_revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_scorecard_revisions = args[:qa_scorecard_revisions] if args.key?(:qa_scorecard_revisions)
        end
      end
      
      # Configuration for summarization.
      class GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorSummarizationConfig
        include Google::Apis::Core::Hashable
      
        # Resource name of the Dialogflow conversation profile. Format: projects/`
        # project`/locations/`location`/conversationProfiles/`conversation_profile`
        # Corresponds to the JSON property `conversationProfile`
        # @return [String]
        attr_accessor :conversation_profile
      
        # The resource name of the existing created generator. Format: projects//
        # locations//generators/
        # Corresponds to the JSON property `generator`
        # @return [String]
        attr_accessor :generator
      
        # Default summarization model to be used.
        # Corresponds to the JSON property `summarizationModel`
        # @return [String]
        attr_accessor :summarization_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile = args[:conversation_profile] if args.key?(:conversation_profile)
          @generator = args[:generator] if args.key?(:generator)
          @summarization_model = args[:summarization_model] if args.key?(:summarization_model)
        end
      end
      
      # The feedback that the customer has about a certain answer in the conversation.
      class GoogleCloudContactcenterinsightsV1mainAnswerFeedback
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
      class GoogleCloudContactcenterinsightsV1mainArticleSuggestionData
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
      class GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsMetadata
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
      
        # Output only. Partial errors during bulk analyze operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to analyze conversations in bulk.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsRequest]
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
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @total_requested_analyses_count = args[:total_requested_analyses_count] if args.key?(:total_requested_analyses_count)
        end
      end
      
      # The request to analyze conversations in bulk.
      class GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Required. Percentage of selected conversation to analyze, between [0, 100].
        # Corresponds to the JSON property `analysisPercentage`
        # @return [Float]
        attr_accessor :analysis_percentage
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The response for a bulk analyze conversations operation.
      class GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsResponse
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
      
      # The metadata for a bulk delete conversations operation.
      class GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during bulk delete conversations operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to delete conversations in bulk.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsRequest]
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
      
      # The request to delete conversations in bulk.
      class GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Filter used to select the subset of conversations to delete.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # If set to true, all of this conversation's analyses will also be deleted.
        # Otherwise, the request will only succeed if the conversation has no analyses.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Maximum number of conversations to delete.
        # Corresponds to the JSON property `maxDeleteCount`
        # @return [Fixnum]
        attr_accessor :max_delete_count
      
        # Required. The parent resource to delete conversations from. Format: projects/`
        # project`/locations/`location`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @force = args[:force] if args.key?(:force)
          @max_delete_count = args[:max_delete_count] if args.key?(:max_delete_count)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The response for a bulk delete conversations operation.
      class GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsMetadata
        include Google::Apis::Core::Hashable
      
        # Partial errors during deletion operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # Request for the BulkDeleteFeedbackLabels endpoint.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Request for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A filter to reduce results to a specific subset. Supports
        # disjunctions (OR) and conjunctions (AND). Supported fields: * `issue_model_id`
        # * `qa_question_id` * `qa_scorecard_id` * `min_create_time` * `max_create_time`
        # * `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        # TOPIC_MODELING
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. The parent resource for new feedback labels.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Response for the BulkDeleteFeedbackLabels endpoint.
      class GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for the BulkDownloadFeedbackLabel endpoint.
      class GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Statistics for BulkDownloadFeedbackLabels operation.
        # Corresponds to the JSON property `downloadStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsMetadataDownloadStats]
        attr_accessor :download_stats
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during ingest operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # Request for the BulkDownloadFeedbackLabel endpoint.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @download_stats = args[:download_stats] if args.key?(:download_stats)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Statistics for BulkDownloadFeedbackLabels operation.
      class GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsMetadataDownloadStats
        include Google::Apis::Core::Hashable
      
        # Output only. Full name of the files written to Cloud storage.
        # Corresponds to the JSON property `fileNames`
        # @return [Array<String>]
        attr_accessor :file_names
      
        # The number of objects processed during the download operation.
        # Corresponds to the JSON property `processedObjectCount`
        # @return [Fixnum]
        attr_accessor :processed_object_count
      
        # The number of new feedback labels downloaded during this operation. Different
        # from "processed" because some labels might not be downloaded because an error.
        # Corresponds to the JSON property `successfulDownloadCount`
        # @return [Fixnum]
        attr_accessor :successful_download_count
      
        # Total number of files written to the provided Cloud Storage bucket.
        # Corresponds to the JSON property `totalFilesWritten`
        # @return [Fixnum]
        attr_accessor :total_files_written
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_names = args[:file_names] if args.key?(:file_names)
          @processed_object_count = args[:processed_object_count] if args.key?(:processed_object_count)
          @successful_download_count = args[:successful_download_count] if args.key?(:successful_download_count)
          @total_files_written = args[:total_files_written] if args.key?(:total_files_written)
        end
      end
      
      # Request for the BulkDownloadFeedbackLabel endpoint.
      class GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Filter parent conversations to download feedback labels for. When
        # specified, the feedback labels will be downloaded for the conversations that
        # match the filter. If `template_qa_scorecard_id` is set, all the conversations
        # that match the filter will be paired with the questions under the scorecard
        # for labeling.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Optional. The type of feedback labels that will be downloaded.
        # Corresponds to the JSON property `feedbackLabelType`
        # @return [String]
        attr_accessor :feedback_label_type
      
        # Optional. A filter to reduce results to a specific subset. Supports
        # disjunctions (OR) and conjunctions (AND). Supported fields: * `issue_model_id`
        # * `qa_question_id` * `qa_scorecard_id` * `min_create_time` * `max_create_time`
        # * `min_update_time` * `max_update_time` * `feedback_label_type`: QUALITY_AI,
        # TOPIC_MODELING
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Google Cloud Storage Object details to write the feedback labels to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestGcsDestination]
        attr_accessor :gcs_destination
      
        # Optional. Limits the maximum number of feedback labels that will be downloaded.
        # The first `N` feedback labels will be downloaded.
        # Corresponds to the JSON property `maxDownloadCount`
        # @return [Fixnum]
        attr_accessor :max_download_count
      
        # Required. The parent resource for new feedback labels.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Google Sheets document details to write the feedback labels to.
        # Corresponds to the JSON property `sheetsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestSheetsDestination]
        attr_accessor :sheets_destination
      
        # Optional. If set, a template for labeling conversations and scorecard
        # questions will be created from the conversation_filter and the questions under
        # the scorecard(s). The feedback label `filter` will be ignored.
        # Corresponds to the JSON property `templateQaScorecardId`
        # @return [Array<String>]
        attr_accessor :template_qa_scorecard_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @feedback_label_type = args[:feedback_label_type] if args.key?(:feedback_label_type)
          @filter = args[:filter] if args.key?(:filter)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @max_download_count = args[:max_download_count] if args.key?(:max_download_count)
          @parent = args[:parent] if args.key?(:parent)
          @sheets_destination = args[:sheets_destination] if args.key?(:sheets_destination)
          @template_qa_scorecard_id = args[:template_qa_scorecard_id] if args.key?(:template_qa_scorecard_id)
        end
      end
      
      # Google Cloud Storage Object details to write the feedback labels to.
      class GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestGcsDestination
        include Google::Apis::Core::Hashable
      
        # Optional. Add whitespace to the JSON file. Makes easier to read, but increases
        # file size. Only applicable for JSON format.
        # Corresponds to the JSON property `addWhitespace`
        # @return [Boolean]
        attr_accessor :add_whitespace
        alias_method :add_whitespace?, :add_whitespace
      
        # Optional. Always print fields with no presence. This is useful for printing
        # fields that are not set, like implicit 0 value or empty lists/maps. Only
        # applicable for JSON format.
        # Corresponds to the JSON property `alwaysPrintEmptyFields`
        # @return [Boolean]
        attr_accessor :always_print_empty_fields
        alias_method :always_print_empty_fields?, :always_print_empty_fields
      
        # Required. File format in which the labels will be exported.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Required. The Google Cloud Storage URI to write the feedback labels to. The
        # file name will be used as a prefix for the files written to the bucket if the
        # output needs to be split across multiple files, otherwise it will be used as
        # is. The file extension will be appended to the file name based on the format
        # selected. E.g. `gs://bucket_name/object_uri_prefix`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        # Optional. The number of records per file. Applicable for either format.
        # Corresponds to the JSON property `recordsPerFileCount`
        # @return [Fixnum]
        attr_accessor :records_per_file_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_whitespace = args[:add_whitespace] if args.key?(:add_whitespace)
          @always_print_empty_fields = args[:always_print_empty_fields] if args.key?(:always_print_empty_fields)
          @format = args[:format] if args.key?(:format)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
          @records_per_file_count = args[:records_per_file_count] if args.key?(:records_per_file_count)
        end
      end
      
      # Google Sheets document details to write the feedback labels to.
      class GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestSheetsDestination
        include Google::Apis::Core::Hashable
      
        # Optional. The title of the new sheet to write the feedback labels to.
        # Corresponds to the JSON property `sheetTitle`
        # @return [String]
        attr_accessor :sheet_title
      
        # Required. The Google Sheets document to write the feedback labels to.
        # Retrieved from Google Sheets URI. E.g. `https://docs.google.com/spreadsheets/d/
        # 1234567890` The spreadsheet must be shared with the Insights P4SA. The
        # spreadsheet ID written to will be returned as `file_names` in the
        # BulkDownloadFeedbackLabelsMetadata.
        # Corresponds to the JSON property `spreadsheetUri`
        # @return [String]
        attr_accessor :spreadsheet_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sheet_title = args[:sheet_title] if args.key?(:sheet_title)
          @spreadsheet_uri = args[:spreadsheet_uri] if args.key?(:spreadsheet_uri)
        end
      end
      
      # Response for the BulkDownloadFeedbackLabel endpoint.
      class GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A piece of metadata that applies to a window of a call.
      class GoogleCloudContactcenterinsightsV1mainCallAnnotation
        include Google::Apis::Core::Hashable
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `annotationEndBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotationBoundary]
        attr_accessor :annotation_end_boundary
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `annotationStartBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotationBoundary]
        attr_accessor :annotation_start_boundary
      
        # The channel of the audio where the annotation occurs. For single-channel audio,
        # this field is not populated.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # The data for an entity mention annotation. This represents a mention of an `
        # Entity` in the conversation.
        # Corresponds to the JSON property `entityMentionData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainEntityMentionData]
        attr_accessor :entity_mention_data
      
        # The data for a hold annotation.
        # Corresponds to the JSON property `holdData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainHoldData]
        attr_accessor :hold_data
      
        # The data for an intent match. Represents an intent match for a text segment in
        # the conversation. A text segment can be part of a sentence, a complete
        # sentence, or an utterance with multiple sentences.
        # Corresponds to the JSON property `intentMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIntentMatchData]
        attr_accessor :intent_match_data
      
        # The data for an interruption annotation.
        # Corresponds to the JSON property `interruptionData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainInterruptionData]
        attr_accessor :interruption_data
      
        # The data for an issue match annotation.
        # Corresponds to the JSON property `issueMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueMatchData]
        attr_accessor :issue_match_data
      
        # The data for a matched phrase matcher. Represents information identifying a
        # phrase matcher for a given match.
        # Corresponds to the JSON property `phraseMatchData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainPhraseMatchData]
        attr_accessor :phrase_match_data
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentimentData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSentimentData]
        attr_accessor :sentiment_data
      
        # The data for a silence annotation.
        # Corresponds to the JSON property `silenceData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSilenceData]
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
      class GoogleCloudContactcenterinsightsV1mainConversation
        include Google::Apis::Core::Hashable
      
        # An opaque, user-specified string representing the human agent who handled the
        # conversation.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Call-specific metadata.
        # Corresponds to the JSON property `callMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationCallMetadata]
        attr_accessor :call_metadata
      
        # Output only. The time at which the conversation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The conversation source, which is a combination of transcript and audio.
        # Corresponds to the JSON property `dataSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationDataSource]
        attr_accessor :data_source
      
        # Output only. All the matched Dialogflow intents in the call. The key
        # corresponds to a Dialogflow intent, format: projects/`project`/agent/`agent`/
        # intents/`intent`
        # Corresponds to the JSON property `dialogflowIntents`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDialogflowIntent>]
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
      
        # A map for the user to specify any custom fields. A maximum of 100 labels per
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnalysis]
        attr_accessor :latest_analysis
      
        # Conversation summarization suggestion data.
        # Corresponds to the JSON property `latestSummary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationSummarizationSuggestionData]
        attr_accessor :latest_summary
      
        # Immutable. The conversation medium, if unspecified will default to PHONE_CALL.
        # Corresponds to the JSON property `medium`
        # @return [String]
        attr_accessor :medium
      
        # Input only. JSON metadata encoded as a string. This field is primarily used by
        # Insights integrations with various telephony systems and must be in one of
        # Insight's supported formats.
        # Corresponds to the JSON property `metadataJson`
        # @return [String]
        attr_accessor :metadata_json
      
        # Immutable. The resource name of the conversation. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Obfuscated user ID which the customer sent to us.
        # Corresponds to the JSON property `obfuscatedUserId`
        # @return [String]
        attr_accessor :obfuscated_user_id
      
        # Conversation metadata related to quality management.
        # Corresponds to the JSON property `qualityMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationQualityMetadata]
        attr_accessor :quality_metadata
      
        # Output only. The annotations that were generated during the customer and agent
        # interaction.
        # Corresponds to the JSON property `runtimeAnnotations`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainRuntimeAnnotation>]
        attr_accessor :runtime_annotations
      
        # The time at which the conversation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # A message representing the transcript of a conversation.
        # Corresponds to the JSON property `transcript`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationTranscript]
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
          @latest_summary = args[:latest_summary] if args.key?(:latest_summary)
          @medium = args[:medium] if args.key?(:medium)
          @metadata_json = args[:metadata_json] if args.key?(:metadata_json)
          @name = args[:name] if args.key?(:name)
          @obfuscated_user_id = args[:obfuscated_user_id] if args.key?(:obfuscated_user_id)
          @quality_metadata = args[:quality_metadata] if args.key?(:quality_metadata)
          @runtime_annotations = args[:runtime_annotations] if args.key?(:runtime_annotations)
          @start_time = args[:start_time] if args.key?(:start_time)
          @transcript = args[:transcript] if args.key?(:transcript)
          @ttl = args[:ttl] if args.key?(:ttl)
          @turn_count = args[:turn_count] if args.key?(:turn_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Call-specific metadata.
      class GoogleCloudContactcenterinsightsV1mainConversationCallMetadata
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
      class GoogleCloudContactcenterinsightsV1mainConversationDataSource
        include Google::Apis::Core::Hashable
      
        # A Dialogflow source of conversation data.
        # Corresponds to the JSON property `dialogflowSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDialogflowSource]
        attr_accessor :dialogflow_source
      
        # A Cloud Storage source of conversation data.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainGcsSource]
        attr_accessor :gcs_source
      
        # Cloud Storage URI that points to a file that contains the conversation
        # metadata.
        # Corresponds to the JSON property `metadataUri`
        # @return [String]
        attr_accessor :metadata_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialogflow_source = args[:dialogflow_source] if args.key?(:dialogflow_source)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @metadata_uri = args[:metadata_uri] if args.key?(:metadata_uri)
        end
      end
      
      # One channel of conversation-level sentiment data.
      class GoogleCloudContactcenterinsightsV1mainConversationLevelSentiment
        include Google::Apis::Core::Hashable
      
        # The channel of the audio that the data applies to.
        # Corresponds to the JSON property `channelTag`
        # @return [Fixnum]
        attr_accessor :channel_tag
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentimentData`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSentimentData]
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
      
      # Conversation-level silence data.
      class GoogleCloudContactcenterinsightsV1mainConversationLevelSilence
        include Google::Apis::Core::Hashable
      
        # Amount of time calculated to be in silence.
        # Corresponds to the JSON property `silenceDuration`
        # @return [String]
        attr_accessor :silence_duration
      
        # Percentage of the total conversation spent in silence.
        # Corresponds to the JSON property `silencePercentage`
        # @return [Float]
        attr_accessor :silence_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @silence_duration = args[:silence_duration] if args.key?(:silence_duration)
          @silence_percentage = args[:silence_percentage] if args.key?(:silence_percentage)
        end
      end
      
      # The call participant speaking for a given utterance.
      class GoogleCloudContactcenterinsightsV1mainConversationParticipant
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
      
      # Conversation metadata related to quality management.
      class GoogleCloudContactcenterinsightsV1mainConversationQualityMetadata
        include Google::Apis::Core::Hashable
      
        # Information about agents involved in the call.
        # Corresponds to the JSON property `agentInfo`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationQualityMetadataAgentInfo>]
        attr_accessor :agent_info
      
        # An arbitrary integer value indicating the customer's satisfaction rating.
        # Corresponds to the JSON property `customerSatisfactionRating`
        # @return [Fixnum]
        attr_accessor :customer_satisfaction_rating
      
        # Input only. The feedback labels associated with the conversation.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainFeedbackLabel>]
        attr_accessor :feedback_labels
      
        # An arbitrary string value specifying the menu path the customer took.
        # Corresponds to the JSON property `menuPath`
        # @return [String]
        attr_accessor :menu_path
      
        # The amount of time the customer waited to connect with an agent.
        # Corresponds to the JSON property `waitDuration`
        # @return [String]
        attr_accessor :wait_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_info = args[:agent_info] if args.key?(:agent_info)
          @customer_satisfaction_rating = args[:customer_satisfaction_rating] if args.key?(:customer_satisfaction_rating)
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @menu_path = args[:menu_path] if args.key?(:menu_path)
          @wait_duration = args[:wait_duration] if args.key?(:wait_duration)
        end
      end
      
      # Information about an agent involved in the conversation.
      class GoogleCloudContactcenterinsightsV1mainConversationQualityMetadataAgentInfo
        include Google::Apis::Core::Hashable
      
        # A user-specified string representing the agent.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The agent type, e.g. HUMAN_AGENT.
        # Corresponds to the JSON property `agentType`
        # @return [String]
        attr_accessor :agent_type
      
        # The agent's deployment display name. Only applicable to automated agents.
        # Corresponds to the JSON property `deploymentDisplayName`
        # @return [String]
        attr_accessor :deployment_display_name
      
        # The agent's deployment ID. Only applicable to automated agents.
        # Corresponds to the JSON property `deploymentId`
        # @return [String]
        attr_accessor :deployment_id
      
        # The agent's name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A user-provided string indicating the outcome of the agent's segment of the
        # call.
        # Corresponds to the JSON property `dispositionCode`
        # @return [String]
        attr_accessor :disposition_code
      
        # The agent's location.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A user-specified string representing the agent's team. Deprecated in favor of
        # the `teams` field.
        # Corresponds to the JSON property `team`
        # @return [String]
        attr_accessor :team
      
        # User-specified strings representing the agent's teams.
        # Corresponds to the JSON property `teams`
        # @return [Array<String>]
        attr_accessor :teams
      
        # The agent's version display name. Only applicable to automated agents.
        # Corresponds to the JSON property `versionDisplayName`
        # @return [String]
        attr_accessor :version_display_name
      
        # The agent's version ID. Only applicable to automated agents.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @agent_type = args[:agent_type] if args.key?(:agent_type)
          @deployment_display_name = args[:deployment_display_name] if args.key?(:deployment_display_name)
          @deployment_id = args[:deployment_id] if args.key?(:deployment_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @disposition_code = args[:disposition_code] if args.key?(:disposition_code)
          @location = args[:location] if args.key?(:location)
          @team = args[:team] if args.key?(:team)
          @teams = args[:teams] if args.key?(:teams)
          @version_display_name = args[:version_display_name] if args.key?(:version_display_name)
          @version_id = args[:version_id] if args.key?(:version_id)
        end
      end
      
      # Conversation summarization suggestion data.
      class GoogleCloudContactcenterinsightsV1mainConversationSummarizationSuggestionData
        include Google::Apis::Core::Hashable
      
        # The name of the answer record. Format: projects/`project`/locations/`location`/
        # answerRecords/`answer_record`
        # Corresponds to the JSON property `answerRecord`
        # @return [String]
        attr_accessor :answer_record
      
        # The confidence score of the summarization.
        # Corresponds to the JSON property `confidence`
        # @return [Float]
        attr_accessor :confidence
      
        # The name of the model that generates this summary. Format: projects/`project`/
        # locations/`location`/conversationModels/`conversation_model`
        # Corresponds to the JSON property `conversationModel`
        # @return [String]
        attr_accessor :conversation_model
      
        # Agent Assist generator ID.
        # Corresponds to the JSON property `generatorId`
        # @return [String]
        attr_accessor :generator_id
      
        # A map that contains metadata about the summarization and the document from
        # which it originates.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,String>]
        attr_accessor :metadata
      
        # The summarization content that is concatenated into one string.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The summarization content that is divided into sections. The key is the
        # section's name and the value is the section's content. There is no specific
        # format for the key or value.
        # Corresponds to the JSON property `textSections`
        # @return [Hash<String,String>]
        attr_accessor :text_sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_record = args[:answer_record] if args.key?(:answer_record)
          @confidence = args[:confidence] if args.key?(:confidence)
          @conversation_model = args[:conversation_model] if args.key?(:conversation_model)
          @generator_id = args[:generator_id] if args.key?(:generator_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @text = args[:text] if args.key?(:text)
          @text_sections = args[:text_sections] if args.key?(:text_sections)
        end
      end
      
      # A message representing the transcript of a conversation.
      class GoogleCloudContactcenterinsightsV1mainConversationTranscript
        include Google::Apis::Core::Hashable
      
        # A list of sequential transcript segments that comprise the conversation.
        # Corresponds to the JSON property `transcriptSegments`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegment>]
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
      class GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegment
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata]
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationParticipant]
        attr_accessor :segment_participant
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSentimentData]
        attr_accessor :sentiment
      
        # The text of this segment.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A list of the word-specific information for each word in the segment.
        # Corresponds to the JSON property `words`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentWordInfo>]
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
      class GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata
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
      class GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentWordInfo
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
      class GoogleCloudContactcenterinsightsV1mainCreateAnalysisOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Selector of all available annotators and phrase matchers to run.
        # Corresponds to the JSON property `annotatorSelector`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotatorSelector]
        attr_accessor :annotator_selector
      
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
          @annotator_selector = args[:annotator_selector] if args.key?(:annotator_selector)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Metadata for creating an issue.
      class GoogleCloudContactcenterinsightsV1mainCreateIssueMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request to create an issue.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainCreateIssueRequest]
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
      
      # Metadata for creating an issue model.
      class GoogleCloudContactcenterinsightsV1mainCreateIssueModelMetadata
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainCreateIssueModelRequest]
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
      class GoogleCloudContactcenterinsightsV1mainCreateIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # The issue model resource.
        # Corresponds to the JSON property `issueModel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueModel]
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
      
      # The request to create an issue.
      class GoogleCloudContactcenterinsightsV1mainCreateIssueRequest
        include Google::Apis::Core::Hashable
      
        # The issue resource.
        # Corresponds to the JSON property `issue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssue]
        attr_accessor :issue
      
        # Required. The parent resource of the issue.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue = args[:issue] if args.key?(:issue)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Dataset resource represents a collection of conversations that may be bounded (
      # Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic
      # Dataset, e.g. live traffic, or agent training traffic)
      class GoogleCloudContactcenterinsightsV1mainDataset
        include Google::Apis::Core::Hashable
      
        # Output only. Dataset create time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Dataset description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name for the dataaset
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. Identifier. Resource name of the dataset. Format: projects/`project`
        # /locations/`location`/datasets/`dataset`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Option TTL for the dataset.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Dataset usage type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Dataset update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Metadata for deleting an issue model.
      class GoogleCloudContactcenterinsightsV1mainDeleteIssueModelMetadata
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDeleteIssueModelRequest]
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
      class GoogleCloudContactcenterinsightsV1mainDeleteIssueModelRequest
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
      
      # The metadata for deleting a QaQuestionTag Resource.
      class GoogleCloudContactcenterinsightsV1mainDeleteQaQuestionTagMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for deleting a QaQuestionTag.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDeleteQaQuestionTagRequest]
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
      
      # The request for deleting a QaQuestionTag.
      class GoogleCloudContactcenterinsightsV1mainDeleteQaQuestionTagRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the QaQuestionTag to delete.
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
      class GoogleCloudContactcenterinsightsV1mainDeployIssueModelMetadata
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDeployIssueModelRequest]
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
      class GoogleCloudContactcenterinsightsV1mainDeployIssueModelRequest
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
      class GoogleCloudContactcenterinsightsV1mainDeployIssueModelResponse
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
      class GoogleCloudContactcenterinsightsV1mainDialogflowIntent
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
      class GoogleCloudContactcenterinsightsV1mainDialogflowInteractionData
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
      class GoogleCloudContactcenterinsightsV1mainDialogflowSource
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
      
      # A dimension determines the grouping key for the query. In SQL terms, these
      # would be part of both the "SELECT" and "GROUP BY" clauses.
      class GoogleCloudContactcenterinsightsV1mainDimension
        include Google::Apis::Core::Hashable
      
        # Metadata about the agent dimension.
        # Corresponds to the JSON property `agentDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionAgentDimensionMetadata]
        attr_accessor :agent_dimension_metadata
      
        # Metadata about the client sentiment category dimension.
        # Corresponds to the JSON property `clientSentimentCategoryDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionClientSentimentCategoryDimensionMetadata]
        attr_accessor :client_sentiment_category_dimension_metadata
      
        # Metadata about the conversation profile dimension.
        # Corresponds to the JSON property `conversationProfileDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionConversationProfileDimensionMetadata]
        attr_accessor :conversation_profile_dimension_metadata
      
        # Metadata about the Conversational Agents playbook dimension.
        # Corresponds to the JSON property `conversationalAgentsPlaybookDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsPlaybookDimensionMetadata]
        attr_accessor :conversational_agents_playbook_dimension_metadata
      
        # Metadata about the Conversational Agents tool dimension.
        # Corresponds to the JSON property `conversationalAgentsToolDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsToolDimensionMetadata]
        attr_accessor :conversational_agents_tool_dimension_metadata
      
        # The key of the dimension.
        # Corresponds to the JSON property `dimensionKey`
        # @return [String]
        attr_accessor :dimension_key
      
        # Metadata about the issue dimension.
        # Corresponds to the JSON property `issueDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionIssueDimensionMetadata]
        attr_accessor :issue_dimension_metadata
      
        # Metadata about conversation labels.
        # Corresponds to the JSON property `labelDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionLabelDimensionMetadata]
        attr_accessor :label_dimension_metadata
      
        # Metadata about the conversation medium dimension.
        # Corresponds to the JSON property `mediumDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionMediumDimensionMetadata]
        attr_accessor :medium_dimension_metadata
      
        # Metadata about the QA question-answer dimension. This is useful for showing
        # the answer distribution for questions for a given scorecard.
        # Corresponds to the JSON property `qaQuestionAnswerDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionAnswerDimensionMetadata]
        attr_accessor :qa_question_answer_dimension_metadata
      
        # Metadata about the QA question dimension.
        # Corresponds to the JSON property `qaQuestionDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionDimensionMetadata]
        attr_accessor :qa_question_dimension_metadata
      
        # Metadata about the QA scorecard dimension.
        # Corresponds to the JSON property `qaScorecardDimensionMetadata`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimensionQaScorecardDimensionMetadata]
        attr_accessor :qa_scorecard_dimension_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_dimension_metadata = args[:agent_dimension_metadata] if args.key?(:agent_dimension_metadata)
          @client_sentiment_category_dimension_metadata = args[:client_sentiment_category_dimension_metadata] if args.key?(:client_sentiment_category_dimension_metadata)
          @conversation_profile_dimension_metadata = args[:conversation_profile_dimension_metadata] if args.key?(:conversation_profile_dimension_metadata)
          @conversational_agents_playbook_dimension_metadata = args[:conversational_agents_playbook_dimension_metadata] if args.key?(:conversational_agents_playbook_dimension_metadata)
          @conversational_agents_tool_dimension_metadata = args[:conversational_agents_tool_dimension_metadata] if args.key?(:conversational_agents_tool_dimension_metadata)
          @dimension_key = args[:dimension_key] if args.key?(:dimension_key)
          @issue_dimension_metadata = args[:issue_dimension_metadata] if args.key?(:issue_dimension_metadata)
          @label_dimension_metadata = args[:label_dimension_metadata] if args.key?(:label_dimension_metadata)
          @medium_dimension_metadata = args[:medium_dimension_metadata] if args.key?(:medium_dimension_metadata)
          @qa_question_answer_dimension_metadata = args[:qa_question_answer_dimension_metadata] if args.key?(:qa_question_answer_dimension_metadata)
          @qa_question_dimension_metadata = args[:qa_question_dimension_metadata] if args.key?(:qa_question_dimension_metadata)
          @qa_scorecard_dimension_metadata = args[:qa_scorecard_dimension_metadata] if args.key?(:qa_scorecard_dimension_metadata)
        end
      end
      
      # Metadata about the agent dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionAgentDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The agent's deployment display name. Only applicable to automated
        # agents. This will be populated for AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDeploymentDisplayName`
        # @return [String]
        attr_accessor :agent_deployment_display_name
      
        # Optional. The agent's deployment ID. Only applicable to automated agents. This
        # will be populated for AGENT and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDeploymentId`
        # @return [String]
        attr_accessor :agent_deployment_id
      
        # Optional. The agent's name This will be populated for AGENT, AGENT_TEAM,
        # AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentDisplayName`
        # @return [String]
        attr_accessor :agent_display_name
      
        # Optional. A user-specified string representing the agent. This will be
        # populated for AGENT, AGENT_TEAM, AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID
        # dimensions.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Optional. A user-specified string representing the agent's team.
        # Corresponds to the JSON property `agentTeam`
        # @return [String]
        attr_accessor :agent_team
      
        # Optional. The agent's version display name. Only applicable to automated
        # agents. This will be populated for AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID
        # dimensions.
        # Corresponds to the JSON property `agentVersionDisplayName`
        # @return [String]
        attr_accessor :agent_version_display_name
      
        # Optional. The agent's version ID. Only applicable to automated agents. This
        # will be populated for AGENT_VERSION_ID, and AGENT_DEPLOYMENT_ID dimensions.
        # Corresponds to the JSON property `agentVersionId`
        # @return [String]
        attr_accessor :agent_version_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_deployment_display_name = args[:agent_deployment_display_name] if args.key?(:agent_deployment_display_name)
          @agent_deployment_id = args[:agent_deployment_id] if args.key?(:agent_deployment_id)
          @agent_display_name = args[:agent_display_name] if args.key?(:agent_display_name)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @agent_team = args[:agent_team] if args.key?(:agent_team)
          @agent_version_display_name = args[:agent_version_display_name] if args.key?(:agent_version_display_name)
          @agent_version_id = args[:agent_version_id] if args.key?(:agent_version_id)
        end
      end
      
      # Metadata about the client sentiment category dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionClientSentimentCategoryDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The client sentiment category.
        # Corresponds to the JSON property `sentimentCategory`
        # @return [String]
        attr_accessor :sentiment_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sentiment_category = args[:sentiment_category] if args.key?(:sentiment_category)
        end
      end
      
      # Metadata about the conversation profile dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionConversationProfileDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation profile ID.
        # Corresponds to the JSON property `conversationProfileId`
        # @return [String]
        attr_accessor :conversation_profile_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_profile_id = args[:conversation_profile_id] if args.key?(:conversation_profile_id)
        end
      end
      
      # Metadata about the Conversational Agents playbook dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsPlaybookDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The dialogflow playbook display name.
        # Corresponds to the JSON property `playbookDisplayName`
        # @return [String]
        attr_accessor :playbook_display_name
      
        # Optional. The dialogflow playbook ID.
        # Corresponds to the JSON property `playbookId`
        # @return [String]
        attr_accessor :playbook_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @playbook_display_name = args[:playbook_display_name] if args.key?(:playbook_display_name)
          @playbook_id = args[:playbook_id] if args.key?(:playbook_id)
        end
      end
      
      # Metadata about the Conversational Agents tool dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsToolDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The dialogflow tool display name.
        # Corresponds to the JSON property `toolDisplayName`
        # @return [String]
        attr_accessor :tool_display_name
      
        # Optional. The dialogflow tool ID.
        # Corresponds to the JSON property `toolId`
        # @return [String]
        attr_accessor :tool_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tool_display_name = args[:tool_display_name] if args.key?(:tool_display_name)
          @tool_id = args[:tool_id] if args.key?(:tool_id)
        end
      end
      
      # Metadata about the issue dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionIssueDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # The issue display name.
        # Corresponds to the JSON property `issueDisplayName`
        # @return [String]
        attr_accessor :issue_display_name
      
        # The issue ID.
        # Corresponds to the JSON property `issueId`
        # @return [String]
        attr_accessor :issue_id
      
        # The parent issue model ID.
        # Corresponds to the JSON property `issueModelId`
        # @return [String]
        attr_accessor :issue_model_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_display_name = args[:issue_display_name] if args.key?(:issue_display_name)
          @issue_id = args[:issue_id] if args.key?(:issue_id)
          @issue_model_id = args[:issue_model_id] if args.key?(:issue_model_id)
        end
      end
      
      # Metadata about conversation labels.
      class GoogleCloudContactcenterinsightsV1mainDimensionLabelDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The label key.
        # Corresponds to the JSON property `labelKey`
        # @return [String]
        attr_accessor :label_key
      
        # Optional. The label value.
        # Corresponds to the JSON property `labelValue`
        # @return [String]
        attr_accessor :label_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_key = args[:label_key] if args.key?(:label_key)
          @label_value = args[:label_value] if args.key?(:label_value)
        end
      end
      
      # Metadata about the conversation medium dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionMediumDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The conversation medium. Currently supports : PHONE_CALL, CHAT.
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
      
      # Metadata about the QA question-answer dimension. This is useful for showing
      # the answer distribution for questions for a given scorecard.
      class GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionAnswerDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `answerValue`
        # @return [String]
        attr_accessor :answer_value
      
        # Optional. The QA question ID.
        # Corresponds to the JSON property `qaQuestionId`
        # @return [String]
        attr_accessor :qa_question_id
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @qa_question_id = args[:qa_question_id] if args.key?(:qa_question_id)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
          @question_body = args[:question_body] if args.key?(:question_body)
        end
      end
      
      # Metadata about the QA question dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The QA question ID.
        # Corresponds to the JSON property `qaQuestionId`
        # @return [String]
        attr_accessor :qa_question_id
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        # Optional. The full body of the question.
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question_id = args[:qa_question_id] if args.key?(:qa_question_id)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
          @question_body = args[:question_body] if args.key?(:question_body)
        end
      end
      
      # Metadata about the QA scorecard dimension.
      class GoogleCloudContactcenterinsightsV1mainDimensionQaScorecardDimensionMetadata
        include Google::Apis::Core::Hashable
      
        # Optional. The QA scorecard ID.
        # Corresponds to the JSON property `qaScorecardId`
        # @return [String]
        attr_accessor :qa_scorecard_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_scorecard_id = args[:qa_scorecard_id] if args.key?(:qa_scorecard_id)
        end
      end
      
      # A customer-managed encryption key specification that can be applied to all
      # created resources (e.g. `Conversation`).
      class GoogleCloudContactcenterinsightsV1mainEncryptionSpec
        include Google::Apis::Core::Hashable
      
        # Required. The name of customer-managed encryption key that is used to secure a
        # resource and its sub-resources. If empty, the resource is secured by our
        # default encryption key. Only the key in the same location as this resource is
        # allowed to be used for encryption. Format: `projects/`project`/locations/`
        # location`/keyRings/`keyRing`/cryptoKeys/`key``
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Immutable. The resource name of the encryption key specification resource.
        # Format: projects/`project`/locations/`location`/encryptionSpec
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The data for an entity annotation. Represents a phrase in the conversation
      # that is a known entity, such as a person, an organization, or location.
      class GoogleCloudContactcenterinsightsV1mainEntity
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSentimentData]
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
      class GoogleCloudContactcenterinsightsV1mainEntityMentionData
        include Google::Apis::Core::Hashable
      
        # The key of this entity in conversation entities. Can be used to retrieve the
        # exact `Entity` this mention is attached to.
        # Corresponds to the JSON property `entityUniqueId`
        # @return [String]
        attr_accessor :entity_unique_id
      
        # The data for a sentiment annotation.
        # Corresponds to the JSON property `sentiment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSentimentData]
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
      
      # Metadata for an export insights operation.
      class GoogleCloudContactcenterinsightsV1mainExportInsightsDataMetadata
        include Google::Apis::Core::Hashable
      
        # The number of conversations that were exported successfully.
        # Corresponds to the JSON property `completedExportCount`
        # @return [Fixnum]
        attr_accessor :completed_export_count
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The number of conversations that failed to be exported.
        # Corresponds to the JSON property `failedExportCount`
        # @return [Fixnum]
        attr_accessor :failed_export_count
      
        # Partial errors during export operation that might cause the operation output
        # to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to export insights.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed_export_count = args[:completed_export_count] if args.key?(:completed_export_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failed_export_count = args[:failed_export_count] if args.key?(:failed_export_count)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # The request to export insights.
      class GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequest
        include Google::Apis::Core::Hashable
      
        # A BigQuery Table Reference.
        # Corresponds to the JSON property `bigQueryDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequestBigQueryDestination]
        attr_accessor :big_query_destination
      
        # Optional. Version of the export schema.
        # Corresponds to the JSON property `exportSchemaVersion`
        # @return [String]
        attr_accessor :export_schema_version
      
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
          @export_schema_version = args[:export_schema_version] if args.key?(:export_schema_version)
          @filter = args[:filter] if args.key?(:filter)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @parent = args[:parent] if args.key?(:parent)
          @write_disposition = args[:write_disposition] if args.key?(:write_disposition)
        end
      end
      
      # A BigQuery Table Reference.
      class GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequestBigQueryDestination
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
      class GoogleCloudContactcenterinsightsV1mainExportInsightsDataResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata used for export issue model.
      class GoogleCloudContactcenterinsightsV1mainExportIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to export an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainExportIssueModelRequest]
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
      
      # Request to export an issue model.
      class GoogleCloudContactcenterinsightsV1mainExportIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage Object URI to save the issue model to.
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainExportIssueModelRequestGcsDestination]
        attr_accessor :gcs_destination
      
        # Required. The issue model to export.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Google Cloud Storage Object URI to save the issue model to.
      class GoogleCloudContactcenterinsightsV1mainExportIssueModelRequestGcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. Format: `gs:///`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Response from export issue model
      class GoogleCloudContactcenterinsightsV1mainExportIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Agent Assist frequently-asked-question answer data.
      class GoogleCloudContactcenterinsightsV1mainFaqAnswerData
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
      
      # Represents a conversation, resource, and label provided by the user. Can take
      # the form of a string label or a QaAnswer label. QaAnswer labels are used for
      # Quality AI example conversations. String labels are used for Topic Modeling.
      # AgentAssistSummary labels are used for Agent Assist Summarization.
      class GoogleCloudContactcenterinsightsV1mainFeedbackLabel
        include Google::Apis::Core::Hashable
      
        # Output only. Create time of the label.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # String label used for Topic Modeling.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Name of the resource to be labeled. Supported resources are: * `projects/`
        # project`/locations/`location`/qaScorecards/`scorecard`/revisions/`revision`/
        # qaQuestions/`question`` * `projects/`project`/locations/`location`/issueModels/
        # `issue_model`` * `projects/`project`/locations/`location`/generators/`
        # generator_id``
        # Corresponds to the JSON property `labeledResource`
        # @return [String]
        attr_accessor :labeled_resource
      
        # Immutable. Resource name of the FeedbackLabel. Format: projects/`project`/
        # locations/`location`/conversations/`conversation`/feedbackLabels/`
        # feedback_label`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `qaAnswerLabel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue]
        attr_accessor :qa_answer_label
      
        # Output only. Update time of the label.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @label = args[:label] if args.key?(:label)
          @labeled_resource = args[:labeled_resource] if args.key?(:labeled_resource)
          @name = args[:name] if args.key?(:name)
          @qa_answer_label = args[:qa_answer_label] if args.key?(:qa_answer_label)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Cloud Storage source of conversation data.
      class GoogleCloudContactcenterinsightsV1mainGcsSource
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
      class GoogleCloudContactcenterinsightsV1mainHoldData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata used for import issue model.
      class GoogleCloudContactcenterinsightsV1mainImportIssueModelMetadata
        include Google::Apis::Core::Hashable
      
        # The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to import an issue model.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainImportIssueModelRequest]
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
      
      # Request to import an issue model.
      class GoogleCloudContactcenterinsightsV1mainImportIssueModelRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set to true, will create an issue model from the imported file
        # with randomly generated IDs for the issue model and corresponding issues.
        # Otherwise, replaces an existing model with the same ID as the file.
        # Corresponds to the JSON property `createNewModel`
        # @return [Boolean]
        attr_accessor :create_new_model
        alias_method :create_new_model?, :create_new_model
      
        # Google Cloud Storage Object URI to get the issue model file from.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainImportIssueModelRequestGcsSource]
        attr_accessor :gcs_source
      
        # Required. The parent resource of the issue model.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_new_model = args[:create_new_model] if args.key?(:create_new_model)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Google Cloud Storage Object URI to get the issue model file from.
      class GoogleCloudContactcenterinsightsV1mainImportIssueModelRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Required. Format: `gs:///`
        # Corresponds to the JSON property `objectUri`
        # @return [String]
        attr_accessor :object_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @object_uri = args[:object_uri] if args.key?(:object_uri)
        end
      end
      
      # Response from import issue model
      class GoogleCloudContactcenterinsightsV1mainImportIssueModelResponse
        include Google::Apis::Core::Hashable
      
        # The issue model resource.
        # Corresponds to the JSON property `issueModel`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueModel]
        attr_accessor :issue_model
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_model = args[:issue_model] if args.key?(:issue_model)
        end
      end
      
      # The metadata for an IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Statistics for IngestConversations operation.
        # Corresponds to the JSON property `ingestConversationsStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIngestConversationsMetadataIngestConversationsStats]
        attr_accessor :ingest_conversations_stats
      
        # Output only. Partial errors during ingest operation that might cause the
        # operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to ingest conversations.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIngestConversationsRequest]
        attr_accessor :request
      
        # Output only. Stores the conversation resources produced by ingest sampling
        # operations.
        # Corresponds to the JSON property `sampledConversations`
        # @return [Array<String>]
        attr_accessor :sampled_conversations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @ingest_conversations_stats = args[:ingest_conversations_stats] if args.key?(:ingest_conversations_stats)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @sampled_conversations = args[:sampled_conversations] if args.key?(:sampled_conversations)
        end
      end
      
      # Statistics for IngestConversations operation.
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsMetadataIngestConversationsStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects skipped because another conversation with
        # the same transcript uri had already been ingested.
        # Corresponds to the JSON property `duplicatesSkippedCount`
        # @return [Fixnum]
        attr_accessor :duplicates_skipped_count
      
        # Output only. The number of objects which were unable to be ingested due to
        # errors. The errors are populated in the partial_errors field.
        # Corresponds to the JSON property `failedIngestCount`
        # @return [Fixnum]
        attr_accessor :failed_ingest_count
      
        # Output only. The number of objects processed during the ingest operation.
        # Corresponds to the JSON property `processedObjectCount`
        # @return [Fixnum]
        attr_accessor :processed_object_count
      
        # Output only. The number of new conversations added during this ingest
        # operation.
        # Corresponds to the JSON property `successfulIngestCount`
        # @return [Fixnum]
        attr_accessor :successful_ingest_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duplicates_skipped_count = args[:duplicates_skipped_count] if args.key?(:duplicates_skipped_count)
          @failed_ingest_count = args[:failed_ingest_count] if args.key?(:failed_ingest_count)
          @processed_object_count = args[:processed_object_count] if args.key?(:processed_object_count)
          @successful_ingest_count = args[:successful_ingest_count] if args.key?(:successful_ingest_count)
        end
      end
      
      # The request to ingest conversations.
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Configuration that applies to all conversations.
        # Corresponds to the JSON property `conversationConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestConversationConfig]
        attr_accessor :conversation_config
      
        # Configuration for Cloud Storage bucket sources.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestGcsSource]
        attr_accessor :gcs_source
      
        # Required. The parent resource for new conversations.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainRedactionConfig]
        attr_accessor :redaction_config
      
        # Optional. If set, this fields indicates the number of objects to ingest from
        # the Cloud Storage bucket. If empty, the entire bucket will be ingested. Unless
        # they are first deleted, conversations produced through sampling won't be
        # ingested by subsequent ingest requests.
        # Corresponds to the JSON property `sampleSize`
        # @return [Fixnum]
        attr_accessor :sample_size
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSpeechConfig]
        attr_accessor :speech_config
      
        # Configuration for processing transcript objects.
        # Corresponds to the JSON property `transcriptObjectConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestTranscriptObjectConfig]
        attr_accessor :transcript_object_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_config = args[:conversation_config] if args.key?(:conversation_config)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @parent = args[:parent] if args.key?(:parent)
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @sample_size = args[:sample_size] if args.key?(:sample_size)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
          @transcript_object_config = args[:transcript_object_config] if args.key?(:transcript_object_config)
        end
      end
      
      # Configuration that applies to all conversations.
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestConversationConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Indicates which of the channels, 1 or 2, contains the agent. Note
        # that this must be set for conversations to be properly displayed and analyzed.
        # Corresponds to the JSON property `agentChannel`
        # @return [Fixnum]
        attr_accessor :agent_channel
      
        # Optional. An opaque, user-specified string representing a human agent who
        # handled all conversations in the import. Note that this will be overridden if
        # per-conversation metadata is provided through the `metadata_bucket_uri`.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # Optional. Indicates which of the channels, 1 or 2, contains the agent. Note
        # that this must be set for conversations to be properly displayed and analyzed.
        # Corresponds to the JSON property `customerChannel`
        # @return [Fixnum]
        attr_accessor :customer_channel
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_channel = args[:agent_channel] if args.key?(:agent_channel)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @customer_channel = args[:customer_channel] if args.key?(:customer_channel)
        end
      end
      
      # Configuration for Cloud Storage bucket sources.
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestGcsSource
        include Google::Apis::Core::Hashable
      
        # Optional. The Cloud Storage path to the conversation audio file. Note that: [1]
        # Audio files will be transcribed if not already. [2] Audio files and
        # transcript files must be in separate buckets / folders. [3] A source file and
        # its corresponding audio file must share the same name to be properly ingested,
        # E.g. `gs://bucket/transcript/conversation1.json` and `gs://bucket/audio/
        # conversation1.mp3`.
        # Corresponds to the JSON property `audioBucketUri`
        # @return [String]
        attr_accessor :audio_bucket_uri
      
        # Optional. Specifies the type of the objects in `bucket_uri`. Avoid passing
        # this. This is inferred from the `transcript_bucket_uri`, `audio_bucket_uri`.
        # Corresponds to the JSON property `bucketObjectType`
        # @return [String]
        attr_accessor :bucket_object_type
      
        # Optional. The Cloud Storage bucket containing source objects. Avoid passing
        # this. Pass this through one of `transcript_bucket_uri` or `audio_bucket_uri`.
        # Corresponds to the JSON property `bucketUri`
        # @return [String]
        attr_accessor :bucket_uri
      
        # Optional. Custom keys to extract as conversation labels from metadata files in
        # `metadata_bucket_uri`. Keys not included in this field will be ignored. Note
        # that there is a limit of 100 labels per conversation.
        # Corresponds to the JSON property `customMetadataKeys`
        # @return [Array<String>]
        attr_accessor :custom_metadata_keys
      
        # Optional. The Cloud Storage path to the conversation metadata. Note that: [1]
        # Metadata files are expected to be in JSON format. [2] Metadata and source
        # files (transcripts or audio) must be in separate buckets / folders. [3] A
        # source file and its corresponding metadata file must share the same name to be
        # properly ingested, E.g. `gs://bucket/audio/conversation1.mp3` and `gs://bucket/
        # metadata/conversation1.json`.
        # Corresponds to the JSON property `metadataBucketUri`
        # @return [String]
        attr_accessor :metadata_bucket_uri
      
        # Optional. The Cloud Storage path to the conversation transcripts. Note that: [
        # 1] Transcript files are expected to be in JSON format. [2] Transcript, audio,
        # metadata files must be in separate buckets / folders. [3] A source file and
        # its corresponding metadata file must share the same name to be properly
        # ingested, E.g. `gs://bucket/audio/conversation1.mp3` and `gs://bucket/metadata/
        # conversation1.json`.
        # Corresponds to the JSON property `transcriptBucketUri`
        # @return [String]
        attr_accessor :transcript_bucket_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_bucket_uri = args[:audio_bucket_uri] if args.key?(:audio_bucket_uri)
          @bucket_object_type = args[:bucket_object_type] if args.key?(:bucket_object_type)
          @bucket_uri = args[:bucket_uri] if args.key?(:bucket_uri)
          @custom_metadata_keys = args[:custom_metadata_keys] if args.key?(:custom_metadata_keys)
          @metadata_bucket_uri = args[:metadata_bucket_uri] if args.key?(:metadata_bucket_uri)
          @transcript_bucket_uri = args[:transcript_bucket_uri] if args.key?(:transcript_bucket_uri)
        end
      end
      
      # Configuration for processing transcript objects.
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestTranscriptObjectConfig
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
      class GoogleCloudContactcenterinsightsV1mainIngestConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for initializing a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Partial errors during initializing operation that might cause the operation
        # output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to initialize a location-level encryption specification.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecRequest]
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
      
      # The request to initialize a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecRequest
        include Google::Apis::Core::Hashable
      
        # A customer-managed encryption key specification that can be applied to all
        # created resources (e.g. `Conversation`).
        # Corresponds to the JSON property `encryptionSpec`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainEncryptionSpec]
        attr_accessor :encryption_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_spec = args[:encryption_spec] if args.key?(:encryption_spec)
        end
      end
      
      # The response to initialize a location-level encryption specification.
      class GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecResponse
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
      class GoogleCloudContactcenterinsightsV1mainIntent
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
      class GoogleCloudContactcenterinsightsV1mainIntentMatchData
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
      class GoogleCloudContactcenterinsightsV1mainInterruptionData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The issue resource.
      class GoogleCloudContactcenterinsightsV1mainIssue
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which this issue was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Representative description of the issue.
        # Corresponds to the JSON property `displayDescription`
        # @return [String]
        attr_accessor :display_description
      
        # The representative name for the issue.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Immutable. The resource name of the issue. Format: projects/`project`/
        # locations/`location`/issueModels/`issue_model`/issues/`issue`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Resource names of the sample representative utterances that match
        # to this issue.
        # Corresponds to the JSON property `sampleUtterances`
        # @return [Array<String>]
        attr_accessor :sample_utterances
      
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
          @display_description = args[:display_description] if args.key?(:display_description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @sample_utterances = args[:sample_utterances] if args.key?(:sample_utterances)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about the issue.
      class GoogleCloudContactcenterinsightsV1mainIssueAssignment
        include Google::Apis::Core::Hashable
      
        # Immutable. Display name of the assigned issue. This field is set at time of
        # analysis and immutable since then.
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
      class GoogleCloudContactcenterinsightsV1mainIssueMatchData
        include Google::Apis::Core::Hashable
      
        # Information about the issue.
        # Corresponds to the JSON property `issueAssignment`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueAssignment]
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
      class GoogleCloudContactcenterinsightsV1mainIssueModel
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueModelInputDataConfig]
        attr_accessor :input_data_config
      
        # Output only. Number of issues in this issue model.
        # Corresponds to the JSON property `issueCount`
        # @return [Fixnum]
        attr_accessor :issue_count
      
        # Language of the model.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Type of the model.
        # Corresponds to the JSON property `modelType`
        # @return [String]
        attr_accessor :model_type
      
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueModelLabelStats]
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
          @issue_count = args[:issue_count] if args.key?(:issue_count)
          @language_code = args[:language_code] if args.key?(:language_code)
          @model_type = args[:model_type] if args.key?(:model_type)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @training_stats = args[:training_stats] if args.key?(:training_stats)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configs for the input data used to create the issue model.
      class GoogleCloudContactcenterinsightsV1mainIssueModelInputDataConfig
        include Google::Apis::Core::Hashable
      
        # A filter to reduce the conversations used for training the model to a specific
        # subset. Refer to https://cloud.google.com/contact-center/insights/docs/
        # filtering for details.
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
      class GoogleCloudContactcenterinsightsV1mainIssueModelLabelStats
        include Google::Apis::Core::Hashable
      
        # Number of conversations the issue model has analyzed at this point in time.
        # Corresponds to the JSON property `analyzedConversationsCount`
        # @return [Fixnum]
        attr_accessor :analyzed_conversations_count
      
        # Statistics on each issue. Key is the issue's resource name.
        # Corresponds to the JSON property `issueStats`
        # @return [Hash<String,Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueModelLabelStatsIssueStats>]
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
      class GoogleCloudContactcenterinsightsV1mainIssueModelLabelStatsIssueStats
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
      class GoogleCloudContactcenterinsightsV1mainIssueModelResult
        include Google::Apis::Core::Hashable
      
        # Issue model that generates the result. Format: projects/`project`/locations/`
        # location`/issueModels/`issue_model`
        # Corresponds to the JSON property `issueModel`
        # @return [String]
        attr_accessor :issue_model
      
        # All the matched issues.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainIssueAssignment>]
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
      
      # The response for listing all feedback labels.
      class GoogleCloudContactcenterinsightsV1mainListAllFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The feedback labels that match the request.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainFeedbackLabel>]
        attr_accessor :feedback_labels
      
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
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for listing feedback labels.
      class GoogleCloudContactcenterinsightsV1mainListFeedbackLabelsResponse
        include Google::Apis::Core::Hashable
      
        # The feedback labels that match the request.
        # Corresponds to the JSON property `feedbackLabels`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainFeedbackLabel>]
        attr_accessor :feedback_labels
      
        # The next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @feedback_labels = args[:feedback_labels] if args.key?(:feedback_labels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The data for a matched phrase matcher. Represents information identifying a
      # phrase matcher for a given match.
      class GoogleCloudContactcenterinsightsV1mainPhraseMatchData
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
      
      # An answer to a QaQuestion.
      class GoogleCloudContactcenterinsightsV1mainQaAnswer
        include Google::Apis::Core::Hashable
      
        # Lists all answer sources containing one or more answer values of a specific
        # source type, e.g., all system-generated answer sources, or all manual edit
        # answer sources.
        # Corresponds to the JSON property `answerSources`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerSource>]
        attr_accessor :answer_sources
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `answerValue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue]
        attr_accessor :answer_value
      
        # The conversation the answer applies to.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # The QaQuestion answered by this answer.
        # Corresponds to the JSON property `qaQuestion`
        # @return [String]
        attr_accessor :qa_question
      
        # Question text. E.g., "Did the agent greet the customer?"
        # Corresponds to the JSON property `questionBody`
        # @return [String]
        attr_accessor :question_body
      
        # User-defined list of arbitrary tags. Matches the value from QaScorecard.
        # ScorecardQuestion.tags. Used for grouping/organization and for weighting the
        # score of each answer.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_sources = args[:answer_sources] if args.key?(:answer_sources)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @conversation = args[:conversation] if args.key?(:conversation)
          @qa_question = args[:qa_question] if args.key?(:qa_question)
          @question_body = args[:question_body] if args.key?(:question_body)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # A question may have multiple answers from varying sources, one of which
      # becomes the "main" answer above. AnswerSource represents each individual
      # answer.
      class GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerSource
        include Google::Apis::Core::Hashable
      
        # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
        # the possible answer values for a question.
        # Corresponds to the JSON property `answerValue`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue]
        attr_accessor :answer_value
      
        # What created the answer.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_value = args[:answer_value] if args.key?(:answer_value)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines
      # the possible answer values for a question.
      class GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue
        include Google::Apis::Core::Hashable
      
        # Boolean value.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # A short string used as an identifier. Matches the value used in QaQuestion.
        # AnswerChoice.key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A value of "Not Applicable (N/A)". Should only ever be `true`.
        # Corresponds to the JSON property `naValue`
        # @return [Boolean]
        attr_accessor :na_value
        alias_method :na_value?, :na_value
      
        # Output only. Normalized score of the questions. Calculated as score /
        # potential_score.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # Numerical value.
        # Corresponds to the JSON property `numValue`
        # @return [Float]
        attr_accessor :num_value
      
        # Output only. The maximum potential score of the question.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Output only. Numerical score of the answer.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # Output only. A value of "Skip". If provided, this field may only be set to `
        # true`. If a question receives this answer, it will be excluded from any score
        # calculations. This would mean that the question was not evaluated.
        # Corresponds to the JSON property `skipValue`
        # @return [Boolean]
        attr_accessor :skip_value
        alias_method :skip_value?, :skip_value
      
        # String value.
        # Corresponds to the JSON property `strValue`
        # @return [String]
        attr_accessor :str_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @key = args[:key] if args.key?(:key)
          @na_value = args[:na_value] if args.key?(:na_value)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @num_value = args[:num_value] if args.key?(:num_value)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @score = args[:score] if args.key?(:score)
          @skip_value = args[:skip_value] if args.key?(:skip_value)
          @str_value = args[:str_value] if args.key?(:str_value)
        end
      end
      
      # A tag is a resource which aims to categorize a set of questions across
      # multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.
      class GoogleCloudContactcenterinsightsV1mainQaQuestionTag
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the question tag was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. A user-specified display name for the tag.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. Resource name for the QaQuestionTag Format projects/`project`/
        # locations/`location`/qaQuestionTags/`qa_question_tag` In the above format, the
        # last segment, i.e., qa_question_tag, is a server-generated ID corresponding to
        # the tag resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The list of Scorecard Question IDs that the tag applies to. Each
        # QaQuestionId is represented as a full resource name containing the Question ID.
        # Lastly, Since a tag may not necessarily be referenced by any Scorecard
        # Questions, we treat this field as optional.
        # Corresponds to the JSON property `qaQuestionIds`
        # @return [Array<String>]
        attr_accessor :qa_question_ids
      
        # Output only. The most recent time at which the question tag was updated.
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
          @qa_question_ids = args[:qa_question_ids] if args.key?(:qa_question_ids)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The results of scoring a single conversation against a QaScorecard. Contains a
      # collection of QaAnswers and aggregate score.
      class GoogleCloudContactcenterinsightsV1mainQaScorecardResult
        include Google::Apis::Core::Hashable
      
        # ID of the agent that handled the conversation.
        # Corresponds to the JSON property `agentId`
        # @return [String]
        attr_accessor :agent_id
      
        # The conversation scored by this result.
        # Corresponds to the JSON property `conversation`
        # @return [String]
        attr_accessor :conversation
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The name of the scorecard result. Format: projects/`project`/
        # locations/`location`/qaScorecardResults/`qa_scorecard_result`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normalized score, which is the score divided by the potential score. Any
        # manual edits are included if they exist.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The maximum potential overall score of the scorecard. Any questions answered
        # using `na_value` are excluded from this calculation.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Set of QaAnswers represented in the result.
        # Corresponds to the JSON property `qaAnswers`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaAnswer>]
        attr_accessor :qa_answers
      
        # The QaScorecardRevision scored by this result.
        # Corresponds to the JSON property `qaScorecardRevision`
        # @return [String]
        attr_accessor :qa_scorecard_revision
      
        # Collection of tags and their scores.
        # Corresponds to the JSON property `qaTagResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaScorecardResultQaTagResult>]
        attr_accessor :qa_tag_results
      
        # The overall numerical score of the result, incorporating any manual edits if
        # they exist.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # List of all individual score sets.
        # Corresponds to the JSON property `scoreSources`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaScorecardResultScoreSource>]
        attr_accessor :score_sources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_id = args[:agent_id] if args.key?(:agent_id)
          @conversation = args[:conversation] if args.key?(:conversation)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @qa_answers = args[:qa_answers] if args.key?(:qa_answers)
          @qa_scorecard_revision = args[:qa_scorecard_revision] if args.key?(:qa_scorecard_revision)
          @qa_tag_results = args[:qa_tag_results] if args.key?(:qa_tag_results)
          @score = args[:score] if args.key?(:score)
          @score_sources = args[:score_sources] if args.key?(:score_sources)
        end
      end
      
      # Tags and their corresponding results.
      class GoogleCloudContactcenterinsightsV1mainQaScorecardResultQaTagResult
        include Google::Apis::Core::Hashable
      
        # The normalized score the tag applies to.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The potential score the tag applies to.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # The score the tag applies to.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # The tag the score applies to.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @score = args[:score] if args.key?(:score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A scorecard result may have multiple sets of scores from varying sources, one
      # of which becomes the "main" answer above. A ScoreSource represents each
      # individual set of scores.
      class GoogleCloudContactcenterinsightsV1mainQaScorecardResultScoreSource
        include Google::Apis::Core::Hashable
      
        # The normalized score, which is the score divided by the potential score.
        # Corresponds to the JSON property `normalizedScore`
        # @return [Float]
        attr_accessor :normalized_score
      
        # The maximum potential overall score of the scorecard. Any questions answered
        # using `na_value` are excluded from this calculation.
        # Corresponds to the JSON property `potentialScore`
        # @return [Float]
        attr_accessor :potential_score
      
        # Collection of tags and their scores.
        # Corresponds to the JSON property `qaTagResults`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaScorecardResultQaTagResult>]
        attr_accessor :qa_tag_results
      
        # The overall numerical score of the result.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        # What created the score.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @normalized_score = args[:normalized_score] if args.key?(:normalized_score)
          @potential_score = args[:potential_score] if args.key?(:potential_score)
          @qa_tag_results = args[:qa_tag_results] if args.key?(:qa_tag_results)
          @score = args[:score] if args.key?(:score)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # The metadata from querying metrics.
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsMetadata
        include Google::Apis::Core::Hashable
      
        # Whether the result rows were truncated because the result row size is too
        # large to materialize.
        # Corresponds to the JSON property `resultIsTruncated`
        # @return [Boolean]
        attr_accessor :result_is_truncated
        alias_method :result_is_truncated?, :result_is_truncated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_is_truncated = args[:result_is_truncated] if args.key?(:result_is_truncated)
        end
      end
      
      # The response for querying metrics.
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsResponse
        include Google::Apis::Core::Hashable
      
        # Required. The location of the data. "projects/`project`/locations/`location`"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # A slice contains a total and (if the request specified a time granularity) a
        # time series of metric values. Each slice contains a unique combination of the
        # cardinality of dimensions from the request. For example, if the request
        # specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the
        # data used to compute the metrics has 2 issues in total), the response will
        # have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[
        # Issue 2]
        # Corresponds to the JSON property `macroAverageSlice`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSlice]
        attr_accessor :macro_average_slice
      
        # A slice contains a total and (if the request specified a time granularity) a
        # time series of metric values. Each slice contains a unique combination of the
        # cardinality of dimensions from the request.
        # Corresponds to the JSON property `slices`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSlice>]
        attr_accessor :slices
      
        # The metrics last update time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @macro_average_slice = args[:macro_average_slice] if args.key?(:macro_average_slice)
          @slices = args[:slices] if args.key?(:slices)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A slice contains a total and (if the request specified a time granularity) a
      # time series of metric values. Each slice contains a unique combination of the
      # cardinality of dimensions from the request. For example, if the request
      # specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the
      # data used to compute the metrics has 2 issues in total), the response will
      # have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[
      # Issue 2]
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSlice
        include Google::Apis::Core::Hashable
      
        # A unique combination of dimensions that this slice represents.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDimension>]
        attr_accessor :dimensions
      
        # A time series of metric values.
        # Corresponds to the JSON property `timeSeries`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceTimeSeries]
        attr_accessor :time_series
      
        # A data point contains the metric values mapped to an interval.
        # Corresponds to the JSON property `total`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPoint]
        attr_accessor :total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @time_series = args[:time_series] if args.key?(:time_series)
          @total = args[:total] if args.key?(:total)
        end
      end
      
      # A data point contains the metric values mapped to an interval.
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPoint
        include Google::Apis::Core::Hashable
      
        # The measure related to conversations.
        # Corresponds to the JSON property `conversationMeasure`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasure]
        attr_accessor :conversation_measure
      
        # Represents a time interval, encoded as a Timestamp start (inclusive) and a
        # Timestamp end (exclusive). The start must be less than or equal to the end.
        # When the start equals the end, the interval is empty (matches no time). When
        # both start and end are unspecified, the interval matches any time.
        # Corresponds to the JSON property `interval`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleTypeInterval]
        attr_accessor :interval
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_measure = args[:conversation_measure] if args.key?(:conversation_measure)
          @interval = args[:interval] if args.key?(:interval)
        end
      end
      
      # The measure related to conversations.
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasure
        include Google::Apis::Core::Hashable
      
        # The average agent's sentiment score.
        # Corresponds to the JSON property `averageAgentSentimentScore`
        # @return [Float]
        attr_accessor :average_agent_sentiment_score
      
        # The average client's sentiment score.
        # Corresponds to the JSON property `averageClientSentimentScore`
        # @return [Float]
        attr_accessor :average_client_sentiment_score
      
        # The average customer satisfaction rating.
        # Corresponds to the JSON property `averageCustomerSatisfactionRating`
        # @return [Float]
        attr_accessor :average_customer_satisfaction_rating
      
        # The average duration.
        # Corresponds to the JSON property `averageDuration`
        # @return [String]
        attr_accessor :average_duration
      
        # The average normalized QA score for a scorecard. When computing the average
        # across a set of conversations, if a conversation has been evaluated with
        # multiple revisions of a scorecard, only the latest revision results will be
        # used. Will exclude 0's in average calculation. Will be only populated if the
        # request specifies a dimension of QA_SCORECARD_ID.
        # Corresponds to the JSON property `averageQaNormalizedScore`
        # @return [Float]
        attr_accessor :average_qa_normalized_score
      
        # Average QA normalized score averaged for questions averaged across all
        # revisions of the parent scorecard. Will be only populated if the request
        # specifies a dimension of QA_QUESTION_ID.
        # Corresponds to the JSON property `averageQaQuestionNormalizedScore`
        # @return [Float]
        attr_accessor :average_qa_question_normalized_score
      
        # The average silence percentage.
        # Corresponds to the JSON property `averageSilencePercentage`
        # @return [Float]
        attr_accessor :average_silence_percentage
      
        # The average turn count.
        # Corresponds to the JSON property `averageTurnCount`
        # @return [Float]
        attr_accessor :average_turn_count
      
        # The conversation count.
        # Corresponds to the JSON property `conversationCount`
        # @return [Fixnum]
        attr_accessor :conversation_count
      
        # Average QA normalized score for all the tags.
        # Corresponds to the JSON property `qaTagScores`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasureQaTagScore>]
        attr_accessor :qa_tag_scores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_agent_sentiment_score = args[:average_agent_sentiment_score] if args.key?(:average_agent_sentiment_score)
          @average_client_sentiment_score = args[:average_client_sentiment_score] if args.key?(:average_client_sentiment_score)
          @average_customer_satisfaction_rating = args[:average_customer_satisfaction_rating] if args.key?(:average_customer_satisfaction_rating)
          @average_duration = args[:average_duration] if args.key?(:average_duration)
          @average_qa_normalized_score = args[:average_qa_normalized_score] if args.key?(:average_qa_normalized_score)
          @average_qa_question_normalized_score = args[:average_qa_question_normalized_score] if args.key?(:average_qa_question_normalized_score)
          @average_silence_percentage = args[:average_silence_percentage] if args.key?(:average_silence_percentage)
          @average_turn_count = args[:average_turn_count] if args.key?(:average_turn_count)
          @conversation_count = args[:conversation_count] if args.key?(:conversation_count)
          @qa_tag_scores = args[:qa_tag_scores] if args.key?(:qa_tag_scores)
        end
      end
      
      # Average QA normalized score for the tag.
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasureQaTagScore
        include Google::Apis::Core::Hashable
      
        # Average tag normalized score per tag.
        # Corresponds to the JSON property `averageTagNormalizedScore`
        # @return [Float]
        attr_accessor :average_tag_normalized_score
      
        # Tag name.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_tag_normalized_score = args[:average_tag_normalized_score] if args.key?(:average_tag_normalized_score)
          @tag = args[:tag] if args.key?(:tag)
        end
      end
      
      # A time series of metric values.
      class GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceTimeSeries
        include Google::Apis::Core::Hashable
      
        # The data points that make up the time series .
        # Corresponds to the JSON property `dataPoints`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPoint>]
        attr_accessor :data_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_points = args[:data_points] if args.key?(:data_points)
        end
      end
      
      # The metadata for querying performance overview.
      class GoogleCloudContactcenterinsightsV1mainQueryPerformanceOverviewMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response for querying performance overview.
      class GoogleCloudContactcenterinsightsV1mainQueryPerformanceOverviewResponse
        include Google::Apis::Core::Hashable
      
        # The summary text of the performance.
        # Corresponds to the JSON property `summaryText`
        # @return [String]
        attr_accessor :summary_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @summary_text = args[:summary_text] if args.key?(:summary_text)
        end
      end
      
      # DLP resources used for redaction while ingesting conversations. DLP settings
      # are applied to conversations ingested from the `UploadConversation` and `
      # IngestConversations` endpoints, including conversation coming from CCAI
      # Platform. They are not applied to conversations ingested from the `
      # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
      # integrations. When using Dialogflow / Agent Assist runtime integrations,
      # redaction should be performed in Dialogflow / Agent Assist.
      class GoogleCloudContactcenterinsightsV1mainRedactionConfig
        include Google::Apis::Core::Hashable
      
        # The fully-qualified DLP deidentify template resource name. Format: `projects/`
        # project`/deidentifyTemplates/`template``
        # Corresponds to the JSON property `deidentifyTemplate`
        # @return [String]
        attr_accessor :deidentify_template
      
        # The fully-qualified DLP inspect template resource name. Format: `projects/`
        # project`/locations/`location`/inspectTemplates/`template``
        # Corresponds to the JSON property `inspectTemplate`
        # @return [String]
        attr_accessor :inspect_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deidentify_template = args[:deidentify_template] if args.key?(:deidentify_template)
          @inspect_template = args[:inspect_template] if args.key?(:inspect_template)
        end
      end
      
      # An annotation that was generated during the customer and agent interaction.
      class GoogleCloudContactcenterinsightsV1mainRuntimeAnnotation
        include Google::Apis::Core::Hashable
      
        # The unique identifier of the annotation. Format: projects/`project`/locations/`
        # location`/conversationDatasets/`dataset`/conversationDataItems/`data_item`/
        # conversationAnnotations/`annotation`
        # Corresponds to the JSON property `annotationId`
        # @return [String]
        attr_accessor :annotation_id
      
        # The feedback that the customer has about a certain answer in the conversation.
        # Corresponds to the JSON property `answerFeedback`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnswerFeedback]
        attr_accessor :answer_feedback
      
        # Agent Assist Article Suggestion data.
        # Corresponds to the JSON property `articleSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainArticleSuggestionData]
        attr_accessor :article_suggestion
      
        # Conversation summarization suggestion data.
        # Corresponds to the JSON property `conversationSummarizationSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversationSummarizationSuggestionData]
        attr_accessor :conversation_summarization_suggestion
      
        # The time at which this annotation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Dialogflow interaction data.
        # Corresponds to the JSON property `dialogflowInteraction`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDialogflowInteractionData]
        attr_accessor :dialogflow_interaction
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `endBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotationBoundary]
        attr_accessor :end_boundary
      
        # Agent Assist frequently-asked-question answer data.
        # Corresponds to the JSON property `faqAnswer`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainFaqAnswerData]
        attr_accessor :faq_answer
      
        # Agent Assist Smart Compose suggestion data.
        # Corresponds to the JSON property `smartComposeSuggestion`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSmartComposeSuggestionData]
        attr_accessor :smart_compose_suggestion
      
        # Agent Assist Smart Reply data.
        # Corresponds to the JSON property `smartReply`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSmartReplyData]
        attr_accessor :smart_reply
      
        # A point in a conversation that marks the start or the end of an annotation.
        # Corresponds to the JSON property `startBoundary`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainAnnotationBoundary]
        attr_accessor :start_boundary
      
        # Explicit input used for generating the answer
        # Corresponds to the JSON property `userInput`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainRuntimeAnnotationUserInput]
        attr_accessor :user_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotation_id = args[:annotation_id] if args.key?(:annotation_id)
          @answer_feedback = args[:answer_feedback] if args.key?(:answer_feedback)
          @article_suggestion = args[:article_suggestion] if args.key?(:article_suggestion)
          @conversation_summarization_suggestion = args[:conversation_summarization_suggestion] if args.key?(:conversation_summarization_suggestion)
          @create_time = args[:create_time] if args.key?(:create_time)
          @dialogflow_interaction = args[:dialogflow_interaction] if args.key?(:dialogflow_interaction)
          @end_boundary = args[:end_boundary] if args.key?(:end_boundary)
          @faq_answer = args[:faq_answer] if args.key?(:faq_answer)
          @smart_compose_suggestion = args[:smart_compose_suggestion] if args.key?(:smart_compose_suggestion)
          @smart_reply = args[:smart_reply] if args.key?(:smart_reply)
          @start_boundary = args[:start_boundary] if args.key?(:start_boundary)
          @user_input = args[:user_input] if args.key?(:user_input)
        end
      end
      
      # Explicit input used for generating the answer
      class GoogleCloudContactcenterinsightsV1mainRuntimeAnnotationUserInput
        include Google::Apis::Core::Hashable
      
        # The resource name of associated generator. Format: `projects//locations//
        # generators/`
        # Corresponds to the JSON property `generatorName`
        # @return [String]
        attr_accessor :generator_name
      
        # Query text. Article Search uses this to store the input query used to generate
        # the search results.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Query source for the answer.
        # Corresponds to the JSON property `querySource`
        # @return [String]
        attr_accessor :query_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @generator_name = args[:generator_name] if args.key?(:generator_name)
          @query = args[:query] if args.key?(:query)
          @query_source = args[:query_source] if args.key?(:query_source)
        end
      end
      
      # The metadata for an SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1mainSampleConversationsMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Partial errors during sample conversations operation that might
        # cause the operation output to be incomplete.
        # Corresponds to the JSON property `partialErrors`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleRpcStatus>]
        attr_accessor :partial_errors
      
        # The request to sample conversations to a dataset.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSampleConversationsRequest]
        attr_accessor :request
      
        # Statistics for SampleConversations operation.
        # Corresponds to the JSON property `sampleConversationsStats`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSampleConversationsMetadataSampleConversationsStats]
        attr_accessor :sample_conversations_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @partial_errors = args[:partial_errors] if args.key?(:partial_errors)
          @request = args[:request] if args.key?(:request)
          @sample_conversations_stats = args[:sample_conversations_stats] if args.key?(:sample_conversations_stats)
        end
      end
      
      # Statistics for SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1mainSampleConversationsMetadataSampleConversationsStats
        include Google::Apis::Core::Hashable
      
        # Output only. The number of objects which were unable to be sampled due to
        # errors. The errors are populated in the partial_errors field.
        # Corresponds to the JSON property `failedSampleCount`
        # @return [Fixnum]
        attr_accessor :failed_sample_count
      
        # Output only. The number of new conversations added during this sample
        # operation.
        # Corresponds to the JSON property `successfulSampleCount`
        # @return [Fixnum]
        attr_accessor :successful_sample_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed_sample_count = args[:failed_sample_count] if args.key?(:failed_sample_count)
          @successful_sample_count = args[:successful_sample_count] if args.key?(:successful_sample_count)
        end
      end
      
      # The request to sample conversations to a dataset.
      class GoogleCloudContactcenterinsightsV1mainSampleConversationsRequest
        include Google::Apis::Core::Hashable
      
        # Dataset resource represents a collection of conversations that may be bounded (
        # Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic
        # Dataset, e.g. live traffic, or agent training traffic)
        # Corresponds to the JSON property `destinationDataset`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainDataset]
        attr_accessor :destination_dataset
      
        # Required. The parent resource of the dataset.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Message for sampling conversations.
        # Corresponds to the JSON property `sampleRule`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSampleRule]
        attr_accessor :sample_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
          @parent = args[:parent] if args.key?(:parent)
          @sample_rule = args[:sample_rule] if args.key?(:sample_rule)
        end
      end
      
      # The response to an SampleConversations operation.
      class GoogleCloudContactcenterinsightsV1mainSampleConversationsResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for sampling conversations.
      class GoogleCloudContactcenterinsightsV1mainSampleRule
        include Google::Apis::Core::Hashable
      
        # To specify the filter for the conversions that should apply this sample rule.
        # An empty filter means this sample rule applies to all conversations.
        # Corresponds to the JSON property `conversationFilter`
        # @return [String]
        attr_accessor :conversation_filter
      
        # Optional. Group by dimension to sample the conversation. If no dimension is
        # provided, the sampling will be applied to the project level. Current supported
        # dimensions is 'quality_metadata.agent_info.agent_id'.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Percentage of conversations that we should sample based on the dimension
        # between [0, 100].
        # Corresponds to the JSON property `samplePercentage`
        # @return [Float]
        attr_accessor :sample_percentage
      
        # Number of the conversations that we should sample based on the dimension.
        # Corresponds to the JSON property `sampleRow`
        # @return [Fixnum]
        attr_accessor :sample_row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation_filter = args[:conversation_filter] if args.key?(:conversation_filter)
          @dimension = args[:dimension] if args.key?(:dimension)
          @sample_percentage = args[:sample_percentage] if args.key?(:sample_percentage)
          @sample_row = args[:sample_row] if args.key?(:sample_row)
        end
      end
      
      # The data for a sentiment annotation.
      class GoogleCloudContactcenterinsightsV1mainSentimentData
        include Google::Apis::Core::Hashable
      
        # A non-negative number from 0 to infinity which represents the absolute
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
      
      # The data for a silence annotation.
      class GoogleCloudContactcenterinsightsV1mainSilenceData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Agent Assist Smart Compose suggestion data.
      class GoogleCloudContactcenterinsightsV1mainSmartComposeSuggestionData
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
      class GoogleCloudContactcenterinsightsV1mainSmartReplyData
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
      
      # Speech-to-Text configuration. Speech-to-Text settings are applied to
      # conversations ingested from the `UploadConversation` and `IngestConversations`
      # endpoints, including conversation coming from CCAI Platform. They are not
      # applied to conversations ingested from the `CreateConversation` endpoint.
      class GoogleCloudContactcenterinsightsV1mainSpeechConfig
        include Google::Apis::Core::Hashable
      
        # Whether to disable word time offsets. If true, the `enable_word_time_offsets`
        # field in the recognition config will be set to false.
        # Corresponds to the JSON property `disableWordTimeOffsets`
        # @return [Boolean]
        attr_accessor :disable_word_time_offsets
        alias_method :disable_word_time_offsets?, :disable_word_time_offsets
      
        # The fully-qualified Speech Recognizer resource name. Format: `projects/`
        # project_id`/locations/`location`/recognizer/`recognizer``
        # Corresponds to the JSON property `speechRecognizer`
        # @return [String]
        attr_accessor :speech_recognizer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_word_time_offsets = args[:disable_word_time_offsets] if args.key?(:disable_word_time_offsets)
          @speech_recognizer = args[:speech_recognizer] if args.key?(:speech_recognizer)
        end
      end
      
      # Metadata for undeploying an issue model.
      class GoogleCloudContactcenterinsightsV1mainUndeployIssueModelMetadata
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
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainUndeployIssueModelRequest]
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
      class GoogleCloudContactcenterinsightsV1mainUndeployIssueModelRequest
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
      class GoogleCloudContactcenterinsightsV1mainUndeployIssueModelResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for updating a QaQuestionTag Resource.
      class GoogleCloudContactcenterinsightsV1mainUpdateQaQuestionTagMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The request for updating a QaQuestionTag.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainUpdateQaQuestionTagRequest]
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
      
      # The request for updating a QaQuestionTag.
      class GoogleCloudContactcenterinsightsV1mainUpdateQaQuestionTagRequest
        include Google::Apis::Core::Hashable
      
        # A tag is a resource which aims to categorize a set of questions across
        # multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.
        # Corresponds to the JSON property `qaQuestionTag`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainQaQuestionTag]
        attr_accessor :qa_question_tag
      
        # Optional. The list of fields to be updated. All possible fields can be updated
        # by passing `*`, or a subset of the following updateable fields can be provided:
        # * `qa_question_tag_name` - the name of the tag * `qa_question_ids` - the list
        # of questions the tag applies to
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @qa_question_tag = args[:qa_question_tag] if args.key?(:qa_question_tag)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The metadata for an `UploadConversation` operation.
      class GoogleCloudContactcenterinsightsV1mainUploadConversationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The operation name for a successfully created analysis operation,
        # if any.
        # Corresponds to the JSON property `analysisOperation`
        # @return [String]
        attr_accessor :analysis_operation
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `appliedRedactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainRedactionConfig]
        attr_accessor :applied_redaction_config
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Request to upload a conversation.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainUploadConversationRequest]
        attr_accessor :request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_operation = args[:analysis_operation] if args.key?(:analysis_operation)
          @applied_redaction_config = args[:applied_redaction_config] if args.key?(:applied_redaction_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @request = args[:request] if args.key?(:request)
        end
      end
      
      # Request to upload a conversation.
      class GoogleCloudContactcenterinsightsV1mainUploadConversationRequest
        include Google::Apis::Core::Hashable
      
        # The conversation resource.
        # Corresponds to the JSON property `conversation`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainConversation]
        attr_accessor :conversation
      
        # Optional. A unique ID for the new conversation. This ID will become the final
        # component of the conversation's resource name. If no ID is specified, a server-
        # generated ID will be used. This value should be 4-64 characters and must match
        # the regular expression `^[a-z0-9-]`4,64`$`. Valid characters are `a-z-`
        # Corresponds to the JSON property `conversationId`
        # @return [String]
        attr_accessor :conversation_id
      
        # Required. The parent resource of the conversation.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # DLP resources used for redaction while ingesting conversations. DLP settings
        # are applied to conversations ingested from the `UploadConversation` and `
        # IngestConversations` endpoints, including conversation coming from CCAI
        # Platform. They are not applied to conversations ingested from the `
        # CreateConversation` endpoint or the Dialogflow / Agent Assist runtime
        # integrations. When using Dialogflow / Agent Assist runtime integrations,
        # redaction should be performed in Dialogflow / Agent Assist.
        # Corresponds to the JSON property `redactionConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainRedactionConfig]
        attr_accessor :redaction_config
      
        # Speech-to-Text configuration. Speech-to-Text settings are applied to
        # conversations ingested from the `UploadConversation` and `IngestConversations`
        # endpoints, including conversation coming from CCAI Platform. They are not
        # applied to conversations ingested from the `CreateConversation` endpoint.
        # Corresponds to the JSON property `speechConfig`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleCloudContactcenterinsightsV1mainSpeechConfig]
        attr_accessor :speech_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversation = args[:conversation] if args.key?(:conversation)
          @conversation_id = args[:conversation_id] if args.key?(:conversation_id)
          @parent = args[:parent] if args.key?(:parent)
          @redaction_config = args[:redaction_config] if args.key?(:redaction_config)
          @speech_config = args[:speech_config] if args.key?(:speech_config)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class GoogleIamV1Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleTypeExpr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ContactcenterinsightsV1::GoogleIamV1Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ContactcenterinsightsV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
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
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class GoogleTypeExpr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents a time interval, encoded as a Timestamp start (inclusive) and a
      # Timestamp end (exclusive). The start must be less than or equal to the end.
      # When the start equals the end, the interval is empty (matches no time). When
      # both start and end are unspecified, the interval matches any time.
      class GoogleTypeInterval
        include Google::Apis::Core::Hashable
      
        # Optional. Exclusive end of the interval. If specified, a Timestamp matching
        # this interval will have to be before the end.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. Inclusive start of the interval. If specified, a Timestamp matching
        # this interval will have to be the same or after the start.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
    end
  end
end
