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
      
      # The submitted answer for a question.
      class Answer
        include Google::Apis::Core::Hashable
      
        # All submitted files for a FileUpload question.
        # Corresponds to the JSON property `fileUploadAnswers`
        # @return [Google::Apis::FormsV1::FileUploadAnswers]
        attr_accessor :file_upload_answers
      
        # Grade information associated with a respondent's answer to a question.
        # Corresponds to the JSON property `grade`
        # @return [Google::Apis::FormsV1::Grade]
        attr_accessor :grade
      
        # Output only. The question's ID. See also Question.question_id.
        # Corresponds to the JSON property `questionId`
        # @return [String]
        attr_accessor :question_id
      
        # A question's answers as text.
        # Corresponds to the JSON property `textAnswers`
        # @return [Google::Apis::FormsV1::TextAnswers]
        attr_accessor :text_answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_upload_answers = args[:file_upload_answers] if args.key?(:file_upload_answers)
          @grade = args[:grade] if args.key?(:grade)
          @question_id = args[:question_id] if args.key?(:question_id)
          @text_answers = args[:text_answers] if args.key?(:text_answers)
        end
      end
      
      # A batch of updates to perform on a form. All the specified updates are made or
      # none of them are.
      class BatchUpdateFormRequest
        include Google::Apis::Core::Hashable
      
        # Whether to return an updated version of the model in the response.
        # Corresponds to the JSON property `includeFormInResponse`
        # @return [Boolean]
        attr_accessor :include_form_in_response
        alias_method :include_form_in_response?, :include_form_in_response
      
        # Required. The update requests of this batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::FormsV1::Request>]
        attr_accessor :requests
      
        # Provides control over how write requests are executed.
        # Corresponds to the JSON property `writeControl`
        # @return [Google::Apis::FormsV1::WriteControl]
        attr_accessor :write_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_form_in_response = args[:include_form_in_response] if args.key?(:include_form_in_response)
          @requests = args[:requests] if args.key?(:requests)
          @write_control = args[:write_control] if args.key?(:write_control)
        end
      end
      
      # Response to a BatchUpdateFormRequest.
      class BatchUpdateFormResponse
        include Google::Apis::Core::Hashable
      
        # A Google Forms document. A form is created in Drive, and deleting a form or
        # changing its access protections is done via the [Drive API](https://developers.
        # google.com/drive/api/v3/about-sdk).
        # Corresponds to the JSON property `form`
        # @return [Google::Apis::FormsV1::Form]
        attr_accessor :form
      
        # The reply of the updates. This maps 1:1 with the update requests, although
        # replies to some requests may be empty.
        # Corresponds to the JSON property `replies`
        # @return [Array<Google::Apis::FormsV1::Response>]
        attr_accessor :replies
      
        # Provides control over how write requests are executed.
        # Corresponds to the JSON property `writeControl`
        # @return [Google::Apis::FormsV1::WriteControl]
        attr_accessor :write_control
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @form = args[:form] if args.key?(:form)
          @replies = args[:replies] if args.key?(:replies)
          @write_control = args[:write_control] if args.key?(:write_control)
        end
      end
      
      # A radio/checkbox/dropdown question.
      class ChoiceQuestion
        include Google::Apis::Core::Hashable
      
        # Required. List of options that a respondent must choose from.
        # Corresponds to the JSON property `options`
        # @return [Array<Google::Apis::FormsV1::Option>]
        attr_accessor :options
      
        # Whether the options should be displayed in random order for different
        # instances of the quiz. This is often used to prevent cheating by respondents
        # who might be looking at another respondent's screen, or to address bias in a
        # survey that might be introduced by always putting the same options first or
        # last.
        # Corresponds to the JSON property `shuffle`
        # @return [Boolean]
        attr_accessor :shuffle
        alias_method :shuffle?, :shuffle
      
        # Required. The type of choice question.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
          @shuffle = args[:shuffle] if args.key?(:shuffle)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Pub/Sub topic.
      class CloudPubsubTopic
        include Google::Apis::Core::Hashable
      
        # Required. A fully qualified Pub/Sub topic name to publish the events to. This
        # topic must be owned by the calling project and already exist in Pub/Sub.
        # Corresponds to the JSON property `topicName`
        # @return [String]
        attr_accessor :topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic_name = args[:topic_name] if args.key?(:topic_name)
        end
      end
      
      # A single correct answer for a question. For multiple-valued (`CHECKBOX`)
      # questions, several `CorrectAnswer`s may be needed to represent a single
      # correct response option.
      class CorrectAnswer
        include Google::Apis::Core::Hashable
      
        # Required. The correct answer value. See the documentation for TextAnswer.value
        # for details on how various value types are formatted.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The answer key for a question.
      class CorrectAnswers
        include Google::Apis::Core::Hashable
      
        # A list of correct answers. A quiz response can be automatically graded based
        # on these answers. For single-valued questions, a response is marked correct if
        # it matches any value in this list (in other words, multiple correct answers
        # are possible). For multiple-valued (`CHECKBOX`) questions, a response is
        # marked correct if it contains exactly the values in this list.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::FormsV1::CorrectAnswer>]
        attr_accessor :answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
        end
      end
      
      # Create an item in a form.
      class CreateItemRequest
        include Google::Apis::Core::Hashable
      
        # A single item of the form. `kind` defines which kind of item it is.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::FormsV1::Item]
        attr_accessor :item
      
        # A specific location in a form.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::FormsV1::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # The result of creating an item.
      class CreateItemResponse
        include Google::Apis::Core::Hashable
      
        # The ID of the created item.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # The ID of the question created as part of this item, for a question group it
        # lists IDs of all the questions created for this item.
        # Corresponds to the JSON property `questionId`
        # @return [Array<String>]
        attr_accessor :question_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item_id = args[:item_id] if args.key?(:item_id)
          @question_id = args[:question_id] if args.key?(:question_id)
        end
      end
      
      # Create a new watch.
      class CreateWatchRequest
        include Google::Apis::Core::Hashable
      
        # A watch for events for a form. When the designated event happens, a
        # notification will be published to the specified target. The notification's
        # attributes will include a `formId` key that has the ID of the watched form and
        # an `eventType` key that has the string of the type. Messages are sent with at-
        # least-once delivery and are only dropped in extraordinary circumstances.
        # Typically all notifications should be reliably delivered within a few seconds;
        # however, in some situations notifications may be delayed. A watch expires
        # seven days after it is created unless it is renewed with watches.renew
        # Corresponds to the JSON property `watch`
        # @return [Google::Apis::FormsV1::Watch]
        attr_accessor :watch
      
        # The ID to use for the watch. If specified, the ID must not already be in use.
        # If not specified, an ID is generated. This value should be 4-63 characters,
        # and valid characters are /a-z-/.
        # Corresponds to the JSON property `watchId`
        # @return [String]
        attr_accessor :watch_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @watch = args[:watch] if args.key?(:watch)
          @watch_id = args[:watch_id] if args.key?(:watch_id)
        end
      end
      
      # A date question. Date questions default to just month + day.
      class DateQuestion
        include Google::Apis::Core::Hashable
      
        # Whether to include the time as part of the question.
        # Corresponds to the JSON property `includeTime`
        # @return [Boolean]
        attr_accessor :include_time
        alias_method :include_time?, :include_time
      
        # Whether to include the year as part of the question.
        # Corresponds to the JSON property `includeYear`
        # @return [Boolean]
        attr_accessor :include_year
        alias_method :include_year?, :include_year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_time = args[:include_time] if args.key?(:include_time)
          @include_year = args[:include_year] if args.key?(:include_year)
        end
      end
      
      # Delete an item in a form.
      class DeleteItemRequest
        include Google::Apis::Core::Hashable
      
        # A specific location in a form.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::FormsV1::Location]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Supplementary material to the feedback.
      class ExtraMaterial
        include Google::Apis::Core::Hashable
      
        # Link for text.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::FormsV1::TextLink]
        attr_accessor :link
      
        # Link to a video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::FormsV1::VideoLink]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # Feedback for a respondent about their response to a question.
      class Feedback
        include Google::Apis::Core::Hashable
      
        # Additional information provided as part of the feedback, often used to point
        # the respondent to more reading and resources.
        # Corresponds to the JSON property `material`
        # @return [Array<Google::Apis::FormsV1::ExtraMaterial>]
        attr_accessor :material
      
        # Required. The main text of the feedback.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @material = args[:material] if args.key?(:material)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Info for a single file submitted to a file upload question.
      class FileUploadAnswer
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of the Google Drive file.
        # Corresponds to the JSON property `fileId`
        # @return [String]
        attr_accessor :file_id
      
        # Output only. The file name, as stored in Google Drive on upload.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Output only. The MIME type of the file, as stored in Google Drive on upload.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_id = args[:file_id] if args.key?(:file_id)
          @file_name = args[:file_name] if args.key?(:file_name)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # All submitted files for a FileUpload question.
      class FileUploadAnswers
        include Google::Apis::Core::Hashable
      
        # Output only. All submitted files for a FileUpload question.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::FormsV1::FileUploadAnswer>]
        attr_accessor :answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
        end
      end
      
      # A file upload question. The API currently does not support creating file
      # upload questions.
      class FileUploadQuestion
        include Google::Apis::Core::Hashable
      
        # Required. The ID of the Drive folder where uploaded files are stored.
        # Corresponds to the JSON property `folderId`
        # @return [String]
        attr_accessor :folder_id
      
        # Maximum number of bytes allowed for any single file uploaded to this question.
        # Corresponds to the JSON property `maxFileSize`
        # @return [Fixnum]
        attr_accessor :max_file_size
      
        # Maximum number of files that can be uploaded for this question in a single
        # response.
        # Corresponds to the JSON property `maxFiles`
        # @return [Fixnum]
        attr_accessor :max_files
      
        # File types accepted by this question.
        # Corresponds to the JSON property `types`
        # @return [Array<String>]
        attr_accessor :types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @folder_id = args[:folder_id] if args.key?(:folder_id)
          @max_file_size = args[:max_file_size] if args.key?(:max_file_size)
          @max_files = args[:max_files] if args.key?(:max_files)
          @types = args[:types] if args.key?(:types)
        end
      end
      
      # A Google Forms document. A form is created in Drive, and deleting a form or
      # changing its access protections is done via the [Drive API](https://developers.
      # google.com/drive/api/v3/about-sdk).
      class Form
        include Google::Apis::Core::Hashable
      
        # Output only. The form ID.
        # Corresponds to the JSON property `formId`
        # @return [String]
        attr_accessor :form_id
      
        # The general information for a form.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::FormsV1::Info]
        attr_accessor :info
      
        # Required. A list of the form's items, which can include section headers,
        # questions, embedded media, etc.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::FormsV1::Item>]
        attr_accessor :items
      
        # Output only. The ID of the linked Google Sheet which is accumulating responses
        # from this Form (if such a Sheet exists).
        # Corresponds to the JSON property `linkedSheetId`
        # @return [String]
        attr_accessor :linked_sheet_id
      
        # Output only. The form URI to share with responders. This opens a page that
        # allows the user to submit responses but not edit the questions.
        # Corresponds to the JSON property `responderUri`
        # @return [String]
        attr_accessor :responder_uri
      
        # Output only. The revision ID of the form. Used in the WriteControl in update
        # requests to identify the revision on which the changes are based. The format
        # of the revision ID may change over time, so it should be treated opaquely. A
        # returned revision ID is only guaranteed to be valid for 24 hours after it has
        # been returned and cannot be shared across users. If the revision ID is
        # unchanged between calls, then the form has not changed. Conversely, a changed
        # ID (for the same form and user) usually means the form has been updated;
        # however, a changed ID can also be due to internal factors such as ID format
        # changes.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # A form's settings.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::FormsV1::FormSettings]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @form_id = args[:form_id] if args.key?(:form_id)
          @info = args[:info] if args.key?(:info)
          @items = args[:items] if args.key?(:items)
          @linked_sheet_id = args[:linked_sheet_id] if args.key?(:linked_sheet_id)
          @responder_uri = args[:responder_uri] if args.key?(:responder_uri)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # A form response.
      class FormResponse
        include Google::Apis::Core::Hashable
      
        # Output only. The actual answers to the questions, keyed by question_id.
        # Corresponds to the JSON property `answers`
        # @return [Hash<String,Google::Apis::FormsV1::Answer>]
        attr_accessor :answers
      
        # Output only. Timestamp for the first time the response was submitted.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The form ID.
        # Corresponds to the JSON property `formId`
        # @return [String]
        attr_accessor :form_id
      
        # Output only. Timestamp for the most recent time the response was submitted.
        # Does not track changes to grades.
        # Corresponds to the JSON property `lastSubmittedTime`
        # @return [String]
        attr_accessor :last_submitted_time
      
        # Output only. The email address (if collected) for the respondent.
        # Corresponds to the JSON property `respondentEmail`
        # @return [String]
        attr_accessor :respondent_email
      
        # Output only. The response ID.
        # Corresponds to the JSON property `responseId`
        # @return [String]
        attr_accessor :response_id
      
        # Output only. The total number of points the respondent received for their
        # submission Only set if the form was a quiz and the response was graded. This
        # includes points automatically awarded via autograding adjusted by any manual
        # corrections entered by the form owner.
        # Corresponds to the JSON property `totalScore`
        # @return [Float]
        attr_accessor :total_score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
          @create_time = args[:create_time] if args.key?(:create_time)
          @form_id = args[:form_id] if args.key?(:form_id)
          @last_submitted_time = args[:last_submitted_time] if args.key?(:last_submitted_time)
          @respondent_email = args[:respondent_email] if args.key?(:respondent_email)
          @response_id = args[:response_id] if args.key?(:response_id)
          @total_score = args[:total_score] if args.key?(:total_score)
        end
      end
      
      # A form's settings.
      class FormSettings
        include Google::Apis::Core::Hashable
      
        # Settings related to quiz forms and grading. These must be updated with the
        # UpdateSettingsRequest.
        # Corresponds to the JSON property `quizSettings`
        # @return [Google::Apis::FormsV1::QuizSettings]
        attr_accessor :quiz_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @quiz_settings = args[:quiz_settings] if args.key?(:quiz_settings)
        end
      end
      
      # Grade information associated with a respondent's answer to a question.
      class Grade
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the question was answered correctly or not. A zero-point
        # score is not enough to infer incorrectness, since a correctly answered
        # question could be worth zero points.
        # Corresponds to the JSON property `correct`
        # @return [Boolean]
        attr_accessor :correct
        alias_method :correct?, :correct
      
        # Feedback for a respondent about their response to a question.
        # Corresponds to the JSON property `feedback`
        # @return [Google::Apis::FormsV1::Feedback]
        attr_accessor :feedback
      
        # Output only. The numeric score awarded for the answer.
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @correct = args[:correct] if args.key?(:correct)
          @feedback = args[:feedback] if args.key?(:feedback)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # Grading for a single question
      class Grading
        include Google::Apis::Core::Hashable
      
        # The answer key for a question.
        # Corresponds to the JSON property `correctAnswers`
        # @return [Google::Apis::FormsV1::CorrectAnswers]
        attr_accessor :correct_answers
      
        # Feedback for a respondent about their response to a question.
        # Corresponds to the JSON property `generalFeedback`
        # @return [Google::Apis::FormsV1::Feedback]
        attr_accessor :general_feedback
      
        # Required. The maximum number of points a respondent can automatically get for
        # a correct answer. This must not be negative.
        # Corresponds to the JSON property `pointValue`
        # @return [Fixnum]
        attr_accessor :point_value
      
        # Feedback for a respondent about their response to a question.
        # Corresponds to the JSON property `whenRight`
        # @return [Google::Apis::FormsV1::Feedback]
        attr_accessor :when_right
      
        # Feedback for a respondent about their response to a question.
        # Corresponds to the JSON property `whenWrong`
        # @return [Google::Apis::FormsV1::Feedback]
        attr_accessor :when_wrong
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @correct_answers = args[:correct_answers] if args.key?(:correct_answers)
          @general_feedback = args[:general_feedback] if args.key?(:general_feedback)
          @point_value = args[:point_value] if args.key?(:point_value)
          @when_right = args[:when_right] if args.key?(:when_right)
          @when_wrong = args[:when_wrong] if args.key?(:when_wrong)
        end
      end
      
      # A grid of choices (radio or check boxes) with each row constituting a separate
      # question. Each row has the same choices, which are shown as the columns.
      class Grid
        include Google::Apis::Core::Hashable
      
        # A radio/checkbox/dropdown question.
        # Corresponds to the JSON property `columns`
        # @return [Google::Apis::FormsV1::ChoiceQuestion]
        attr_accessor :columns
      
        # If `true`, the questions are randomly ordered. In other words, the rows appear
        # in a different order for every respondent.
        # Corresponds to the JSON property `shuffleQuestions`
        # @return [Boolean]
        attr_accessor :shuffle_questions
        alias_method :shuffle_questions?, :shuffle_questions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @shuffle_questions = args[:shuffle_questions] if args.key?(:shuffle_questions)
        end
      end
      
      # Data representing an image.
      class Image
        include Google::Apis::Core::Hashable
      
        # A description of the image that is shown on hover and read by screenreaders.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Output only. A URI from which you can download the image; this is valid only
        # for a limited time.
        # Corresponds to the JSON property `contentUri`
        # @return [String]
        attr_accessor :content_uri
      
        # Properties of the media.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::FormsV1::MediaProperties]
        attr_accessor :properties
      
        # Input only. The source URI is the URI used to insert the image. The source URI
        # can be empty when fetched.
        # Corresponds to the JSON property `sourceUri`
        # @return [String]
        attr_accessor :source_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @content_uri = args[:content_uri] if args.key?(:content_uri)
          @properties = args[:properties] if args.key?(:properties)
          @source_uri = args[:source_uri] if args.key?(:source_uri)
        end
      end
      
      # An item containing an image.
      class ImageItem
        include Google::Apis::Core::Hashable
      
        # Data representing an image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::FormsV1::Image]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # The general information for a form.
      class Info
        include Google::Apis::Core::Hashable
      
        # The description of the form.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The title of the document which is visible in Drive. If `Info.
        # title` is empty, `document_title` may appear in its place in the Google Forms
        # UI and be visible to responders. `document_title` can be set on create, but
        # cannot be modified by a batchUpdate request. Please use the [Google Drive API](
        # https://developers.google.com/drive/api/v3/reference/files/update) if you need
        # to programmatically update `document_title`.
        # Corresponds to the JSON property `documentTitle`
        # @return [String]
        attr_accessor :document_title
      
        # Required. The title of the form which is visible to responders.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @document_title = args[:document_title] if args.key?(:document_title)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A single item of the form. `kind` defines which kind of item it is.
      class Item
        include Google::Apis::Core::Hashable
      
        # The description of the item.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An item containing an image.
        # Corresponds to the JSON property `imageItem`
        # @return [Google::Apis::FormsV1::ImageItem]
        attr_accessor :image_item
      
        # The item ID. On creation, it can be provided but the ID must not be already
        # used in the form. If not provided, a new ID is assigned.
        # Corresponds to the JSON property `itemId`
        # @return [String]
        attr_accessor :item_id
      
        # A page break. The title and description of this item are shown at the top of
        # the new page.
        # Corresponds to the JSON property `pageBreakItem`
        # @return [Google::Apis::FormsV1::PageBreakItem]
        attr_accessor :page_break_item
      
        # Defines a question that comprises multiple questions grouped together.
        # Corresponds to the JSON property `questionGroupItem`
        # @return [Google::Apis::FormsV1::QuestionGroupItem]
        attr_accessor :question_group_item
      
        # A form item containing a single question.
        # Corresponds to the JSON property `questionItem`
        # @return [Google::Apis::FormsV1::QuestionItem]
        attr_accessor :question_item
      
        # A text item.
        # Corresponds to the JSON property `textItem`
        # @return [Google::Apis::FormsV1::TextItem]
        attr_accessor :text_item
      
        # The title of the item.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # An item containing a video.
        # Corresponds to the JSON property `videoItem`
        # @return [Google::Apis::FormsV1::VideoItem]
        attr_accessor :video_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @image_item = args[:image_item] if args.key?(:image_item)
          @item_id = args[:item_id] if args.key?(:item_id)
          @page_break_item = args[:page_break_item] if args.key?(:page_break_item)
          @question_group_item = args[:question_group_item] if args.key?(:question_group_item)
          @question_item = args[:question_item] if args.key?(:question_item)
          @text_item = args[:text_item] if args.key?(:text_item)
          @title = args[:title] if args.key?(:title)
          @video_item = args[:video_item] if args.key?(:video_item)
        end
      end
      
      # Response to a ListFormResponsesRequest.
      class ListFormResponsesResponse
        include Google::Apis::Core::Hashable
      
        # If set, there are more responses. To get the next page of responses, provide
        # this as `page_token` in a future request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned responses.
        # Corresponds to the JSON property `responses`
        # @return [Array<Google::Apis::FormsV1::FormResponse>]
        attr_accessor :responses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @responses = args[:responses] if args.key?(:responses)
        end
      end
      
      # The response of a ListWatchesRequest.
      class ListWatchesResponse
        include Google::Apis::Core::Hashable
      
        # The returned watches.
        # Corresponds to the JSON property `watches`
        # @return [Array<Google::Apis::FormsV1::Watch>]
        attr_accessor :watches
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @watches = args[:watches] if args.key?(:watches)
        end
      end
      
      # A specific location in a form.
      class Location
        include Google::Apis::Core::Hashable
      
        # The index of an item in the form. This must be in the range [0..*N*), where *N*
        # is the number of items in the form.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # Properties of the media.
      class MediaProperties
        include Google::Apis::Core::Hashable
      
        # Position of the media.
        # Corresponds to the JSON property `alignment`
        # @return [String]
        attr_accessor :alignment
      
        # The width of the media in pixels. When the media is displayed, it is scaled to
        # the smaller of this value or the width of the displayed form. The original
        # aspect ratio of the media is preserved. If a width is not specified when the
        # media is added to the form, it is set to the width of the media source. Width
        # must be between 0 and 740, inclusive. Setting width to 0 or unspecified is
        # only permitted when updating the media source.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alignment = args[:alignment] if args.key?(:alignment)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Move an item in a form.
      class MoveItemRequest
        include Google::Apis::Core::Hashable
      
        # A specific location in a form.
        # Corresponds to the JSON property `newLocation`
        # @return [Google::Apis::FormsV1::Location]
        attr_accessor :new_location
      
        # A specific location in a form.
        # Corresponds to the JSON property `originalLocation`
        # @return [Google::Apis::FormsV1::Location]
        attr_accessor :original_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_location = args[:new_location] if args.key?(:new_location)
          @original_location = args[:original_location] if args.key?(:original_location)
        end
      end
      
      # An option for a Choice question.
      class Option
        include Google::Apis::Core::Hashable
      
        # Section navigation type.
        # Corresponds to the JSON property `goToAction`
        # @return [String]
        attr_accessor :go_to_action
      
        # Item ID of section header to go to.
        # Corresponds to the JSON property `goToSectionId`
        # @return [String]
        attr_accessor :go_to_section_id
      
        # Data representing an image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::FormsV1::Image]
        attr_accessor :image
      
        # Whether the option is "other". Currently only applies to `RADIO` and `CHECKBOX`
        # choice types, but is not allowed in a QuestionGroupItem.
        # Corresponds to the JSON property `isOther`
        # @return [Boolean]
        attr_accessor :is_other
        alias_method :is_other?, :is_other
      
        # Required. The choice as presented to the user.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @go_to_action = args[:go_to_action] if args.key?(:go_to_action)
          @go_to_section_id = args[:go_to_section_id] if args.key?(:go_to_section_id)
          @image = args[:image] if args.key?(:image)
          @is_other = args[:is_other] if args.key?(:is_other)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A page break. The title and description of this item are shown at the top of
      # the new page.
      class PageBreakItem
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Any question. The specific type of question is known by its `kind`.
      class Question
        include Google::Apis::Core::Hashable
      
        # A radio/checkbox/dropdown question.
        # Corresponds to the JSON property `choiceQuestion`
        # @return [Google::Apis::FormsV1::ChoiceQuestion]
        attr_accessor :choice_question
      
        # A date question. Date questions default to just month + day.
        # Corresponds to the JSON property `dateQuestion`
        # @return [Google::Apis::FormsV1::DateQuestion]
        attr_accessor :date_question
      
        # A file upload question. The API currently does not support creating file
        # upload questions.
        # Corresponds to the JSON property `fileUploadQuestion`
        # @return [Google::Apis::FormsV1::FileUploadQuestion]
        attr_accessor :file_upload_question
      
        # Grading for a single question
        # Corresponds to the JSON property `grading`
        # @return [Google::Apis::FormsV1::Grading]
        attr_accessor :grading
      
        # Read only. The question ID. On creation, it can be provided but the ID must
        # not be already used in the form. If not provided, a new ID is assigned.
        # Corresponds to the JSON property `questionId`
        # @return [String]
        attr_accessor :question_id
      
        # Whether the question must be answered in order for a respondent to submit
        # their response.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Configuration for a question that is part of a question group.
        # Corresponds to the JSON property `rowQuestion`
        # @return [Google::Apis::FormsV1::RowQuestion]
        attr_accessor :row_question
      
        # A scale question. The user has a range of numeric values to choose from.
        # Corresponds to the JSON property `scaleQuestion`
        # @return [Google::Apis::FormsV1::ScaleQuestion]
        attr_accessor :scale_question
      
        # A text-based question.
        # Corresponds to the JSON property `textQuestion`
        # @return [Google::Apis::FormsV1::TextQuestion]
        attr_accessor :text_question
      
        # A time question.
        # Corresponds to the JSON property `timeQuestion`
        # @return [Google::Apis::FormsV1::TimeQuestion]
        attr_accessor :time_question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @choice_question = args[:choice_question] if args.key?(:choice_question)
          @date_question = args[:date_question] if args.key?(:date_question)
          @file_upload_question = args[:file_upload_question] if args.key?(:file_upload_question)
          @grading = args[:grading] if args.key?(:grading)
          @question_id = args[:question_id] if args.key?(:question_id)
          @required = args[:required] if args.key?(:required)
          @row_question = args[:row_question] if args.key?(:row_question)
          @scale_question = args[:scale_question] if args.key?(:scale_question)
          @text_question = args[:text_question] if args.key?(:text_question)
          @time_question = args[:time_question] if args.key?(:time_question)
        end
      end
      
      # Defines a question that comprises multiple questions grouped together.
      class QuestionGroupItem
        include Google::Apis::Core::Hashable
      
        # A grid of choices (radio or check boxes) with each row constituting a separate
        # question. Each row has the same choices, which are shown as the columns.
        # Corresponds to the JSON property `grid`
        # @return [Google::Apis::FormsV1::Grid]
        attr_accessor :grid
      
        # Data representing an image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::FormsV1::Image]
        attr_accessor :image
      
        # Required. A list of questions that belong in this question group. A question
        # must only belong to one group. The `kind` of the group may affect what types
        # of questions are allowed.
        # Corresponds to the JSON property `questions`
        # @return [Array<Google::Apis::FormsV1::Question>]
        attr_accessor :questions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grid = args[:grid] if args.key?(:grid)
          @image = args[:image] if args.key?(:image)
          @questions = args[:questions] if args.key?(:questions)
        end
      end
      
      # A form item containing a single question.
      class QuestionItem
        include Google::Apis::Core::Hashable
      
        # Data representing an image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::FormsV1::Image]
        attr_accessor :image
      
        # Any question. The specific type of question is known by its `kind`.
        # Corresponds to the JSON property `question`
        # @return [Google::Apis::FormsV1::Question]
        attr_accessor :question
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
          @question = args[:question] if args.key?(:question)
        end
      end
      
      # Settings related to quiz forms and grading. These must be updated with the
      # UpdateSettingsRequest.
      class QuizSettings
        include Google::Apis::Core::Hashable
      
        # Whether this form is a quiz or not. When true, responses are graded based on
        # question Grading. Upon setting to false, all question Grading is deleted.
        # Corresponds to the JSON property `isQuiz`
        # @return [Boolean]
        attr_accessor :is_quiz
        alias_method :is_quiz?, :is_quiz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_quiz = args[:is_quiz] if args.key?(:is_quiz)
        end
      end
      
      # Renew an existing Watch for seven days.
      class RenewWatchRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The kinds of update requests that can be made.
      class Request
        include Google::Apis::Core::Hashable
      
        # Create an item in a form.
        # Corresponds to the JSON property `createItem`
        # @return [Google::Apis::FormsV1::CreateItemRequest]
        attr_accessor :create_item
      
        # Delete an item in a form.
        # Corresponds to the JSON property `deleteItem`
        # @return [Google::Apis::FormsV1::DeleteItemRequest]
        attr_accessor :delete_item
      
        # Move an item in a form.
        # Corresponds to the JSON property `moveItem`
        # @return [Google::Apis::FormsV1::MoveItemRequest]
        attr_accessor :move_item
      
        # Update Form's Info.
        # Corresponds to the JSON property `updateFormInfo`
        # @return [Google::Apis::FormsV1::UpdateFormInfoRequest]
        attr_accessor :update_form_info
      
        # Update an item in a form.
        # Corresponds to the JSON property `updateItem`
        # @return [Google::Apis::FormsV1::UpdateItemRequest]
        attr_accessor :update_item
      
        # Update Form's FormSettings.
        # Corresponds to the JSON property `updateSettings`
        # @return [Google::Apis::FormsV1::UpdateSettingsRequest]
        attr_accessor :update_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_item = args[:create_item] if args.key?(:create_item)
          @delete_item = args[:delete_item] if args.key?(:delete_item)
          @move_item = args[:move_item] if args.key?(:move_item)
          @update_form_info = args[:update_form_info] if args.key?(:update_form_info)
          @update_item = args[:update_item] if args.key?(:update_item)
          @update_settings = args[:update_settings] if args.key?(:update_settings)
        end
      end
      
      # A single response from an update.
      class Response
        include Google::Apis::Core::Hashable
      
        # The result of creating an item.
        # Corresponds to the JSON property `createItem`
        # @return [Google::Apis::FormsV1::CreateItemResponse]
        attr_accessor :create_item
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_item = args[:create_item] if args.key?(:create_item)
        end
      end
      
      # Configuration for a question that is part of a question group.
      class RowQuestion
        include Google::Apis::Core::Hashable
      
        # Required. The title for the single row in the QuestionGroupItem.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A scale question. The user has a range of numeric values to choose from.
      class ScaleQuestion
        include Google::Apis::Core::Hashable
      
        # Required. The highest possible value for the scale.
        # Corresponds to the JSON property `high`
        # @return [Fixnum]
        attr_accessor :high
      
        # The label to display describing the highest point on the scale.
        # Corresponds to the JSON property `highLabel`
        # @return [String]
        attr_accessor :high_label
      
        # Required. The lowest possible value for the scale.
        # Corresponds to the JSON property `low`
        # @return [Fixnum]
        attr_accessor :low
      
        # The label to display describing the lowest point on the scale.
        # Corresponds to the JSON property `lowLabel`
        # @return [String]
        attr_accessor :low_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high = args[:high] if args.key?(:high)
          @high_label = args[:high_label] if args.key?(:high_label)
          @low = args[:low] if args.key?(:low)
          @low_label = args[:low_label] if args.key?(:low_label)
        end
      end
      
      # An answer to a question represented as text.
      class TextAnswer
        include Google::Apis::Core::Hashable
      
        # Output only. The answer value. Formatting used for different kinds of question:
        # * ChoiceQuestion * `RADIO` or `DROP_DOWN`: A single string corresponding to
        # the option that was selected. * `CHECKBOX`: Multiple strings corresponding to
        # each option that was selected. * TextQuestion: The text that the user entered.
        # * ScaleQuestion: A string containing the number that was selected. *
        # DateQuestion * Without time or year: MM-DD e.g. "05-19" * With year: YYYY-MM-
        # DD e.g. "1986-05-19" * With time: MM-DD HH:MM e.g. "05-19 14:51" * With year
        # and time: YYYY-MM-DD HH:MM e.g. "1986-05-19 14:51" * TimeQuestion: String with
        # time or duration in HH:MM format e.g. "14:51" * RowQuestion within
        # QuestionGroupItem: The answer for each row of a QuestionGroupItem is
        # represented as a separate Answer. Each will contain one string for `RADIO`-
        # type choices or multiple strings for `CHECKBOX` choices.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A question's answers as text.
      class TextAnswers
        include Google::Apis::Core::Hashable
      
        # Output only. Answers to a question. For multiple-value ChoiceQuestions, each
        # answer is a separate value.
        # Corresponds to the JSON property `answers`
        # @return [Array<Google::Apis::FormsV1::TextAnswer>]
        attr_accessor :answers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @answers = args[:answers] if args.key?(:answers)
        end
      end
      
      # A text item.
      class TextItem
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Link for text.
      class TextLink
        include Google::Apis::Core::Hashable
      
        # Required. Display text for the URI.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # Required. The URI.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A text-based question.
      class TextQuestion
        include Google::Apis::Core::Hashable
      
        # Whether the question is a paragraph question or not. If not, the question is a
        # short text question.
        # Corresponds to the JSON property `paragraph`
        # @return [Boolean]
        attr_accessor :paragraph
        alias_method :paragraph?, :paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paragraph = args[:paragraph] if args.key?(:paragraph)
        end
      end
      
      # A time question.
      class TimeQuestion
        include Google::Apis::Core::Hashable
      
        # `true` if the question is about an elapsed time. Otherwise it is about a time
        # of day.
        # Corresponds to the JSON property `duration`
        # @return [Boolean]
        attr_accessor :duration
        alias_method :duration?, :duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration = args[:duration] if args.key?(:duration)
        end
      end
      
      # Update Form's Info.
      class UpdateFormInfoRequest
        include Google::Apis::Core::Hashable
      
        # The general information for a form.
        # Corresponds to the JSON property `info`
        # @return [Google::Apis::FormsV1::Info]
        attr_accessor :info
      
        # Required. Only values named in this mask are changed. At least one field must
        # be specified. The root `info` is implied and should not be specified. A single
        # `"*"` can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @info = args[:info] if args.key?(:info)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Update an item in a form.
      class UpdateItemRequest
        include Google::Apis::Core::Hashable
      
        # A single item of the form. `kind` defines which kind of item it is.
        # Corresponds to the JSON property `item`
        # @return [Google::Apis::FormsV1::Item]
        attr_accessor :item
      
        # A specific location in a form.
        # Corresponds to the JSON property `location`
        # @return [Google::Apis::FormsV1::Location]
        attr_accessor :location
      
        # Required. Only values named in this mask are changed.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @item = args[:item] if args.key?(:item)
          @location = args[:location] if args.key?(:location)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Update Form's FormSettings.
      class UpdateSettingsRequest
        include Google::Apis::Core::Hashable
      
        # A form's settings.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::FormsV1::FormSettings]
        attr_accessor :settings
      
        # Required. Only values named in this mask are changed. At least one field must
        # be specified. The root `settings` is implied and should not be specified. A
        # single `"*"` can be used as short-hand for updating every field.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @settings = args[:settings] if args.key?(:settings)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Data representing a video.
      class Video
        include Google::Apis::Core::Hashable
      
        # Properties of the media.
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::FormsV1::MediaProperties]
        attr_accessor :properties
      
        # Required. A YouTube URI.
        # Corresponds to the JSON property `youtubeUri`
        # @return [String]
        attr_accessor :youtube_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @youtube_uri = args[:youtube_uri] if args.key?(:youtube_uri)
        end
      end
      
      # An item containing a video.
      class VideoItem
        include Google::Apis::Core::Hashable
      
        # The text displayed below the video.
        # Corresponds to the JSON property `caption`
        # @return [String]
        attr_accessor :caption
      
        # Data representing a video.
        # Corresponds to the JSON property `video`
        # @return [Google::Apis::FormsV1::Video]
        attr_accessor :video
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @caption = args[:caption] if args.key?(:caption)
          @video = args[:video] if args.key?(:video)
        end
      end
      
      # Link to a video.
      class VideoLink
        include Google::Apis::Core::Hashable
      
        # Required. The display text for the link.
        # Corresponds to the JSON property `displayText`
        # @return [String]
        attr_accessor :display_text
      
        # The URI of a YouTube video.
        # Corresponds to the JSON property `youtubeUri`
        # @return [String]
        attr_accessor :youtube_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_text = args[:display_text] if args.key?(:display_text)
          @youtube_uri = args[:youtube_uri] if args.key?(:youtube_uri)
        end
      end
      
      # A watch for events for a form. When the designated event happens, a
      # notification will be published to the specified target. The notification's
      # attributes will include a `formId` key that has the ID of the watched form and
      # an `eventType` key that has the string of the type. Messages are sent with at-
      # least-once delivery and are only dropped in extraordinary circumstances.
      # Typically all notifications should be reliably delivered within a few seconds;
      # however, in some situations notifications may be delayed. A watch expires
      # seven days after it is created unless it is renewed with watches.renew
      class Watch
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp of when this was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The most recent error type for an attempted delivery. To begin
        # watching the form again a call can be made to watches.renew which also clears
        # this error information.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # Required. Which event type to watch for.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Output only. Timestamp for when this will expire. Each watches.renew call
        # resets this to seven days in the future.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The ID of this watch. See notes on CreateWatchRequest.watch_id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The current state of the watch. Additional details about
        # suspended watches can be found by checking the `error_type`.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The target for notification delivery.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::FormsV1::WatchTarget]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @error_type = args[:error_type] if args.key?(:error_type)
          @event_type = args[:event_type] if args.key?(:event_type)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @id = args[:id] if args.key?(:id)
          @state = args[:state] if args.key?(:state)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # The target for notification delivery.
      class WatchTarget
        include Google::Apis::Core::Hashable
      
        # A Pub/Sub topic.
        # Corresponds to the JSON property `topic`
        # @return [Google::Apis::FormsV1::CloudPubsubTopic]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Provides control over how write requests are executed.
      class WriteControl
        include Google::Apis::Core::Hashable
      
        # The revision ID of the form that the write request is applied to. If this is
        # not the latest revision of the form, the request is not processed and returns
        # a 400 bad request error.
        # Corresponds to the JSON property `requiredRevisionId`
        # @return [String]
        attr_accessor :required_revision_id
      
        # The target revision ID of the form that the write request is applied to. If
        # changes have occurred after this revision, the changes in this update request
        # are transformed against those changes. This results in a new revision of the
        # form that incorporates both the changes in the request and the intervening
        # changes, with the server resolving conflicting changes. The target revision ID
        # may only be used to write to recent versions of a form. If the target revision
        # is too far behind the latest revision, the request is not processed and
        # returns a 400 (Bad Request Error). The request may be retried after reading
        # the latest version of the form. In most cases a target revision ID remains
        # valid for several minutes after it is read, but for frequently-edited forms
        # this window may be shorter.
        # Corresponds to the JSON property `targetRevisionId`
        # @return [String]
        attr_accessor :target_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required_revision_id = args[:required_revision_id] if args.key?(:required_revision_id)
          @target_revision_id = args[:target_revision_id] if args.key?(:target_revision_id)
        end
      end
    end
  end
end
