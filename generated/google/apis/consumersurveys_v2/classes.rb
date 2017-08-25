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
    module ConsumersurveysV2
      
      # 
      class FieldMask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::ConsumersurveysV2::FieldMask>]
        attr_accessor :fields
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class MobileAppPanel
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # 
        # Corresponds to the JSON property `isPublicPanel`
        # @return [Boolean]
        attr_accessor :is_public_panel
        alias_method :is_public_panel?, :is_public_panel
      
        # 
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # 
        # Corresponds to the JSON property `mobileAppPanelId`
        # @return [String]
        attr_accessor :mobile_app_panel_id
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `owners`
        # @return [Array<String>]
        attr_accessor :owners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country = args[:country] if args.key?(:country)
          @is_public_panel = args[:is_public_panel] if args.key?(:is_public_panel)
          @language = args[:language] if args.key?(:language)
          @mobile_app_panel_id = args[:mobile_app_panel_id] if args.key?(:mobile_app_panel_id)
          @name = args[:name] if args.key?(:name)
          @owners = args[:owners] if args.key?(:owners)
        end
      end
      
      # 
      class MobileAppPanelsListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::ConsumersurveysV2::PageInfo]
        attr_accessor :page_info
      
        # Unique request ID used for logging and debugging. Please include in any error
        # reporting or troubleshooting requests.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # An individual predefined panel of Opinion Rewards mobile users.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ConsumersurveysV2::MobileAppPanel>]
        attr_accessor :resources
      
        # 
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::ConsumersurveysV2::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_info = args[:page_info] if args.key?(:page_info)
          @request_id = args[:request_id] if args.key?(:request_id)
          @resources = args[:resources] if args.key?(:resources)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
        end
      end
      
      # 
      class PageInfo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resultPerPage`
        # @return [Fixnum]
        attr_accessor :result_per_page
      
        # 
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # 
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_per_page = args[:result_per_page] if args.key?(:result_per_page)
          @start_index = args[:start_index] if args.key?(:start_index)
          @total_results = args[:total_results] if args.key?(:total_results)
        end
      end
      
      # 
      class ResultsGetRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `resultMask`
        # @return [Google::Apis::ConsumersurveysV2::ResultsMask]
        attr_accessor :result_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_mask = args[:result_mask] if args.key?(:result_mask)
        end
      end
      
      # 
      class ResultsMask
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::ConsumersurveysV2::FieldMask>]
        attr_accessor :fields
      
        # 
        # Corresponds to the JSON property `projection`
        # @return [String]
        attr_accessor :projection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @projection = args[:projection] if args.key?(:projection)
        end
      end
      
      # 
      class Survey
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `audience`
        # @return [Google::Apis::ConsumersurveysV2::SurveyAudience]
        attr_accessor :audience
      
        # 
        # Corresponds to the JSON property `cost`
        # @return [Google::Apis::ConsumersurveysV2::SurveyCost]
        attr_accessor :cost
      
        # 
        # Corresponds to the JSON property `customerData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :customer_data
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `owners`
        # @return [Array<String>]
        attr_accessor :owners
      
        # 
        # Corresponds to the JSON property `questions`
        # @return [Array<Google::Apis::ConsumersurveysV2::SurveyQuestion>]
        attr_accessor :questions
      
        # 
        # Corresponds to the JSON property `rejectionReason`
        # @return [Google::Apis::ConsumersurveysV2::SurveyRejection]
        attr_accessor :rejection_reason
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # 
        # Corresponds to the JSON property `surveyUrlId`
        # @return [String]
        attr_accessor :survey_url_id
      
        # 
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # 
        # Corresponds to the JSON property `wantedResponseCount`
        # @return [Fixnum]
        attr_accessor :wanted_response_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @cost = args[:cost] if args.key?(:cost)
          @customer_data = args[:customer_data] if args.key?(:customer_data)
          @description = args[:description] if args.key?(:description)
          @owners = args[:owners] if args.key?(:owners)
          @questions = args[:questions] if args.key?(:questions)
          @rejection_reason = args[:rejection_reason] if args.key?(:rejection_reason)
          @state = args[:state] if args.key?(:state)
          @survey_url_id = args[:survey_url_id] if args.key?(:survey_url_id)
          @title = args[:title] if args.key?(:title)
          @wanted_response_count = args[:wanted_response_count] if args.key?(:wanted_response_count)
        end
      end
      
      # 
      class SurveyAudience
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ages`
        # @return [Array<String>]
        attr_accessor :ages
      
        # 
        # Corresponds to the JSON property `country`
        # @return [String]
        attr_accessor :country
      
        # 
        # Corresponds to the JSON property `countrySubdivision`
        # @return [String]
        attr_accessor :country_subdivision
      
        # 
        # Corresponds to the JSON property `gender`
        # @return [String]
        attr_accessor :gender
      
        # 
        # Corresponds to the JSON property `languages`
        # @return [Array<String>]
        attr_accessor :languages
      
        # 
        # Corresponds to the JSON property `mobileAppPanelId`
        # @return [String]
        attr_accessor :mobile_app_panel_id
      
        # 
        # Corresponds to the JSON property `populationSource`
        # @return [String]
        attr_accessor :population_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ages = args[:ages] if args.key?(:ages)
          @country = args[:country] if args.key?(:country)
          @country_subdivision = args[:country_subdivision] if args.key?(:country_subdivision)
          @gender = args[:gender] if args.key?(:gender)
          @languages = args[:languages] if args.key?(:languages)
          @mobile_app_panel_id = args[:mobile_app_panel_id] if args.key?(:mobile_app_panel_id)
          @population_source = args[:population_source] if args.key?(:population_source)
        end
      end
      
      # 
      class SurveyCost
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `costPerResponseNanos`
        # @return [Fixnum]
        attr_accessor :cost_per_response_nanos
      
        # 
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # 
        # Corresponds to the JSON property `maxCostPerResponseNanos`
        # @return [Fixnum]
        attr_accessor :max_cost_per_response_nanos
      
        # 
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cost_per_response_nanos = args[:cost_per_response_nanos] if args.key?(:cost_per_response_nanos)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @max_cost_per_response_nanos = args[:max_cost_per_response_nanos] if args.key?(:max_cost_per_response_nanos)
          @nanos = args[:nanos] if args.key?(:nanos)
        end
      end
      
      # 
      class SurveyQuestion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `answerOrder`
        # @return [String]
        attr_accessor :answer_order
      
        # 
        # Corresponds to the JSON property `answers`
        # @return [Array<String>]
        attr_accessor :answers
      
        # 
        # Corresponds to the JSON property `hasOther`
        # @return [Boolean]
        attr_accessor :has_other
        alias_method :has_other?, :has_other
      
        # 
        # Corresponds to the JSON property `highValueLabel`
        # @return [String]
        attr_accessor :high_value_label
      
        # 
        # Corresponds to the JSON property `images`
        # @return [Array<Google::Apis::ConsumersurveysV2::SurveyQuestionImage>]
        attr_accessor :images
      
        # 
        # Corresponds to the JSON property `lastAnswerPositionPinned`
        # @return [Boolean]
        attr_accessor :last_answer_position_pinned
        alias_method :last_answer_position_pinned?, :last_answer_position_pinned
      
        # 
        # Corresponds to the JSON property `lowValueLabel`
        # @return [String]
        attr_accessor :low_value_label
      
        # 
        # Corresponds to the JSON property `mustPickSuggestion`
        # @return [Boolean]
        attr_accessor :must_pick_suggestion
        alias_method :must_pick_suggestion?, :must_pick_suggestion
      
        # 
        # Corresponds to the JSON property `numStars`
        # @return [String]
        attr_accessor :num_stars
      
        # 
        # Corresponds to the JSON property `openTextPlaceholder`
        # @return [String]
        attr_accessor :open_text_placeholder
      
        # 
        # Corresponds to the JSON property `openTextSuggestions`
        # @return [Array<String>]
        attr_accessor :open_text_suggestions
      
        # 
        # Corresponds to the JSON property `question`
        # @return [String]
        attr_accessor :question
      
        # 
        # Corresponds to the JSON property `sentimentText`
        # @return [String]
        attr_accessor :sentiment_text
      
        # 
        # Corresponds to the JSON property `singleLineResponse`
        # @return [Boolean]
        attr_accessor :single_line_response
        alias_method :single_line_response?, :single_line_response
      
        # 
        # Corresponds to the JSON property `thresholdAnswers`
        # @return [Array<String>]
        attr_accessor :threshold_answers
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `unitOfMeasurementLabel`
        # @return [String]
        attr_accessor :unit_of_measurement_label
      
        # 
        # Corresponds to the JSON property `videoId`
        # @return [String]
        attr_accessor :video_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer_order = args[:answer_order] if args.key?(:answer_order)
          @answers = args[:answers] if args.key?(:answers)
          @has_other = args[:has_other] if args.key?(:has_other)
          @high_value_label = args[:high_value_label] if args.key?(:high_value_label)
          @images = args[:images] if args.key?(:images)
          @last_answer_position_pinned = args[:last_answer_position_pinned] if args.key?(:last_answer_position_pinned)
          @low_value_label = args[:low_value_label] if args.key?(:low_value_label)
          @must_pick_suggestion = args[:must_pick_suggestion] if args.key?(:must_pick_suggestion)
          @num_stars = args[:num_stars] if args.key?(:num_stars)
          @open_text_placeholder = args[:open_text_placeholder] if args.key?(:open_text_placeholder)
          @open_text_suggestions = args[:open_text_suggestions] if args.key?(:open_text_suggestions)
          @question = args[:question] if args.key?(:question)
          @sentiment_text = args[:sentiment_text] if args.key?(:sentiment_text)
          @single_line_response = args[:single_line_response] if args.key?(:single_line_response)
          @threshold_answers = args[:threshold_answers] if args.key?(:threshold_answers)
          @type = args[:type] if args.key?(:type)
          @unit_of_measurement_label = args[:unit_of_measurement_label] if args.key?(:unit_of_measurement_label)
          @video_id = args[:video_id] if args.key?(:video_id)
        end
      end
      
      # 
      class SurveyQuestionImage
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # 
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # 
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @data = args[:data] if args.key?(:data)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # 
      class SurveyRejection
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `explanation`
        # @return [String]
        attr_accessor :explanation
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explanation = args[:explanation] if args.key?(:explanation)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class SurveyResults
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `surveyUrlId`
        # @return [String]
        attr_accessor :survey_url_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @survey_url_id = args[:survey_url_id] if args.key?(:survey_url_id)
        end
      end
      
      # 
      class SurveysDeleteResponse
        include Google::Apis::Core::Hashable
      
        # Unique request ID used for logging and debugging. Please include in any error
        # reporting or troubleshooting requests.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class SurveysListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `pageInfo`
        # @return [Google::Apis::ConsumersurveysV2::PageInfo]
        attr_accessor :page_info
      
        # Unique request ID used for logging and debugging. Please include in any error
        # reporting or troubleshooting requests.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # An individual survey resource.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ConsumersurveysV2::Survey>]
        attr_accessor :resources
      
        # 
        # Corresponds to the JSON property `tokenPagination`
        # @return [Google::Apis::ConsumersurveysV2::TokenPagination]
        attr_accessor :token_pagination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_info = args[:page_info] if args.key?(:page_info)
          @request_id = args[:request_id] if args.key?(:request_id)
          @resources = args[:resources] if args.key?(:resources)
          @token_pagination = args[:token_pagination] if args.key?(:token_pagination)
        end
      end
      
      # 
      class SurveysStartRequest
        include Google::Apis::Core::Hashable
      
        # Threshold to start a survey automically if the quoted prices is less than or
        # equal to this value. See Survey.Cost for more details.
        # Corresponds to the JSON property `maxCostPerResponseNanos`
        # @return [Fixnum]
        attr_accessor :max_cost_per_response_nanos
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_cost_per_response_nanos = args[:max_cost_per_response_nanos] if args.key?(:max_cost_per_response_nanos)
        end
      end
      
      # 
      class SurveysStartResponse
        include Google::Apis::Core::Hashable
      
        # Unique request ID used for logging and debugging. Please include in any error
        # reporting or troubleshooting requests.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class SurveysStopResponse
        include Google::Apis::Core::Hashable
      
        # Unique request ID used for logging and debugging. Please include in any error
        # reporting or troubleshooting requests.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # 
      class TokenPagination
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `previousPageToken`
        # @return [String]
        attr_accessor :previous_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @previous_page_token = args[:previous_page_token] if args.key?(:previous_page_token)
        end
      end
    end
  end
end
