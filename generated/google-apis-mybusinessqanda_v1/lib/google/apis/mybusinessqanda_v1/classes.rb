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
    module MybusinessqandaV1
      
      # Represents an answer to a question
      class Answer
        include Google::Apis::Core::Hashable
      
        # Represents the author of a question or answer
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::MybusinessqandaV1::Author]
        attr_accessor :author
      
        # Output only. The timestamp for when the answer was written. Only retrieved
        # during ListResponse fetching.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The unique name for the answer locations/*/questions/*/answers/*
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The text of the answer. It should contain at least one non-
        # whitespace character. The maximum length is 4096 characters.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Output only. The timestamp for when the answer was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The number of upvotes for the answer.
        # Corresponds to the JSON property `upvoteCount`
        # @return [Fixnum]
        attr_accessor :upvote_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @text = args[:text] if args.key?(:text)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upvote_count = args[:upvote_count] if args.key?(:upvote_count)
        end
      end
      
      # Represents the author of a question or answer
      class Author
        include Google::Apis::Core::Hashable
      
        # The display name of the user
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The profile photo URI of the user.
        # Corresponds to the JSON property `profilePhotoUri`
        # @return [String]
        attr_accessor :profile_photo_uri
      
        # The type of user the author is.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @profile_photo_uri = args[:profile_photo_uri] if args.key?(:profile_photo_uri)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for QuestionsAndAnswers.ListAnswers
      class ListAnswersResponse
        include Google::Apis::Core::Hashable
      
        # The requested answers.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::MybusinessqandaV1::Answer>]
        attr_accessor :answers
      
        # If the number of answers exceeds the requested max page size, this field is
        # populated with a token to fetch the next page of answers on a subsequent call.
        # If there are no more answers, this field is not present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of answers posted for this question across all pages.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Response message for QuestionsAndAnswers.ListQuestions
      class ListQuestionsResponse
        include Google::Apis::Core::Hashable
      
        # If the number of questions exceeds the requested max page size, this field is
        # populated with a token to fetch the next page of questions on a subsequent
        # call. If there are no more questions, this field is not present in the
        # response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The requested questions,
        # Corresponds to the JSON property `questions`
        # @return [Array<Google::Apis::MybusinessqandaV1::Question>]
        attr_accessor :questions
      
        # The total number of questions posted for this location across all pages.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @questions = args[:questions] if args.key?(:questions)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Represents a single question and some of its answers.
      class Question
        include Google::Apis::Core::Hashable
      
        # Represents the author of a question or answer
        # Corresponds to the JSON property `author`
        # @return [Google::Apis::MybusinessqandaV1::Author]
        attr_accessor :author
      
        # Output only. The timestamp for when the question was written.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. The unique name for the question. locations/*/questions/* This
        # field will be ignored if set during question creation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The text of the question. It should contain at least three words and
        # the total length should be greater than or equal to 10 characters. The maximum
        # length is 4096 characters.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Output only. A list of answers to the question, sorted by upvotes. This may
        # not be a complete list of answers depending on the request parameters (
        # answers_per_question)
        # Corresponds to the JSON property `topAnswers`
        # @return [Array<Google::Apis::MybusinessqandaV1::Answer>]
        attr_accessor :top_answers
      
        # Output only. The total number of answers posted for this question.
        # Corresponds to the JSON property `totalAnswerCount`
        # @return [Fixnum]
        attr_accessor :total_answer_count
      
        # Output only. The timestamp for when the question was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The number of upvotes for the question.
        # Corresponds to the JSON property `upvoteCount`
        # @return [Fixnum]
        attr_accessor :upvote_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @author = args[:author] if args.key?(:author)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @text = args[:text] if args.key?(:text)
          @top_answers = args[:top_answers] if args.key?(:top_answers)
          @total_answer_count = args[:total_answer_count] if args.key?(:total_answer_count)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upvote_count = args[:upvote_count] if args.key?(:upvote_count)
        end
      end
      
      # Request message for QuestionsAndAnswers.UpsertAnswer
      class UpsertAnswerRequest
        include Google::Apis::Core::Hashable
      
        # Represents an answer to a question
        # Corresponds to the JSON property `answer`
        # @return [Google::Apis::MybusinessqandaV1::Answer]
        attr_accessor :answer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answer = args[:answer] if args.key?(:answer)
        end
      end
    end
  end
end
