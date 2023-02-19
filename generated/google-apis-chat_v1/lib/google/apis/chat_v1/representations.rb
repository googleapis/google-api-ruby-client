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
    module ChatV1
      
      class ActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Annotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachmentDataRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Button
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Card
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CardWithId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChatAppLogEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommonEventObject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTimeInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeprecatedEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Dialog
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DialogAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DriveDataRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FormAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Action
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ActionParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1BorderStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Button
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ButtonList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Card
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CardAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CardFixedFooter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1CardHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1DateTimePicker
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1DecoratedText
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Divider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Grid
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1GridItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Icon
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ImageComponent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1ImageCropStyle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1OnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1OpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SelectionInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SelectionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SuggestionItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Suggestions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1SwitchControl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1TextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAppsCardV1Widget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Inputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KeyValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSpacesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchedUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Media
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Membership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OnClick
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlashCommand
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlashCommandMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Space
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpaceDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringInputs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextButton
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextParagraph
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Thread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserMentionMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WidgetMarkup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class ActionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dialog_action, as: 'dialogAction', class: Google::Apis::ChatV1::DialogAction, decorator: Google::Apis::ChatV1::DialogAction::Representation
      
          property :type, as: 'type'
          property :url, as: 'url'
        end
      end
      
      class ActionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status_code, as: 'statusCode'
          property :user_facing_message, as: 'userFacingMessage'
        end
      end
      
      class Annotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :length, as: 'length'
          property :slash_command, as: 'slashCommand', class: Google::Apis::ChatV1::SlashCommandMetadata, decorator: Google::Apis::ChatV1::SlashCommandMetadata::Representation
      
          property :start_index, as: 'startIndex'
          property :type, as: 'type'
          property :user_mention, as: 'userMention', class: Google::Apis::ChatV1::UserMentionMetadata, decorator: Google::Apis::ChatV1::UserMentionMetadata::Representation
      
        end
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_data_ref, as: 'attachmentDataRef', class: Google::Apis::ChatV1::AttachmentDataRef, decorator: Google::Apis::ChatV1::AttachmentDataRef::Representation
      
          property :content_name, as: 'contentName'
          property :content_type, as: 'contentType'
          property :download_uri, as: 'downloadUri'
          property :drive_data_ref, as: 'driveDataRef', class: Google::Apis::ChatV1::DriveDataRef, decorator: Google::Apis::ChatV1::DriveDataRef::Representation
      
          property :name, as: 'name'
          property :source, as: 'source'
          property :thumbnail_uri, as: 'thumbnailUri'
        end
      end
      
      class AttachmentDataRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class Button
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_button, as: 'imageButton', class: Google::Apis::ChatV1::ImageButton, decorator: Google::Apis::ChatV1::ImageButton::Representation
      
          property :text_button, as: 'textButton', class: Google::Apis::ChatV1::TextButton, decorator: Google::Apis::ChatV1::TextButton::Representation
      
        end
      end
      
      class Card
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::ChatV1::CardAction, decorator: Google::Apis::ChatV1::CardAction::Representation
      
          property :header, as: 'header', class: Google::Apis::ChatV1::CardHeader, decorator: Google::Apis::ChatV1::CardHeader::Representation
      
          property :name, as: 'name'
          collection :sections, as: 'sections', class: Google::Apis::ChatV1::Section, decorator: Google::Apis::ChatV1::Section::Representation
      
        end
      end
      
      class CardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
        end
      end
      
      class CardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_style, as: 'imageStyle'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class CardWithId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card, as: 'card', class: Google::Apis::ChatV1::GoogleAppsCardV1Card, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Card::Representation
      
          property :card_id, as: 'cardId'
        end
      end
      
      class ChatAppLogEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment'
          property :deployment_function, as: 'deploymentFunction'
          property :error, as: 'error', class: Google::Apis::ChatV1::Status, decorator: Google::Apis::ChatV1::Status::Representation
      
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :blue, as: 'blue'
          property :green, as: 'green'
          property :red, as: 'red'
        end
      end
      
      class CommonEventObject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :form_inputs, as: 'formInputs', class: Google::Apis::ChatV1::Inputs, decorator: Google::Apis::ChatV1::Inputs::Representation
      
          property :host_app, as: 'hostApp'
          property :invoked_function, as: 'invokedFunction'
          hash :parameters, as: 'parameters'
          property :platform, as: 'platform'
          property :time_zone, as: 'timeZone', class: Google::Apis::ChatV1::TimeZone, decorator: Google::Apis::ChatV1::TimeZone::Representation
      
          property :user_locale, as: 'userLocale'
        end
      end
      
      class DateInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ms_since_epoch, :numeric_string => true, as: 'msSinceEpoch'
        end
      end
      
      class DateTimeInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :has_date, as: 'hasDate'
          property :has_time, as: 'hasTime'
          property :ms_since_epoch, :numeric_string => true, as: 'msSinceEpoch'
        end
      end
      
      class DeprecatedEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ChatV1::FormAction, decorator: Google::Apis::ChatV1::FormAction::Representation
      
          property :common, as: 'common', class: Google::Apis::ChatV1::CommonEventObject, decorator: Google::Apis::ChatV1::CommonEventObject::Representation
      
          property :config_complete_redirect_url, as: 'configCompleteRedirectUrl'
          property :dialog_event_type, as: 'dialogEventType'
          property :event_time, as: 'eventTime'
          property :is_dialog_event, as: 'isDialogEvent'
          property :message, as: 'message', class: Google::Apis::ChatV1::Message, decorator: Google::Apis::ChatV1::Message::Representation
      
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
          property :thread_key, as: 'threadKey'
          property :token, as: 'token'
          property :type, as: 'type'
          property :user, as: 'user', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
        end
      end
      
      class Dialog
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::ChatV1::GoogleAppsCardV1Card, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Card::Representation
      
        end
      end
      
      class DialogAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_status, as: 'actionStatus', class: Google::Apis::ChatV1::ActionStatus, decorator: Google::Apis::ChatV1::ActionStatus::Representation
      
          property :dialog, as: 'dialog', class: Google::Apis::ChatV1::Dialog, decorator: Google::Apis::ChatV1::Dialog::Representation
      
        end
      end
      
      class DriveDataRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drive_file_id, as: 'driveFileId'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FormAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_method_name, as: 'actionMethodName'
          collection :parameters, as: 'parameters', class: Google::Apis::ChatV1::ActionParameter, decorator: Google::Apis::ChatV1::ActionParameter::Representation
      
        end
      end
      
      class GoogleAppsCardV1Action
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function, as: 'function'
          property :interaction, as: 'interaction'
          property :load_indicator, as: 'loadIndicator'
          collection :parameters, as: 'parameters', class: Google::Apis::ChatV1::GoogleAppsCardV1ActionParameter, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ActionParameter::Representation
      
          property :persist_values, as: 'persistValues'
        end
      end
      
      class GoogleAppsCardV1ActionParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1BorderStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corner_radius, as: 'cornerRadius'
          property :stroke_color, as: 'strokeColor', class: Google::Apis::ChatV1::Color, decorator: Google::Apis::ChatV1::Color::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1Button
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :color, as: 'color', class: Google::Apis::ChatV1::Color, decorator: Google::Apis::ChatV1::Color::Representation
      
          property :disabled, as: 'disabled'
          property :icon, as: 'icon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class GoogleAppsCardV1ButtonList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
        end
      end
      
      class GoogleAppsCardV1Card
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_actions, as: 'cardActions', class: Google::Apis::ChatV1::GoogleAppsCardV1CardAction, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardAction::Representation
      
          property :display_style, as: 'displayStyle'
          property :fixed_footer, as: 'fixedFooter', class: Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter::Representation
      
          property :header, as: 'header', class: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader::Representation
      
          property :name, as: 'name'
          property :peek_card_header, as: 'peekCardHeader', class: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader, decorator: Google::Apis::ChatV1::GoogleAppsCardV1CardHeader::Representation
      
          collection :sections, as: 'sections', class: Google::Apis::ChatV1::GoogleAppsCardV1Section, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Section::Representation
      
        end
      end
      
      class GoogleAppsCardV1CardAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_label, as: 'actionLabel'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
        end
      end
      
      class GoogleAppsCardV1CardFixedFooter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :primary_button, as: 'primaryButton', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
          property :secondary_button, as: 'secondaryButton', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
        end
      end
      
      class GoogleAppsCardV1CardHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_alt_text, as: 'imageAltText'
          property :image_type, as: 'imageType'
          property :image_url, as: 'imageUrl'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsCardV1DateTimePicker
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :timezone_offset_date, as: 'timezoneOffsetDate'
          property :type, as: 'type'
          property :value_ms_epoch, :numeric_string => true, as: 'valueMsEpoch'
        end
      end
      
      class GoogleAppsCardV1DecoratedText
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::ChatV1::GoogleAppsCardV1Button, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Button::Representation
      
          property :end_icon, as: 'endIcon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :icon, as: 'icon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :start_icon, as: 'startIcon', class: Google::Apis::ChatV1::GoogleAppsCardV1Icon, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Icon::Representation
      
          property :switch_control, as: 'switchControl', class: Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl::Representation
      
          property :text, as: 'text'
          property :top_label, as: 'topLabel'
          property :wrap_text, as: 'wrapText'
        end
      end
      
      class GoogleAppsCardV1Divider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAppsCardV1Grid
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :border_style, as: 'borderStyle', class: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle, decorator: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle::Representation
      
          property :column_count, as: 'columnCount'
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1GridItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1GridItem::Representation
      
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsCardV1GridItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::ChatV1::GoogleAppsCardV1ImageComponent, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ImageComponent::Representation
      
          property :layout, as: 'layout'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end
      
      class GoogleAppsCardV1Icon
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :icon_url, as: 'iconUrl'
          property :image_type, as: 'imageType'
          property :known_icon, as: 'knownIcon'
        end
      end
      
      class GoogleAppsCardV1Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::GoogleAppsCardV1OnClick, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OnClick::Representation
      
        end
      end
      
      class GoogleAppsCardV1ImageComponent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alt_text, as: 'altText'
          property :border_style, as: 'borderStyle', class: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle, decorator: Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle::Representation
      
          property :crop_style, as: 'cropStyle', class: Google::Apis::ChatV1::GoogleAppsCardV1ImageCropStyle, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ImageCropStyle::Representation
      
          property :image_uri, as: 'imageUri'
        end
      end
      
      class GoogleAppsCardV1ImageCropStyle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1OnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :card, as: 'card', class: Google::Apis::ChatV1::GoogleAppsCardV1Card, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Card::Representation
      
          property :open_dynamic_link_action, as: 'openDynamicLinkAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :open_link, as: 'openLink', class: Google::Apis::ChatV1::GoogleAppsCardV1OpenLink, decorator: Google::Apis::ChatV1::GoogleAppsCardV1OpenLink::Representation
      
        end
      end
      
      class GoogleAppsCardV1OpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_close, as: 'onClose'
          property :open_as, as: 'openAs'
          property :url, as: 'url'
        end
      end
      
      class GoogleAppsCardV1Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :collapsible, as: 'collapsible'
          property :header, as: 'header'
          property :uncollapsible_widgets_count, as: 'uncollapsibleWidgetsCount'
          collection :widgets, as: 'widgets', class: Google::Apis::ChatV1::GoogleAppsCardV1Widget, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Widget::Representation
      
        end
      end
      
      class GoogleAppsCardV1SelectionInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleAppsCardV1SelectionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selected, as: 'selected'
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1SuggestionItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleAppsCardV1Suggestions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::ChatV1::GoogleAppsCardV1SuggestionItem, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SuggestionItem::Representation
      
        end
      end
      
      class GoogleAppsCardV1SwitchControl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_type, as: 'controlType'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :selected, as: 'selected'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_complete_action, as: 'autoCompleteAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :hint_text, as: 'hintText'
          property :initial_suggestions, as: 'initialSuggestions', class: Google::Apis::ChatV1::GoogleAppsCardV1Suggestions, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Suggestions::Representation
      
          property :label, as: 'label'
          property :name, as: 'name'
          property :on_change_action, as: 'onChangeAction', class: Google::Apis::ChatV1::GoogleAppsCardV1Action, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Action::Representation
      
          property :type, as: 'type'
          property :value, as: 'value'
        end
      end
      
      class GoogleAppsCardV1TextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleAppsCardV1Widget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :button_list, as: 'buttonList', class: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList, decorator: Google::Apis::ChatV1::GoogleAppsCardV1ButtonList::Representation
      
          property :date_time_picker, as: 'dateTimePicker', class: Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker, decorator: Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker::Representation
      
          property :decorated_text, as: 'decoratedText', class: Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText, decorator: Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText::Representation
      
          property :divider, as: 'divider', class: Google::Apis::ChatV1::GoogleAppsCardV1Divider, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Divider::Representation
      
          property :grid, as: 'grid', class: Google::Apis::ChatV1::GoogleAppsCardV1Grid, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Grid::Representation
      
          property :image, as: 'image', class: Google::Apis::ChatV1::GoogleAppsCardV1Image, decorator: Google::Apis::ChatV1::GoogleAppsCardV1Image::Representation
      
          property :selection_input, as: 'selectionInput', class: Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput, decorator: Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput::Representation
      
          property :text_input, as: 'textInput', class: Google::Apis::ChatV1::GoogleAppsCardV1TextInput, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextInput::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph, decorator: Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph::Representation
      
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aspect_ratio, as: 'aspectRatio'
          property :image_url, as: 'imageUrl'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
        end
      end
      
      class ImageButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
        end
      end
      
      class Inputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :date_input, as: 'dateInput', class: Google::Apis::ChatV1::DateInput, decorator: Google::Apis::ChatV1::DateInput::Representation
      
          property :date_time_input, as: 'dateTimeInput', class: Google::Apis::ChatV1::DateTimeInput, decorator: Google::Apis::ChatV1::DateTimeInput::Representation
      
          property :string_inputs, as: 'stringInputs', class: Google::Apis::ChatV1::StringInputs, decorator: Google::Apis::ChatV1::StringInputs::Representation
      
          property :time_input, as: 'timeInput', class: Google::Apis::ChatV1::TimeInput, decorator: Google::Apis::ChatV1::TimeInput::Representation
      
        end
      end
      
      class KeyValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_label, as: 'bottomLabel'
          property :button, as: 'button', class: Google::Apis::ChatV1::Button, decorator: Google::Apis::ChatV1::Button::Representation
      
          property :content, as: 'content'
          property :content_multiline, as: 'contentMultiline'
          property :icon, as: 'icon'
          property :icon_url, as: 'iconUrl'
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
          property :top_label, as: 'topLabel'
        end
      end
      
      class ListMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :memberships, as: 'memberships', class: Google::Apis::ChatV1::Membership, decorator: Google::Apis::ChatV1::Membership::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSpacesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :spaces, as: 'spaces', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
        end
      end
      
      class MatchedUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class Media
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_name, as: 'resourceName'
        end
      end
      
      class Membership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :member, as: 'member', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :name, as: 'name'
          property :role, as: 'role'
          property :state, as: 'state'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_response, as: 'actionResponse', class: Google::Apis::ChatV1::ActionResponse, decorator: Google::Apis::ChatV1::ActionResponse::Representation
      
          collection :annotations, as: 'annotations', class: Google::Apis::ChatV1::Annotation, decorator: Google::Apis::ChatV1::Annotation::Representation
      
          property :argument_text, as: 'argumentText'
          collection :attachment, as: 'attachment', class: Google::Apis::ChatV1::Attachment, decorator: Google::Apis::ChatV1::Attachment::Representation
      
          collection :cards, as: 'cards', class: Google::Apis::ChatV1::Card, decorator: Google::Apis::ChatV1::Card::Representation
      
          collection :cards_v2, as: 'cardsV2', class: Google::Apis::ChatV1::CardWithId, decorator: Google::Apis::ChatV1::CardWithId::Representation
      
          property :client_assigned_message_id, as: 'clientAssignedMessageId'
          property :create_time, as: 'createTime'
          property :fallback_text, as: 'fallbackText'
          property :last_update_time, as: 'lastUpdateTime'
          property :matched_url, as: 'matchedUrl', class: Google::Apis::ChatV1::MatchedUrl, decorator: Google::Apis::ChatV1::MatchedUrl::Representation
      
          property :name, as: 'name'
          property :sender, as: 'sender', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :slash_command, as: 'slashCommand', class: Google::Apis::ChatV1::SlashCommand, decorator: Google::Apis::ChatV1::SlashCommand::Representation
      
          property :space, as: 'space', class: Google::Apis::ChatV1::Space, decorator: Google::Apis::ChatV1::Space::Representation
      
          property :text, as: 'text'
          property :thread, as: 'thread', class: Google::Apis::ChatV1::Thread, decorator: Google::Apis::ChatV1::Thread::Representation
      
          property :thread_reply, as: 'threadReply'
        end
      end
      
      class OnClick
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action', class: Google::Apis::ChatV1::FormAction, decorator: Google::Apis::ChatV1::FormAction::Representation
      
          property :open_link, as: 'openLink', class: Google::Apis::ChatV1::OpenLink, decorator: Google::Apis::ChatV1::OpenLink::Representation
      
        end
      end
      
      class OpenLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :header, as: 'header'
          collection :widgets, as: 'widgets', class: Google::Apis::ChatV1::WidgetMarkup, decorator: Google::Apis::ChatV1::WidgetMarkup::Representation
      
        end
      end
      
      class SlashCommand
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command_id, :numeric_string => true, as: 'commandId'
        end
      end
      
      class SlashCommandMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bot, as: 'bot', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
          property :command_id, :numeric_string => true, as: 'commandId'
          property :command_name, as: 'commandName'
          property :triggers_dialog, as: 'triggersDialog'
          property :type, as: 'type'
        end
      end
      
      class Space
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :admin_installed, as: 'adminInstalled'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :single_user_bot_dm, as: 'singleUserBotDm'
          property :space_details, as: 'spaceDetails', class: Google::Apis::ChatV1::SpaceDetails, decorator: Google::Apis::ChatV1::SpaceDetails::Representation
      
          property :space_threading_state, as: 'spaceThreadingState'
          property :threaded, as: 'threaded'
          property :type, as: 'type'
        end
      end
      
      class SpaceDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :guidelines, as: 'guidelines'
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
      
      class StringInputs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :value, as: 'value'
        end
      end
      
      class TextButton
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :on_click, as: 'onClick', class: Google::Apis::ChatV1::OnClick, decorator: Google::Apis::ChatV1::OnClick::Representation
      
          property :text, as: 'text'
        end
      end
      
      class TextParagraph
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class Thread
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :thread_key, as: 'threadKey'
        end
      end
      
      class TimeInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :offset, as: 'offset'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :domain_id, as: 'domainId'
          property :is_anonymous, as: 'isAnonymous'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class UserMentionMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :user, as: 'user', class: Google::Apis::ChatV1::User, decorator: Google::Apis::ChatV1::User::Representation
      
        end
      end
      
      class WidgetMarkup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buttons, as: 'buttons', class: Google::Apis::ChatV1::Button, decorator: Google::Apis::ChatV1::Button::Representation
      
          property :image, as: 'image', class: Google::Apis::ChatV1::Image, decorator: Google::Apis::ChatV1::Image::Representation
      
          property :key_value, as: 'keyValue', class: Google::Apis::ChatV1::KeyValue, decorator: Google::Apis::ChatV1::KeyValue::Representation
      
          property :text_paragraph, as: 'textParagraph', class: Google::Apis::ChatV1::TextParagraph, decorator: Google::Apis::ChatV1::TextParagraph::Representation
      
        end
      end
    end
  end
end
