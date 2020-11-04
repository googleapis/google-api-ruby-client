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
    module ChatV1
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze 1 day, snooze next
      # week. You might use action method = snooze(), passing the snooze type and
      # snooze time in the list of string parameters.
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
      
      # Parameters that a bot can use to configure how it's response is posted.
      class ActionResponse
        include Google::Apis::Core::Hashable
      
        # The type of bot response.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # URL for users to auth or config. (Only for REQUEST_CONFIG response types.)
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Annotations associated with the plain-text body of the message. Example plain-
      # text message body: ``` Hello @FooBot how are you!" ``` The corresponding
      # annotations metadata: ``` "annotations":[` "type":"USER_MENTION", "startIndex":
      # 6, "length":7, "userMention": ` "user": ` "name":"users/107946847022116401880",
      # "displayName":"FooBot", "avatarUrl":"https://goo.gl/aeDtrS", "type":"BOT" `, "
      # type":"MENTION" ` `] ```
      class Annotation
        include Google::Apis::Core::Hashable
      
        # Length of the substring in the plain-text message body this annotation
        # corresponds to.
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
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
          @length = args[:length] if args.key?(:length)
          @slash_command = args[:slash_command] if args.key?(:slash_command)
          @start_index = args[:start_index] if args.key?(:start_index)
          @type = args[:type] if args.key?(:type)
          @user_mention = args[:user_mention] if args.key?(:user_mention)
        end
      end
      
      # An attachment in Hangouts Chat.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # A reference to the data of an attachment.
        # Corresponds to the JSON property `attachmentDataRef`
        # @return [Google::Apis::ChatV1::AttachmentDataRef]
        attr_accessor :attachment_data_ref
      
        # The original file name for the content, not the full path.
        # Corresponds to the JSON property `contentName`
        # @return [String]
        attr_accessor :content_name
      
        # The content type (MIME type) of the file.
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # Output only. The download URL which should be used to allow a human user to
        # download the attachment. Bots should not use this URL to download attachment
        # content.
        # Corresponds to the JSON property `downloadUri`
        # @return [String]
        attr_accessor :download_uri
      
        # A reference to the data of a drive attachment.
        # Corresponds to the JSON property `driveDataRef`
        # @return [Google::Apis::ChatV1::DriveDataRef]
        attr_accessor :drive_data_ref
      
        # Resource name of the attachment, in the form "spaces/*/messages/*/attachments/*
        # ".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The source of the attachment.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Output only. The thumbnail URL which should be used to preview the attachment
        # to a human user. Bots should not use this URL to download attachment content.
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
      
      # A reference to the data of an attachment.
      class AttachmentDataRef
        include Google::Apis::Core::Hashable
      
        # The resource name of the attachment data. This is used with the media API to
        # download the attachment data.
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
      
      # A button. Can be a text button or an image button.
      class Button
        include Google::Apis::Core::Hashable
      
        # An image button with an onclick action.
        # Corresponds to the JSON property `imageButton`
        # @return [Google::Apis::ChatV1::ImageButton]
        attr_accessor :image_button
      
        # A button with text and onclick action.
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
      
      # A card is a UI element that can contain UI widgets such as texts, images.
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
      # browser.
      class CardAction
        include Google::Apis::Core::Hashable
      
        # The label used to be displayed in the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # An onclick action (e.g. open a link).
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
      
        # The image's type (e.g. square border or circular border).
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
        # and subtitle is specified, each will take up 1 line. If only the title is
        # specified, it will take up both lines.
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
      
      # Google Chat events.
      class DeprecatedEvent
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::FormAction]
        attr_accessor :action
      
        # The URL the bot should redirect the user to after they have completed an
        # authorization or configuration flow outside of Google Chat. See the [
        # Authorizing access to 3p services guide](/hangouts/chat/how-tos/auth-3p) for
        # more information.
        # Corresponds to the JSON property `configCompleteRedirectUrl`
        # @return [String]
        attr_accessor :config_complete_redirect_url
      
        # The timestamp indicating when the event was dispatched.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # A message in Hangouts Chat.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        # A room or DM in Hangouts Chat.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # The bot-defined key for the thread related to the event. See the thread_key
        # field of the `spaces.message.create` request for more information.
        # Corresponds to the JSON property `threadKey`
        # @return [String]
        attr_accessor :thread_key
      
        # A secret value that bots can use to verify if a request is from Google. The
        # token is randomly generated by Google, remains static, and can be obtained
        # from the Google Chat API configuration page in the Cloud Console. Developers
        # can revoke/regenerate it if needed from the same page.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # The type of the event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A user in Hangouts Chat.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @config_complete_redirect_url = args[:config_complete_redirect_url] if args.key?(:config_complete_redirect_url)
          @event_time = args[:event_time] if args.key?(:event_time)
          @message = args[:message] if args.key?(:message)
          @space = args[:space] if args.key?(:space)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # A reference to the data of a drive attachment.
      class DriveDataRef
        include Google::Apis::Core::Hashable
      
        # The id for the drive file, for use with the Drive API.
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
      
      # A form action describes the behavior when the form is submitted. For example,
      # an Apps Script can be invoked to handle the form.
      class FormAction
        include Google::Apis::Core::Hashable
      
        # The method name is used to identify which part of the form triggered the form
        # submission. This information is echoed back to the bot as part of the card
        # click event. The same method name can be used for several elements that
        # trigger a common behavior if desired.
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
      
      # An image that is specified by a URL and can have an onclick action.
      class Image
        include Google::Apis::Core::Hashable
      
        # The aspect ratio of this image (width/height). This field allows clients to
        # reserve the right height for the image while waiting for it to load. It's not
        # meant to override the native aspect ratio of the image. If unset, the server
        # fills it by prefetching the image.
        # Corresponds to the JSON property `aspectRatio`
        # @return [Float]
        attr_accessor :aspect_ratio
      
        # The URL of the image.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # An onclick action (e.g. open a link).
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
      
      # An image button with an onclick action.
      class ImageButton
        include Google::Apis::Core::Hashable
      
        # The icon specified by an enum that indices to an icon provided by Chat API.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The name of this image_button which will be used for accessibility. Default
        # value will be provided if developers don't specify.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An onclick action (e.g. open a link).
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
      
      # A UI element contains a key (label) and a value (content). And this element
      # may also contain some actions such as onclick button.
      class KeyValue
        include Google::Apis::Core::Hashable
      
        # The text of the bottom label. Formatted text supported.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A button. Can be a text button or an image button.
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::ChatV1::Button]
        attr_accessor :button
      
        # The text of the content. Formatted text supported and always required.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # If the content should be multiline.
        # Corresponds to the JSON property `contentMultiline`
        # @return [Boolean]
        attr_accessor :content_multiline
        alias_method :content_multiline?, :content_multiline
      
        # An enum value that will be replaced by the Chat API with the corresponding
        # icon image.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # An onclick action (e.g. open a link).
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::OnClick]
        attr_accessor :on_click
      
        # The text of the top label. Formatted text supported.
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
      
      # 
      class ListMembershipsResponse
        include Google::Apis::Core::Hashable
      
        # List of memberships in the requested (or first) page.
        # Corresponds to the JSON property `memberships`
        # @return [Array<Google::Apis::ChatV1::Membership>]
        attr_accessor :memberships
      
        # Continuation token to retrieve the next page of results. It will be empty for
        # the last page of results.
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
      
      # 
      class ListSpacesResponse
        include Google::Apis::Core::Hashable
      
        # Continuation token to retrieve the next page of results. It will be empty for
        # the last page of results. Tokens expire in an hour. An error is thrown if an
        # expired token is passed.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of spaces in the requested (or first) page.
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
      
      # Represents a membership relation in Hangouts Chat.
      class Membership
        include Google::Apis::Core::Hashable
      
        # The creation time of the membership a.k.a the time at which the member joined
        # the space, if applicable.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A user in Hangouts Chat.
        # Corresponds to the JSON property `member`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :member
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # State of the membership.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @member = args[:member] if args.key?(:member)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A message in Hangouts Chat.
      class Message
        include Google::Apis::Core::Hashable
      
        # Parameters that a bot can use to configure how it's response is posted.
        # Corresponds to the JSON property `actionResponse`
        # @return [Google::Apis::ChatV1::ActionResponse]
        attr_accessor :action_response
      
        # Output only. Annotations associated with the text in this message.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ChatV1::Annotation>]
        attr_accessor :annotations
      
        # Plain-text body of the message with all bot mentions stripped out.
        # Corresponds to the JSON property `argumentText`
        # @return [String]
        attr_accessor :argument_text
      
        # User uploaded attachment.
        # Corresponds to the JSON property `attachment`
        # @return [Array<Google::Apis::ChatV1::Attachment>]
        attr_accessor :attachment
      
        # Rich, formatted and interactive cards that can be used to display UI elements
        # such as: formatted texts, buttons, clickable images. Cards are normally
        # displayed below the plain-text body of the message.
        # Corresponds to the JSON property `cards`
        # @return [Array<Google::Apis::ChatV1::Card>]
        attr_accessor :cards
      
        # Output only. The time at which the message was created in Hangouts Chat server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A plain-text description of the message's cards, used when the actual cards
        # cannot be displayed (e.g. mobile notifications).
        # Corresponds to the JSON property `fallbackText`
        # @return [String]
        attr_accessor :fallback_text
      
        # Resource name, in the form "spaces/*/messages/*". Example: spaces/AAAAMpdlehY/
        # messages/UMxbHmzDlr4.UMxbHmzDlr4
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Text for generating preview chips. This text will not be displayed to the user,
        # but any links to images, web pages, videos, etc. included here will generate
        # preview chips.
        # Corresponds to the JSON property `previewText`
        # @return [String]
        attr_accessor :preview_text
      
        # A user in Hangouts Chat.
        # Corresponds to the JSON property `sender`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :sender
      
        # A Slash Command in Hangouts Chat.
        # Corresponds to the JSON property `slashCommand`
        # @return [Google::Apis::ChatV1::SlashCommand]
        attr_accessor :slash_command
      
        # A room or DM in Hangouts Chat.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # Plain-text body of the message.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A thread in Hangouts Chat.
        # Corresponds to the JSON property `thread`
        # @return [Google::Apis::ChatV1::Thread]
        attr_accessor :thread
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action_response = args[:action_response] if args.key?(:action_response)
          @annotations = args[:annotations] if args.key?(:annotations)
          @argument_text = args[:argument_text] if args.key?(:argument_text)
          @attachment = args[:attachment] if args.key?(:attachment)
          @cards = args[:cards] if args.key?(:cards)
          @create_time = args[:create_time] if args.key?(:create_time)
          @fallback_text = args[:fallback_text] if args.key?(:fallback_text)
          @name = args[:name] if args.key?(:name)
          @preview_text = args[:preview_text] if args.key?(:preview_text)
          @sender = args[:sender] if args.key?(:sender)
          @slash_command = args[:slash_command] if args.key?(:slash_command)
          @space = args[:space] if args.key?(:space)
          @text = args[:text] if args.key?(:text)
          @thread = args[:thread] if args.key?(:thread)
        end
      end
      
      # An onclick action (e.g. open a link).
      class OnClick
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
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
      
      # A section contains a collection of widgets that are rendered (vertically) in
      # the order that they are specified. Across all platforms, cards have a narrow
      # fixed width, so there is currently no need for layout properties (e.g. float).
      class Section
        include Google::Apis::Core::Hashable
      
        # The header of the section, text formatted supported.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # A section must contain at least 1 widget.
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
      
      # A Slash Command in Hangouts Chat.
      class SlashCommand
        include Google::Apis::Core::Hashable
      
        # The id of the slash command invoked.
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
      
        # A user in Hangouts Chat.
        # Corresponds to the JSON property `bot`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :bot
      
        # The command id of the invoked slash command.
        # Corresponds to the JSON property `commandId`
        # @return [Fixnum]
        attr_accessor :command_id
      
        # The name of the invoked slash command.
        # Corresponds to the JSON property `commandName`
        # @return [String]
        attr_accessor :command_name
      
        # Indicating whether the slash command is for a dialog.
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
      
      # A room or DM in Hangouts Chat.
      class Space
        include Google::Apis::Core::Hashable
      
        # Output only. The display name (only if the space is a room). Please note that
        # this field might not be populated in direct messages between humans.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the space, in the form "spaces/*". Example: spaces/
        # AAAAMpdlehYs
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether the space is a DM between a bot and a single human.
        # Corresponds to the JSON property `singleUserBotDm`
        # @return [Boolean]
        attr_accessor :single_user_bot_dm
        alias_method :single_user_bot_dm?, :single_user_bot_dm
      
        # Whether the messages are threaded in this space.
        # Corresponds to the JSON property `threaded`
        # @return [Boolean]
        attr_accessor :threaded
        alias_method :threaded?, :threaded
      
        # Output only. The type of a space. This is deprecated. Use `single_user_bot_dm`
        # instead.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @single_user_bot_dm = args[:single_user_bot_dm] if args.key?(:single_user_bot_dm)
          @threaded = args[:threaded] if args.key?(:threaded)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A button with text and onclick action.
      class TextButton
        include Google::Apis::Core::Hashable
      
        # An onclick action (e.g. open a link).
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
      
      # A paragraph of text. Formatted text supported.
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
      
      # A thread in Hangouts Chat.
      class Thread
        include Google::Apis::Core::Hashable
      
        # Resource name, in the form "spaces/*/threads/*". Example: spaces/AAAAMpdlehY/
        # threads/UMxbHmzDlr4
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
      
      # A user in Hangouts Chat.
      class User
        include Google::Apis::Core::Hashable
      
        # The user's display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Obfuscated domain information.
        # Corresponds to the JSON property `domainId`
        # @return [String]
        attr_accessor :domain_id
      
        # True when the user is deleted or the user's proifle is not visible.
        # Corresponds to the JSON property `isAnonymous`
        # @return [Boolean]
        attr_accessor :is_anonymous
        alias_method :is_anonymous?, :is_anonymous
      
        # Resource name, in the format "users/*".
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
      
        # A user in Hangouts Chat.
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
      
      # A widget is a UI element that presents texts, images, etc.
      class WidgetMarkup
        include Google::Apis::Core::Hashable
      
        # A list of buttons. Buttons is also oneof data and only one of these fields
        # should be set.
        # Corresponds to the JSON property `buttons`
        # @return [Array<Google::Apis::ChatV1::Button>]
        attr_accessor :buttons
      
        # An image that is specified by a URL and can have an onclick action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::Image]
        attr_accessor :image
      
        # A UI element contains a key (label) and a value (content). And this element
        # may also contain some actions such as onclick button.
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::ChatV1::KeyValue]
        attr_accessor :key_value
      
        # A paragraph of text. Formatted text supported.
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
