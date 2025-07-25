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
      
      # Represents the [access setting](https://support.google.com/chat/answer/
      # 11971020) of the space.
      class AccessSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates the access state of the space.
        # Corresponds to the JSON property `accessState`
        # @return [String]
        attr_accessor :access_state
      
        # Optional. The resource name of the [target audience](https://support.google.
        # com/a/answer/9934697) who can discover the space, join the space, and preview
        # the messages in the space. If unset, only users or Google Groups who have been
        # individually invited or added to the space can access it. For details, see [
        # Make a space discoverable to a target audience](https://developers.google.com/
        # workspace/chat/space-target-audience). Format: `audiences/`audience`` To use
        # the default target audience for the Google Workspace organization, set to `
        # audiences/default`. Reading the target audience supports: - [User
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user) - [App authentication](https://developers.google.com/
        # workspace/chat/authenticate-authorize-chat-app) with [administrator approval](
        # https://support.google.com/a?p=chat-app-auth) with the `chat.app.spaces` scope
        # in [Developer Preview](https://developers.google.com/workspace/preview). This
        # field is not populated when using the `chat.bot` scope with [app
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-app). Setting the target audience requires [user authentication]
        # (https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
        # .
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_state = args[:access_state] if args.key?(:access_state)
          @audience = args[:audience] if args.key?(:audience)
        end
      end
      
      # One or more interactive widgets that appear at the bottom of a message. For
      # details, see [Add interactive widgets at the bottom of a message](https://
      # developers.google.com/workspace/chat/create-messages#add-accessory-widgets).
      class AccessoryWidget
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally. For an example in Google Chat apps,
        # see [Add a button](https://developers.google.com/workspace/chat/design-
        # interactive-card-dialog#add_a_button). [Google Workspace add-ons and Chat apps]
        # (https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ButtonList]
        attr_accessor :button_list
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
        end
      end
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze one day, snooze
      # next week. You might use `action method = snooze()`, passing the snooze type
      # and snooze time in the list of string parameters.
      class ActionParameter
        include Google::Apis::Core::Hashable
      
        # The name of the parameter for the action script.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the parameter.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Parameters that a Chat app can use to configure how its response is posted.
      class ActionResponse
        include Google::Apis::Core::Hashable
      
        # Contains a [dialog](https://developers.google.com/workspace/chat/dialogs) and
        # request status code.
        # Corresponds to the JSON property `dialogAction`
        # @return [Google::Apis::ChatV1::DialogAction]
        attr_accessor :dialog_action
      
        # Input only. The type of Chat app response.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # For `selectionInput` widgets, returns autocomplete suggestions for a
        # multiselect menu.
        # Corresponds to the JSON property `updatedWidget`
        # @return [Google::Apis::ChatV1::UpdatedWidget]
        attr_accessor :updated_widget
      
        # Input only. URL for users to authenticate or configure. (Only for `
        # REQUEST_CONFIG` response types.)
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dialog_action = args[:dialog_action] if args.key?(:dialog_action)
          @type = args[:type] if args.key?(:type)
          @updated_widget = args[:updated_widget] if args.key?(:updated_widget)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents the status for a request to either invoke or submit a [dialog](
      # https://developers.google.com/workspace/chat/dialogs).
      class ActionStatus
        include Google::Apis::Core::Hashable
      
        # The status code.
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        # The message to send users about the status of their request. If unset, a
        # generic message based on the `status_code` is sent.
        # Corresponds to the JSON property `userFacingMessage`
        # @return [String]
        attr_accessor :user_facing_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status_code = args[:status_code] if args.key?(:status_code)
          @user_facing_message = args[:user_facing_message] if args.key?(:user_facing_message)
        end
      end
      
      # Output only. Annotations associated with the plain-text body of the message.
      # To add basic formatting to a text message, see [Format text messages](https://
      # developers.google.com/workspace/chat/format-messages). Example plain-text
      # message body: ``` Hello @FooBot how are you!" ``` The corresponding
      # annotations metadata: ``` "annotations":[` "type":"USER_MENTION", "startIndex":
      # 6, "length":7, "userMention": ` "user": ` "name":"users/`user`", "displayName":
      # "FooBot", "avatarUrl":"https://goo.gl/aeDtrS", "type":"BOT" `, "type":"MENTION"
      # ` `] ```
      class Annotation
        include Google::Apis::Core::Hashable
      
        # Annotation metadata for custom emoji.
        # Corresponds to the JSON property `customEmojiMetadata`
        # @return [Google::Apis::ChatV1::CustomEmojiMetadata]
        attr_accessor :custom_emoji_metadata
      
        # Length of the substring in the plain-text message body this annotation
        # corresponds to.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # A rich link to a resource.
        # Corresponds to the JSON property `richLinkMetadata`
        # @return [Google::Apis::ChatV1::RichLinkMetadata]
        attr_accessor :rich_link_metadata
      
        # Annotation metadata for slash commands (/).
        # Corresponds to the JSON property `slashCommand`
        # @return [Google::Apis::ChatV1::SlashCommandMetadata]
        attr_accessor :slash_command
      
        # Start index (0-based, inclusive) in the plain-text message body this
        # annotation corresponds to.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The type of this annotation.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Annotation metadata for user mentions (@).
        # Corresponds to the JSON property `userMention`
        # @return [Google::Apis::ChatV1::UserMentionMetadata]
        attr_accessor :user_mention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_emoji_metadata = args[:custom_emoji_metadata] if args.key?(:custom_emoji_metadata)
          @length = args[:length] if args.key?(:length)
          @rich_link_metadata = args[:rich_link_metadata] if args.key?(:rich_link_metadata)
          @slash_command = args[:slash_command] if args.key?(:slash_command)
          @start_index = args[:start_index] if args.key?(:start_index)
          @type = args[:type] if args.key?(:type)
          @user_mention = args[:user_mention] if args.key?(:user_mention)
        end
      end
      
      # Metadata about a [Chat app command](https://developers.google.com/workspace/
      # chat/commands).
      class AppCommandMetadata
        include Google::Apis::Core::Hashable
      
        # The ID for the command specified in the Chat API configuration.
        # Corresponds to the JSON property `appCommandId`
        # @return [Fixnum]
        attr_accessor :app_command_id
      
        # The type of Chat app command.
        # Corresponds to the JSON property `appCommandType`
        # @return [String]
        attr_accessor :app_command_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_command_id = args[:app_command_id] if args.key?(:app_command_id)
          @app_command_type = args[:app_command_type] if args.key?(:app_command_type)
        end
      end
      
      # A GIF image that's specified by a URL.
      class AttachedGif
        include Google::Apis::Core::Hashable
      
        # Output only. The URL that hosts the GIF image.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An attachment in Google Chat.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # A reference to the attachment data.
        # Corresponds to the JSON property `attachmentDataRef`
        # @return [Google::Apis::ChatV1::AttachmentDataRef]
        attr_accessor :attachment_data_ref
      
        # Output only. The original file name for the content, not the full path.
        # Corresponds to the JSON property `contentName`
        # @return [String]
        attr_accessor :content_name
      
        # Output only. The content type (MIME type) of the file.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Output only. The download URL which should be used to allow a human user to
        # download the attachment. Chat apps shouldn't use this URL to download
        # attachment content.
        # Corresponds to the JSON property `downloadUri`
        # @return [String]
        attr_accessor :download_uri
      
        # A reference to the data of a drive attachment.
        # Corresponds to the JSON property `driveDataRef`
        # @return [Google::Apis::ChatV1::DriveDataRef]
        attr_accessor :drive_data_ref
      
        # Optional. Resource name of the attachment, in the form `spaces/`space`/
        # messages/`message`/attachments/`attachment``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The source of the attachment.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. The thumbnail URL which should be used to preview the attachment
        # to a human user. Chat apps shouldn't use this URL to download attachment
        # content.
        # Corresponds to the JSON property `thumbnailUri`
        # @return [String]
        attr_accessor :thumbnail_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_data_ref = args[:attachment_data_ref] if args.key?(:attachment_data_ref)
          @content_name = args[:content_name] if args.key?(:content_name)
          @content_type = args[:content_type] if args.key?(:content_type)
          @download_uri = args[:download_uri] if args.key?(:download_uri)
          @drive_data_ref = args[:drive_data_ref] if args.key?(:drive_data_ref)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @thumbnail_uri = args[:thumbnail_uri] if args.key?(:thumbnail_uri)
        end
      end
      
      # A reference to the attachment data.
      class AttachmentDataRef
        include Google::Apis::Core::Hashable
      
        # Optional. Opaque token containing a reference to an uploaded attachment.
        # Treated by clients as an opaque string and used to create or update Chat
        # messages with attachments.
        # Corresponds to the JSON property `attachmentUploadToken`
        # @return [String]
        attr_accessor :attachment_upload_token
      
        # Optional. The resource name of the attachment data. This field is used with
        # the media API to download the attachment data.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_upload_token = args[:attachment_upload_token] if args.key?(:attachment_upload_token)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # A button. Can be a text button or an image button.
      class Button
        include Google::Apis::Core::Hashable
      
        # An image button with an `onclick` action.
        # Corresponds to the JSON property `imageButton`
        # @return [Google::Apis::ChatV1::ImageButton]
        attr_accessor :image_button
      
        # A button with text and `onclick` action.
        # Corresponds to the JSON property `textButton`
        # @return [Google::Apis::ChatV1::TextButton]
        attr_accessor :text_button
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_button = args[:image_button] if args.key?(:image_button)
          @text_button = args[:text_button] if args.key?(:text_button)
        end
      end
      
      # A card is a UI element that can contain UI widgets such as text and images.
      class Card
        include Google::Apis::Core::Hashable
      
        # The actions of this card.
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::ChatV1::CardAction>]
        attr_accessor :card_actions
      
        # The header of the card. A header usually contains a title and an image.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::ChatV1::CardHeader]
        attr_accessor :header
      
        # Name of the card.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Sections are separated by a line divider.
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::ChatV1::Section>]
        attr_accessor :sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_actions = args[:card_actions] if args.key?(:card_actions)
          @header = args[:header] if args.key?(:header)
          @name = args[:name] if args.key?(:name)
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # A card action is the action associated with the card. For an invoice card, a
      # typical action would be: delete invoice, email invoice or open the invoice in
      # browser. Not supported by Google Chat apps.
      class CardAction
        include Google::Apis::Core::Hashable
      
        # The label used to be displayed in the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # An `onclick` action (for example, open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_label = args[:action_label] if args.key?(:action_label)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # 
      class CardHeader
        include Google::Apis::Core::Hashable
      
        # The image's type (for example, square border or circular border).
        # Corresponds to the JSON property `imageStyle`
        # @return [String]
        attr_accessor :image_style
      
        # The URL of the image in the card header.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # The subtitle of the card header.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title must be specified. The header has a fixed height: if both a title
        # and subtitle is specified, each takes up one line. If only the title is
        # specified, it takes up both lines.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_style = args[:image_style] if args.key?(:image_style)
          @image_url = args[:image_url] if args.key?(:image_url)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A [card](https://developers.google.com/workspace/chat/api/reference/rest/v1/
      # cards) in a Google Chat message. Only Chat apps can create cards. If your Chat
      # app [authenticates as a user](https://developers.google.com/workspace/chat/
      # authenticate-authorize-chat-user), the message can't contain cards. [Card
      # builder](https://addons.gsuite.google.com/uikit/builder)
      class CardWithId
        include Google::Apis::Core::Hashable
      
        # A card interface displayed in a Google Chat message or Google Workspace add-on.
        # Cards support a defined layout, interactive UI elements like buttons, and
        # rich media like images. Use cards to present detailed information, gather
        # information from users, and guide users to take a next step. [Card builder](
        # https://addons.gsuite.google.com/uikit/builder) To learn how to build cards,
        # see the following documentation: * For Google Chat apps, see [Design the
        # components of a card or dialog](https://developers.google.com/workspace/chat/
        # design-components-card-dialog). * For Google Workspace add-ons, see [Card-
        # based interfaces](https://developers.google.com/apps-script/add-ons/concepts/
        # cards). Note: You can add up to 100 widgets per card. Any widgets beyond this
        # limit are ignored. This limit applies to both card messages and dialogs in
        # Google Chat apps, and to cards in Google Workspace add-ons. **Example: Card
        # message for a Google Chat app** ![Example contact card](https://developers.
        # google.com/workspace/chat/images/card_api_reference.png) To create the sample
        # card message in Google Chat, use the following JSON: ``` ` "cardsV2": [ ` "
        # cardId": "unique-card-id", "card": ` "header": ` "title": "Sasha", "subtitle":
        # "Software Engineer", "imageUrl": "https://developers.google.com/workspace/chat/
        # images/quickstart-app-avatar.png", "imageType": "CIRCLE", "imageAltText": "
        # Avatar for Sasha" `, "sections": [ ` "header": "Contact Info", "collapsible":
        # true, "uncollapsibleWidgetsCount": 1, "widgets": [ ` "decoratedText": ` "
        # startIcon": ` "knownIcon": "EMAIL" `, "text": "sasha@example.com" ` `, ` "
        # decoratedText": ` "startIcon": ` "knownIcon": "PERSON" `, "text": "Online" ` `,
        # ` "decoratedText": ` "startIcon": ` "knownIcon": "PHONE" `, "text": "+1 (555)
        # 555-1234" ` `, ` "buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "
        # openLink": ` "url": "https://example.com/share" ` ` `, ` "text": "Edit", "
        # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "EDIT" ` ] ` ` ` ] ` ` ] ` ] ` ` ] ` ```
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Card]
        attr_accessor :card
      
        # Required if the message contains multiple cards. A unique identifier for a
        # card in a message.
        # Corresponds to the JSON property `cardId`
        # @return [String]
        attr_accessor :card_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card = args[:card] if args.key?(:card)
          @card_id = args[:card_id] if args.key?(:card_id)
        end
      end
      
      # JSON payload of error messages. If the Cloud Logging API is enabled, these
      # error messages are logged to [Google Cloud Logging](https://cloud.google.com/
      # logging/docs).
      class ChatAppLogEntry
        include Google::Apis::Core::Hashable
      
        # The deployment that caused the error. For Chat apps built in Apps Script, this
        # is the deployment ID defined by Apps Script.
        # Corresponds to the JSON property `deployment`
        # @return [String]
        attr_accessor :deployment
      
        # The unencrypted `callback_method` name that was running when the error was
        # encountered.
        # Corresponds to the JSON property `deploymentFunction`
        # @return [String]
        attr_accessor :deployment_function
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ChatV1::Status]
        attr_accessor :error
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deployment = args[:deployment] if args.key?(:deployment)
          @deployment_function = args[:deployment_function] if args.key?(:deployment_function)
          @error = args[:error] if args.key?(:error)
        end
      end
      
      # For a `SelectionInput` widget that uses a multiselect menu, a data source from
      # Google Chat. The data source populates selection items for the multiselect
      # menu. For example, a user can select Google Chat spaces that they're a member
      # of. [Google Chat apps](https://developers.google.com/workspace/chat):
      class ChatClientDataSourceMarkup
        include Google::Apis::Core::Hashable
      
        # A data source that populates Google Chat spaces as selection items for a
        # multiselect menu. Only populates spaces that the user is a member of. [Google
        # Chat apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `spaceDataSource`
        # @return [Google::Apis::ChatV1::SpaceDataSource]
        attr_accessor :space_data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space_data_source = args[:space_data_source] if args.key?(:space_data_source)
        end
      end
      
      # Data for Chat space links.
      class ChatSpaceLinkData
        include Google::Apis::Core::Hashable
      
        # The message of the linked Chat space resource. Format: `spaces/`space`/
        # messages/`message``
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The space of the linked Chat space resource. Format: `spaces/`space``
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        # The thread of the linked Chat space resource. Format: `spaces/`space`/threads/`
        # thread``
        # Corresponds to the JSON property `thread`
        # @return [String]
        attr_accessor :thread
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @space = args[:space] if args.key?(:space)
          @thread = args[:thread] if args.key?(:thread)
        end
      end
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to and from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't have
      # information about the absolute color space that should be used to interpret
      # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most `
      # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
      # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
      # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
      # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
      # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
      # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
      # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
      # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
      # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
      # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
      # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
      # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
      # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
      # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
      # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
      # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
      # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
      # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
      # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
      # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
      # autorelease]; return result; ` // ... Example (JavaScript): // ... var
      # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
      # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
      # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
      # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
      # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
      # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
      # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
      # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
      # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
      # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
      # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
      # / ...
      class Color
        include Google::Apis::Core::Hashable
      
        # The fraction of this color that should be applied to the pixel. That is, the
        # final pixel color is defined by the equation: `pixel color = alpha * (this
        # color) + (1.0 - alpha) * (background color)` This means that a value of 1.0
        # corresponds to a solid color, whereas a value of 0.0 corresponds to a
        # completely transparent color. This uses a wrapper message rather than a simple
        # float scalar so that it is possible to distinguish between a default value and
        # the value being unset. If omitted, this color object is rendered as a solid
        # color (as if the alpha value had been explicitly given a value of 1.0).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # The amount of blue in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `blue`
        # @return [Float]
        attr_accessor :blue
      
        # The amount of green in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `green`
        # @return [Float]
        attr_accessor :green
      
        # The amount of red in the color as a value in the interval [0, 1].
        # Corresponds to the JSON property `red`
        # @return [Float]
        attr_accessor :red
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @blue = args[:blue] if args.key?(:blue)
          @green = args[:green] if args.key?(:green)
          @red = args[:red] if args.key?(:red)
        end
      end
      
      # The common event object is the portion of the overall event object that
      # carries general, host-independent information to the add-on from the user's
      # client. This information includes details such as the user's locale, host app,
      # and platform. In addition to homepage and contextual triggers, add-ons
      # construct and pass event objects to [action callback functions](https://
      # developers.google.com/workspace/add-ons/concepts/actions#callback_functions)
      # when the user interacts with widgets. Your add-on's callback function can
      # query the common event object to determine the contents of open widgets in the
      # user's client. For example, your add-on can locate the text a user has entered
      # into a [TextInput](https://developers.google.com/apps-script/reference/card-
      # service/text-input) widget in the `eventObject.commentEventObject.formInputs`
      # object. For Chat apps, the name of the function that the user invoked when
      # interacting with a widget.
      class CommonEventObject
        include Google::Apis::Core::Hashable
      
        # A map containing the current values of the widgets in the displayed card. The
        # map keys are the string IDs assigned with each widget. The structure of the
        # map value object is dependent on the widget type: **Note**: The following
        # examples are formatted for Apps Script's V8 runtime. If you're using Rhino
        # runtime, you must add `[""]` after the value. For example, instead of `e.
        # commonEventObject.formInputs.employeeName.stringInputs.value[0]`, format the
        # event object as `e.commonEventObject.formInputs.employeeName[""].stringInputs.
        # value[0]`. To learn more about runtimes in Apps Script, see the [V8 Runtime
        # Overview](https://developers.google.com/apps-script/guides/v8-runtime). *
        # Single-valued widgets (for example, a text box): a list of strings (only one
        # element). **Example**: for a text input widget with `employeeName` as its ID,
        # access the text input value with: `e.commonEventObject.formInputs.employeeName.
        # stringInputs.value[0]`. * Multi-valued widgets (for example, checkbox groups):
        # a list of strings. **Example**: for a multi-value widget with `participants`
        # as its ID, access the value array with: `e.commonEventObject.formInputs.
        # participants.stringInputs.value`. * **A date-time picker**: a [`DateTimeInput
        # object`](https://developers.google.com/workspace/add-ons/concepts/event-
        # objects#date-time-input). **Example**: For a picker with an ID of `myDTPicker`,
        # access the [`DateTimeInput`](https://developers.google.com/workspace/add-ons/
        # concepts/event-objects#date-time-input) object using `e.commonEventObject.
        # formInputs.myDTPicker.dateTimeInput`. * **A date-only picker**: a [`DateInput
        # object`](https://developers.google.com/workspace/add-ons/concepts/event-
        # objects#date-input). **Example**: For a picker with an ID of `myDatePicker`,
        # access the [`DateInput`](https://developers.google.com/workspace/add-ons/
        # concepts/event-objects#date-input) object using `e.commonEventObject.
        # formInputs.myDatePicker.dateInput`. * **A time-only picker**: a [`TimeInput
        # object`](https://developers.google.com/workspace/add-ons/concepts/event-
        # objects#time-input). **Example**: For a picker with an ID of `myTimePicker`,
        # access the [`TimeInput`](https://developers.google.com/workspace/add-ons/
        # concepts/event-objects#time-input) object using `e.commonEventObject.
        # formInputs.myTimePicker.timeInput`.
        # Corresponds to the JSON property `formInputs`
        # @return [Hash<String,Google::Apis::ChatV1::Inputs>]
        attr_accessor :form_inputs
      
        # Indicates the host app the add-on is active in when the event object is
        # generated. Possible values include the following: * `GMAIL` * `CALENDAR` * `
        # DRIVE` * `DOCS` * `SHEETS` * `SLIDES` * `CHAT`
        # Corresponds to the JSON property `hostApp`
        # @return [String]
        attr_accessor :host_app
      
        # Name of the invoked function associated with the widget. Only set for Chat
        # apps.
        # Corresponds to the JSON property `invokedFunction`
        # @return [String]
        attr_accessor :invoked_function
      
        # Any additional parameters you supply to an action using [`actionParameters`](
        # https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.card.
        # v1#google.apps.card.v1.Action.ActionParameter) or [`Action.setParameters()`](
        # https://developers.google.com/apps-script/reference/card-service/action#
        # setparametersparameters). **Developer Preview:** For [add-ons that extend
        # Google Chat](https://developers.google.com/workspace/add-ons/chat), to suggest
        # items based on what the users type in multiselect menus, use the value of the `
        # "autocomplete_widget_query"` key (`event.commonEventObject.parameters["
        # autocomplete_widget_query"]`). You can use this value to query a database and
        # suggest selectable items to users as they type. For details, see [Collect and
        # process information from Google Chat users](https://developers.google.com/
        # workspace/add-ons/chat/collect-information).
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # The platform enum which indicates the platform where the event originates (`
        # WEB`, `IOS`, or `ANDROID`). Not supported by Chat apps.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The timezone ID and offset from Coordinated Universal Time (UTC). Only
        # supported for the event types [`CARD_CLICKED`](https://developers.google.com/
        # chat/api/reference/rest/v1/EventType#ENUM_VALUES.CARD_CLICKED) and [`
        # SUBMIT_DIALOG`](https://developers.google.com/chat/api/reference/rest/v1/
        # DialogEventType#ENUM_VALUES.SUBMIT_DIALOG).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::ChatV1::TimeZone]
        attr_accessor :time_zone
      
        # **Disabled by default.** The user's language and country/region identifier in
        # the format of [ISO 639](https://wikipedia.org/wiki/ISO_639_macrolanguage)
        # language code-[ISO 3166](https://wikipedia.org/wiki/ISO_3166) country/region
        # code. For example, `en-US`. To turn on this field, you must set `addOns.common.
        # useLocaleFromApp` to `true` in your add-on's manifest. Your add-on's scope
        # list must also include `https://www.googleapis.com/auth/script.locale`. See [
        # Accessing user locale and timezone](https://developers.google.com/workspace/
        # add-ons/how-tos/access-user-locale) for more details.
        # Corresponds to the JSON property `userLocale`
        # @return [String]
        attr_accessor :user_locale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @form_inputs = args[:form_inputs] if args.key?(:form_inputs)
          @host_app = args[:host_app] if args.key?(:host_app)
          @invoked_function = args[:invoked_function] if args.key?(:invoked_function)
          @parameters = args[:parameters] if args.key?(:parameters)
          @platform = args[:platform] if args.key?(:platform)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @user_locale = args[:user_locale] if args.key?(:user_locale)
        end
      end
      
      # Request message for completing the import process for a space.
      class CompleteImportSpaceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for completing the import process for a space.
      class CompleteImportSpaceResponse
        include Google::Apis::Core::Hashable
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Represents a [custom emoji](https://support.google.com/chat/answer/12800149).
      class CustomEmoji
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. User-provided name for the custom emoji, which is unique
        # within the organization. Required when the custom emoji is created, output
        # only otherwise. Emoji names must start and end with colons, must be lowercase
        # and can only contain alphanumeric characters, hyphens, and underscores.
        # Hyphens and underscores should be used to separate words and cannot be used
        # consecutively. Example: `:valid-emoji-name:`
        # Corresponds to the JSON property `emojiName`
        # @return [String]
        attr_accessor :emoji_name
      
        # Identifier. The resource name of the custom emoji, assigned by the server.
        # Format: `customEmojis/`customEmoji``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Payload data for the custom emoji.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::ChatV1::CustomEmojiPayload]
        attr_accessor :payload
      
        # Output only. A temporary image URL for the custom emoji, valid for at least 10
        # minutes. Note that this is not populated in the response when the custom emoji
        # is created.
        # Corresponds to the JSON property `temporaryImageUri`
        # @return [String]
        attr_accessor :temporary_image_uri
      
        # Output only. Unique key for the custom emoji resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emoji_name = args[:emoji_name] if args.key?(:emoji_name)
          @name = args[:name] if args.key?(:name)
          @payload = args[:payload] if args.key?(:payload)
          @temporary_image_uri = args[:temporary_image_uri] if args.key?(:temporary_image_uri)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Annotation metadata for custom emoji.
      class CustomEmojiMetadata
        include Google::Apis::Core::Hashable
      
        # Represents a [custom emoji](https://support.google.com/chat/answer/12800149).
        # Corresponds to the JSON property `customEmoji`
        # @return [Google::Apis::ChatV1::CustomEmoji]
        attr_accessor :custom_emoji
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_emoji = args[:custom_emoji] if args.key?(:custom_emoji)
        end
      end
      
      # Payload data for the custom emoji.
      class CustomEmojiPayload
        include Google::Apis::Core::Hashable
      
        # Required. Input only. The image used for the custom emoji. The payload must be
        # under 256 KB and the dimension of the image must be square and between 64 and
        # 500 pixels. The restrictions are subject to change.
        # Corresponds to the JSON property `fileContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :file_content
      
        # Required. Input only. The image file name. Supported file extensions: `.png`, `
        # .jpg`, `.gif`.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_content = args[:file_content] if args.key?(:file_content)
          @filename = args[:filename] if args.key?(:filename)
        end
      end
      
      # Date input values.
      class DateInput
        include Google::Apis::Core::Hashable
      
        # Time since epoch time, in milliseconds.
        # Corresponds to the JSON property `msSinceEpoch`
        # @return [Fixnum]
        attr_accessor :ms_since_epoch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ms_since_epoch = args[:ms_since_epoch] if args.key?(:ms_since_epoch)
        end
      end
      
      # Date and time input values.
      class DateTimeInput
        include Google::Apis::Core::Hashable
      
        # Whether the `datetime` input includes a calendar date.
        # Corresponds to the JSON property `hasDate`
        # @return [Boolean]
        attr_accessor :has_date
        alias_method :has_date?, :has_date
      
        # Whether the `datetime` input includes a timestamp.
        # Corresponds to the JSON property `hasTime`
        # @return [Boolean]
        attr_accessor :has_time
        alias_method :has_time?, :has_time
      
        # Time since epoch time, in milliseconds.
        # Corresponds to the JSON property `msSinceEpoch`
        # @return [Fixnum]
        attr_accessor :ms_since_epoch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @has_date = args[:has_date] if args.key?(:has_date)
          @has_time = args[:has_time] if args.key?(:has_time)
          @ms_since_epoch = args[:ms_since_epoch] if args.key?(:ms_since_epoch)
        end
      end
      
      # Information about a deleted message. A message is deleted when `delete_time`
      # is set.
      class DeletionMetadata
        include Google::Apis::Core::Hashable
      
        # Indicates who deleted the message.
        # Corresponds to the JSON property `deletionType`
        # @return [String]
        attr_accessor :deletion_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deletion_type = args[:deletion_type] if args.key?(:deletion_type)
        end
      end
      
      # A Google Chat app interaction event that represents and contains data about a
      # user's interaction with a Chat app. To configure your Chat app to receive
      # interaction events, see [Receive and respond to user interactions](https://
      # developers.google.com/workspace/chat/receive-respond-interactions). In
      # addition to receiving events from user interactions, Chat apps can receive
      # events about changes to spaces, such as when a new member is added to a space.
      # To learn about space events, see [Work with events from Google Chat](https://
      # developers.google.com/workspace/chat/events-overview). Note: This event is
      # only used for [Chat interaction events](https://developers.google.com/
      # workspace/chat/receive-respond-interactions). If your Chat app is built as a [
      # Google Workspace add-on](https://developers.google.com/workspace/add-ons/chat/
      # build), see [Chat event objects](https://developers.google.com/workspace/add-
      # ons/concepts/event-objects#chat-event-object) in the add-ons documentation.
      class DeprecatedEvent
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # you can invoke Apps Script to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::FormAction]
        attr_accessor :action
      
        # Metadata about a [Chat app command](https://developers.google.com/workspace/
        # chat/commands).
        # Corresponds to the JSON property `appCommandMetadata`
        # @return [Google::Apis::ChatV1::AppCommandMetadata]
        attr_accessor :app_command_metadata
      
        # The common event object is the portion of the overall event object that
        # carries general, host-independent information to the add-on from the user's
        # client. This information includes details such as the user's locale, host app,
        # and platform. In addition to homepage and contextual triggers, add-ons
        # construct and pass event objects to [action callback functions](https://
        # developers.google.com/workspace/add-ons/concepts/actions#callback_functions)
        # when the user interacts with widgets. Your add-on's callback function can
        # query the common event object to determine the contents of open widgets in the
        # user's client. For example, your add-on can locate the text a user has entered
        # into a [TextInput](https://developers.google.com/apps-script/reference/card-
        # service/text-input) widget in the `eventObject.commentEventObject.formInputs`
        # object. For Chat apps, the name of the function that the user invoked when
        # interacting with a widget.
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::ChatV1::CommonEventObject]
        attr_accessor :common
      
        # This URL is populated for `MESSAGE`, `ADDED_TO_SPACE`, and `APP_COMMAND`
        # interaction events. After completing an authorization or configuration flow
        # outside of Google Chat, users must be redirected to this URL to signal to
        # Google Chat that the authorization or configuration flow was successful. For
        # more information, see [Connect a Chat app with other services and tools](https:
        # //developers.google.com/workspace/chat/connect-web-services-tools).
        # Corresponds to the JSON property `configCompleteRedirectUrl`
        # @return [String]
        attr_accessor :config_complete_redirect_url
      
        # The type of [dialog](https://developers.google.com/workspace/chat/dialogs)
        # interaction event received.
        # Corresponds to the JSON property `dialogEventType`
        # @return [String]
        attr_accessor :dialog_event_type
      
        # The timestamp indicating when the interaction event occurred.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # For `CARD_CLICKED` and `MESSAGE` interaction events, whether the user is
        # interacting with or about to interact with a [dialog](https://developers.
        # google.com/workspace/chat/dialogs).
        # Corresponds to the JSON property `isDialogEvent`
        # @return [Boolean]
        attr_accessor :is_dialog_event
        alias_method :is_dialog_event?, :is_dialog_event
      
        # A message in a Google Chat space.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # A thread in a Google Chat space. For example usage, see [Start or reply to a
        # message thread](https://developers.google.com/workspace/chat/create-messages#
        # create-message-thread). If you specify a thread when creating a message, you
        # can set the [`messageReplyOption`](https://developers.google.com/workspace/
        # chat/api/reference/rest/v1/spaces.messages/create#messagereplyoption) field to
        # determine what happens if no matching thread is found.
        # Corresponds to the JSON property `thread`
        # @return [Google::Apis::ChatV1::Thread]
        attr_accessor :thread
      
        # The Chat app-defined key for the thread related to the interaction event. See [
        # `spaces.messages.thread.threadKey`](/chat/api/reference/rest/v1/spaces.
        # messages#Thread.FIELDS.thread_key) for more information.
        # Corresponds to the JSON property `threadKey`
        # @return [String]
        attr_accessor :thread_key
      
        # A secret value that legacy Chat apps can use to verify if a request is from
        # Google. Google randomly generates the token, and its value remains static. You
        # can obtain, revoke, or regenerate the token from the [Chat API configuration
        # page](https://console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-
        # chat) in the Google Cloud Console. Modern Chat apps don't use this field. It
        # is absent from API responses and the [Chat API configuration page](https://
        # console.cloud.google.com/apis/api/chat.googleapis.com/hangouts-chat).
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The [type](/workspace/chat/api/reference/rest/v1/EventType) of user
        # interaction with the Chat app, such as `MESSAGE` or `ADDED_TO_SPACE`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @app_command_metadata = args[:app_command_metadata] if args.key?(:app_command_metadata)
          @common = args[:common] if args.key?(:common)
          @config_complete_redirect_url = args[:config_complete_redirect_url] if args.key?(:config_complete_redirect_url)
          @dialog_event_type = args[:dialog_event_type] if args.key?(:dialog_event_type)
          @event_time = args[:event_time] if args.key?(:event_time)
          @is_dialog_event = args[:is_dialog_event] if args.key?(:is_dialog_event)
          @message = args[:message] if args.key?(:message)
          @space = args[:space] if args.key?(:space)
          @thread = args[:thread] if args.key?(:thread)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Wrapper around the card body of the dialog.
      class Dialog
        include Google::Apis::Core::Hashable
      
        # A card interface displayed in a Google Chat message or Google Workspace add-on.
        # Cards support a defined layout, interactive UI elements like buttons, and
        # rich media like images. Use cards to present detailed information, gather
        # information from users, and guide users to take a next step. [Card builder](
        # https://addons.gsuite.google.com/uikit/builder) To learn how to build cards,
        # see the following documentation: * For Google Chat apps, see [Design the
        # components of a card or dialog](https://developers.google.com/workspace/chat/
        # design-components-card-dialog). * For Google Workspace add-ons, see [Card-
        # based interfaces](https://developers.google.com/apps-script/add-ons/concepts/
        # cards). Note: You can add up to 100 widgets per card. Any widgets beyond this
        # limit are ignored. This limit applies to both card messages and dialogs in
        # Google Chat apps, and to cards in Google Workspace add-ons. **Example: Card
        # message for a Google Chat app** ![Example contact card](https://developers.
        # google.com/workspace/chat/images/card_api_reference.png) To create the sample
        # card message in Google Chat, use the following JSON: ``` ` "cardsV2": [ ` "
        # cardId": "unique-card-id", "card": ` "header": ` "title": "Sasha", "subtitle":
        # "Software Engineer", "imageUrl": "https://developers.google.com/workspace/chat/
        # images/quickstart-app-avatar.png", "imageType": "CIRCLE", "imageAltText": "
        # Avatar for Sasha" `, "sections": [ ` "header": "Contact Info", "collapsible":
        # true, "uncollapsibleWidgetsCount": 1, "widgets": [ ` "decoratedText": ` "
        # startIcon": ` "knownIcon": "EMAIL" `, "text": "sasha@example.com" ` `, ` "
        # decoratedText": ` "startIcon": ` "knownIcon": "PERSON" `, "text": "Online" ` `,
        # ` "decoratedText": ` "startIcon": ` "knownIcon": "PHONE" `, "text": "+1 (555)
        # 555-1234" ` `, ` "buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "
        # openLink": ` "url": "https://example.com/share" ` ` `, ` "text": "Edit", "
        # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "EDIT" ` ] ` ` ` ] ` ` ] ` ] ` ` ] ` ```
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Card]
        attr_accessor :body
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
        end
      end
      
      # Contains a [dialog](https://developers.google.com/workspace/chat/dialogs) and
      # request status code.
      class DialogAction
        include Google::Apis::Core::Hashable
      
        # Represents the status for a request to either invoke or submit a [dialog](
        # https://developers.google.com/workspace/chat/dialogs).
        # Corresponds to the JSON property `actionStatus`
        # @return [Google::Apis::ChatV1::ActionStatus]
        attr_accessor :action_status
      
        # Wrapper around the card body of the dialog.
        # Corresponds to the JSON property `dialog`
        # @return [Google::Apis::ChatV1::Dialog]
        attr_accessor :dialog
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_status = args[:action_status] if args.key?(:action_status)
          @dialog = args[:dialog] if args.key?(:dialog)
        end
      end
      
      # A reference to the data of a drive attachment.
      class DriveDataRef
        include Google::Apis::Core::Hashable
      
        # The ID for the drive file. Use with the Drive API.
        # Corresponds to the JSON property `driveFileId`
        # @return [String]
        attr_accessor :drive_file_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file_id = args[:drive_file_id] if args.key?(:drive_file_id)
        end
      end
      
      # Data for Google Drive links.
      class DriveLinkData
        include Google::Apis::Core::Hashable
      
        # A reference to the data of a drive attachment.
        # Corresponds to the JSON property `driveDataRef`
        # @return [Google::Apis::ChatV1::DriveDataRef]
        attr_accessor :drive_data_ref
      
        # The mime type of the linked Google Drive resource.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_data_ref = args[:drive_data_ref] if args.key?(:drive_data_ref)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # An emoji that is used as a reaction to a message.
      class Emoji
        include Google::Apis::Core::Hashable
      
        # Represents a [custom emoji](https://support.google.com/chat/answer/12800149).
        # Corresponds to the JSON property `customEmoji`
        # @return [Google::Apis::ChatV1::CustomEmoji]
        attr_accessor :custom_emoji
      
        # Optional. A basic emoji represented by a unicode string.
        # Corresponds to the JSON property `unicode`
        # @return [String]
        attr_accessor :unicode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_emoji = args[:custom_emoji] if args.key?(:custom_emoji)
          @unicode = args[:unicode] if args.key?(:unicode)
        end
      end
      
      # The number of people who reacted to a message with a specific emoji.
      class EmojiReactionSummary
        include Google::Apis::Core::Hashable
      
        # An emoji that is used as a reaction to a message.
        # Corresponds to the JSON property `emoji`
        # @return [Google::Apis::ChatV1::Emoji]
        attr_accessor :emoji
      
        # Output only. The total number of reactions using the associated emoji.
        # Corresponds to the JSON property `reactionCount`
        # @return [Fixnum]
        attr_accessor :reaction_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emoji = args[:emoji] if args.key?(:emoji)
          @reaction_count = args[:reaction_count] if args.key?(:reaction_count)
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
      
      # A form action describes the behavior when the form is submitted. For example,
      # you can invoke Apps Script to handle the form.
      class FormAction
        include Google::Apis::Core::Hashable
      
        # The method name is used to identify which part of the form triggered the form
        # submission. This information is echoed back to the Chat app as part of the
        # card click event. You can use the same method name for several elements that
        # trigger a common behavior.
        # Corresponds to the JSON property `actionMethodName`
        # @return [String]
        attr_accessor :action_method_name
      
        # List of action parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::ChatV1::ActionParameter>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_method_name = args[:action_method_name] if args.key?(:action_method_name)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # An action that describes the behavior when the form is submitted. For example,
      # you can invoke an Apps Script script to handle the form. If the action is
      # triggered, the form values are sent to the server. [Google Workspace add-ons
      # and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1Action
        include Google::Apis::Core::Hashable
      
        # Optional. If this is true, then all widgets are considered required by this
        # action. [Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend):
        # Corresponds to the JSON property `allWidgetsAreRequired`
        # @return [Boolean]
        attr_accessor :all_widgets_are_required
        alias_method :all_widgets_are_required?, :all_widgets_are_required
      
        # A custom function to invoke when the containing element is clicked or
        # otherwise activated. For example usage, see [Read form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Optional. Required when opening a [dialog](https://developers.google.com/
        # workspace/chat/dialogs). What to do in response to an interaction with a user,
        # such as a user clicking a button in a card message. If unspecified, the app
        # responds by executing an `action`—like opening a link or running a function—as
        # normal. By specifying an `interaction`, the app can respond in special
        # interactive ways. For example, by setting `interaction` to `OPEN_DIALOG`, the
        # app can open a [dialog](https://developers.google.com/workspace/chat/dialogs).
        # When specified, a loading indicator isn't shown. If specified for an add-on,
        # the entire card is stripped and nothing is shown in the client. [Google Chat
        # apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `interaction`
        # @return [String]
        attr_accessor :interaction
      
        # Specifies the loading indicator that the action displays while making the call
        # to the action.
        # Corresponds to the JSON property `loadIndicator`
        # @return [String]
        attr_accessor :load_indicator
      
        # List of action parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1ActionParameter>]
        attr_accessor :parameters
      
        # Indicates whether form values persist after the action. The default value is `
        # false`. If `true`, form values remain after the action is triggered. To let
        # the user make changes while the action is being processed, set [`LoadIndicator`
        # ](https://developers.google.com/workspace/add-ons/reference/rpc/google.apps.
        # card.v1#loadindicator) to `NONE`. For [card messages](https://developers.
        # google.com/workspace/chat/api/guides/v1/messages/create#create) in Chat apps,
        # you must also set the action's [`ResponseType`](https://developers.google.com/
        # workspace/chat/api/reference/rest/v1/spaces.messages#responsetype) to `
        # UPDATE_MESSAGE` and use the same [`card_id`](https://developers.google.com/
        # workspace/chat/api/reference/rest/v1/spaces.messages#CardWithId) from the card
        # that contained the action. If `false`, the form values are cleared when the
        # action is triggered. To prevent the user from making changes while the action
        # is being processed, set [`LoadIndicator`](https://developers.google.com/
        # workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator) to `SPINNER`
        # .
        # Corresponds to the JSON property `persistValues`
        # @return [Boolean]
        attr_accessor :persist_values
        alias_method :persist_values?, :persist_values
      
        # Optional. Fill this list with the names of widgets that this Action needs for
        # a valid submission. If the widgets listed here don't have a value when this
        # Action is invoked, the form submission is aborted. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `requiredWidgets`
        # @return [Array<String>]
        attr_accessor :required_widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_widgets_are_required = args[:all_widgets_are_required] if args.key?(:all_widgets_are_required)
          @function = args[:function] if args.key?(:function)
          @interaction = args[:interaction] if args.key?(:interaction)
          @load_indicator = args[:load_indicator] if args.key?(:load_indicator)
          @parameters = args[:parameters] if args.key?(:parameters)
          @persist_values = args[:persist_values] if args.key?(:persist_values)
          @required_widgets = args[:required_widgets] if args.key?(:required_widgets)
        end
      end
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze one day, or snooze
      # next week. You might use `action method = snooze()`, passing the snooze type
      # and snooze time in the list of string parameters. To learn more, see [`
      # CommonEventObject`](https://developers.google.com/workspace/chat/api/reference/
      # rest/v1/Event#commoneventobject). [Google Workspace add-ons and Chat apps](
      # https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1ActionParameter
        include Google::Apis::Core::Hashable
      
        # The name of the parameter for the action script.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The value of the parameter.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The style options for the border of a card or widget, including the border
      # type and color. [Google Workspace add-ons and Chat apps](https://developers.
      # google.com/workspace/extend):
      class GoogleAppsCardV1BorderStyle
        include Google::Apis::Core::Hashable
      
        # The corner radius for the border.
        # Corresponds to the JSON property `cornerRadius`
        # @return [Fixnum]
        attr_accessor :corner_radius
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `strokeColor`
        # @return [Google::Apis::ChatV1::Color]
        attr_accessor :stroke_color
      
        # The border type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corner_radius = args[:corner_radius] if args.key?(:corner_radius)
          @stroke_color = args[:stroke_color] if args.key?(:stroke_color)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A text, icon, or text and icon button that users can click. For an example in
      # Google Chat apps, see [Add a button](https://developers.google.com/workspace/
      # chat/design-interactive-card-dialog#add_a_button). To make an image a
      # clickable button, specify an `Image` (not an `ImageComponent`) and set an `
      # onClick` action. [Google Workspace add-ons and Chat apps](https://developers.
      # google.com/workspace/extend):
      class GoogleAppsCardV1Button
        include Google::Apis::Core::Hashable
      
        # The alternative text that's used for accessibility. Set descriptive text that
        # lets users know what the button does. For example, if a button opens a
        # hyperlink, you might write: "Opens a new browser tab and navigates to the
        # Google Chat developer documentation at https://developers.google.com/workspace/
        # chat".
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to and from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't have
        # information about the absolute color space that should be used to interpret
        # the RGB value—for example, sRGB, Adobe RGB, DCI-P3, and BT.2020. By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most `
        # 1e-5`. Example (Java): import com.google.type.Color; // ... public static java.
        # awt.Color fromProto(Color protocolor) ` float alpha = protocolor.hasAlpha() ?
        # protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color( protocolor.
        # getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); ` public static
        # Color toProto(java.awt.Color color) ` float red = (float) color.getRed();
        # float green = (float) color.getGreen(); float blue = (float) color.getBlue();
        # float denominator = 255.0; Color.Builder resultBuilder = Color .newBuilder() .
        # setRed(red / denominator) .setGreen(green / denominator) .setBlue(blue /
        # denominator); int alpha = color.getAlpha(); if (alpha != 255) ` result.
        # setAlpha( FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .
        # build()); ` return resultBuilder.build(); ` // ... Example (iOS / Obj-C): // ..
        # . static UIColor* fromProto(Color* protocolor) ` float red = [protocolor red];
        # float green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
        # alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
        # nil) ` alpha = [alpha_wrapper value]; ` return [UIColor colorWithRed:red green:
        # green blue:blue alpha:alpha]; ` static Color* toProto(UIColor* color) `
        # CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green blue:&
        # blue alpha:&alpha]) ` return nil; ` Color* result = [[Color alloc] init]; [
        # result setRed:red]; [result setGreen:green]; [result setBlue:blue]; if (alpha <
        # = 0.9999) ` [result setAlpha:floatWrapperWithValue(alpha)]; ` [result
        # autorelease]; return result; ` // ... Example (JavaScript): // ... var
        # protoToCssColor = function(rgb_color) ` var redFrac = rgb_color.red || 0.0;
        # var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0;
        # var red = Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255);
        # var blue = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) ` return
        # rgbToCssColor(red, green, blue); ` var alphaFrac = rgb_color.alpha.value || 0.
        # 0; var rgbParams = [red, green, blue].join(','); return ['rgba(', rgbParams, ',
        # ', alphaFrac, ')'].join(''); `; var rgbToCssColor = function(red, green, blue)
        # ` var rgbNumber = new Number((red << 16) | (green << 8) | blue); var hexString
        # = rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
        # resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) ` resultBuilder.
        # push('0'); ` resultBuilder.push(hexString); return resultBuilder.join(''); `; /
        # / ...
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::ChatV1::Color]
        attr_accessor :color
      
        # If `true`, the button is displayed in an inactive state and doesn't respond to
        # user actions.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # An icon displayed in a widget on a card. For an example in Google Chat apps,
        # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
        # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
        # google.com/workspace/chat/format-messages#customicons) icons. [Google
        # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
        # extend):
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # The text displayed inside the button.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Optional. The type of a button. If unset, button type defaults to `OUTLINED`.
        # If the `color` field is set, the button type is forced to `FILLED` and any
        # value set for this field is ignored.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @color = args[:color] if args.key?(:color)
          @disabled = args[:disabled] if args.key?(:disabled)
          @icon = args[:icon] if args.key?(:icon)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A list of buttons layed out horizontally. For an example in Google Chat apps,
      # see [Add a button](https://developers.google.com/workspace/chat/design-
      # interactive-card-dialog#add_a_button). [Google Workspace add-ons and Chat apps]
      # (https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1ButtonList
        include Google::Apis::Core::Hashable
      
        # An array of buttons.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Button>]
        attr_accessor :buttons
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
        end
      end
      
      # A card interface displayed in a Google Chat message or Google Workspace add-on.
      # Cards support a defined layout, interactive UI elements like buttons, and
      # rich media like images. Use cards to present detailed information, gather
      # information from users, and guide users to take a next step. [Card builder](
      # https://addons.gsuite.google.com/uikit/builder) To learn how to build cards,
      # see the following documentation: * For Google Chat apps, see [Design the
      # components of a card or dialog](https://developers.google.com/workspace/chat/
      # design-components-card-dialog). * For Google Workspace add-ons, see [Card-
      # based interfaces](https://developers.google.com/apps-script/add-ons/concepts/
      # cards). Note: You can add up to 100 widgets per card. Any widgets beyond this
      # limit are ignored. This limit applies to both card messages and dialogs in
      # Google Chat apps, and to cards in Google Workspace add-ons. **Example: Card
      # message for a Google Chat app** ![Example contact card](https://developers.
      # google.com/workspace/chat/images/card_api_reference.png) To create the sample
      # card message in Google Chat, use the following JSON: ``` ` "cardsV2": [ ` "
      # cardId": "unique-card-id", "card": ` "header": ` "title": "Sasha", "subtitle":
      # "Software Engineer", "imageUrl": "https://developers.google.com/workspace/chat/
      # images/quickstart-app-avatar.png", "imageType": "CIRCLE", "imageAltText": "
      # Avatar for Sasha" `, "sections": [ ` "header": "Contact Info", "collapsible":
      # true, "uncollapsibleWidgetsCount": 1, "widgets": [ ` "decoratedText": ` "
      # startIcon": ` "knownIcon": "EMAIL" `, "text": "sasha@example.com" ` `, ` "
      # decoratedText": ` "startIcon": ` "knownIcon": "PERSON" `, "text": "Online" ` `,
      # ` "decoratedText": ` "startIcon": ` "knownIcon": "PHONE" `, "text": "+1 (555)
      # 555-1234" ` `, ` "buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "
      # openLink": ` "url": "https://example.com/share" ` ` `, ` "text": "Edit", "
      # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
      # viewType", "value": "EDIT" ` ] ` ` ` ] ` ` ] ` ] ` ` ] ` ```
      class GoogleAppsCardV1Card
        include Google::Apis::Core::Hashable
      
        # The card's actions. Actions are added to the card's toolbar menu. [Google
        # Workspace add-ons](https://developers.google.com/workspace/add-ons): For
        # example, the following JSON constructs a card action menu with `Settings` and `
        # Send Feedback` options: ``` "card_actions": [ ` "actionLabel": "Settings", "
        # onClick": ` "action": ` "functionName": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "SETTING" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` `
        # `, ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https:
        # //example.com/feedback" ` ` ` ] ```
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1CardAction>]
        attr_accessor :card_actions
      
        # In Google Workspace add-ons, sets the display properties of the `
        # peekCardHeader`. [Google Workspace add-ons](https://developers.google.com/
        # workspace/add-ons):
        # Corresponds to the JSON property `displayStyle`
        # @return [String]
        attr_accessor :display_style
      
        # A persistent (sticky) footer that that appears at the bottom of the card.
        # Setting `fixedFooter` without specifying a `primaryButton` or a `
        # secondaryButton` causes an error. For Chat apps, you can use fixed footers in [
        # dialogs](https://developers.google.com/workspace/chat/dialogs), but not [card
        # messages](https://developers.google.com/workspace/chat/create-messages#create).
        # For an example in Google Chat apps, see [Add a persistent footer](https://
        # developers.google.com/workspace/chat/design-components-card-dialog#
        # add_a_persistent_footer). [Google Workspace add-ons and Chat apps](https://
        # developers.google.com/workspace/extend):
        # Corresponds to the JSON property `fixedFooter`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter]
        attr_accessor :fixed_footer
      
        # Represents a card header. For an example in Google Chat apps, see [Add a
        # header](https://developers.google.com/workspace/chat/design-components-card-
        # dialog#add_a_header). [Google Workspace add-ons and Chat apps](https://
        # developers.google.com/workspace/extend):
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardHeader]
        attr_accessor :header
      
        # Name of the card. Used as a card identifier in card navigation. [Google
        # Workspace add-ons](https://developers.google.com/workspace/add-ons):
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a card header. For an example in Google Chat apps, see [Add a
        # header](https://developers.google.com/workspace/chat/design-components-card-
        # dialog#add_a_header). [Google Workspace add-ons and Chat apps](https://
        # developers.google.com/workspace/extend):
        # Corresponds to the JSON property `peekCardHeader`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardHeader]
        attr_accessor :peek_card_header
      
        # The divider style between the header, sections and footer.
        # Corresponds to the JSON property `sectionDividerStyle`
        # @return [String]
        attr_accessor :section_divider_style
      
        # Contains a collection of widgets. Each section has its own, optional header.
        # Sections are visually separated by a line divider. For an example in Google
        # Chat apps, see [Define a section of a card](https://developers.google.com/
        # workspace/chat/design-components-card-dialog#define_a_section_of_a_card).
        # Corresponds to the JSON property `sections`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Section>]
        attr_accessor :sections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @card_actions = args[:card_actions] if args.key?(:card_actions)
          @display_style = args[:display_style] if args.key?(:display_style)
          @fixed_footer = args[:fixed_footer] if args.key?(:fixed_footer)
          @header = args[:header] if args.key?(:header)
          @name = args[:name] if args.key?(:name)
          @peek_card_header = args[:peek_card_header] if args.key?(:peek_card_header)
          @section_divider_style = args[:section_divider_style] if args.key?(:section_divider_style)
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # A card action is the action associated with the card. For example, an invoice
      # card might include actions such as delete invoice, email invoice, or open the
      # invoice in a browser. [Google Workspace add-ons](https://developers.google.com/
      # workspace/add-ons):
      class GoogleAppsCardV1CardAction
        include Google::Apis::Core::Hashable
      
        # The label that displays as the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_label = args[:action_label] if args.key?(:action_label)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # A persistent (sticky) footer that that appears at the bottom of the card.
      # Setting `fixedFooter` without specifying a `primaryButton` or a `
      # secondaryButton` causes an error. For Chat apps, you can use fixed footers in [
      # dialogs](https://developers.google.com/workspace/chat/dialogs), but not [card
      # messages](https://developers.google.com/workspace/chat/create-messages#create).
      # For an example in Google Chat apps, see [Add a persistent footer](https://
      # developers.google.com/workspace/chat/design-components-card-dialog#
      # add_a_persistent_footer). [Google Workspace add-ons and Chat apps](https://
      # developers.google.com/workspace/extend):
      class GoogleAppsCardV1CardFixedFooter
        include Google::Apis::Core::Hashable
      
        # A text, icon, or text and icon button that users can click. For an example in
        # Google Chat apps, see [Add a button](https://developers.google.com/workspace/
        # chat/design-interactive-card-dialog#add_a_button). To make an image a
        # clickable button, specify an `Image` (not an `ImageComponent`) and set an `
        # onClick` action. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `primaryButton`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :primary_button
      
        # A text, icon, or text and icon button that users can click. For an example in
        # Google Chat apps, see [Add a button](https://developers.google.com/workspace/
        # chat/design-interactive-card-dialog#add_a_button). To make an image a
        # clickable button, specify an `Image` (not an `ImageComponent`) and set an `
        # onClick` action. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `secondaryButton`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :secondary_button
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary_button = args[:primary_button] if args.key?(:primary_button)
          @secondary_button = args[:secondary_button] if args.key?(:secondary_button)
        end
      end
      
      # Represents a card header. For an example in Google Chat apps, see [Add a
      # header](https://developers.google.com/workspace/chat/design-components-card-
      # dialog#add_a_header). [Google Workspace add-ons and Chat apps](https://
      # developers.google.com/workspace/extend):
      class GoogleAppsCardV1CardHeader
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image that's used for accessibility.
        # Corresponds to the JSON property `imageAltText`
        # @return [String]
        attr_accessor :image_alt_text
      
        # The shape used to crop the image. [Google Workspace add-ons and Chat apps](
        # https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The HTTPS URL of the image in the card header.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # The subtitle of the card header. If specified, appears on its own line below
        # the `title`.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # Required. The title of the card header. The header has a fixed height: if both
        # a title and subtitle are specified, each takes up one line. If only the title
        # is specified, it takes up both lines.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_alt_text = args[:image_alt_text] if args.key?(:image_alt_text)
          @image_type = args[:image_type] if args.key?(:image_type)
          @image_url = args[:image_url] if args.key?(:image_url)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # [Developer Preview](https://developers.google.com/workspace/preview): A
      # carousel, also known as a slider, rotates and displays a list of widgets in a
      # slideshow format, with buttons navigating to the previous or next widget. For
      # example, this is a JSON representation of a carousel that contains three text
      # paragraph widgets. ``` ` "carouselCards": [ ` "widgets": [ ` "textParagraph": `
      # "text": "First text paragraph in carousel", ` ` ] `, ` "widgets": [ ` "
      # textParagraph": ` "text": "Second text paragraph in carousel", ` ` ] `, ` "
      # widgets": [ ` "textParagraph": ` "text": "Third text paragraph in carousel", `
      # ` ] ` ] ` ``` [Google Chat apps](https://developers.google.com/workspace/chat):
      class GoogleAppsCardV1Carousel
        include Google::Apis::Core::Hashable
      
        # A list of cards included in the carousel.
        # Corresponds to the JSON property `carouselCards`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1CarouselCard>]
        attr_accessor :carousel_cards
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @carousel_cards = args[:carousel_cards] if args.key?(:carousel_cards)
        end
      end
      
      # [Developer Preview](https://developers.google.com/workspace/preview): A card
      # that can be displayed as a carousel item. [Google Chat apps](https://
      # developers.google.com/workspace/chat):
      class GoogleAppsCardV1CarouselCard
        include Google::Apis::Core::Hashable
      
        # A list of widgets displayed at the bottom of the carousel card. The widgets
        # are displayed in the order that they are specified.
        # Corresponds to the JSON property `footerWidgets`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1NestedWidget>]
        attr_accessor :footer_widgets
      
        # A list of widgets displayed in the carousel card. The widgets are displayed in
        # the order that they are specified.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1NestedWidget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @footer_widgets = args[:footer_widgets] if args.key?(:footer_widgets)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # A text, icon, or text and icon chip that users can click. [Google Workspace
      # add-ons and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1Chip
        include Google::Apis::Core::Hashable
      
        # The alternative text that's used for accessibility. Set descriptive text that
        # lets users know what the chip does. For example, if a chip opens a hyperlink,
        # write: "Opens a new browser tab and navigates to the Google Chat developer
        # documentation at https://developers.google.com/workspace/chat".
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Whether the chip is in an inactive state and ignores user actions. Defaults to
        # `false`.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Whether the chip is in an active state and responds to user actions. Defaults
        # to `true`. Deprecated. Use `disabled` instead.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # An icon displayed in a widget on a card. For an example in Google Chat apps,
        # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
        # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
        # google.com/workspace/chat/format-messages#customicons) icons. [Google
        # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
        # extend):
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # The text displayed inside the chip.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @disabled = args[:disabled] if args.key?(:disabled)
          @enabled = args[:enabled] if args.key?(:enabled)
          @icon = args[:icon] if args.key?(:icon)
          @label = args[:label] if args.key?(:label)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # A list of chips layed out horizontally, which can either scroll horizontally
      # or wrap to the next line. [Google Workspace add-ons and Chat apps](https://
      # developers.google.com/workspace/extend):
      class GoogleAppsCardV1ChipList
        include Google::Apis::Core::Hashable
      
        # An array of chips.
        # Corresponds to the JSON property `chips`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Chip>]
        attr_accessor :chips
      
        # Specified chip list layout.
        # Corresponds to the JSON property `layout`
        # @return [String]
        attr_accessor :layout
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chips = args[:chips] if args.key?(:chips)
          @layout = args[:layout] if args.key?(:layout)
        end
      end
      
      # Represent an expand and collapse control. [Google Workspace add-ons and Chat
      # apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1CollapseControl
        include Google::Apis::Core::Hashable
      
        # A text, icon, or text and icon button that users can click. For an example in
        # Google Chat apps, see [Add a button](https://developers.google.com/workspace/
        # chat/design-interactive-card-dialog#add_a_button). To make an image a
        # clickable button, specify an `Image` (not an `ImageComponent`) and set an `
        # onClick` action. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `collapseButton`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :collapse_button
      
        # A text, icon, or text and icon button that users can click. For an example in
        # Google Chat apps, see [Add a button](https://developers.google.com/workspace/
        # chat/design-interactive-card-dialog#add_a_button). To make an image a
        # clickable button, specify an `Image` (not an `ImageComponent`) and set an `
        # onClick` action. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `expandButton`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :expand_button
      
        # The horizontal alignment of the expand and collapse button.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapse_button = args[:collapse_button] if args.key?(:collapse_button)
          @expand_button = args[:expand_button] if args.key?(:expand_button)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
        end
      end
      
      # A column. [Google Workspace add-ons and Chat apps](https://developers.google.
      # com/workspace/extend)
      class GoogleAppsCardV1Column
        include Google::Apis::Core::Hashable
      
        # Specifies whether widgets align to the left, right, or center of a column.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # Specifies how a column fills the width of the card.
        # Corresponds to the JSON property `horizontalSizeStyle`
        # @return [String]
        attr_accessor :horizontal_size_style
      
        # Specifies whether widgets align to the top, bottom, or center of a column.
        # Corresponds to the JSON property `verticalAlignment`
        # @return [String]
        attr_accessor :vertical_alignment
      
        # An array of widgets included in a column. Widgets appear in the order that
        # they are specified.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Widgets>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @horizontal_size_style = args[:horizontal_size_style] if args.key?(:horizontal_size_style)
          @vertical_alignment = args[:vertical_alignment] if args.key?(:vertical_alignment)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # The `Columns` widget displays up to 2 columns in a card or dialog. You can add
      # widgets to each column; the widgets appear in the order that they are
      # specified. For an example in Google Chat apps, see [Display cards and dialogs
      # in columns](https://developers.google.com/workspace/chat/format-structure-card-
      # dialog#display_cards_and_dialogs_in_columns). The height of each column is
      # determined by the taller column. For example, if the first column is taller
      # than the second column, both columns have the height of the first column.
      # Because each column can contain a different number of widgets, you can't
      # define rows or align widgets between the columns. Columns are displayed side-
      # by-side. You can customize the width of each column using the `
      # HorizontalSizeStyle` field. If the user's screen width is too narrow, the
      # second column wraps below the first: * On web, the second column wraps if the
      # screen width is less than or equal to 480 pixels. * On iOS devices, the second
      # column wraps if the screen width is less than or equal to 300 pt. * On Android
      # devices, the second column wraps if the screen width is less than or equal to
      # 320 dp. To include more than two columns, or to use rows, use the `Grid`
      # widget. [Google Workspace add-ons and Chat apps](https://developers.google.com/
      # workspace/extend): The add-on UIs that support columns include: * The dialog
      # displayed when users open the add-on from an email draft. * The dialog
      # displayed when users open the add-on from the **Add attachment** menu in a
      # Google Calendar event.
      class GoogleAppsCardV1Columns
        include Google::Apis::Core::Hashable
      
        # An array of columns. You can include up to 2 columns in a card or dialog.
        # Corresponds to the JSON property `columnItems`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Column>]
        attr_accessor :column_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_items = args[:column_items] if args.key?(:column_items)
        end
      end
      
      # Lets users input a date, a time, or both a date and a time. Supports form
      # submission validation. When `Action.all_widgets_are_required` is set to `true`
      # or this widget is specified in `Action.required_widgets`, the submission
      # action is blocked unless a value is selected. For an example in Google Chat
      # apps, see [Let a user pick a date and time](https://developers.google.com/
      # workspace/chat/design-interactive-card-dialog#let_a_user_pick_a_date_and_time).
      # Users can input text or use the picker to select dates and times. If users
      # input an invalid date or time, the picker shows an error that prompts users to
      # input the information correctly. [Google Workspace add-ons and Chat apps](
      # https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1DateTimePicker
        include Google::Apis::Core::Hashable
      
        # The text that prompts users to input a date, a time, or a date and time. For
        # example, if users are scheduling an appointment, use a label such as `
        # Appointment date` or `Appointment date and time`.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name by which the `DateTimePicker` is identified in a form input event.
        # For details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # The number representing the time zone offset from UTC, in minutes. If set, the
        # `value_ms_epoch` is displayed in the specified time zone. If unset, the value
        # defaults to the user's time zone setting.
        # Corresponds to the JSON property `timezoneOffsetDate`
        # @return [Fixnum]
        attr_accessor :timezone_offset_date
      
        # Whether the widget supports inputting a date, a time, or the date and time.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The default value displayed in the widget, in milliseconds since [Unix epoch
        # time](https://en.wikipedia.org/wiki/Unix_time). Specify the value based on the
        # type of picker (`DateTimePickerType`): * `DATE_AND_TIME`: a calendar date and
        # time in UTC. For example, to represent January 1, 2023 at 12:00 PM UTC, use `
        # 1672574400000`. * `DATE_ONLY`: a calendar date at 00:00:00 UTC. For example,
        # to represent January 1, 2023, use `1672531200000`. * `TIME_ONLY`: a time in
        # UTC. For example, to represent 12:00 PM, use `43200000` (or `12 * 60 * 60 *
        # 1000`).
        # Corresponds to the JSON property `valueMsEpoch`
        # @return [Fixnum]
        attr_accessor :value_ms_epoch
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @timezone_offset_date = args[:timezone_offset_date] if args.key?(:timezone_offset_date)
          @type = args[:type] if args.key?(:type)
          @value_ms_epoch = args[:value_ms_epoch] if args.key?(:value_ms_epoch)
        end
      end
      
      # A widget that displays text with optional decorations such as a label above or
      # below the text, an icon in front of the text, a selection widget, or a button
      # after the text. For an example in Google Chat apps, see [Display text with
      # decorative text](https://developers.google.com/workspace/chat/add-text-image-
      # card-dialog#display_text_with_decorative_elements). [Google Workspace add-ons
      # and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1DecoratedText
        include Google::Apis::Core::Hashable
      
        # The text that appears below `text`. Always wraps.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A text, icon, or text and icon button that users can click. For an example in
        # Google Chat apps, see [Add a button](https://developers.google.com/workspace/
        # chat/design-interactive-card-dialog#add_a_button). To make an image a
        # clickable button, specify an `Image` (not an `ImageComponent`) and set an `
        # onClick` action. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :button
      
        # An icon displayed in a widget on a card. For an example in Google Chat apps,
        # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
        # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
        # google.com/workspace/chat/format-messages#customicons) icons. [Google
        # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
        # extend):
        # Corresponds to the JSON property `endIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :end_icon
      
        # An icon displayed in a widget on a card. For an example in Google Chat apps,
        # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
        # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
        # google.com/workspace/chat/format-messages#customicons) icons. [Google
        # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
        # extend):
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # An icon displayed in a widget on a card. For an example in Google Chat apps,
        # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
        # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
        # google.com/workspace/chat/format-messages#customicons) icons. [Google
        # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
        # extend):
        # Corresponds to the JSON property `startIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :start_icon
      
        # Either a toggle-style switch or a checkbox inside a `decoratedText` widget. [
        # Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend): Only supported in the `decoratedText` widget.
        # Corresponds to the JSON property `switchControl`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl]
        attr_accessor :switch_control
      
        # Required. The primary text. Supports simple formatting. For more information
        # about formatting text, see [Formatting text in Google Chat apps](https://
        # developers.google.com/workspace/chat/format-messages#card-formatting) and [
        # Formatting text in Google Workspace add-ons](https://developers.google.com/
        # apps-script/add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The text that appears above `text`. Always truncates.
        # Corresponds to the JSON property `topLabel`
        # @return [String]
        attr_accessor :top_label
      
        # The wrap text setting. If `true`, the text wraps and displays on multiple
        # lines. Otherwise, the text is truncated. Only applies to `text`, not `topLabel`
        # and `bottomLabel`.
        # Corresponds to the JSON property `wrapText`
        # @return [Boolean]
        attr_accessor :wrap_text
        alias_method :wrap_text?, :wrap_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_label = args[:bottom_label] if args.key?(:bottom_label)
          @button = args[:button] if args.key?(:button)
          @end_icon = args[:end_icon] if args.key?(:end_icon)
          @icon = args[:icon] if args.key?(:icon)
          @on_click = args[:on_click] if args.key?(:on_click)
          @start_icon = args[:start_icon] if args.key?(:start_icon)
          @switch_control = args[:switch_control] if args.key?(:switch_control)
          @text = args[:text] if args.key?(:text)
          @top_label = args[:top_label] if args.key?(:top_label)
          @wrap_text = args[:wrap_text] if args.key?(:wrap_text)
        end
      end
      
      # Displays a divider between widgets as a horizontal line. For an example in
      # Google Chat apps, see [Add a horizontal divider between widgets](https://
      # developers.google.com/workspace/chat/format-structure-card-dialog#
      # add_a_horizontal_divider_between_widgets). [Google Workspace add-ons and Chat
      # apps](https://developers.google.com/workspace/extend): For example, the
      # following JSON creates a divider: ``` "divider": `` ```
      class GoogleAppsCardV1Divider
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Displays a grid with a collection of items. Items can only include text or
      # images. For responsive columns, or to include more than text or images, use `
      # Columns`. For an example in Google Chat apps, see [Display a Grid with a
      # collection of items](https://developers.google.com/workspace/chat/format-
      # structure-card-dialog#display_a_grid_with_a_collection_of_items). A grid
      # supports any number of columns and items. The number of rows is determined by
      # items divided by columns. A grid with 10 items and 2 columns has 5 rows. A
      # grid with 11 items and 2 columns has 6 rows. [Google Workspace add-ons and
      # Chat apps](https://developers.google.com/workspace/extend): For example, the
      # following JSON creates a 2 column grid with a single item: ``` "grid": ` "
      # title": "A fine collection of items", "columnCount": 2, "borderStyle": ` "type"
      # : "STROKE", "cornerRadius": 4 `, "items": [ ` "image": ` "imageUri": "https://
      # www.example.com/image.png", "cropStyle": ` "type": "SQUARE" `, "borderStyle": `
      # "type": "STROKE" ` `, "title": "An item", "textAlignment": "CENTER" ` ], "
      # onClick": ` "openLink": ` "url": "https://www.example.com" ` ` ` ```
      class GoogleAppsCardV1Grid
        include Google::Apis::Core::Hashable
      
        # The style options for the border of a card or widget, including the border
        # type and color. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle]
        attr_accessor :border_style
      
        # The number of columns to display in the grid. A default value is used if this
        # field isn't specified, and that default value is different depending on where
        # the grid is shown (dialog versus companion).
        # Corresponds to the JSON property `columnCount`
        # @return [Fixnum]
        attr_accessor :column_count
      
        # The items to display in the grid.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1GridItem>]
        attr_accessor :items
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # The text that displays in the grid header.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @border_style = args[:border_style] if args.key?(:border_style)
          @column_count = args[:column_count] if args.key?(:column_count)
          @items = args[:items] if args.key?(:items)
          @on_click = args[:on_click] if args.key?(:on_click)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents an item in a grid layout. Items can contain text, an image, or both
      # text and an image. [Google Workspace add-ons and Chat apps](https://developers.
      # google.com/workspace/extend):
      class GoogleAppsCardV1GridItem
        include Google::Apis::Core::Hashable
      
        # A user-specified identifier for this grid item. This identifier is returned in
        # the parent grid's `onClick` callback parameters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents an image. [Google Workspace add-ons and Chat apps](https://
        # developers.google.com/workspace/extend):
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ImageComponent]
        attr_accessor :image
      
        # The layout to use for the grid item.
        # Corresponds to the JSON property `layout`
        # @return [String]
        attr_accessor :layout
      
        # The grid item's subtitle.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The grid item's title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @image = args[:image] if args.key?(:image)
          @layout = args[:layout] if args.key?(:layout)
          @subtitle = args[:subtitle] if args.key?(:subtitle)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # An icon displayed in a widget on a card. For an example in Google Chat apps,
      # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
      # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
      # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
      # google.com/workspace/chat/format-messages#customicons) icons. [Google
      # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
      # extend):
      class GoogleAppsCardV1Icon
        include Google::Apis::Core::Hashable
      
        # Optional. A description of the icon used for accessibility. If unspecified,
        # the default value `Button` is provided. As a best practice, you should set a
        # helpful description for what the icon displays, and if applicable, what it
        # does. For example, `A user's account portrait`, or `Opens a new browser tab
        # and navigates to the Google Chat developer documentation at https://developers.
        # google.com/workspace/chat`. If the icon is set in a `Button`, the `altText`
        # appears as helper text when the user hovers over the button. However, if the
        # button also sets `text`, the icon's `altText` is ignored.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Display a custom icon hosted at an HTTPS URL. For example: ``` "iconUrl": "
        # https://developers.google.com/workspace/chat/images/quickstart-app-avatar.png"
        # ``` Supported file types include `.png` and `.jpg`.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The crop style applied to the image. In some cases, applying a `CIRCLE` crop
        # causes the image to be drawn larger than a built-in icon.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # Display one of the built-in icons provided by Google Workspace. For example,
        # to display an airplane icon, specify `AIRPLANE`. For a bus, specify `BUS`. For
        # a full list of supported icons, see [built-in icons](https://developers.google.
        # com/workspace/chat/format-messages#builtinicons).
        # Corresponds to the JSON property `knownIcon`
        # @return [String]
        attr_accessor :known_icon
      
        # A [Google Material Icon](https://fonts.google.com/icons), which includes over
        # 2500+ options. For example, to display a [checkbox icon](https://fonts.google.
        # com/icons?selected=Material%20Symbols%20Outlined%3Acheck_box%3AFILL%400%3Bwght%
        # 40400%3BGRAD%400%3Bopsz%4048) with customized weight and grade, write the
        # following: ``` ` "name": "check_box", "fill": true, "weight": 300, "grade": -
        # 25 ` ``` [Google Chat apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `materialIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1MaterialIcon]
        attr_accessor :material_icon
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @image_type = args[:image_type] if args.key?(:image_type)
          @known_icon = args[:known_icon] if args.key?(:known_icon)
          @material_icon = args[:material_icon] if args.key?(:material_icon)
        end
      end
      
      # An image that is specified by a URL and can have an `onClick` action. For an
      # example, see [Add an image](https://developers.google.com/workspace/chat/add-
      # text-image-card-dialog#add_an_image). [Google Workspace add-ons and Chat apps](
      # https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1Image
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image that's used for accessibility.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # The HTTPS URL that hosts the image. For example: ``` https://developers.google.
        # com/workspace/chat/images/quickstart-app-avatar.png ```
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @image_url = args[:image_url] if args.key?(:image_url)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # Represents an image. [Google Workspace add-ons and Chat apps](https://
      # developers.google.com/workspace/extend):
      class GoogleAppsCardV1ImageComponent
        include Google::Apis::Core::Hashable
      
        # The accessibility label for the image.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # The style options for the border of a card or widget, including the border
        # type and color. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle]
        attr_accessor :border_style
      
        # Represents the crop style applied to an image. [Google Workspace add-ons and
        # Chat apps](https://developers.google.com/workspace/extend): For example, here'
        # s how to apply a 16:9 aspect ratio: ``` cropStyle ` "type": "RECTANGLE_CUSTOM",
        # "aspectRatio": 16/9 ` ```
        # Corresponds to the JSON property `cropStyle`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ImageCropStyle]
        attr_accessor :crop_style
      
        # The image URL.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @border_style = args[:border_style] if args.key?(:border_style)
          @crop_style = args[:crop_style] if args.key?(:crop_style)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
        end
      end
      
      # Represents the crop style applied to an image. [Google Workspace add-ons and
      # Chat apps](https://developers.google.com/workspace/extend): For example, here'
      # s how to apply a 16:9 aspect ratio: ``` cropStyle ` "type": "RECTANGLE_CUSTOM",
      # "aspectRatio": 16/9 ` ```
      class GoogleAppsCardV1ImageCropStyle
        include Google::Apis::Core::Hashable
      
        # The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`. For example,
        # here's how to apply a 16:9 aspect ratio: ``` cropStyle ` "type": "
        # RECTANGLE_CUSTOM", "aspectRatio": 16/9 ` ```
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # The crop type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A [Google Material Icon](https://fonts.google.com/icons), which includes over
      # 2500+ options. For example, to display a [checkbox icon](https://fonts.google.
      # com/icons?selected=Material%20Symbols%20Outlined%3Acheck_box%3AFILL%400%3Bwght%
      # 40400%3BGRAD%400%3Bopsz%4048) with customized weight and grade, write the
      # following: ``` ` "name": "check_box", "fill": true, "weight": 300, "grade": -
      # 25 ` ``` [Google Chat apps](https://developers.google.com/workspace/chat):
      class GoogleAppsCardV1MaterialIcon
        include Google::Apis::Core::Hashable
      
        # Whether the icon renders as filled. Default value is false. To preview
        # different icon settings, go to [Google Font Icons](https://fonts.google.com/
        # icons) and adjust the settings under **Customize**.
        # Corresponds to the JSON property `fill`
        # @return [Boolean]
        attr_accessor :fill
        alias_method :fill?, :fill
      
        # Weight and grade affect a symbol’s thickness. Adjustments to grade are more
        # granular than adjustments to weight and have a small impact on the size of the
        # symbol. Choose from `-25, 0, 200`. If absent, default value is 0. If any other
        # value is specified, the default value is used. To preview different icon
        # settings, go to [Google Font Icons](https://fonts.google.com/icons) and adjust
        # the settings under **Customize**.
        # Corresponds to the JSON property `grade`
        # @return [Fixnum]
        attr_accessor :grade
      
        # The icon name defined in the [Google Material Icon](https://fonts.google.com/
        # icons), for example, `check_box`. Any invalid names are abandoned and replaced
        # with empty string and results in the icon failing to render.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The stroke weight of the icon. Choose from `100, 200, 300, 400, 500, 600, 700`.
        # If absent, default value is 400. If any other value is specified, the default
        # value is used. To preview different icon settings, go to [Google Font Icons](
        # https://fonts.google.com/icons) and adjust the settings under **Customize**.
        # Corresponds to the JSON property `weight`
        # @return [Fixnum]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fill = args[:fill] if args.key?(:fill)
          @grade = args[:grade] if args.key?(:grade)
          @name = args[:name] if args.key?(:name)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # [Developer Preview](https://developers.google.com/workspace/preview): A list
      # of widgets that can be displayed in a containing layout, such as a `
      # CarouselCard`. [Google Chat apps](https://developers.google.com/workspace/chat)
      # :
      class GoogleAppsCardV1NestedWidget
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally. For an example in Google Chat apps,
        # see [Add a button](https://developers.google.com/workspace/chat/design-
        # interactive-card-dialog#add_a_button). [Google Workspace add-ons and Chat apps]
        # (https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ButtonList]
        attr_accessor :button_list
      
        # An image that is specified by a URL and can have an `onClick` action. For an
        # example, see [Add an image](https://developers.google.com/workspace/chat/add-
        # text-image-card-dialog#add_an_image). [Google Workspace add-ons and Chat apps](
        # https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Image]
        attr_accessor :image
      
        # A paragraph of text that supports formatting. For an example in Google Chat
        # apps, see [Add a paragraph of formatted text](https://developers.google.com/
        # workspace/chat/add-text-image-card-dialog#add_a_paragraph_of_formatted_text).
        # For more information about formatting text, see [Formatting text in Google
        # Chat apps](https://developers.google.com/workspace/chat/format-messages#card-
        # formatting) and [Formatting text in Google Workspace add-ons](https://
        # developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting). [
        # Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend):
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
          @image = args[:image] if args.key?(:image)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # Represents how to respond when users click an interactive element on a card,
      # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
      # google.com/workspace/extend):
      class GoogleAppsCardV1OnClick
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :action
      
        # A card interface displayed in a Google Chat message or Google Workspace add-on.
        # Cards support a defined layout, interactive UI elements like buttons, and
        # rich media like images. Use cards to present detailed information, gather
        # information from users, and guide users to take a next step. [Card builder](
        # https://addons.gsuite.google.com/uikit/builder) To learn how to build cards,
        # see the following documentation: * For Google Chat apps, see [Design the
        # components of a card or dialog](https://developers.google.com/workspace/chat/
        # design-components-card-dialog). * For Google Workspace add-ons, see [Card-
        # based interfaces](https://developers.google.com/apps-script/add-ons/concepts/
        # cards). Note: You can add up to 100 widgets per card. Any widgets beyond this
        # limit are ignored. This limit applies to both card messages and dialogs in
        # Google Chat apps, and to cards in Google Workspace add-ons. **Example: Card
        # message for a Google Chat app** ![Example contact card](https://developers.
        # google.com/workspace/chat/images/card_api_reference.png) To create the sample
        # card message in Google Chat, use the following JSON: ``` ` "cardsV2": [ ` "
        # cardId": "unique-card-id", "card": ` "header": ` "title": "Sasha", "subtitle":
        # "Software Engineer", "imageUrl": "https://developers.google.com/workspace/chat/
        # images/quickstart-app-avatar.png", "imageType": "CIRCLE", "imageAltText": "
        # Avatar for Sasha" `, "sections": [ ` "header": "Contact Info", "collapsible":
        # true, "uncollapsibleWidgetsCount": 1, "widgets": [ ` "decoratedText": ` "
        # startIcon": ` "knownIcon": "EMAIL" `, "text": "sasha@example.com" ` `, ` "
        # decoratedText": ` "startIcon": ` "knownIcon": "PERSON" `, "text": "Online" ` `,
        # ` "decoratedText": ` "startIcon": ` "knownIcon": "PHONE" `, "text": "+1 (555)
        # 555-1234" ` `, ` "buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "
        # openLink": ` "url": "https://example.com/share" ` ` `, ` "text": "Edit", "
        # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "EDIT" ` ] ` ` ` ] ` ` ] ` ] ` ` ] ` ```
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Card]
        attr_accessor :card
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `openDynamicLinkAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :open_dynamic_link_action
      
        # Represents an `onClick` event that opens a hyperlink. [Google Workspace add-
        # ons and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `openLink`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OpenLink]
        attr_accessor :open_link
      
        # A widget that presents a pop-up menu with one or more actions that users can
        # invoke. For example, showing non-primary actions in a card. You can use this
        # widget when actions don't fit in the available space. To use, specify this
        # widget in the `OnClick` action of widgets that support it. For example, in a `
        # Button`. [Google Workspace add-ons and Chat apps](https://developers.google.
        # com/workspace/extend):
        # Corresponds to the JSON property `overflowMenu`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OverflowMenu]
        attr_accessor :overflow_menu
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @card = args[:card] if args.key?(:card)
          @open_dynamic_link_action = args[:open_dynamic_link_action] if args.key?(:open_dynamic_link_action)
          @open_link = args[:open_link] if args.key?(:open_link)
          @overflow_menu = args[:overflow_menu] if args.key?(:overflow_menu)
        end
      end
      
      # Represents an `onClick` event that opens a hyperlink. [Google Workspace add-
      # ons and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1OpenLink
        include Google::Apis::Core::Hashable
      
        # Whether the client forgets about a link after opening it, or observes it until
        # the window closes. [Google Workspace add-ons](https://developers.google.com/
        # workspace/add-ons):
        # Corresponds to the JSON property `onClose`
        # @return [String]
        attr_accessor :on_close
      
        # How to open a link. [Google Workspace add-ons](https://developers.google.com/
        # workspace/add-ons):
        # Corresponds to the JSON property `openAs`
        # @return [String]
        attr_accessor :open_as
      
        # The URL to open.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_close = args[:on_close] if args.key?(:on_close)
          @open_as = args[:open_as] if args.key?(:open_as)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # A widget that presents a pop-up menu with one or more actions that users can
      # invoke. For example, showing non-primary actions in a card. You can use this
      # widget when actions don't fit in the available space. To use, specify this
      # widget in the `OnClick` action of widgets that support it. For example, in a `
      # Button`. [Google Workspace add-ons and Chat apps](https://developers.google.
      # com/workspace/extend):
      class GoogleAppsCardV1OverflowMenu
        include Google::Apis::Core::Hashable
      
        # Required. The list of menu options.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1OverflowMenuItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # An option that users can invoke in an overflow menu. [Google Workspace add-ons
      # and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1OverflowMenuItem
        include Google::Apis::Core::Hashable
      
        # Whether the menu option is disabled. Defaults to false.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # An icon displayed in a widget on a card. For an example in Google Chat apps,
        # see [Add an icon](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#add_an_icon). Supports [built-in](https://developers.google.com/
        # workspace/chat/format-messages#builtinicons) and [custom](https://developers.
        # google.com/workspace/chat/format-messages#customicons) icons. [Google
        # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
        # extend):
        # Corresponds to the JSON property `startIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :start_icon
      
        # Required. The text that identifies or describes the item to users.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @on_click = args[:on_click] if args.key?(:on_click)
          @start_icon = args[:start_icon] if args.key?(:start_icon)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # For a `SelectionInput` widget that uses a multiselect menu, a data source from
      # Google Workspace. Used to populate items in a multiselect menu. [Google Chat
      # apps](https://developers.google.com/workspace/chat):
      class GoogleAppsCardV1PlatformDataSource
        include Google::Apis::Core::Hashable
      
        # A data source shared by all Google Workspace applications, such as users in a
        # Google Workspace organization.
        # Corresponds to the JSON property `commonDataSource`
        # @return [String]
        attr_accessor :common_data_source
      
        # For a `SelectionInput` widget that uses a multiselect menu, a data source from
        # a Google Workspace application. The data source populates selection items for
        # the multiselect menu. [Google Chat apps](https://developers.google.com/
        # workspace/chat):
        # Corresponds to the JSON property `hostAppDataSource`
        # @return [Google::Apis::ChatV1::HostAppDataSourceMarkup]
        attr_accessor :host_app_data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_data_source = args[:common_data_source] if args.key?(:common_data_source)
          @host_app_data_source = args[:host_app_data_source] if args.key?(:host_app_data_source)
        end
      end
      
      # A section contains a collection of widgets that are rendered vertically in the
      # order that they're specified. [Google Workspace add-ons and Chat apps](https://
      # developers.google.com/workspace/extend):
      class GoogleAppsCardV1Section
        include Google::Apis::Core::Hashable
      
        # Represent an expand and collapse control. [Google Workspace add-ons and Chat
        # apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `collapseControl`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CollapseControl]
        attr_accessor :collapse_control
      
        # Indicates whether this section is collapsible. Collapsible sections hide some
        # or all widgets, but users can expand the section to reveal the hidden widgets
        # by clicking **Show more**. Users can hide the widgets again by clicking **Show
        # less**. To determine which widgets are hidden, specify `
        # uncollapsibleWidgetsCount`.
        # Corresponds to the JSON property `collapsible`
        # @return [Boolean]
        attr_accessor :collapsible
        alias_method :collapsible?, :collapsible
      
        # Text that appears at the top of a section. Supports simple HTML formatted text.
        # For more information about formatting text, see [Formatting text in Google
        # Chat apps](https://developers.google.com/workspace/chat/format-messages#card-
        # formatting) and [Formatting text in Google Workspace add-ons](https://
        # developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # The number of uncollapsible widgets which remain visible even when a section
        # is collapsed. For example, when a section contains five widgets and the `
        # uncollapsibleWidgetsCount` is set to `2`, the first two widgets are always
        # shown and the last three are collapsed by default. The `
        # uncollapsibleWidgetsCount` is taken into account only when `collapsible` is `
        # true`.
        # Corresponds to the JSON property `uncollapsibleWidgetsCount`
        # @return [Fixnum]
        attr_accessor :uncollapsible_widgets_count
      
        # All the widgets in the section. Must contain at least one widget.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Widget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapse_control = args[:collapse_control] if args.key?(:collapse_control)
          @collapsible = args[:collapsible] if args.key?(:collapsible)
          @header = args[:header] if args.key?(:header)
          @uncollapsible_widgets_count = args[:uncollapsible_widgets_count] if args.key?(:uncollapsible_widgets_count)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # A widget that creates one or more UI items that users can select. Supports
      # form submission validation for `dropdown` and `multiselect` menus only. When `
      # Action.all_widgets_are_required` is set to `true` or this widget is specified
      # in `Action.required_widgets`, the submission action is blocked unless a value
      # is selected. For example, a dropdown menu or checkboxes. You can use this
      # widget to collect data that can be predicted or enumerated. For an example in
      # Google Chat apps, see [Add selectable UI elements](/workspace/chat/design-
      # interactive-card-dialog#add_selectable_ui_elements). Chat apps can process the
      # value of items that users select or input. For details about working with form
      # inputs, see [Receive form data](https://developers.google.com/workspace/chat/
      # read-form-data). To collect undefined or abstract data from users, use the
      # TextInput widget. [Google Workspace add-ons and Chat apps](https://developers.
      # google.com/workspace/extend):
      class GoogleAppsCardV1SelectionInput
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `externalDataSource`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :external_data_source
      
        # Optional. Text that appears below the selection input field meant to assist
        # users by prompting them to enter a certain value. This text is always visible.
        # Only supported by Google Workspace Workflows, but not Google Chat API or
        # Google Workspace Add-ons.
        # Corresponds to the JSON property `hintText`
        # @return [String]
        attr_accessor :hint_text
      
        # An array of selectable items. For example, an array of radio buttons or
        # checkboxes. Supports up to 100 items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem>]
        attr_accessor :items
      
        # The text that appears above the selection input field in the user interface.
        # Specify text that helps the user enter the information your app needs. For
        # example, if users are selecting the urgency of a work ticket from a drop-down
        # menu, the label might be "Urgency" or "Select urgency".
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # For multiselect menus, the maximum number of items that a user can select.
        # Minimum value is 1 item. If unspecified, defaults to 3 items.
        # Corresponds to the JSON property `multiSelectMaxSelectedItems`
        # @return [Fixnum]
        attr_accessor :multi_select_max_selected_items
      
        # For multiselect menus, the number of text characters that a user inputs before
        # the menu returns suggested selection items. If unset, the multiselect menu
        # uses the following default values: * If the menu uses a static array of `
        # SelectionInput` items, defaults to 0 characters and immediately populates
        # items from the array. * If the menu uses a dynamic data source (`
        # multi_select_data_source`), defaults to 3 characters before querying the data
        # source to return suggested items.
        # Corresponds to the JSON property `multiSelectMinQueryLength`
        # @return [Fixnum]
        attr_accessor :multi_select_min_query_length
      
        # Required. The name that identifies the selection input in a form input event.
        # For details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # For a `SelectionInput` widget that uses a multiselect menu, a data source from
        # Google Workspace. Used to populate items in a multiselect menu. [Google Chat
        # apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `platformDataSource`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1PlatformDataSource]
        attr_accessor :platform_data_source
      
        # The type of items that are displayed to users in a `SelectionInput` widget.
        # Selection types support different types of interactions. For example, users
        # can select one or more checkboxes, but they can only select one value from a
        # dropdown menu.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_data_source = args[:external_data_source] if args.key?(:external_data_source)
          @hint_text = args[:hint_text] if args.key?(:hint_text)
          @items = args[:items] if args.key?(:items)
          @label = args[:label] if args.key?(:label)
          @multi_select_max_selected_items = args[:multi_select_max_selected_items] if args.key?(:multi_select_max_selected_items)
          @multi_select_min_query_length = args[:multi_select_min_query_length] if args.key?(:multi_select_min_query_length)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @platform_data_source = args[:platform_data_source] if args.key?(:platform_data_source)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An item that users can select in a selection input, such as a checkbox or
      # switch. Supports up to 100 items. [Google Workspace add-ons and Chat apps](
      # https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1SelectionItem
        include Google::Apis::Core::Hashable
      
        # For multiselect menus, a text description or label that's displayed below the
        # item's `text` field.
        # Corresponds to the JSON property `bottomText`
        # @return [String]
        attr_accessor :bottom_text
      
        # Whether the item is selected by default. If the selection input only accepts
        # one value (such as for radio buttons or a dropdown menu), only set this field
        # for one item.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # 
        # Corresponds to the JSON property `startIconUri`
        # @return [String]
        attr_accessor :start_icon_uri
      
        # The text that identifies or describes the item to users.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The value associated with this item. The client should use this as a form
        # input value. For details about working with form inputs, see [Receive form
        # data](https://developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_text = args[:bottom_text] if args.key?(:bottom_text)
          @selected = args[:selected] if args.key?(:selected)
          @start_icon_uri = args[:start_icon_uri] if args.key?(:start_icon_uri)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # One suggested value that users can enter in a text input field. [Google
      # Workspace add-ons and Chat apps](https://developers.google.com/workspace/
      # extend):
      class GoogleAppsCardV1SuggestionItem
        include Google::Apis::Core::Hashable
      
        # The value of a suggested input to a text input field. This is equivalent to
        # what users enter themselves.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Suggested values that users can enter. These values appear when users click
      # inside the text input field. As users type, the suggested values dynamically
      # filter to match what the users have typed. For example, a text input field for
      # programming language might suggest Java, JavaScript, Python, and C++. When
      # users start typing `Jav`, the list of suggestions filters to show `Java` and `
      # JavaScript`. Suggested values help guide users to enter values that your app
      # can make sense of. When referring to JavaScript, some users might enter `
      # javascript` and others `java script`. Suggesting `JavaScript` can standardize
      # how users interact with your app. When specified, `TextInput.type` is always `
      # SINGLE_LINE`, even if it's set to `MULTIPLE_LINE`. [Google Workspace add-ons
      # and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1Suggestions
        include Google::Apis::Core::Hashable
      
        # A list of suggestions used for autocomplete recommendations in text input
        # fields.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1SuggestionItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Either a toggle-style switch or a checkbox inside a `decoratedText` widget. [
      # Google Workspace add-ons and Chat apps](https://developers.google.com/
      # workspace/extend): Only supported in the `decoratedText` widget.
      class GoogleAppsCardV1SwitchControl
        include Google::Apis::Core::Hashable
      
        # How the switch appears in the user interface. [Google Workspace add-ons and
        # Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `controlType`
        # @return [String]
        attr_accessor :control_type
      
        # The name by which the switch widget is identified in a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # When `true`, the switch is selected.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The value entered by a user, returned as part of a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_type = args[:control_type] if args.key?(:control_type)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @selected = args[:selected] if args.key?(:selected)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A field in which users can enter text. Supports suggestions and on-change
      # actions. Supports form submission validation. When `Action.
      # all_widgets_are_required` is set to `true` or this widget is specified in `
      # Action.required_widgets`, the submission action is blocked unless a value is
      # entered. For an example in Google Chat apps, see [Add a field in which a user
      # can enter text](https://developers.google.com/workspace/chat/design-
      # interactive-card-dialog#add_a_field_in_which_a_user_can_enter_text). Chat apps
      # receive and can process the value of entered text during form input events.
      # For details about working with form inputs, see [Receive form data](https://
      # developers.google.com/workspace/chat/read-form-data). When you need to collect
      # undefined or abstract data from users, use a text input. To collect defined or
      # enumerated data from users, use the SelectionInput widget. [Google Workspace
      # add-ons and Chat apps](https://developers.google.com/workspace/extend):
      class GoogleAppsCardV1TextInput
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `autoCompleteAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :auto_complete_action
      
        # Text that appears below the text input field meant to assist users by
        # prompting them to enter a certain value. This text is always visible. Required
        # if `label` is unspecified. Otherwise, optional.
        # Corresponds to the JSON property `hintText`
        # @return [String]
        attr_accessor :hint_text
      
        # Suggested values that users can enter. These values appear when users click
        # inside the text input field. As users type, the suggested values dynamically
        # filter to match what the users have typed. For example, a text input field for
        # programming language might suggest Java, JavaScript, Python, and C++. When
        # users start typing `Jav`, the list of suggestions filters to show `Java` and `
        # JavaScript`. Suggested values help guide users to enter values that your app
        # can make sense of. When referring to JavaScript, some users might enter `
        # javascript` and others `java script`. Suggesting `JavaScript` can standardize
        # how users interact with your app. When specified, `TextInput.type` is always `
        # SINGLE_LINE`, even if it's set to `MULTIPLE_LINE`. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `initialSuggestions`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Suggestions]
        attr_accessor :initial_suggestions
      
        # The text that appears above the text input field in the user interface.
        # Specify text that helps the user enter the information your app needs. For
        # example, if you are asking someone's name, but specifically need their surname,
        # write `surname` instead of `name`. Required if `hintText` is unspecified.
        # Otherwise, optional.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name by which the text input is identified in a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # you can invoke an Apps Script script to handle the form. If the action is
        # triggered, the form values are sent to the server. [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # Text that appears in the text input field when the field is empty. Use this
        # text to prompt users to enter a value. For example, `Enter a number from 0 to
        # 100`. [Google Chat apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `placeholderText`
        # @return [String]
        attr_accessor :placeholder_text
      
        # How a text input field appears in the user interface. For example, whether the
        # field is single or multi-line.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Represents the necessary data for validating the widget it's attached to. [
        # Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend):
        # Corresponds to the JSON property `validation`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Validation]
        attr_accessor :validation
      
        # The value entered by a user, returned as part of a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data).
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_complete_action = args[:auto_complete_action] if args.key?(:auto_complete_action)
          @hint_text = args[:hint_text] if args.key?(:hint_text)
          @initial_suggestions = args[:initial_suggestions] if args.key?(:initial_suggestions)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @placeholder_text = args[:placeholder_text] if args.key?(:placeholder_text)
          @type = args[:type] if args.key?(:type)
          @validation = args[:validation] if args.key?(:validation)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A paragraph of text that supports formatting. For an example in Google Chat
      # apps, see [Add a paragraph of formatted text](https://developers.google.com/
      # workspace/chat/add-text-image-card-dialog#add_a_paragraph_of_formatted_text).
      # For more information about formatting text, see [Formatting text in Google
      # Chat apps](https://developers.google.com/workspace/chat/format-messages#card-
      # formatting) and [Formatting text in Google Workspace add-ons](https://
      # developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting). [
      # Google Workspace add-ons and Chat apps](https://developers.google.com/
      # workspace/extend):
      class GoogleAppsCardV1TextParagraph
        include Google::Apis::Core::Hashable
      
        # The maximum number of lines of text that are displayed in the widget. If the
        # text exceeds the specified maximum number of lines, the excess content is
        # concealed behind a **show more** button. If the text is equal or shorter than
        # the specified maximum number of lines, a **show more** button isn't displayed.
        # The default value is 0, in which case all context is displayed. Negative
        # values are ignored.
        # Corresponds to the JSON property `maxLines`
        # @return [Fixnum]
        attr_accessor :max_lines
      
        # The text that's shown in the widget.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_lines = args[:max_lines] if args.key?(:max_lines)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Represents the necessary data for validating the widget it's attached to. [
      # Google Workspace add-ons and Chat apps](https://developers.google.com/
      # workspace/extend):
      class GoogleAppsCardV1Validation
        include Google::Apis::Core::Hashable
      
        # Specify the character limit for text input widgets. Note that this is only
        # used for text input and is ignored for other widgets. [Google Workspace add-
        # ons and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `characterLimit`
        # @return [Fixnum]
        attr_accessor :character_limit
      
        # Specify the type of the input widgets. [Google Workspace add-ons and Chat apps]
        # (https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `inputType`
        # @return [String]
        attr_accessor :input_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @character_limit = args[:character_limit] if args.key?(:character_limit)
          @input_type = args[:input_type] if args.key?(:input_type)
        end
      end
      
      # Each card is made up of widgets. A widget is a composite object that can
      # represent one of text, images, buttons, and other object types.
      class GoogleAppsCardV1Widget
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally. For an example in Google Chat apps,
        # see [Add a button](https://developers.google.com/workspace/chat/design-
        # interactive-card-dialog#add_a_button). [Google Workspace add-ons and Chat apps]
        # (https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ButtonList]
        attr_accessor :button_list
      
        # [Developer Preview](https://developers.google.com/workspace/preview): A
        # carousel, also known as a slider, rotates and displays a list of widgets in a
        # slideshow format, with buttons navigating to the previous or next widget. For
        # example, this is a JSON representation of a carousel that contains three text
        # paragraph widgets. ``` ` "carouselCards": [ ` "widgets": [ ` "textParagraph": `
        # "text": "First text paragraph in carousel", ` ` ] `, ` "widgets": [ ` "
        # textParagraph": ` "text": "Second text paragraph in carousel", ` ` ] `, ` "
        # widgets": [ ` "textParagraph": ` "text": "Third text paragraph in carousel", `
        # ` ] ` ] ` ``` [Google Chat apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `carousel`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Carousel]
        attr_accessor :carousel
      
        # A list of chips layed out horizontally, which can either scroll horizontally
        # or wrap to the next line. [Google Workspace add-ons and Chat apps](https://
        # developers.google.com/workspace/extend):
        # Corresponds to the JSON property `chipList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ChipList]
        attr_accessor :chip_list
      
        # The `Columns` widget displays up to 2 columns in a card or dialog. You can add
        # widgets to each column; the widgets appear in the order that they are
        # specified. For an example in Google Chat apps, see [Display cards and dialogs
        # in columns](https://developers.google.com/workspace/chat/format-structure-card-
        # dialog#display_cards_and_dialogs_in_columns). The height of each column is
        # determined by the taller column. For example, if the first column is taller
        # than the second column, both columns have the height of the first column.
        # Because each column can contain a different number of widgets, you can't
        # define rows or align widgets between the columns. Columns are displayed side-
        # by-side. You can customize the width of each column using the `
        # HorizontalSizeStyle` field. If the user's screen width is too narrow, the
        # second column wraps below the first: * On web, the second column wraps if the
        # screen width is less than or equal to 480 pixels. * On iOS devices, the second
        # column wraps if the screen width is less than or equal to 300 pt. * On Android
        # devices, the second column wraps if the screen width is less than or equal to
        # 320 dp. To include more than two columns, or to use rows, use the `Grid`
        # widget. [Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend): The add-on UIs that support columns include: * The dialog
        # displayed when users open the add-on from an email draft. * The dialog
        # displayed when users open the add-on from the **Add attachment** menu in a
        # Google Calendar event.
        # Corresponds to the JSON property `columns`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Columns]
        attr_accessor :columns
      
        # Lets users input a date, a time, or both a date and a time. Supports form
        # submission validation. When `Action.all_widgets_are_required` is set to `true`
        # or this widget is specified in `Action.required_widgets`, the submission
        # action is blocked unless a value is selected. For an example in Google Chat
        # apps, see [Let a user pick a date and time](https://developers.google.com/
        # workspace/chat/design-interactive-card-dialog#let_a_user_pick_a_date_and_time).
        # Users can input text or use the picker to select dates and times. If users
        # input an invalid date or time, the picker shows an error that prompts users to
        # input the information correctly. [Google Workspace add-ons and Chat apps](
        # https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker]
        attr_accessor :date_time_picker
      
        # A widget that displays text with optional decorations such as a label above or
        # below the text, an icon in front of the text, a selection widget, or a button
        # after the text. For an example in Google Chat apps, see [Display text with
        # decorative text](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#display_text_with_decorative_elements). [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `decoratedText`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText]
        attr_accessor :decorated_text
      
        # Displays a divider between widgets as a horizontal line. For an example in
        # Google Chat apps, see [Add a horizontal divider between widgets](https://
        # developers.google.com/workspace/chat/format-structure-card-dialog#
        # add_a_horizontal_divider_between_widgets). [Google Workspace add-ons and Chat
        # apps](https://developers.google.com/workspace/extend): For example, the
        # following JSON creates a divider: ``` "divider": `` ```
        # Corresponds to the JSON property `divider`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Divider]
        attr_accessor :divider
      
        # Displays a grid with a collection of items. Items can only include text or
        # images. For responsive columns, or to include more than text or images, use `
        # Columns`. For an example in Google Chat apps, see [Display a Grid with a
        # collection of items](https://developers.google.com/workspace/chat/format-
        # structure-card-dialog#display_a_grid_with_a_collection_of_items). A grid
        # supports any number of columns and items. The number of rows is determined by
        # items divided by columns. A grid with 10 items and 2 columns has 5 rows. A
        # grid with 11 items and 2 columns has 6 rows. [Google Workspace add-ons and
        # Chat apps](https://developers.google.com/workspace/extend): For example, the
        # following JSON creates a 2 column grid with a single item: ``` "grid": ` "
        # title": "A fine collection of items", "columnCount": 2, "borderStyle": ` "type"
        # : "STROKE", "cornerRadius": 4 `, "items": [ ` "image": ` "imageUri": "https://
        # www.example.com/image.png", "cropStyle": ` "type": "SQUARE" `, "borderStyle": `
        # "type": "STROKE" ` `, "title": "An item", "textAlignment": "CENTER" ` ], "
        # onClick": ` "openLink": ` "url": "https://www.example.com" ` ` ` ```
        # Corresponds to the JSON property `grid`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Grid]
        attr_accessor :grid
      
        # Specifies whether widgets align to the left, right, or center of a column.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # An image that is specified by a URL and can have an `onClick` action. For an
        # example, see [Add an image](https://developers.google.com/workspace/chat/add-
        # text-image-card-dialog#add_an_image). [Google Workspace add-ons and Chat apps](
        # https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Image]
        attr_accessor :image
      
        # A widget that creates one or more UI items that users can select. Supports
        # form submission validation for `dropdown` and `multiselect` menus only. When `
        # Action.all_widgets_are_required` is set to `true` or this widget is specified
        # in `Action.required_widgets`, the submission action is blocked unless a value
        # is selected. For example, a dropdown menu or checkboxes. You can use this
        # widget to collect data that can be predicted or enumerated. For an example in
        # Google Chat apps, see [Add selectable UI elements](/workspace/chat/design-
        # interactive-card-dialog#add_selectable_ui_elements). Chat apps can process the
        # value of items that users select or input. For details about working with form
        # inputs, see [Receive form data](https://developers.google.com/workspace/chat/
        # read-form-data). To collect undefined or abstract data from users, use the
        # TextInput widget. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `selectionInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput]
        attr_accessor :selection_input
      
        # A field in which users can enter text. Supports suggestions and on-change
        # actions. Supports form submission validation. When `Action.
        # all_widgets_are_required` is set to `true` or this widget is specified in `
        # Action.required_widgets`, the submission action is blocked unless a value is
        # entered. For an example in Google Chat apps, see [Add a field in which a user
        # can enter text](https://developers.google.com/workspace/chat/design-
        # interactive-card-dialog#add_a_field_in_which_a_user_can_enter_text). Chat apps
        # receive and can process the value of entered text during form input events.
        # For details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data). When you need to collect
        # undefined or abstract data from users, use a text input. To collect defined or
        # enumerated data from users, use the SelectionInput widget. [Google Workspace
        # add-ons and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextInput]
        attr_accessor :text_input
      
        # A paragraph of text that supports formatting. For an example in Google Chat
        # apps, see [Add a paragraph of formatted text](https://developers.google.com/
        # workspace/chat/add-text-image-card-dialog#add_a_paragraph_of_formatted_text).
        # For more information about formatting text, see [Formatting text in Google
        # Chat apps](https://developers.google.com/workspace/chat/format-messages#card-
        # formatting) and [Formatting text in Google Workspace add-ons](https://
        # developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting). [
        # Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend):
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
          @carousel = args[:carousel] if args.key?(:carousel)
          @chip_list = args[:chip_list] if args.key?(:chip_list)
          @columns = args[:columns] if args.key?(:columns)
          @date_time_picker = args[:date_time_picker] if args.key?(:date_time_picker)
          @decorated_text = args[:decorated_text] if args.key?(:decorated_text)
          @divider = args[:divider] if args.key?(:divider)
          @grid = args[:grid] if args.key?(:grid)
          @horizontal_alignment = args[:horizontal_alignment] if args.key?(:horizontal_alignment)
          @image = args[:image] if args.key?(:image)
          @selection_input = args[:selection_input] if args.key?(:selection_input)
          @text_input = args[:text_input] if args.key?(:text_input)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # The supported widgets that you can include in a column. [Google Workspace add-
      # ons and Chat apps](https://developers.google.com/workspace/extend)
      class GoogleAppsCardV1Widgets
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally. For an example in Google Chat apps,
        # see [Add a button](https://developers.google.com/workspace/chat/design-
        # interactive-card-dialog#add_a_button). [Google Workspace add-ons and Chat apps]
        # (https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ButtonList]
        attr_accessor :button_list
      
        # A list of chips layed out horizontally, which can either scroll horizontally
        # or wrap to the next line. [Google Workspace add-ons and Chat apps](https://
        # developers.google.com/workspace/extend):
        # Corresponds to the JSON property `chipList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ChipList]
        attr_accessor :chip_list
      
        # Lets users input a date, a time, or both a date and a time. Supports form
        # submission validation. When `Action.all_widgets_are_required` is set to `true`
        # or this widget is specified in `Action.required_widgets`, the submission
        # action is blocked unless a value is selected. For an example in Google Chat
        # apps, see [Let a user pick a date and time](https://developers.google.com/
        # workspace/chat/design-interactive-card-dialog#let_a_user_pick_a_date_and_time).
        # Users can input text or use the picker to select dates and times. If users
        # input an invalid date or time, the picker shows an error that prompts users to
        # input the information correctly. [Google Workspace add-ons and Chat apps](
        # https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker]
        attr_accessor :date_time_picker
      
        # A widget that displays text with optional decorations such as a label above or
        # below the text, an icon in front of the text, a selection widget, or a button
        # after the text. For an example in Google Chat apps, see [Display text with
        # decorative text](https://developers.google.com/workspace/chat/add-text-image-
        # card-dialog#display_text_with_decorative_elements). [Google Workspace add-ons
        # and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `decoratedText`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText]
        attr_accessor :decorated_text
      
        # An image that is specified by a URL and can have an `onClick` action. For an
        # example, see [Add an image](https://developers.google.com/workspace/chat/add-
        # text-image-card-dialog#add_an_image). [Google Workspace add-ons and Chat apps](
        # https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Image]
        attr_accessor :image
      
        # A widget that creates one or more UI items that users can select. Supports
        # form submission validation for `dropdown` and `multiselect` menus only. When `
        # Action.all_widgets_are_required` is set to `true` or this widget is specified
        # in `Action.required_widgets`, the submission action is blocked unless a value
        # is selected. For example, a dropdown menu or checkboxes. You can use this
        # widget to collect data that can be predicted or enumerated. For an example in
        # Google Chat apps, see [Add selectable UI elements](/workspace/chat/design-
        # interactive-card-dialog#add_selectable_ui_elements). Chat apps can process the
        # value of items that users select or input. For details about working with form
        # inputs, see [Receive form data](https://developers.google.com/workspace/chat/
        # read-form-data). To collect undefined or abstract data from users, use the
        # TextInput widget. [Google Workspace add-ons and Chat apps](https://developers.
        # google.com/workspace/extend):
        # Corresponds to the JSON property `selectionInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput]
        attr_accessor :selection_input
      
        # A field in which users can enter text. Supports suggestions and on-change
        # actions. Supports form submission validation. When `Action.
        # all_widgets_are_required` is set to `true` or this widget is specified in `
        # Action.required_widgets`, the submission action is blocked unless a value is
        # entered. For an example in Google Chat apps, see [Add a field in which a user
        # can enter text](https://developers.google.com/workspace/chat/design-
        # interactive-card-dialog#add_a_field_in_which_a_user_can_enter_text). Chat apps
        # receive and can process the value of entered text during form input events.
        # For details about working with form inputs, see [Receive form data](https://
        # developers.google.com/workspace/chat/read-form-data). When you need to collect
        # undefined or abstract data from users, use a text input. To collect defined or
        # enumerated data from users, use the SelectionInput widget. [Google Workspace
        # add-ons and Chat apps](https://developers.google.com/workspace/extend):
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextInput]
        attr_accessor :text_input
      
        # A paragraph of text that supports formatting. For an example in Google Chat
        # apps, see [Add a paragraph of formatted text](https://developers.google.com/
        # workspace/chat/add-text-image-card-dialog#add_a_paragraph_of_formatted_text).
        # For more information about formatting text, see [Formatting text in Google
        # Chat apps](https://developers.google.com/workspace/chat/format-messages#card-
        # formatting) and [Formatting text in Google Workspace add-ons](https://
        # developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting). [
        # Google Workspace add-ons and Chat apps](https://developers.google.com/
        # workspace/extend):
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
          @chip_list = args[:chip_list] if args.key?(:chip_list)
          @date_time_picker = args[:date_time_picker] if args.key?(:date_time_picker)
          @decorated_text = args[:decorated_text] if args.key?(:decorated_text)
          @image = args[:image] if args.key?(:image)
          @selection_input = args[:selection_input] if args.key?(:selection_input)
          @text_input = args[:text_input] if args.key?(:text_input)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
      
      # A Google Group in Google Chat.
      class Group
        include Google::Apis::Core::Hashable
      
        # Resource name for a Google Group. Represents a [group](https://cloud.google.
        # com/identity/docs/reference/rest/v1/groups) in Cloud Identity Groups API.
        # Format: groups/`group`
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
      
      # For a `SelectionInput` widget that uses a multiselect menu, a data source from
      # a Google Workspace application. The data source populates selection items for
      # the multiselect menu. [Google Chat apps](https://developers.google.com/
      # workspace/chat):
      class HostAppDataSourceMarkup
        include Google::Apis::Core::Hashable
      
        # For a `SelectionInput` widget that uses a multiselect menu, a data source from
        # Google Chat. The data source populates selection items for the multiselect
        # menu. For example, a user can select Google Chat spaces that they're a member
        # of. [Google Chat apps](https://developers.google.com/workspace/chat):
        # Corresponds to the JSON property `chatDataSource`
        # @return [Google::Apis::ChatV1::ChatClientDataSourceMarkup]
        attr_accessor :chat_data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_data_source = args[:chat_data_source] if args.key?(:chat_data_source)
        end
      end
      
      # An image that's specified by a URL and can have an `onclick` action.
      class Image
        include Google::Apis::Core::Hashable
      
        # The aspect ratio of this image (width and height). This field lets you reserve
        # the right height for the image while waiting for it to load. It's not meant to
        # override the built-in aspect ratio of the image. If unset, the server fills it
        # by prefetching the image.
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # The URL of the image.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # An `onclick` action (for example, open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_ratio = args[:aspect_ratio] if args.key?(:aspect_ratio)
          @image_url = args[:image_url] if args.key?(:image_url)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # An image button with an `onclick` action.
      class ImageButton
        include Google::Apis::Core::Hashable
      
        # The icon specified by an `enum` that indices to an icon provided by Chat API.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The name of this `image_button` that's used for accessibility. Default value
        # is provided if this name isn't specified.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An `onclick` action (for example, open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::OnClick]
        attr_accessor :on_click
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @name = args[:name] if args.key?(:name)
          @on_click = args[:on_click] if args.key?(:on_click)
        end
      end
      
      # Types of data that users can [input on cards or dialogs](https://developers.
      # google.com/chat/ui/read-form-data). The input type depends on the type of
      # values that the widget accepts.
      class Inputs
        include Google::Apis::Core::Hashable
      
        # Date input values.
        # Corresponds to the JSON property `dateInput`
        # @return [Google::Apis::ChatV1::DateInput]
        attr_accessor :date_input
      
        # Date and time input values.
        # Corresponds to the JSON property `dateTimeInput`
        # @return [Google::Apis::ChatV1::DateTimeInput]
        attr_accessor :date_time_input
      
        # Input parameter for regular widgets. For single-valued widgets, it is a single
        # value list. For multi-valued widgets, such as checkbox, all the values are
        # presented.
        # Corresponds to the JSON property `stringInputs`
        # @return [Google::Apis::ChatV1::StringInputs]
        attr_accessor :string_inputs
      
        # Time input values.
        # Corresponds to the JSON property `timeInput`
        # @return [Google::Apis::ChatV1::TimeInput]
        attr_accessor :time_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_input = args[:date_input] if args.key?(:date_input)
          @date_time_input = args[:date_time_input] if args.key?(:date_time_input)
          @string_inputs = args[:string_inputs] if args.key?(:string_inputs)
          @time_input = args[:time_input] if args.key?(:time_input)
        end
      end
      
      # A UI element contains a key (label) and a value (content). This element can
      # also contain some actions such as `onclick` button.
      class KeyValue
        include Google::Apis::Core::Hashable
      
        # The text of the bottom label. Formatted text supported. For more information
        # about formatting text, see [Formatting text in Google Chat apps](https://
        # developers.google.com/workspace/chat/format-messages#card-formatting) and [
        # Formatting text in Google Workspace Add-ons](https://developers.google.com/
        # apps-script/add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A button. Can be a text button or an image button.
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::ChatV1::Button]
        attr_accessor :button
      
        # The text of the content. Formatted text supported and always required. For
        # more information about formatting text, see [Formatting text in Google Chat
        # apps](https://developers.google.com/workspace/chat/format-messages#card-
        # formatting) and [Formatting text in Google Workspace Add-ons](https://
        # developers.google.com/apps-script/add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # If the content should be multiline.
        # Corresponds to the JSON property `contentMultiline`
        # @return [Boolean]
        attr_accessor :content_multiline
        alias_method :content_multiline?, :content_multiline
      
        # An enum value that's replaced by the Chat API with the corresponding icon
        # image.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # An `onclick` action (for example, open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::OnClick]
        attr_accessor :on_click
      
        # The text of the top label. Formatted text supported. For more information
        # about formatting text, see [Formatting text in Google Chat apps](https://
        # developers.google.com/workspace/chat/format-messages#card-formatting) and [
        # Formatting text in Google Workspace Add-ons](https://developers.google.com/
        # apps-script/add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `topLabel`
        # @return [String]
        attr_accessor :top_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_label = args[:bottom_label] if args.key?(:bottom_label)
          @button = args[:button] if args.key?(:button)
          @content = args[:content] if args.key?(:content)
          @content_multiline = args[:content_multiline] if args.key?(:content_multiline)
          @icon = args[:icon] if args.key?(:icon)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @on_click = args[:on_click] if args.key?(:on_click)
          @top_label = args[:top_label] if args.key?(:top_label)
        end
      end
      
      # A response to list custom emojis.
      class ListCustomEmojisResponse
        include Google::Apis::Core::Hashable
      
        # Unordered list. List of custom emojis.
        # Corresponds to the JSON property `customEmojis`
        # @return [Array<Google::Apis::ChatV1::CustomEmoji>]
        attr_accessor :custom_emojis
      
        # A token that you can send as `pageToken` to retrieve the next page of results.
        # If empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_emojis = args[:custom_emojis] if args.key?(:custom_emojis)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to list memberships of the space.
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # Unordered list. List of memberships in the requested (or first) page.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::ChatV1::Membership>]
        attr_accessor :memberships
      
        # A token that you can send as `pageToken` to retrieve the next page of results.
        # If empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing messages.
      class ListMessagesResponse
        include Google::Apis::Core::Hashable
      
        # List of messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::ChatV1::Message>]
        attr_accessor :messages
      
        # You can send a token as `pageToken` to retrieve the next page of results. If
        # empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response to a list reactions request.
      class ListReactionsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to retrieve the next page of results. It's empty for the
        # last page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of reactions in the requested (or first) page.
        # Corresponds to the JSON property `reactions`
        # @return [Array<Google::Apis::ChatV1::Reaction>]
        attr_accessor :reactions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reactions = args[:reactions] if args.key?(:reactions)
        end
      end
      
      # Response message for listing space events.
      class ListSpaceEventsResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token used to fetch more events. If this field is omitted, there
        # are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results are returned in chronological order (oldest event first). Note: The `
        # permissionSettings` field is not returned in the Space object for list
        # requests.
        # Corresponds to the JSON property `spaceEvents`
        # @return [Array<Google::Apis::ChatV1::SpaceEvent>]
        attr_accessor :space_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @space_events = args[:space_events] if args.key?(:space_events)
        end
      end
      
      # The response for a list spaces request.
      class ListSpacesResponse
        include Google::Apis::Core::Hashable
      
        # You can send a token as `pageToken` to retrieve the next page of results. If
        # empty, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of spaces in the requested (or first) page. Note: The `permissionSettings`
        # field is not returned in the Space object for list requests.
        # Corresponds to the JSON property `spaces`
        # @return [Array<Google::Apis::ChatV1::Space>]
        attr_accessor :spaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spaces = args[:spaces] if args.key?(:spaces)
        end
      end
      
      # A matched URL in a Chat message. Chat apps can preview matched URLs. For more
      # information, see [Preview links](https://developers.google.com/chat/how-tos/
      # preview-links).
      class MatchedUrl
        include Google::Apis::Core::Hashable
      
        # Output only. The URL that was matched.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Media resource.
      class Media
        include Google::Apis::Core::Hashable
      
        # Name of the media resource.
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Represents a membership relation in Google Chat, such as whether a user or
      # Chat app is invited to, part of, or absent from a space.
      class Membership
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. The creation time of the membership, such as when a
        # member joined or was invited to join a space. This field is output only,
        # except when used to import historical memberships in import mode spaces.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Immutable. The deletion time of the membership, such as when a
        # member left or was removed from a space. This field is output only, except
        # when used to import historical memberships in import mode spaces.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # A Google Group in Google Chat.
        # Corresponds to the JSON property `groupMember`
        # @return [Google::Apis::ChatV1::Group]
        attr_accessor :group_member
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `member`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :member
      
        # Identifier. Resource name of the membership, assigned by the server. Format: `
        # spaces/`space`/members/`member``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. User's role within a Chat space, which determines their permitted
        # actions in the space. This field can only be used as input in `
        # UpdateMembership`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Output only. State of the membership.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @group_member = args[:group_member] if args.key?(:group_member)
          @member = args[:member] if args.key?(:member)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Event payload for multiple new memberships. Event type: `google.workspace.chat.
      # membership.v1.batchCreated`
      class MembershipBatchCreatedEventData
        include Google::Apis::Core::Hashable
      
        # A list of new memberships.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::ChatV1::MembershipCreatedEventData>]
        attr_accessor :memberships
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
        end
      end
      
      # Event payload for multiple deleted memberships. Event type: `google.workspace.
      # chat.membership.v1.batchDeleted`
      class MembershipBatchDeletedEventData
        include Google::Apis::Core::Hashable
      
        # A list of deleted memberships.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::ChatV1::MembershipDeletedEventData>]
        attr_accessor :memberships
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
        end
      end
      
      # Event payload for multiple updated memberships. Event type: `google.workspace.
      # chat.membership.v1.batchUpdated`
      class MembershipBatchUpdatedEventData
        include Google::Apis::Core::Hashable
      
        # A list of updated memberships.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::ChatV1::MembershipUpdatedEventData>]
        attr_accessor :memberships
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
        end
      end
      
      # Represents the count of memberships of a space, grouped into categories.
      class MembershipCount
        include Google::Apis::Core::Hashable
      
        # Output only. Count of human users that have directly joined the space, not
        # counting users joined by having membership in a joined group.
        # Corresponds to the JSON property `joinedDirectHumanUserCount`
        # @return [Fixnum]
        attr_accessor :joined_direct_human_user_count
      
        # Output only. Count of all groups that have directly joined the space.
        # Corresponds to the JSON property `joinedGroupCount`
        # @return [Fixnum]
        attr_accessor :joined_group_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @joined_direct_human_user_count = args[:joined_direct_human_user_count] if args.key?(:joined_direct_human_user_count)
          @joined_group_count = args[:joined_group_count] if args.key?(:joined_group_count)
        end
      end
      
      # Event payload for a new membership. Event type: `google.workspace.chat.
      # membership.v1.created`.
      class MembershipCreatedEventData
        include Google::Apis::Core::Hashable
      
        # Represents a membership relation in Google Chat, such as whether a user or
        # Chat app is invited to, part of, or absent from a space.
        # Corresponds to the JSON property `membership`
        # @return [Google::Apis::ChatV1::Membership]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
      # Event payload for a deleted membership. Event type: `google.workspace.chat.
      # membership.v1.deleted`
      class MembershipDeletedEventData
        include Google::Apis::Core::Hashable
      
        # Represents a membership relation in Google Chat, such as whether a user or
        # Chat app is invited to, part of, or absent from a space.
        # Corresponds to the JSON property `membership`
        # @return [Google::Apis::ChatV1::Membership]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
      # Event payload for an updated membership. Event type: `google.workspace.chat.
      # membership.v1.updated`
      class MembershipUpdatedEventData
        include Google::Apis::Core::Hashable
      
        # Represents a membership relation in Google Chat, such as whether a user or
        # Chat app is invited to, part of, or absent from a space.
        # Corresponds to the JSON property `membership`
        # @return [Google::Apis::ChatV1::Membership]
        attr_accessor :membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @membership = args[:membership] if args.key?(:membership)
        end
      end
      
      # A message in a Google Chat space.
      class Message
        include Google::Apis::Core::Hashable
      
        # Optional. One or more interactive widgets that appear at the bottom of a
        # message. You can add accessory widgets to messages that contain text, cards,
        # or both text and cards. Not supported for messages that contain dialogs. For
        # details, see [Add interactive widgets at the bottom of a message](https://
        # developers.google.com/workspace/chat/create-messages#add-accessory-widgets).
        # Creating a message with accessory widgets requires [app authentication] (https:
        # //developers.google.com/workspace/chat/authenticate-authorize-chat-app).
        # Corresponds to the JSON property `accessoryWidgets`
        # @return [Array<Google::Apis::ChatV1::AccessoryWidget>]
        attr_accessor :accessory_widgets
      
        # Parameters that a Chat app can use to configure how its response is posted.
        # Corresponds to the JSON property `actionResponse`
        # @return [Google::Apis::ChatV1::ActionResponse]
        attr_accessor :action_response
      
        # Output only. Annotations associated with the `text` in this message.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ChatV1::Annotation>]
        attr_accessor :annotations
      
        # Output only. Plain-text body of the message with all Chat app mentions
        # stripped out.
        # Corresponds to the JSON property `argumentText`
        # @return [String]
        attr_accessor :argument_text
      
        # Output only. GIF images that are attached to the message.
        # Corresponds to the JSON property `attachedGifs`
        # @return [Array<Google::Apis::ChatV1::AttachedGif>]
        attr_accessor :attached_gifs
      
        # Optional. User-uploaded attachment.
        # Corresponds to the JSON property `attachment`
        # @return [Array<Google::Apis::ChatV1::Attachment>]
        attr_accessor :attachment
      
        # Deprecated: Use `cards_v2` instead. Rich, formatted, and interactive cards
        # that you can use to display UI elements such as: formatted texts, buttons, and
        # clickable images. Cards are normally displayed below the plain-text body of
        # the message. `cards` and `cards_v2` can have a maximum size of 32 KB.
        # Corresponds to the JSON property `cards`
        # @return [Array<Google::Apis::ChatV1::Card>]
        attr_accessor :cards
      
        # Optional. An array of [cards](https://developers.google.com/workspace/chat/api/
        # reference/rest/v1/cards). Only Chat apps can create cards. If your Chat app [
        # authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the messages can't contain cards. To learn
        # how to create a message that contains cards, see [Send a message](https://
        # developers.google.com/workspace/chat/create-messages). [Card builder](https://
        # addons.gsuite.google.com/uikit/builder)
        # Corresponds to the JSON property `cardsV2`
        # @return [Array<Google::Apis::ChatV1::CardWithId>]
        attr_accessor :cards_v2
      
        # Optional. A custom ID for the message. You can use field to identify a message,
        # or to get, delete, or update a message. To set a custom ID, specify the [`
        # messageId`](https://developers.google.com/workspace/chat/api/reference/rest/v1/
        # spaces.messages/create#body.QUERY_PARAMETERS.message_id) field when you create
        # the message. For details, see [Name a message](https://developers.google.com/
        # workspace/chat/create-messages#name_a_created_message).
        # Corresponds to the JSON property `clientAssignedMessageId`
        # @return [String]
        attr_accessor :client_assigned_message_id
      
        # Optional. Immutable. For spaces created in Chat, the time at which the message
        # was created. This field is output only, except when used in import mode spaces.
        # For import mode spaces, set this field to the historical timestamp at which
        # the message was created in the source in order to preserve the original
        # creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time at which the message was deleted in Google Chat. If the
        # message is never deleted, this field is empty.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Information about a deleted message. A message is deleted when `delete_time`
        # is set.
        # Corresponds to the JSON property `deletionMetadata`
        # @return [Google::Apis::ChatV1::DeletionMetadata]
        attr_accessor :deletion_metadata
      
        # Output only. The list of emoji reaction summaries on the message.
        # Corresponds to the JSON property `emojiReactionSummaries`
        # @return [Array<Google::Apis::ChatV1::EmojiReactionSummary>]
        attr_accessor :emoji_reaction_summaries
      
        # Optional. A plain-text description of the message's cards, used when the
        # actual cards can't be displayed—for example, mobile notifications.
        # Corresponds to the JSON property `fallbackText`
        # @return [String]
        attr_accessor :fallback_text
      
        # Output only. Contains the message `text` with markups added to communicate
        # formatting. This field might not capture all formatting visible in the UI, but
        # includes the following: * [Markup syntax](https://developers.google.com/
        # workspace/chat/format-messages) for bold, italic, strikethrough, monospace,
        # monospace block, and bulleted list. * [User mentions](https://developers.
        # google.com/workspace/chat/format-messages#messages-@mention) using the format `
        # `. * Custom hyperlinks using the format `<`url`|`rendered_text`>` where the
        # first string is the URL and the second is the rendered text—for example, ``. *
        # Custom emoji using the format `:`emoji_name`:`—for example, `:smile:`. This
        # doesn't apply to Unicode emoji, such as `U+1F600` for a grinning face emoji.
        # For more information, see [View text formatting sent in a message](https://
        # developers.google.com/workspace/chat/format-messages#
        # view_text_formatting_sent_in_a_message)
        # Corresponds to the JSON property `formattedText`
        # @return [String]
        attr_accessor :formatted_text
      
        # Output only. The time at which the message was last edited by a user. If the
        # message has never been edited, this field is empty.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # A matched URL in a Chat message. Chat apps can preview matched URLs. For more
        # information, see [Preview links](https://developers.google.com/chat/how-tos/
        # preview-links).
        # Corresponds to the JSON property `matchedUrl`
        # @return [Google::Apis::ChatV1::MatchedUrl]
        attr_accessor :matched_url
      
        # Identifier. Resource name of the message. Format: `spaces/`space`/messages/`
        # message`` Where ``space`` is the ID of the space where the message is posted
        # and ``message`` is a system-assigned ID for the message. For example, `spaces/
        # AAAAAAAAAAA/messages/BBBBBBBBBBB.BBBBBBBBBBB`. If you set a custom ID when you
        # create a message, you can use this ID to specify the message in a request by
        # replacing ``message`` with the value from the `clientAssignedMessageId` field.
        # For example, `spaces/AAAAAAAAAAA/messages/client-custom-name`. For details,
        # see [Name a message](https://developers.google.com/workspace/chat/create-
        # messages#name_a_created_message).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `privateMessageViewer`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :private_message_viewer
      
        # Information about a quoted message.
        # Corresponds to the JSON property `quotedMessageMetadata`
        # @return [Google::Apis::ChatV1::QuotedMessageMetadata]
        attr_accessor :quoted_message_metadata
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `sender`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :sender
      
        # Metadata about a [slash command](https://developers.google.com/workspace/chat/
        # commands) in Google Chat.
        # Corresponds to the JSON property `slashCommand`
        # @return [Google::Apis::ChatV1::SlashCommand]
        attr_accessor :slash_command
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # Optional. Plain-text body of the message. The first link to an image, video,
        # or web page generates a [preview chip](https://developers.google.com/workspace/
        # chat/preview-links). You can also [@mention a Google Chat user](https://
        # developers.google.com/workspace/chat/format-messages#messages-@mention), or
        # everyone in the space. To learn about creating text messages, see [Send a
        # message](https://developers.google.com/workspace/chat/create-messages).
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A thread in a Google Chat space. For example usage, see [Start or reply to a
        # message thread](https://developers.google.com/workspace/chat/create-messages#
        # create-message-thread). If you specify a thread when creating a message, you
        # can set the [`messageReplyOption`](https://developers.google.com/workspace/
        # chat/api/reference/rest/v1/spaces.messages/create#messagereplyoption) field to
        # determine what happens if no matching thread is found.
        # Corresponds to the JSON property `thread`
        # @return [Google::Apis::ChatV1::Thread]
        attr_accessor :thread
      
        # Output only. When `true`, the message is a response in a reply thread. When `
        # false`, the message is visible in the space's top-level conversation as either
        # the first message of a thread or a message with no threaded replies. If the
        # space doesn't support reply in threads, this field is always `false`.
        # Corresponds to the JSON property `threadReply`
        # @return [Boolean]
        attr_accessor :thread_reply
        alias_method :thread_reply?, :thread_reply
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accessory_widgets = args[:accessory_widgets] if args.key?(:accessory_widgets)
          @action_response = args[:action_response] if args.key?(:action_response)
          @annotations = args[:annotations] if args.key?(:annotations)
          @argument_text = args[:argument_text] if args.key?(:argument_text)
          @attached_gifs = args[:attached_gifs] if args.key?(:attached_gifs)
          @attachment = args[:attachment] if args.key?(:attachment)
          @cards = args[:cards] if args.key?(:cards)
          @cards_v2 = args[:cards_v2] if args.key?(:cards_v2)
          @client_assigned_message_id = args[:client_assigned_message_id] if args.key?(:client_assigned_message_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @deletion_metadata = args[:deletion_metadata] if args.key?(:deletion_metadata)
          @emoji_reaction_summaries = args[:emoji_reaction_summaries] if args.key?(:emoji_reaction_summaries)
          @fallback_text = args[:fallback_text] if args.key?(:fallback_text)
          @formatted_text = args[:formatted_text] if args.key?(:formatted_text)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @matched_url = args[:matched_url] if args.key?(:matched_url)
          @name = args[:name] if args.key?(:name)
          @private_message_viewer = args[:private_message_viewer] if args.key?(:private_message_viewer)
          @quoted_message_metadata = args[:quoted_message_metadata] if args.key?(:quoted_message_metadata)
          @sender = args[:sender] if args.key?(:sender)
          @slash_command = args[:slash_command] if args.key?(:slash_command)
          @space = args[:space] if args.key?(:space)
          @text = args[:text] if args.key?(:text)
          @thread = args[:thread] if args.key?(:thread)
          @thread_reply = args[:thread_reply] if args.key?(:thread_reply)
        end
      end
      
      # Event payload for multiple new messages. Event type: `google.workspace.chat.
      # message.v1.batchCreated`
      class MessageBatchCreatedEventData
        include Google::Apis::Core::Hashable
      
        # A list of new messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::ChatV1::MessageCreatedEventData>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Event payload for multiple deleted messages. Event type: `google.workspace.
      # chat.message.v1.batchDeleted`
      class MessageBatchDeletedEventData
        include Google::Apis::Core::Hashable
      
        # A list of deleted messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::ChatV1::MessageDeletedEventData>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Event payload for multiple updated messages. Event type: `google.workspace.
      # chat.message.v1.batchUpdated`
      class MessageBatchUpdatedEventData
        include Google::Apis::Core::Hashable
      
        # A list of updated messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::ChatV1::MessageUpdatedEventData>]
        attr_accessor :messages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] if args.key?(:messages)
        end
      end
      
      # Event payload for a new message. Event type: `google.workspace.chat.message.v1.
      # created`
      class MessageCreatedEventData
        include Google::Apis::Core::Hashable
      
        # A message in a Google Chat space.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Event payload for a deleted message. Event type: `google.workspace.chat.
      # message.v1.deleted`
      class MessageDeletedEventData
        include Google::Apis::Core::Hashable
      
        # A message in a Google Chat space.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Event payload for an updated message. Event type: `google.workspace.chat.
      # message.v1.updated`
      class MessageUpdatedEventData
        include Google::Apis::Core::Hashable
      
        # A message in a Google Chat space.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # An `onclick` action (for example, open a link).
      class OnClick
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # you can invoke Apps Script to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::FormAction]
        attr_accessor :action
      
        # A link that opens a new window.
        # Corresponds to the JSON property `openLink`
        # @return [Google::Apis::ChatV1::OpenLink]
        attr_accessor :open_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @open_link = args[:open_link] if args.key?(:open_link)
        end
      end
      
      # A link that opens a new window.
      class OpenLink
        include Google::Apis::Core::Hashable
      
        # The URL to open.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents a space permission setting.
      class PermissionSetting
        include Google::Apis::Core::Hashable
      
        # Optional. Whether spaces managers have this permission.
        # Corresponds to the JSON property `managersAllowed`
        # @return [Boolean]
        attr_accessor :managers_allowed
        alias_method :managers_allowed?, :managers_allowed
      
        # Optional. Whether non-manager members have this permission.
        # Corresponds to the JSON property `membersAllowed`
        # @return [Boolean]
        attr_accessor :members_allowed
        alias_method :members_allowed?, :members_allowed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managers_allowed = args[:managers_allowed] if args.key?(:managers_allowed)
          @members_allowed = args[:members_allowed] if args.key?(:members_allowed)
        end
      end
      
      # [Permission settings](https://support.google.com/chat/answer/13340792) that
      # you can specify when updating an existing named space. To set permission
      # settings when creating a space, specify the `PredefinedPermissionSettings`
      # field in your request.
      class PermissionSettings
        include Google::Apis::Core::Hashable
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `manageApps`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :manage_apps
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `manageMembersAndGroups`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :manage_members_and_groups
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `manageWebhooks`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :manage_webhooks
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `modifySpaceDetails`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :modify_space_details
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `postMessages`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :post_messages
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `replyMessages`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :reply_messages
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `toggleHistory`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :toggle_history
      
        # Represents a space permission setting.
        # Corresponds to the JSON property `useAtMentionAll`
        # @return [Google::Apis::ChatV1::PermissionSetting]
        attr_accessor :use_at_mention_all
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @manage_apps = args[:manage_apps] if args.key?(:manage_apps)
          @manage_members_and_groups = args[:manage_members_and_groups] if args.key?(:manage_members_and_groups)
          @manage_webhooks = args[:manage_webhooks] if args.key?(:manage_webhooks)
          @modify_space_details = args[:modify_space_details] if args.key?(:modify_space_details)
          @post_messages = args[:post_messages] if args.key?(:post_messages)
          @reply_messages = args[:reply_messages] if args.key?(:reply_messages)
          @toggle_history = args[:toggle_history] if args.key?(:toggle_history)
          @use_at_mention_all = args[:use_at_mention_all] if args.key?(:use_at_mention_all)
        end
      end
      
      # Information about a quoted message.
      class QuotedMessageMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the quoted message was created or when the
        # quoted message was last updated.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Output only. Resource name of the quoted message. Format: `spaces/`space`/
        # messages/`message``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A reaction to a message.
      class Reaction
        include Google::Apis::Core::Hashable
      
        # An emoji that is used as a reaction to a message.
        # Corresponds to the JSON property `emoji`
        # @return [Google::Apis::ChatV1::Emoji]
        attr_accessor :emoji
      
        # Identifier. The resource name of the reaction. Format: `spaces/`space`/
        # messages/`message`/reactions/`reaction``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emoji = args[:emoji] if args.key?(:emoji)
          @name = args[:name] if args.key?(:name)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Event payload for multiple new reactions. Event type: `google.workspace.chat.
      # reaction.v1.batchCreated`
      class ReactionBatchCreatedEventData
        include Google::Apis::Core::Hashable
      
        # A list of new reactions.
        # Corresponds to the JSON property `reactions`
        # @return [Array<Google::Apis::ChatV1::ReactionCreatedEventData>]
        attr_accessor :reactions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reactions = args[:reactions] if args.key?(:reactions)
        end
      end
      
      # Event payload for multiple deleted reactions. Event type: `google.workspace.
      # chat.reaction.v1.batchDeleted`
      class ReactionBatchDeletedEventData
        include Google::Apis::Core::Hashable
      
        # A list of deleted reactions.
        # Corresponds to the JSON property `reactions`
        # @return [Array<Google::Apis::ChatV1::ReactionDeletedEventData>]
        attr_accessor :reactions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reactions = args[:reactions] if args.key?(:reactions)
        end
      end
      
      # Event payload for a new reaction. Event type: `google.workspace.chat.reaction.
      # v1.created`
      class ReactionCreatedEventData
        include Google::Apis::Core::Hashable
      
        # A reaction to a message.
        # Corresponds to the JSON property `reaction`
        # @return [Google::Apis::ChatV1::Reaction]
        attr_accessor :reaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reaction = args[:reaction] if args.key?(:reaction)
        end
      end
      
      # Event payload for a deleted reaction. Type: `google.workspace.chat.reaction.v1.
      # deleted`
      class ReactionDeletedEventData
        include Google::Apis::Core::Hashable
      
        # A reaction to a message.
        # Corresponds to the JSON property `reaction`
        # @return [Google::Apis::ChatV1::Reaction]
        attr_accessor :reaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reaction = args[:reaction] if args.key?(:reaction)
        end
      end
      
      # A rich link to a resource.
      class RichLinkMetadata
        include Google::Apis::Core::Hashable
      
        # Data for Chat space links.
        # Corresponds to the JSON property `chatSpaceLinkData`
        # @return [Google::Apis::ChatV1::ChatSpaceLinkData]
        attr_accessor :chat_space_link_data
      
        # Data for Google Drive links.
        # Corresponds to the JSON property `driveLinkData`
        # @return [Google::Apis::ChatV1::DriveLinkData]
        attr_accessor :drive_link_data
      
        # The rich link type.
        # Corresponds to the JSON property `richLinkType`
        # @return [String]
        attr_accessor :rich_link_type
      
        # The URI of this link.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_space_link_data = args[:chat_space_link_data] if args.key?(:chat_space_link_data)
          @drive_link_data = args[:drive_link_data] if args.key?(:drive_link_data)
          @rich_link_type = args[:rich_link_type] if args.key?(:rich_link_type)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Response with a list of spaces corresponding to the search spaces request.
      class SearchSpacesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be used to retrieve the next page. If this field is empty,
        # there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A page of the requested spaces.
        # Corresponds to the JSON property `spaces`
        # @return [Array<Google::Apis::ChatV1::Space>]
        attr_accessor :spaces
      
        # The total number of spaces that match the query, across all pages. If the
        # result is over 10,000 spaces, this value is an estimate.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spaces = args[:spaces] if args.key?(:spaces)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A section contains a collection of widgets that are rendered (vertically) in
      # the order that they are specified. Across all platforms, cards have a narrow
      # fixed width, so there's currently no need for layout properties (for example,
      # float).
      class Section
        include Google::Apis::Core::Hashable
      
        # The header of the section. Formatted text is supported. For more information
        # about formatting text, see [Formatting text in Google Chat apps](https://
        # developers.google.com/workspace/chat/format-messages#card-formatting) and [
        # Formatting text in Google Workspace Add-ons](https://developers.google.com/
        # apps-script/add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # A section must contain at least one widget.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::ChatV1::WidgetMarkup>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # List of widget autocomplete results.
      class SelectionItems
        include Google::Apis::Core::Hashable
      
        # An array of the SelectionItem objects.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # Request to create a space and add specified users to it.
      class SetUpSpaceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The Google Chat users or groups to invite to join the space. Omit
        # the calling user, as they are added automatically. The set currently allows up
        # to 49 memberships (in addition to the caller). For human membership, the `
        # Membership.member` field must contain a `user` with `name` populated (format: `
        # users/`user``) and `type` set to `User.Type.HUMAN`. You can only add human
        # users when setting up a space (adding Chat apps is only supported for direct
        # message setup with the calling app). You can also add members using the user's
        # email as an alias for `user`. For example, the `user.name` can be `users/
        # example@gmail.com`. To invite Gmail users or users from external Google
        # Workspace domains, user's email must be used for ``user``. For Google group
        # membership, the `Membership.group_member` field must contain a `group` with `
        # name` populated (format `groups/`group``). You can only add Google groups when
        # setting `Space.spaceType` to `SPACE`. Optional when setting `Space.spaceType`
        # to `SPACE`. Required when setting `Space.spaceType` to `GROUP_CHAT`, along
        # with at least two memberships. Required when setting `Space.spaceType` to `
        # DIRECT_MESSAGE` with a human user, along with exactly one membership. Must be
        # empty when creating a 1:1 conversation between a human and the calling Chat
        # app (when setting `Space.spaceType` to `DIRECT_MESSAGE` and `Space.
        # singleUserBotDm` to `true`).
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::ChatV1::Membership>]
        attr_accessor :memberships
      
        # Optional. A unique identifier for this request. A random UUID is recommended.
        # Specifying an existing request ID returns the space created with that ID
        # instead of creating a new space. Specifying an existing request ID from the
        # same Chat app with a different authenticated user returns an error.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @memberships = args[:memberships] if args.key?(:memberships)
          @request_id = args[:request_id] if args.key?(:request_id)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Metadata about a [slash command](https://developers.google.com/workspace/chat/
      # commands) in Google Chat.
      class SlashCommand
        include Google::Apis::Core::Hashable
      
        # The ID of the slash command.
        # Corresponds to the JSON property `commandId`
        # @return [Fixnum]
        attr_accessor :command_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command_id = args[:command_id] if args.key?(:command_id)
        end
      end
      
      # Annotation metadata for slash commands (/).
      class SlashCommandMetadata
        include Google::Apis::Core::Hashable
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `bot`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :bot
      
        # The command ID of the invoked slash command.
        # Corresponds to the JSON property `commandId`
        # @return [Fixnum]
        attr_accessor :command_id
      
        # The name of the invoked slash command.
        # Corresponds to the JSON property `commandName`
        # @return [String]
        attr_accessor :command_name
      
        # Indicates whether the slash command is for a dialog.
        # Corresponds to the JSON property `triggersDialog`
        # @return [Boolean]
        attr_accessor :triggers_dialog
        alias_method :triggers_dialog?, :triggers_dialog
      
        # The type of slash command.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bot = args[:bot] if args.key?(:bot)
          @command_id = args[:command_id] if args.key?(:command_id)
          @command_name = args[:command_name] if args.key?(:command_name)
          @triggers_dialog = args[:triggers_dialog] if args.key?(:triggers_dialog)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A space in Google Chat. Spaces are conversations between two or more users or
      # 1:1 messages between a user and a Chat app.
      class Space
        include Google::Apis::Core::Hashable
      
        # Represents the [access setting](https://support.google.com/chat/answer/
        # 11971020) of the space.
        # Corresponds to the JSON property `accessSettings`
        # @return [Google::Apis::ChatV1::AccessSettings]
        attr_accessor :access_settings
      
        # Output only. For direct message (DM) spaces with a Chat app, whether the space
        # was created by a Google Workspace administrator. Administrators can install
        # and set up a direct message with a Chat app on behalf of users in their
        # organization. To support admin install, your Chat app must feature direct
        # messaging.
        # Corresponds to the JSON property `adminInstalled`
        # @return [Boolean]
        attr_accessor :admin_installed
        alias_method :admin_installed?, :admin_installed
      
        # Optional. Immutable. For spaces created in Chat, the time the space was
        # created. This field is output only, except when used in import mode spaces.
        # For import mode spaces, set this field to the historical timestamp at which
        # the space was created in the source in order to preserve the original creation
        # time. Only populated in the output when `spaceType` is `GROUP_CHAT` or `SPACE`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The space's display name. Required when [creating a space](https://
        # developers.google.com/workspace/chat/api/reference/rest/v1/spaces/create) with
        # a `spaceType` of `SPACE`. If you receive the error message `ALREADY_EXISTS`
        # when creating a space or updating the `displayName`, try a different `
        # displayName`. An existing space within the Google Workspace organization might
        # already use this display name. For direct messages, this field might be empty.
        # Supports up to 128 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Immutable. Whether this space permits any Google Chat user as a
        # member. Input when creating a space in a Google Workspace organization. Omit
        # this field when creating spaces in the following conditions: * The
        # authenticated user uses a consumer account (unmanaged user account). By
        # default, a space created by a consumer account permits any Google Chat user.
        # For existing spaces, this field is output only.
        # Corresponds to the JSON property `externalUserAllowed`
        # @return [Boolean]
        attr_accessor :external_user_allowed
        alias_method :external_user_allowed?, :external_user_allowed
      
        # Optional. Whether this space is created in `Import Mode` as part of a data
        # migration into Google Workspace. While spaces are being imported, they aren't
        # visible to users until the import is complete. Creating a space in `Import
        # Mode`requires [user authentication](https://developers.google.com/workspace/
        # chat/authenticate-authorize-chat-user).
        # Corresponds to the JSON property `importMode`
        # @return [Boolean]
        attr_accessor :import_mode
        alias_method :import_mode?, :import_mode
      
        # Output only. The time when the space will be automatically deleted by the
        # system if it remains in import mode. Each space created in import mode must
        # exit this mode before this expire time using `spaces.completeImport`. This
        # field is only populated for spaces that were created with import mode.
        # Corresponds to the JSON property `importModeExpireTime`
        # @return [String]
        attr_accessor :import_mode_expire_time
      
        # Output only. Timestamp of the last message in the space.
        # Corresponds to the JSON property `lastActiveTime`
        # @return [String]
        attr_accessor :last_active_time
      
        # Represents the count of memberships of a space, grouped into categories.
        # Corresponds to the JSON property `membershipCount`
        # @return [Google::Apis::ChatV1::MembershipCount]
        attr_accessor :membership_count
      
        # Identifier. Resource name of the space. Format: `spaces/`space`` Where ``space`
        # ` represents the system-assigned ID for the space. You can obtain the space ID
        # by calling the [`spaces.list()`](https://developers.google.com/workspace/chat/
        # api/reference/rest/v1/spaces/list) method or from the space URL. For example,
        # if the space URL is `https://mail.google.com/mail/u/0/#chat/space/AAAAAAAAA`,
        # the space ID is `AAAAAAAAA`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Permission settings](https://support.google.com/chat/answer/13340792) that
        # you can specify when updating an existing named space. To set permission
        # settings when creating a space, specify the `PredefinedPermissionSettings`
        # field in your request.
        # Corresponds to the JSON property `permissionSettings`
        # @return [Google::Apis::ChatV1::PermissionSettings]
        attr_accessor :permission_settings
      
        # Optional. Input only. Predefined space permission settings, input only when
        # creating a space. If the field is not set, a collaboration space is created.
        # After you create the space, settings are populated in the `PermissionSettings`
        # field. Setting predefined permission settings supports: - In [Developer
        # Preview](https://developers.google.com/workspace/preview), [App authentication]
        # (https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
        # with [administrator approval](https://support.google.com/a?p=chat-app-auth)
        # with the `chat.app.spaces` or `chat.app.spaces.create` scopes. - [User
        # authentication](https://developers.google.com/workspace/chat/authenticate-
        # authorize-chat-user)
        # Corresponds to the JSON property `predefinedPermissionSettings`
        # @return [String]
        attr_accessor :predefined_permission_settings
      
        # Optional. Whether the space is a DM between a Chat app and a single human.
        # Corresponds to the JSON property `singleUserBotDm`
        # @return [Boolean]
        attr_accessor :single_user_bot_dm
        alias_method :single_user_bot_dm?, :single_user_bot_dm
      
        # Details about the space including description and rules.
        # Corresponds to the JSON property `spaceDetails`
        # @return [Google::Apis::ChatV1::SpaceDetails]
        attr_accessor :space_details
      
        # Optional. The message history state for messages and threads in this space.
        # Corresponds to the JSON property `spaceHistoryState`
        # @return [String]
        attr_accessor :space_history_state
      
        # Output only. The threading state in the Chat space.
        # Corresponds to the JSON property `spaceThreadingState`
        # @return [String]
        attr_accessor :space_threading_state
      
        # Optional. The type of space. Required when creating a space or updating the
        # space type of a space. Output only for other usage.
        # Corresponds to the JSON property `spaceType`
        # @return [String]
        attr_accessor :space_type
      
        # Output only. The URI for a user to access the space.
        # Corresponds to the JSON property `spaceUri`
        # @return [String]
        attr_accessor :space_uri
      
        # Output only. Deprecated: Use `spaceThreadingState` instead. Whether messages
        # are threaded in this space.
        # Corresponds to the JSON property `threaded`
        # @return [Boolean]
        attr_accessor :threaded
        alias_method :threaded?, :threaded
      
        # Output only. Deprecated: Use `space_type` instead. The type of a space.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_settings = args[:access_settings] if args.key?(:access_settings)
          @admin_installed = args[:admin_installed] if args.key?(:admin_installed)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @external_user_allowed = args[:external_user_allowed] if args.key?(:external_user_allowed)
          @import_mode = args[:import_mode] if args.key?(:import_mode)
          @import_mode_expire_time = args[:import_mode_expire_time] if args.key?(:import_mode_expire_time)
          @last_active_time = args[:last_active_time] if args.key?(:last_active_time)
          @membership_count = args[:membership_count] if args.key?(:membership_count)
          @name = args[:name] if args.key?(:name)
          @permission_settings = args[:permission_settings] if args.key?(:permission_settings)
          @predefined_permission_settings = args[:predefined_permission_settings] if args.key?(:predefined_permission_settings)
          @single_user_bot_dm = args[:single_user_bot_dm] if args.key?(:single_user_bot_dm)
          @space_details = args[:space_details] if args.key?(:space_details)
          @space_history_state = args[:space_history_state] if args.key?(:space_history_state)
          @space_threading_state = args[:space_threading_state] if args.key?(:space_threading_state)
          @space_type = args[:space_type] if args.key?(:space_type)
          @space_uri = args[:space_uri] if args.key?(:space_uri)
          @threaded = args[:threaded] if args.key?(:threaded)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Event payload for multiple updates to a space. Event type: `google.workspace.
      # chat.space.v1.batchUpdated`
      class SpaceBatchUpdatedEventData
        include Google::Apis::Core::Hashable
      
        # A list of updated spaces.
        # Corresponds to the JSON property `spaces`
        # @return [Array<Google::Apis::ChatV1::SpaceUpdatedEventData>]
        attr_accessor :spaces
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @spaces = args[:spaces] if args.key?(:spaces)
        end
      end
      
      # A data source that populates Google Chat spaces as selection items for a
      # multiselect menu. Only populates spaces that the user is a member of. [Google
      # Chat apps](https://developers.google.com/workspace/chat):
      class SpaceDataSource
        include Google::Apis::Core::Hashable
      
        # If set to `true`, the multiselect menu selects the current Google Chat space
        # as an item by default.
        # Corresponds to the JSON property `defaultToCurrentSpace`
        # @return [Boolean]
        attr_accessor :default_to_current_space
        alias_method :default_to_current_space?, :default_to_current_space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_to_current_space = args[:default_to_current_space] if args.key?(:default_to_current_space)
        end
      end
      
      # Details about the space including description and rules.
      class SpaceDetails
        include Google::Apis::Core::Hashable
      
        # Optional. A description of the space. For example, describe the space's
        # discussion topic, functional purpose, or participants. Supports up to 150
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The space's rules, expectations, and etiquette. Supports up to 5,000
        # characters.
        # Corresponds to the JSON property `guidelines`
        # @return [String]
        attr_accessor :guidelines
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @guidelines = args[:guidelines] if args.key?(:guidelines)
        end
      end
      
      # An event that represents a change or activity in a Google Chat space. To learn
      # more, see [Work with events from Google Chat](https://developers.google.com/
      # workspace/chat/events-overview).
      class SpaceEvent
        include Google::Apis::Core::Hashable
      
        # Time when the event occurred.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Type of space event. Each event type has a batch version, which represents
        # multiple instances of the event type that occur in a short period of time. For
        # `spaceEvents.list()` requests, omit batch event types in your query filter. By
        # default, the server returns both event type and its batch version. Supported
        # event types for [messages](https://developers.google.com/workspace/chat/api/
        # reference/rest/v1/spaces.messages): * New message: `google.workspace.chat.
        # message.v1.created` * Updated message: `google.workspace.chat.message.v1.
        # updated` * Deleted message: `google.workspace.chat.message.v1.deleted` *
        # Multiple new messages: `google.workspace.chat.message.v1.batchCreated` *
        # Multiple updated messages: `google.workspace.chat.message.v1.batchUpdated` *
        # Multiple deleted messages: `google.workspace.chat.message.v1.batchDeleted`
        # Supported event types for [memberships](https://developers.google.com/
        # workspace/chat/api/reference/rest/v1/spaces.members): * New membership: `
        # google.workspace.chat.membership.v1.created` * Updated membership: `google.
        # workspace.chat.membership.v1.updated` * Deleted membership: `google.workspace.
        # chat.membership.v1.deleted` * Multiple new memberships: `google.workspace.chat.
        # membership.v1.batchCreated` * Multiple updated memberships: `google.workspace.
        # chat.membership.v1.batchUpdated` * Multiple deleted memberships: `google.
        # workspace.chat.membership.v1.batchDeleted` Supported event types for [
        # reactions](https://developers.google.com/workspace/chat/api/reference/rest/v1/
        # spaces.messages.reactions): * New reaction: `google.workspace.chat.reaction.v1.
        # created` * Deleted reaction: `google.workspace.chat.reaction.v1.deleted` *
        # Multiple new reactions: `google.workspace.chat.reaction.v1.batchCreated` *
        # Multiple deleted reactions: `google.workspace.chat.reaction.v1.batchDeleted`
        # Supported event types about the [space](https://developers.google.com/
        # workspace/chat/api/reference/rest/v1/spaces): * Updated space: `google.
        # workspace.chat.space.v1.updated` * Multiple space updates: `google.workspace.
        # chat.space.v1.batchUpdated`
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # Event payload for multiple new memberships. Event type: `google.workspace.chat.
        # membership.v1.batchCreated`
        # Corresponds to the JSON property `membershipBatchCreatedEventData`
        # @return [Google::Apis::ChatV1::MembershipBatchCreatedEventData]
        attr_accessor :membership_batch_created_event_data
      
        # Event payload for multiple deleted memberships. Event type: `google.workspace.
        # chat.membership.v1.batchDeleted`
        # Corresponds to the JSON property `membershipBatchDeletedEventData`
        # @return [Google::Apis::ChatV1::MembershipBatchDeletedEventData]
        attr_accessor :membership_batch_deleted_event_data
      
        # Event payload for multiple updated memberships. Event type: `google.workspace.
        # chat.membership.v1.batchUpdated`
        # Corresponds to the JSON property `membershipBatchUpdatedEventData`
        # @return [Google::Apis::ChatV1::MembershipBatchUpdatedEventData]
        attr_accessor :membership_batch_updated_event_data
      
        # Event payload for a new membership. Event type: `google.workspace.chat.
        # membership.v1.created`.
        # Corresponds to the JSON property `membershipCreatedEventData`
        # @return [Google::Apis::ChatV1::MembershipCreatedEventData]
        attr_accessor :membership_created_event_data
      
        # Event payload for a deleted membership. Event type: `google.workspace.chat.
        # membership.v1.deleted`
        # Corresponds to the JSON property `membershipDeletedEventData`
        # @return [Google::Apis::ChatV1::MembershipDeletedEventData]
        attr_accessor :membership_deleted_event_data
      
        # Event payload for an updated membership. Event type: `google.workspace.chat.
        # membership.v1.updated`
        # Corresponds to the JSON property `membershipUpdatedEventData`
        # @return [Google::Apis::ChatV1::MembershipUpdatedEventData]
        attr_accessor :membership_updated_event_data
      
        # Event payload for multiple new messages. Event type: `google.workspace.chat.
        # message.v1.batchCreated`
        # Corresponds to the JSON property `messageBatchCreatedEventData`
        # @return [Google::Apis::ChatV1::MessageBatchCreatedEventData]
        attr_accessor :message_batch_created_event_data
      
        # Event payload for multiple deleted messages. Event type: `google.workspace.
        # chat.message.v1.batchDeleted`
        # Corresponds to the JSON property `messageBatchDeletedEventData`
        # @return [Google::Apis::ChatV1::MessageBatchDeletedEventData]
        attr_accessor :message_batch_deleted_event_data
      
        # Event payload for multiple updated messages. Event type: `google.workspace.
        # chat.message.v1.batchUpdated`
        # Corresponds to the JSON property `messageBatchUpdatedEventData`
        # @return [Google::Apis::ChatV1::MessageBatchUpdatedEventData]
        attr_accessor :message_batch_updated_event_data
      
        # Event payload for a new message. Event type: `google.workspace.chat.message.v1.
        # created`
        # Corresponds to the JSON property `messageCreatedEventData`
        # @return [Google::Apis::ChatV1::MessageCreatedEventData]
        attr_accessor :message_created_event_data
      
        # Event payload for a deleted message. Event type: `google.workspace.chat.
        # message.v1.deleted`
        # Corresponds to the JSON property `messageDeletedEventData`
        # @return [Google::Apis::ChatV1::MessageDeletedEventData]
        attr_accessor :message_deleted_event_data
      
        # Event payload for an updated message. Event type: `google.workspace.chat.
        # message.v1.updated`
        # Corresponds to the JSON property `messageUpdatedEventData`
        # @return [Google::Apis::ChatV1::MessageUpdatedEventData]
        attr_accessor :message_updated_event_data
      
        # Resource name of the space event. Format: `spaces/`space`/spaceEvents/`
        # spaceEvent``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Event payload for multiple new reactions. Event type: `google.workspace.chat.
        # reaction.v1.batchCreated`
        # Corresponds to the JSON property `reactionBatchCreatedEventData`
        # @return [Google::Apis::ChatV1::ReactionBatchCreatedEventData]
        attr_accessor :reaction_batch_created_event_data
      
        # Event payload for multiple deleted reactions. Event type: `google.workspace.
        # chat.reaction.v1.batchDeleted`
        # Corresponds to the JSON property `reactionBatchDeletedEventData`
        # @return [Google::Apis::ChatV1::ReactionBatchDeletedEventData]
        attr_accessor :reaction_batch_deleted_event_data
      
        # Event payload for a new reaction. Event type: `google.workspace.chat.reaction.
        # v1.created`
        # Corresponds to the JSON property `reactionCreatedEventData`
        # @return [Google::Apis::ChatV1::ReactionCreatedEventData]
        attr_accessor :reaction_created_event_data
      
        # Event payload for a deleted reaction. Type: `google.workspace.chat.reaction.v1.
        # deleted`
        # Corresponds to the JSON property `reactionDeletedEventData`
        # @return [Google::Apis::ChatV1::ReactionDeletedEventData]
        attr_accessor :reaction_deleted_event_data
      
        # Event payload for multiple updates to a space. Event type: `google.workspace.
        # chat.space.v1.batchUpdated`
        # Corresponds to the JSON property `spaceBatchUpdatedEventData`
        # @return [Google::Apis::ChatV1::SpaceBatchUpdatedEventData]
        attr_accessor :space_batch_updated_event_data
      
        # Event payload for an updated space. Event type: `google.workspace.chat.space.
        # v1.updated`
        # Corresponds to the JSON property `spaceUpdatedEventData`
        # @return [Google::Apis::ChatV1::SpaceUpdatedEventData]
        attr_accessor :space_updated_event_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_time = args[:event_time] if args.key?(:event_time)
          @event_type = args[:event_type] if args.key?(:event_type)
          @membership_batch_created_event_data = args[:membership_batch_created_event_data] if args.key?(:membership_batch_created_event_data)
          @membership_batch_deleted_event_data = args[:membership_batch_deleted_event_data] if args.key?(:membership_batch_deleted_event_data)
          @membership_batch_updated_event_data = args[:membership_batch_updated_event_data] if args.key?(:membership_batch_updated_event_data)
          @membership_created_event_data = args[:membership_created_event_data] if args.key?(:membership_created_event_data)
          @membership_deleted_event_data = args[:membership_deleted_event_data] if args.key?(:membership_deleted_event_data)
          @membership_updated_event_data = args[:membership_updated_event_data] if args.key?(:membership_updated_event_data)
          @message_batch_created_event_data = args[:message_batch_created_event_data] if args.key?(:message_batch_created_event_data)
          @message_batch_deleted_event_data = args[:message_batch_deleted_event_data] if args.key?(:message_batch_deleted_event_data)
          @message_batch_updated_event_data = args[:message_batch_updated_event_data] if args.key?(:message_batch_updated_event_data)
          @message_created_event_data = args[:message_created_event_data] if args.key?(:message_created_event_data)
          @message_deleted_event_data = args[:message_deleted_event_data] if args.key?(:message_deleted_event_data)
          @message_updated_event_data = args[:message_updated_event_data] if args.key?(:message_updated_event_data)
          @name = args[:name] if args.key?(:name)
          @reaction_batch_created_event_data = args[:reaction_batch_created_event_data] if args.key?(:reaction_batch_created_event_data)
          @reaction_batch_deleted_event_data = args[:reaction_batch_deleted_event_data] if args.key?(:reaction_batch_deleted_event_data)
          @reaction_created_event_data = args[:reaction_created_event_data] if args.key?(:reaction_created_event_data)
          @reaction_deleted_event_data = args[:reaction_deleted_event_data] if args.key?(:reaction_deleted_event_data)
          @space_batch_updated_event_data = args[:space_batch_updated_event_data] if args.key?(:space_batch_updated_event_data)
          @space_updated_event_data = args[:space_updated_event_data] if args.key?(:space_updated_event_data)
        end
      end
      
      # The notification setting of a user in a space.
      class SpaceNotificationSetting
        include Google::Apis::Core::Hashable
      
        # The space notification mute setting.
        # Corresponds to the JSON property `muteSetting`
        # @return [String]
        attr_accessor :mute_setting
      
        # Identifier. The resource name of the space notification setting. Format: `
        # users/`user`/spaces/`space`/spaceNotificationSetting`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The notification setting.
        # Corresponds to the JSON property `notificationSetting`
        # @return [String]
        attr_accessor :notification_setting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mute_setting = args[:mute_setting] if args.key?(:mute_setting)
          @name = args[:name] if args.key?(:name)
          @notification_setting = args[:notification_setting] if args.key?(:notification_setting)
        end
      end
      
      # A user's read state within a space, used to identify read and unread messages.
      class SpaceReadState
        include Google::Apis::Core::Hashable
      
        # Optional. The time when the user's space read state was updated. Usually this
        # corresponds with either the timestamp of the last read message, or a timestamp
        # specified by the user to mark the last read position in a space.
        # Corresponds to the JSON property `lastReadTime`
        # @return [String]
        attr_accessor :last_read_time
      
        # Resource name of the space read state. Format: `users/`user`/spaces/`space`/
        # spaceReadState`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_read_time = args[:last_read_time] if args.key?(:last_read_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Event payload for an updated space. Event type: `google.workspace.chat.space.
      # v1.updated`
      class SpaceUpdatedEventData
        include Google::Apis::Core::Hashable
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # Input parameter for regular widgets. For single-valued widgets, it is a single
      # value list. For multi-valued widgets, such as checkbox, all the values are
      # presented.
      class StringInputs
        include Google::Apis::Core::Hashable
      
        # An list of strings entered by the user.
        # Corresponds to the JSON property `value`
        # @return [Array<String>]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A button with text and `onclick` action.
      class TextButton
        include Google::Apis::Core::Hashable
      
        # An `onclick` action (for example, open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::OnClick]
        attr_accessor :on_click
      
        # The text of the button.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A paragraph of text. Formatted text supported. For more information about
      # formatting text, see [Formatting text in Google Chat apps](https://developers.
      # google.com/workspace/chat/format-messages#card-formatting) and [Formatting
      # text in Google Workspace Add-ons](https://developers.google.com/apps-script/
      # add-ons/concepts/widgets#text_formatting).
      class TextParagraph
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A thread in a Google Chat space. For example usage, see [Start or reply to a
      # message thread](https://developers.google.com/workspace/chat/create-messages#
      # create-message-thread). If you specify a thread when creating a message, you
      # can set the [`messageReplyOption`](https://developers.google.com/workspace/
      # chat/api/reference/rest/v1/spaces.messages/create#messagereplyoption) field to
      # determine what happens if no matching thread is found.
      class Thread
        include Google::Apis::Core::Hashable
      
        # Identifier. Resource name of the thread. Example: `spaces/`space`/threads/`
        # thread``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Input for creating or updating a thread. Otherwise, output only. ID
        # for the thread. Supports up to 4000 characters. This ID is unique to the Chat
        # app that sets it. For example, if multiple Chat apps create a message using
        # the same thread key, the messages are posted in different threads. To reply in
        # a thread created by a person or another Chat app, specify the thread `name`
        # field instead.
        # Corresponds to the JSON property `threadKey`
        # @return [String]
        attr_accessor :thread_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
        end
      end
      
      # A user's read state within a thread, used to identify read and unread messages.
      class ThreadReadState
        include Google::Apis::Core::Hashable
      
        # The time when the user's thread read state was updated. Usually this
        # corresponds with the timestamp of the last read message in a thread.
        # Corresponds to the JSON property `lastReadTime`
        # @return [String]
        attr_accessor :last_read_time
      
        # Resource name of the thread read state. Format: `users/`user`/spaces/`space`/
        # threads/`thread`/threadReadState`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_read_time = args[:last_read_time] if args.key?(:last_read_time)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Time input values.
      class TimeInput
        include Google::Apis::Core::Hashable
      
        # The hour on a 24-hour clock.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # The number of minutes past the hour. Valid values are 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
        end
      end
      
      # The timezone ID and offset from Coordinated Universal Time (UTC). Only
      # supported for the event types [`CARD_CLICKED`](https://developers.google.com/
      # chat/api/reference/rest/v1/EventType#ENUM_VALUES.CARD_CLICKED) and [`
      # SUBMIT_DIALOG`](https://developers.google.com/chat/api/reference/rest/v1/
      # DialogEventType#ENUM_VALUES.SUBMIT_DIALOG).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # The [IANA TZ](https://www.iana.org/time-zones) time zone database code, such
        # as "America/Toronto".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The user timezone offset, in milliseconds, from Coordinated Universal Time (
        # UTC).
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @offset = args[:offset] if args.key?(:offset)
        end
      end
      
      # For `selectionInput` widgets, returns autocomplete suggestions for a
      # multiselect menu.
      class UpdatedWidget
        include Google::Apis::Core::Hashable
      
        # List of widget autocomplete results.
        # Corresponds to the JSON property `suggestions`
        # @return [Google::Apis::ChatV1::SelectionItems]
        attr_accessor :suggestions
      
        # The ID of the updated widget. The ID must match the one for the widget that
        # triggered the update request.
        # Corresponds to the JSON property `widget`
        # @return [String]
        attr_accessor :widget
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @suggestions = args[:suggestions] if args.key?(:suggestions)
          @widget = args[:widget] if args.key?(:widget)
        end
      end
      
      # Request to upload an attachment.
      class UploadAttachmentRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filename of the attachment, including the file extension.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filename = args[:filename] if args.key?(:filename)
        end
      end
      
      # Response of uploading an attachment.
      class UploadAttachmentResponse
        include Google::Apis::Core::Hashable
      
        # A reference to the attachment data.
        # Corresponds to the JSON property `attachmentDataRef`
        # @return [Google::Apis::ChatV1::AttachmentDataRef]
        attr_accessor :attachment_data_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_data_ref = args[:attachment_data_ref] if args.key?(:attachment_data_ref)
        end
      end
      
      # A user in Google Chat. When returned as an output from a request, if your Chat
      # app [authenticates as a user](https://developers.google.com/workspace/chat/
      # authenticate-authorize-chat-user), the output for a `User` resource only
      # populates the user's `name` and `type`.
      class User
        include Google::Apis::Core::Hashable
      
        # Output only. The user's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Unique identifier of the user's Google Workspace domain.
        # Corresponds to the JSON property `domainId`
        # @return [String]
        attr_accessor :domain_id
      
        # Output only. When `true`, the user is deleted or their profile is not visible.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        # Resource name for a Google Chat user. Format: `users/`user``. `users/app` can
        # be used as an alias for the calling app bot user. For human users, ``user`` is
        # the same user identifier as: - the `id` for the [Person](https://developers.
        # google.com/people/api/rest/v1/people) in the People API. For example, `users/
        # 123456789` in Chat API represents the same person as the `123456789` Person
        # profile ID in People API. - the `id` for a [user](https://developers.google.
        # com/admin-sdk/directory/reference/rest/v1/users) in the Admin SDK Directory
        # API. - the user's email address can be used as an alias for ``user`` in API
        # requests. For example, if the People API Person profile ID for `user@example.
        # com` is `123456789`, you can use `users/user@example.com` as an alias to
        # reference `users/123456789`. Only the canonical resource name (for example `
        # users/123456789`) will be returned from the API.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @domain_id = args[:domain_id] if args.key?(:domain_id)
          @is_anonymous = args[:is_anonymous] if args.key?(:is_anonymous)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Annotation metadata for user mentions (@).
      class UserMentionMetadata
        include Google::Apis::Core::Hashable
      
        # The type of user mention.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A user in Google Chat. When returned as an output from a request, if your Chat
        # app [authenticates as a user](https://developers.google.com/workspace/chat/
        # authenticate-authorize-chat-user), the output for a `User` resource only
        # populates the user's `name` and `type`.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # A widget is a UI element that presents text and images.
      class WidgetMarkup
        include Google::Apis::Core::Hashable
      
        # A list of buttons. Buttons is also `oneof data` and only one of these fields
        # should be set.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::ChatV1::Button>]
        attr_accessor :buttons
      
        # An image that's specified by a URL and can have an `onclick` action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::Image]
        attr_accessor :image
      
        # A UI element contains a key (label) and a value (content). This element can
        # also contain some actions such as `onclick` button.
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::ChatV1::KeyValue]
        attr_accessor :key_value
      
        # A paragraph of text. Formatted text supported. For more information about
        # formatting text, see [Formatting text in Google Chat apps](https://developers.
        # google.com/workspace/chat/format-messages#card-formatting) and [Formatting
        # text in Google Workspace Add-ons](https://developers.google.com/apps-script/
        # add-ons/concepts/widgets#text_formatting).
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::ChatV1::TextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buttons = args[:buttons] if args.key?(:buttons)
          @image = args[:image] if args.key?(:image)
          @key_value = args[:key_value] if args.key?(:key_value)
          @text_paragraph = args[:text_paragraph] if args.key?(:text_paragraph)
        end
      end
    end
  end
end
