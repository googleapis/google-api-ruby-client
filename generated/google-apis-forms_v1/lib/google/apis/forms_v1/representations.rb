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
    module FormsV1
      
      class Answer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateFormRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateFormResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChoiceQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudPubsubTopic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CorrectAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CorrectAnswers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateItemResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateWatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeleteItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtraMaterial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Feedback
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileUploadAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileUploadAnswers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileUploadQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Form
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Grade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Grading
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Grid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Info
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListFormResponsesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListWatchesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Option
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PageBreakItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Question
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuestionGroupItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuestionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QuizSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RenewWatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Request
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Response
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RowQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScaleQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextAnswer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextAnswers
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeQuestion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateFormInfoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateItemRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSettingsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Video
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Watch
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WatchTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WriteControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Answer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_upload_answers, as: 'fileUploadAnswers', class: Google::Apis::FormsV1::FileUploadAnswers, decorator: Google::Apis::FormsV1::FileUploadAnswers::Representation
      
          property :grade, as: 'grade', class: Google::Apis::FormsV1::Grade, decorator: Google::Apis::FormsV1::Grade::Representation
      
          property :question_id, as: 'questionId'
          property :text_answers, as: 'textAnswers', class: Google::Apis::FormsV1::TextAnswers, decorator: Google::Apis::FormsV1::TextAnswers::Representation
      
        end
      end
      
      class BatchUpdateFormRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_form_in_response, as: 'includeFormInResponse'
          collection :requests, as: 'requests', class: Google::Apis::FormsV1::Request, decorator: Google::Apis::FormsV1::Request::Representation
      
          property :write_control, as: 'writeControl', class: Google::Apis::FormsV1::WriteControl, decorator: Google::Apis::FormsV1::WriteControl::Representation
      
        end
      end
      
      class BatchUpdateFormResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :form, as: 'form', class: Google::Apis::FormsV1::Form, decorator: Google::Apis::FormsV1::Form::Representation
      
          collection :replies, as: 'replies', class: Google::Apis::FormsV1::Response, decorator: Google::Apis::FormsV1::Response::Representation
      
          property :write_control, as: 'writeControl', class: Google::Apis::FormsV1::WriteControl, decorator: Google::Apis::FormsV1::WriteControl::Representation
      
        end
      end
      
      class ChoiceQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :options, as: 'options', class: Google::Apis::FormsV1::Option, decorator: Google::Apis::FormsV1::Option::Representation
      
          property :shuffle, as: 'shuffle'
          property :type, as: 'type'
        end
      end
      
      class CloudPubsubTopic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic_name, as: 'topicName'
        end
      end
      
      class CorrectAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class CorrectAnswers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answers, as: 'answers', class: Google::Apis::FormsV1::CorrectAnswer, decorator: Google::Apis::FormsV1::CorrectAnswer::Representation
      
        end
      end
      
      class CreateItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::FormsV1::Item, decorator: Google::Apis::FormsV1::Item::Representation
      
          property :location, as: 'location', class: Google::Apis::FormsV1::Location, decorator: Google::Apis::FormsV1::Location::Representation
      
        end
      end
      
      class CreateItemResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item_id, as: 'itemId'
          collection :question_id, as: 'questionId'
        end
      end
      
      class CreateWatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :watch, as: 'watch', class: Google::Apis::FormsV1::Watch, decorator: Google::Apis::FormsV1::Watch::Representation
      
          property :watch_id, as: 'watchId'
        end
      end
      
      class DateQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_time, as: 'includeTime'
          property :include_year, as: 'includeYear'
        end
      end
      
      class DeleteItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location', class: Google::Apis::FormsV1::Location, decorator: Google::Apis::FormsV1::Location::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExtraMaterial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link, as: 'link', class: Google::Apis::FormsV1::TextLink, decorator: Google::Apis::FormsV1::TextLink::Representation
      
          property :video, as: 'video', class: Google::Apis::FormsV1::VideoLink, decorator: Google::Apis::FormsV1::VideoLink::Representation
      
        end
      end
      
      class Feedback
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :material, as: 'material', class: Google::Apis::FormsV1::ExtraMaterial, decorator: Google::Apis::FormsV1::ExtraMaterial::Representation
      
          property :text, as: 'text'
        end
      end
      
      class FileUploadAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_id, as: 'fileId'
          property :file_name, as: 'fileName'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class FileUploadAnswers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answers, as: 'answers', class: Google::Apis::FormsV1::FileUploadAnswer, decorator: Google::Apis::FormsV1::FileUploadAnswer::Representation
      
        end
      end
      
      class FileUploadQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :folder_id, as: 'folderId'
          property :max_file_size, :numeric_string => true, as: 'maxFileSize'
          property :max_files, as: 'maxFiles'
          collection :types, as: 'types'
        end
      end
      
      class Form
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :form_id, as: 'formId'
          property :info, as: 'info', class: Google::Apis::FormsV1::Info, decorator: Google::Apis::FormsV1::Info::Representation
      
          collection :items, as: 'items', class: Google::Apis::FormsV1::Item, decorator: Google::Apis::FormsV1::Item::Representation
      
          property :linked_sheet_id, as: 'linkedSheetId'
          property :responder_uri, as: 'responderUri'
          property :revision_id, as: 'revisionId'
          property :settings, as: 'settings', class: Google::Apis::FormsV1::FormSettings, decorator: Google::Apis::FormsV1::FormSettings::Representation
      
        end
      end
      
      class FormResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :answers, as: 'answers', class: Google::Apis::FormsV1::Answer, decorator: Google::Apis::FormsV1::Answer::Representation
      
          property :create_time, as: 'createTime'
          property :form_id, as: 'formId'
          property :last_submitted_time, as: 'lastSubmittedTime'
          property :respondent_email, as: 'respondentEmail'
          property :response_id, as: 'responseId'
          property :total_score, as: 'totalScore'
        end
      end
      
      class FormSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quiz_settings, as: 'quizSettings', class: Google::Apis::FormsV1::QuizSettings, decorator: Google::Apis::FormsV1::QuizSettings::Representation
      
        end
      end
      
      class Grade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :correct, as: 'correct'
          property :feedback, as: 'feedback', class: Google::Apis::FormsV1::Feedback, decorator: Google::Apis::FormsV1::Feedback::Representation
      
          property :score, as: 'score'
        end
      end
      
      class Grading
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :correct_answers, as: 'correctAnswers', class: Google::Apis::FormsV1::CorrectAnswers, decorator: Google::Apis::FormsV1::CorrectAnswers::Representation
      
          property :general_feedback, as: 'generalFeedback', class: Google::Apis::FormsV1::Feedback, decorator: Google::Apis::FormsV1::Feedback::Representation
      
          property :point_value, as: 'pointValue'
          property :when_right, as: 'whenRight', class: Google::Apis::FormsV1::Feedback, decorator: Google::Apis::FormsV1::Feedback::Representation
      
          property :when_wrong, as: 'whenWrong', class: Google::Apis::FormsV1::Feedback, decorator: Google::Apis::FormsV1::Feedback::Representation
      
        end
      end
      
      class Grid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :columns, as: 'columns', class: Google::Apis::FormsV1::ChoiceQuestion, decorator: Google::Apis::FormsV1::ChoiceQuestion::Representation
      
          property :shuffle_questions, as: 'shuffleQuestions'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :content_uri, as: 'contentUri'
          property :properties, as: 'properties', class: Google::Apis::FormsV1::MediaProperties, decorator: Google::Apis::FormsV1::MediaProperties::Representation
      
          property :source_uri, as: 'sourceUri'
        end
      end
      
      class ImageItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::FormsV1::Image, decorator: Google::Apis::FormsV1::Image::Representation
      
        end
      end
      
      class Info
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :document_title, as: 'documentTitle'
          property :title, as: 'title'
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :image_item, as: 'imageItem', class: Google::Apis::FormsV1::ImageItem, decorator: Google::Apis::FormsV1::ImageItem::Representation
      
          property :item_id, as: 'itemId'
          property :page_break_item, as: 'pageBreakItem', class: Google::Apis::FormsV1::PageBreakItem, decorator: Google::Apis::FormsV1::PageBreakItem::Representation
      
          property :question_group_item, as: 'questionGroupItem', class: Google::Apis::FormsV1::QuestionGroupItem, decorator: Google::Apis::FormsV1::QuestionGroupItem::Representation
      
          property :question_item, as: 'questionItem', class: Google::Apis::FormsV1::QuestionItem, decorator: Google::Apis::FormsV1::QuestionItem::Representation
      
          property :text_item, as: 'textItem', class: Google::Apis::FormsV1::TextItem, decorator: Google::Apis::FormsV1::TextItem::Representation
      
          property :title, as: 'title'
          property :video_item, as: 'videoItem', class: Google::Apis::FormsV1::VideoItem, decorator: Google::Apis::FormsV1::VideoItem::Representation
      
        end
      end
      
      class ListFormResponsesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :responses, as: 'responses', class: Google::Apis::FormsV1::FormResponse, decorator: Google::Apis::FormsV1::FormResponse::Representation
      
        end
      end
      
      class ListWatchesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :watches, as: 'watches', class: Google::Apis::FormsV1::Watch, decorator: Google::Apis::FormsV1::Watch::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
        end
      end
      
      class MediaProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alignment, as: 'alignment'
          property :width, as: 'width'
        end
      end
      
      class MoveItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_location, as: 'newLocation', class: Google::Apis::FormsV1::Location, decorator: Google::Apis::FormsV1::Location::Representation
      
          property :original_location, as: 'originalLocation', class: Google::Apis::FormsV1::Location, decorator: Google::Apis::FormsV1::Location::Representation
      
        end
      end
      
      class Option
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :go_to_action, as: 'goToAction'
          property :go_to_section_id, as: 'goToSectionId'
          property :image, as: 'image', class: Google::Apis::FormsV1::Image, decorator: Google::Apis::FormsV1::Image::Representation
      
          property :is_other, as: 'isOther'
          property :value, as: 'value'
        end
      end
      
      class PageBreakItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Question
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :choice_question, as: 'choiceQuestion', class: Google::Apis::FormsV1::ChoiceQuestion, decorator: Google::Apis::FormsV1::ChoiceQuestion::Representation
      
          property :date_question, as: 'dateQuestion', class: Google::Apis::FormsV1::DateQuestion, decorator: Google::Apis::FormsV1::DateQuestion::Representation
      
          property :file_upload_question, as: 'fileUploadQuestion', class: Google::Apis::FormsV1::FileUploadQuestion, decorator: Google::Apis::FormsV1::FileUploadQuestion::Representation
      
          property :grading, as: 'grading', class: Google::Apis::FormsV1::Grading, decorator: Google::Apis::FormsV1::Grading::Representation
      
          property :question_id, as: 'questionId'
          property :required, as: 'required'
          property :row_question, as: 'rowQuestion', class: Google::Apis::FormsV1::RowQuestion, decorator: Google::Apis::FormsV1::RowQuestion::Representation
      
          property :scale_question, as: 'scaleQuestion', class: Google::Apis::FormsV1::ScaleQuestion, decorator: Google::Apis::FormsV1::ScaleQuestion::Representation
      
          property :text_question, as: 'textQuestion', class: Google::Apis::FormsV1::TextQuestion, decorator: Google::Apis::FormsV1::TextQuestion::Representation
      
          property :time_question, as: 'timeQuestion', class: Google::Apis::FormsV1::TimeQuestion, decorator: Google::Apis::FormsV1::TimeQuestion::Representation
      
        end
      end
      
      class QuestionGroupItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grid, as: 'grid', class: Google::Apis::FormsV1::Grid, decorator: Google::Apis::FormsV1::Grid::Representation
      
          property :image, as: 'image', class: Google::Apis::FormsV1::Image, decorator: Google::Apis::FormsV1::Image::Representation
      
          collection :questions, as: 'questions', class: Google::Apis::FormsV1::Question, decorator: Google::Apis::FormsV1::Question::Representation
      
        end
      end
      
      class QuestionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image', class: Google::Apis::FormsV1::Image, decorator: Google::Apis::FormsV1::Image::Representation
      
          property :question, as: 'question', class: Google::Apis::FormsV1::Question, decorator: Google::Apis::FormsV1::Question::Representation
      
        end
      end
      
      class QuizSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :is_quiz, as: 'isQuiz'
        end
      end
      
      class RenewWatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Request
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_item, as: 'createItem', class: Google::Apis::FormsV1::CreateItemRequest, decorator: Google::Apis::FormsV1::CreateItemRequest::Representation
      
          property :delete_item, as: 'deleteItem', class: Google::Apis::FormsV1::DeleteItemRequest, decorator: Google::Apis::FormsV1::DeleteItemRequest::Representation
      
          property :move_item, as: 'moveItem', class: Google::Apis::FormsV1::MoveItemRequest, decorator: Google::Apis::FormsV1::MoveItemRequest::Representation
      
          property :update_form_info, as: 'updateFormInfo', class: Google::Apis::FormsV1::UpdateFormInfoRequest, decorator: Google::Apis::FormsV1::UpdateFormInfoRequest::Representation
      
          property :update_item, as: 'updateItem', class: Google::Apis::FormsV1::UpdateItemRequest, decorator: Google::Apis::FormsV1::UpdateItemRequest::Representation
      
          property :update_settings, as: 'updateSettings', class: Google::Apis::FormsV1::UpdateSettingsRequest, decorator: Google::Apis::FormsV1::UpdateSettingsRequest::Representation
      
        end
      end
      
      class Response
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_item, as: 'createItem', class: Google::Apis::FormsV1::CreateItemResponse, decorator: Google::Apis::FormsV1::CreateItemResponse::Representation
      
        end
      end
      
      class RowQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :title, as: 'title'
        end
      end
      
      class ScaleQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high, as: 'high'
          property :high_label, as: 'highLabel'
          property :low, as: 'low'
          property :low_label, as: 'lowLabel'
        end
      end
      
      class TextAnswer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class TextAnswers
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :answers, as: 'answers', class: Google::Apis::FormsV1::TextAnswer, decorator: Google::Apis::FormsV1::TextAnswer::Representation
      
        end
      end
      
      class TextItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class TextLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_text, as: 'displayText'
          property :uri, as: 'uri'
        end
      end
      
      class TextQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :paragraph, as: 'paragraph'
        end
      end
      
      class TimeQuestion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :duration, as: 'duration'
        end
      end
      
      class UpdateFormInfoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :info, as: 'info', class: Google::Apis::FormsV1::Info, decorator: Google::Apis::FormsV1::Info::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateItemRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :item, as: 'item', class: Google::Apis::FormsV1::Item, decorator: Google::Apis::FormsV1::Item::Representation
      
          property :location, as: 'location', class: Google::Apis::FormsV1::Location, decorator: Google::Apis::FormsV1::Location::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateSettingsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :settings, as: 'settings', class: Google::Apis::FormsV1::FormSettings, decorator: Google::Apis::FormsV1::FormSettings::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Video
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :properties, as: 'properties', class: Google::Apis::FormsV1::MediaProperties, decorator: Google::Apis::FormsV1::MediaProperties::Representation
      
          property :youtube_uri, as: 'youtubeUri'
        end
      end
      
      class VideoItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :caption, as: 'caption'
          property :video, as: 'video', class: Google::Apis::FormsV1::Video, decorator: Google::Apis::FormsV1::Video::Representation
      
        end
      end
      
      class VideoLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_text, as: 'displayText'
          property :youtube_uri, as: 'youtubeUri'
        end
      end
      
      class Watch
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :error_type, as: 'errorType'
          property :event_type, as: 'eventType'
          property :expire_time, as: 'expireTime'
          property :id, as: 'id'
          property :state, as: 'state'
          property :target, as: 'target', class: Google::Apis::FormsV1::WatchTarget, decorator: Google::Apis::FormsV1::WatchTarget::Representation
      
        end
      end
      
      class WatchTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic', class: Google::Apis::FormsV1::CloudPubsubTopic, decorator: Google::Apis::FormsV1::CloudPubsubTopic::Representation
      
        end
      end
      
      class WriteControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :required_revision_id, as: 'requiredRevisionId'
          property :target_revision_id, as: 'targetRevisionId'
        end
      end
    end
  end
end
