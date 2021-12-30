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
      
      class Answer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Author
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAnswersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListQuestionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Question
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpsertAnswerRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Answer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::MybusinessqandaV1::Author, decorator: Google::Apis::MybusinessqandaV1::Author::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :text, as: 'text'
          property :update_time, as: 'updateTime'
          property :upvote_count, as: 'upvoteCount'
        end
      end
      
      class Author
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :profile_photo_uri, as: 'profilePhotoUri'
          property :type, as: 'type'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListAnswersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answers, as: 'answers', class: Google::Apis::MybusinessqandaV1::Answer, decorator: Google::Apis::MybusinessqandaV1::Answer::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :total_size, as: 'totalSize'
        end
      end
      
      class ListQuestionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :questions, as: 'questions', class: Google::Apis::MybusinessqandaV1::Question, decorator: Google::Apis::MybusinessqandaV1::Question::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class Question
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :author, as: 'author', class: Google::Apis::MybusinessqandaV1::Author, decorator: Google::Apis::MybusinessqandaV1::Author::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :text, as: 'text'
          collection :top_answers, as: 'topAnswers', class: Google::Apis::MybusinessqandaV1::Answer, decorator: Google::Apis::MybusinessqandaV1::Answer::Representation
      
          property :total_answer_count, as: 'totalAnswerCount'
          property :update_time, as: 'updateTime'
          property :upvote_count, as: 'upvoteCount'
        end
      end
      
      class UpsertAnswerRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :answer, as: 'answer', class: Google::Apis::MybusinessqandaV1::Answer, decorator: Google::Apis::MybusinessqandaV1::Answer::Representation
      
        end
      end
    end
  end
end
