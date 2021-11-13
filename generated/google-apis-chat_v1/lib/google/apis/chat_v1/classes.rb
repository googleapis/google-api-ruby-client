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
      
        # Contains dialog if present as well as the ActionStatus for the request sent
        # from user.
        # Corresponds to the JSON property `dialogAction`
        # @return [Google::Apis::ChatV1::DialogAction]
        attr_accessor :dialog_action
      
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
          @dialog_action = args[:dialog_action] if args.key?(:dialog_action)
          @type = args[:type] if args.key?(:type)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # ActionStatus represents status of a request from the bot developer's side. In
      # specific, for each request a bot gets, the bot developer will set both fields
      # below in relation to what the response status and message related to status
      # should be.
      class ActionStatus
        include Google::Apis::Core::Hashable
      
        # The status code.
        # Corresponds to the JSON property `statusCode`
        # @return [String]
        attr_accessor :status_code
      
        # This message will be the corresponding string to the above status_code. If
        # unset, an appropriate generic message based on the status_code will be shown
        # to the user. If this field is set then the message will be surfaced to the
        # user for both successes and errors.
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
      
      # An attachment in Google Chat.
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
      
      # Represents a color in the RGBA color space. This representation is designed
      # for simplicity of conversion to/from color representations in various
      # languages over compactness. For example, the fields of this representation can
      # be trivially provided to the constructor of `java.awt.Color` in Java; it can
      # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
      # method in iOS; and, with just a little work, it can be easily formatted into a
      # CSS `rgba()` string in JavaScript. This reference page doesn't carry
      # information about the absolute color space that should be used to interpret
      # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
      # applications should assume the sRGB color space. When color equality needs to
      # be decided, implementations, unless documented otherwise, treat two colors as
      # equal if all their red, green, blue, and alpha values each differ by at most
      # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
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
      
      # Next available ID = 8
      class CommonEventObject
        include Google::Apis::Core::Hashable
      
        # The keys are the string IDs associated with the widget and the values are
        # inputs with a widget in the card.
        # Corresponds to the JSON property `formInputs`
        # @return [Hash<String,Google::Apis::ChatV1::Inputs>]
        attr_accessor :form_inputs
      
        # The hostApp enum which indicates the app the add-on is invoked from
        # Corresponds to the JSON property `hostApp`
        # @return [String]
        attr_accessor :host_app
      
        # Name of the invoked function associated with the widget. This field is
        # currently only set for chat.
        # Corresponds to the JSON property `invokedFunction`
        # @return [String]
        attr_accessor :invoked_function
      
        # Any additional parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # The platform enum which indicates the platform where the add-on is running.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The timezone id and offset. The id is the tz database time zones such as "
        # America/Toronto". The user timezone offset, in milliseconds, from Coordinated
        # Universal Time (UTC).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::ChatV1::TimeZone]
        attr_accessor :time_zone
      
        # The full locale.displayName in the format of [ISO 639 language code]-[ISO 3166
        # country/region code] such as "en-US"
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
      
      # Input Parameter for Date Picker widget.
      class DateInput
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # Input Parameter for Date and Time Picker widget.
      class DateTimeInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `hasDate`
        # @return [Boolean]
        attr_accessor :has_date
        alias_method :has_date?, :has_date
      
        # 
        # Corresponds to the JSON property `hasTime`
        # @return [Boolean]
        attr_accessor :has_time
        alias_method :has_time?, :has_time
      
        # 
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
      
      # Google Chat events.
      class DeprecatedEvent
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::FormAction]
        attr_accessor :action
      
        # Next available ID = 8
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::ChatV1::CommonEventObject]
        attr_accessor :common
      
        # The URL the bot should redirect the user to after they have completed an
        # authorization or configuration flow outside of Google Chat. See the [
        # Authorizing access to 3p services guide](/chat/how-tos/auth-3p) for more
        # information.
        # Corresponds to the JSON property `configCompleteRedirectUrl`
        # @return [String]
        attr_accessor :config_complete_redirect_url
      
        # The type of dialog event we have received.
        # Corresponds to the JSON property `dialogEventType`
        # @return [String]
        attr_accessor :dialog_event_type
      
        # The timestamp indicating when the event occurred.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # Whether or not this event is related to dialogs request, submit or cancel.
        # This will be set to true when we want a request/submit/cancel event.
        # Corresponds to the JSON property `isDialogEvent`
        # @return [Boolean]
        attr_accessor :is_dialog_event
        alias_method :is_dialog_event?, :is_dialog_event
      
        # A message in Google Chat.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat bot.
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
      
        # A user in Google Chat.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @common = args[:common] if args.key?(:common)
          @config_complete_redirect_url = args[:config_complete_redirect_url] if args.key?(:config_complete_redirect_url)
          @dialog_event_type = args[:dialog_event_type] if args.key?(:dialog_event_type)
          @event_time = args[:event_time] if args.key?(:event_time)
          @is_dialog_event = args[:is_dialog_event] if args.key?(:is_dialog_event)
          @message = args[:message] if args.key?(:message)
          @space = args[:space] if args.key?(:space)
          @thread_key = args[:thread_key] if args.key?(:thread_key)
          @token = args[:token] if args.key?(:token)
          @type = args[:type] if args.key?(:type)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Wrapper around the card body of the dialog.
      class Dialog
        include Google::Apis::Core::Hashable
      
        # A card is a UI element that can contain UI widgets such as text and images.
        # For more information, see Cards . For example, the following JSON creates a
        # card that has a header with the name, position, icons, and link for a contact,
        # followed by a section with contact information like email and phone number. ```
        # ` "header": ` "title": "Heba Salam", "subtitle": "Software Engineer", "
        # imageStyle": "ImageStyle.AVATAR", "imageUrl": "https://example.com/heba_salam.
        # png", "imageAltText": "Avatar for Heba Salam" `, "sections" : [ ` "header": "
        # Contact Info", "widgets": [ ` "decorated_text": ` "icon": ` "knownIcon": "
        # EMAIL" `, "content": "heba.salam@example.com" ` `, ` "decoratedText": ` "icon":
        # ` "knownIcon": "PERSON" `, "content": "Online" ` `, ` "decoratedText": ` "
        # icon": ` "knownIcon": "PHONE" `, "content": "+1 (555) 555-1234" ` `, ` "
        # buttons": [ ` "textButton": ` "text": "Share", `, "onClick": ` "openLink": ` "
        # url": "https://example.com/share" ` ` `, ` "textButton": ` "text": "Edit", `, "
        # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "EDIT" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` ` `
        # ] ` ], "collapsible": true, "uncollapsibleWidgetsCount": 3 ` ], "cardActions":
        # [ ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https://
        # example.com/feedback" ` ` ` ], "name": "contact-card-K3wB6arF2H9L" ` ```
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
      
      # Contains dialog if present as well as the ActionStatus for the request sent
      # from user.
      class DialogAction
        include Google::Apis::Core::Hashable
      
        # ActionStatus represents status of a request from the bot developer's side. In
        # specific, for each request a bot gets, the bot developer will set both fields
        # below in relation to what the response status and message related to status
        # should be.
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
      
      # An action that describes the behavior when the form is submitted. For example,
      # an Apps Script can be invoked to handle the form.
      class GoogleAppsCardV1Action
        include Google::Apis::Core::Hashable
      
        # Apps Script function to invoke when the containing element is clicked/
        # activated.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # 
        # Corresponds to the JSON property `loadIndicator`
        # @return [String]
        attr_accessor :load_indicator
      
        # List of action parameters.
        # Corresponds to the JSON property `parameters`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1ActionParameter>]
        attr_accessor :parameters
      
        # Indicates whether form values persist after the action. The default value is `
        # false`. If `true`, form values remain after the action is triggered. When
        # using [LoadIndicator.NONE](workspace/add-ons/reference/rpc/google.apps.card.v1#
        # loadindicator) for actions, `persist_values` = `true`is recommended, as it
        # ensures that any changes made by the user after form or on change actions are
        # sent to the server are not overwritten by the response. If `false`, the form
        # values are cleared when the action is triggered. When `persist_values` is set
        # to `false`, it is strongly recommended that the card use [LoadIndicator.
        # SPINNER](workspace/add-ons/reference/rpc/google.apps.card.v1#loadindicator)
        # for all actions, as this locks the UI to ensure no changes are made by the
        # user while the action is being processed.
        # Corresponds to the JSON property `persistValues`
        # @return [Boolean]
        attr_accessor :persist_values
        alias_method :persist_values?, :persist_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @function = args[:function] if args.key?(:function)
          @load_indicator = args[:load_indicator] if args.key?(:load_indicator)
          @parameters = args[:parameters] if args.key?(:parameters)
          @persist_values = args[:persist_values] if args.key?(:persist_values)
        end
      end
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze 1 day, snooze next
      # week. You might use action method = snooze(), passing the snooze type and
      # snooze time in the list of string parameters.
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
      
      # Represents the complete border style applied to widgets.
      class GoogleAppsCardV1BorderStyle
        include Google::Apis::Core::Hashable
      
        # The corner radius for the border.
        # Corresponds to the JSON property `cornerRadius`
        # @return [Fixnum]
        attr_accessor :corner_radius
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
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
      
      # A button. Can be a text button or an image button.
      class GoogleAppsCardV1Button
        include Google::Apis::Core::Hashable
      
        # The alternative text used for accessibility. Has no effect when an icon is set;
        # use `icon.alt_text` instead.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents a color in the RGBA color space. This representation is designed
        # for simplicity of conversion to/from color representations in various
        # languages over compactness. For example, the fields of this representation can
        # be trivially provided to the constructor of `java.awt.Color` in Java; it can
        # also be trivially provided to UIColor's `+colorWithRed:green:blue:alpha`
        # method in iOS; and, with just a little work, it can be easily formatted into a
        # CSS `rgba()` string in JavaScript. This reference page doesn't carry
        # information about the absolute color space that should be used to interpret
        # the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
        # applications should assume the sRGB color space. When color equality needs to
        # be decided, implementations, unless documented otherwise, treat two colors as
        # equal if all their red, green, blue, and alpha values each differ by at most
        # 1e-5. Example (Java): import com.google.type.Color; // ... public static java.
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
      
        # If true, the button is displayed in a disabled state and doesn't respond to
        # user actions.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # The icon image.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # The action to perform when the button is clicked.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
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
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @color = args[:color] if args.key?(:color)
          @disabled = args[:disabled] if args.key?(:disabled)
          @icon = args[:icon] if args.key?(:icon)
          @on_click = args[:on_click] if args.key?(:on_click)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A list of buttons layed out horizontally.
      class GoogleAppsCardV1ButtonList
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # A card is a UI element that can contain UI widgets such as text and images.
      # For more information, see Cards . For example, the following JSON creates a
      # card that has a header with the name, position, icons, and link for a contact,
      # followed by a section with contact information like email and phone number. ```
      # ` "header": ` "title": "Heba Salam", "subtitle": "Software Engineer", "
      # imageStyle": "ImageStyle.AVATAR", "imageUrl": "https://example.com/heba_salam.
      # png", "imageAltText": "Avatar for Heba Salam" `, "sections" : [ ` "header": "
      # Contact Info", "widgets": [ ` "decorated_text": ` "icon": ` "knownIcon": "
      # EMAIL" `, "content": "heba.salam@example.com" ` `, ` "decoratedText": ` "icon":
      # ` "knownIcon": "PERSON" `, "content": "Online" ` `, ` "decoratedText": ` "
      # icon": ` "knownIcon": "PHONE" `, "content": "+1 (555) 555-1234" ` `, ` "
      # buttons": [ ` "textButton": ` "text": "Share", `, "onClick": ` "openLink": ` "
      # url": "https://example.com/share" ` ` `, ` "textButton": ` "text": "Edit", `, "
      # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
      # viewType", "value": "EDIT" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` ` `
      # ] ` ], "collapsible": true, "uncollapsibleWidgetsCount": 3 ` ], "cardActions":
      # [ ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https://
      # example.com/feedback" ` ` ` ], "name": "contact-card-K3wB6arF2H9L" ` ```
      class GoogleAppsCardV1Card
        include Google::Apis::Core::Hashable
      
        # The actions of this card. They are added to a card's generated toolbar menu.
        # For example, the following JSON constructs a card action menu with Settings
        # and Send Feedback options: ``` "card_actions": [ ` "actionLabel": "Setting", "
        # onClick": ` "action": ` "functionName": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "SETTING" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` `
        # `, ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https:
        # //example.com/feedback" ` ` ` ] ```
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1CardAction>]
        attr_accessor :card_actions
      
        # The display style for peekCardHeader.
        # Corresponds to the JSON property `displayStyle`
        # @return [String]
        attr_accessor :display_style
      
        # A persistent (sticky) footer that is added to the bottom of the card.
        # Corresponds to the JSON property `fixedFooter`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter]
        attr_accessor :fixed_footer
      
        # The header of the card. A header usually contains a title and an image.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardHeader]
        attr_accessor :header
      
        # Name of the card, which is used as a identifier for the card in card
        # navigation.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # When displaying contextual content, the peek card header acts as a placeholder
        # so that the user can navigate forward between the homepage cards and the
        # contextual cards.
        # Corresponds to the JSON property `peekCardHeader`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardHeader]
        attr_accessor :peek_card_header
      
        # Sections are separated by a line divider.
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
          @sections = args[:sections] if args.key?(:sections)
        end
      end
      
      # A card action is the action associated with the card. For example, an invoice
      # card might include actions such as delete invoice, email invoice, or open the
      # invoice in a browser.
      class GoogleAppsCardV1CardAction
        include Google::Apis::Core::Hashable
      
        # The label that displays as the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # The onclick action for this action item.
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
      
      # A persistent (sticky) footer that is added to the bottom of the card.
      class GoogleAppsCardV1CardFixedFooter
        include Google::Apis::Core::Hashable
      
        # A button. Can be a text button or an image button.
        # Corresponds to the JSON property `primaryButton`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :primary_button
      
        # A button. Can be a text button or an image button.
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
      
      # 
      class GoogleAppsCardV1CardHeader
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image which is used for accessibility.
        # Corresponds to the JSON property `imageAltText`
        # @return [String]
        attr_accessor :image_alt_text
      
        # The image's type.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The URL of the image in the card header.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # The subtitle of the card header.
        # Corresponds to the JSON property `subtitle`
        # @return [String]
        attr_accessor :subtitle
      
        # The title of the card header. The title must be specified. The header has a
        # fixed height: if both a title and subtitle are specified, each takes up one
        # line. If only the title is specified, it takes up both lines.
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
      
      # The widget that lets users to specify a date and time.
      class GoogleAppsCardV1DateTimePicker
        include Google::Apis::Core::Hashable
      
        # The label for the field that displays to the user.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text input that's used in formInput, and uniquely identifies
        # this input.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # The number representing the time zone offset from UTC, in minutes. If set, the
        # `value_ms_epoch` is displayed in the specified time zone. If not set, it uses
        # the user's time zone setting on the client side.
        # Corresponds to the JSON property `timezoneOffsetDate`
        # @return [Fixnum]
        attr_accessor :timezone_offset_date
      
        # The type of the date/time picker.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value to display as the default value before user input or previous user
        # input. It is represented in milliseconds (Epoch time). For `DATE_AND_TIME`
        # type, the full epoch value is used. For `DATE_ONLY` type, only date of the
        # epoch time is used. For `TIME_ONLY` type, only time of the epoch time is used.
        # For example, you can set epoch time to `3 * 60 * 60 * 1000` to represent 3am.
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
      # below the text, an icon in front of the text, a selection widget or a button
      # after the text.
      class GoogleAppsCardV1DecoratedText
        include Google::Apis::Core::Hashable
      
        # The formatted text label that shows below the main text.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A button. Can be a text button or an image button.
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :button
      
        # An icon displayed after the text.
        # Corresponds to the JSON property `endIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :end_icon
      
        # Deprecated in favor of start_icon.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # Only the top and bottom label and content region are clickable.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # The icon displayed in front of the text.
        # Corresponds to the JSON property `startIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :start_icon
      
        # A switch widget can be clicked to change its state or trigger an action.
        # Corresponds to the JSON property `switchControl`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl]
        attr_accessor :switch_control
      
        # Required. The main widget formatted text. See Text formatting for details.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The formatted text label that shows above the main text.
        # Corresponds to the JSON property `topLabel`
        # @return [String]
        attr_accessor :top_label
      
        # The wrap text setting. If `true`, the text is wrapped and displayed in
        # multiline. Otherwise, the text is truncated.
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
      
      # A divider that appears in between widgets.
      class GoogleAppsCardV1Divider
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents a Grid widget that displays items in a configurable grid layout.
      class GoogleAppsCardV1Grid
        include Google::Apis::Core::Hashable
      
        # Represents the complete border style applied to widgets.
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
      
        # This callback is reused by each individual grid item, but with the item's
        # identifier and index in the items list added to the callback's parameters.
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
      
      # Represents a single item in the grid layout.
      class GoogleAppsCardV1GridItem
        include Google::Apis::Core::Hashable
      
        # A user-specified identifier for this grid item. This identifier is returned in
        # the parent Grid's onClick callback parameters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The image that displays in the grid item.
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
      
        # The horizontal alignment of the grid item's text.
        # Corresponds to the JSON property `textAlignment`
        # @return [String]
        attr_accessor :text_alignment
      
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
          @text_alignment = args[:text_alignment] if args.key?(:text_alignment)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # 
      class GoogleAppsCardV1Icon
        include Google::Apis::Core::Hashable
      
        # The description of the icon, used for accessibility. The default value is
        # provided if you don't specify one.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # The icon specified by a URL.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The crop style applied to the image. In some cases, applying a `CIRCLE` crop
        # causes the image to be drawn larger than a standard icon.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # The icon specified by the string name of a list of known icons
        # Corresponds to the JSON property `knownIcon`
        # @return [String]
        attr_accessor :known_icon
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alt_text = args[:alt_text] if args.key?(:alt_text)
          @icon_url = args[:icon_url] if args.key?(:icon_url)
          @image_type = args[:image_type] if args.key?(:image_type)
          @known_icon = args[:known_icon] if args.key?(:known_icon)
        end
      end
      
      # An image that is specified by a URL and can have an onClick action.
      class GoogleAppsCardV1Image
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image, used for accessibility.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # An image URL.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # 
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
      
      # 
      class GoogleAppsCardV1ImageComponent
        include Google::Apis::Core::Hashable
      
        # The accessibility label for the image.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents the complete border style applied to widgets.
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle]
        attr_accessor :border_style
      
        # Represents the crop style applied to an image.
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
      
      # Represents the crop style applied to an image.
      class GoogleAppsCardV1ImageCropStyle
        include Google::Apis::Core::Hashable
      
        # The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`.
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
      
      # 
      class GoogleAppsCardV1OnClick
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :action
      
        # A card is a UI element that can contain UI widgets such as text and images.
        # For more information, see Cards . For example, the following JSON creates a
        # card that has a header with the name, position, icons, and link for a contact,
        # followed by a section with contact information like email and phone number. ```
        # ` "header": ` "title": "Heba Salam", "subtitle": "Software Engineer", "
        # imageStyle": "ImageStyle.AVATAR", "imageUrl": "https://example.com/heba_salam.
        # png", "imageAltText": "Avatar for Heba Salam" `, "sections" : [ ` "header": "
        # Contact Info", "widgets": [ ` "decorated_text": ` "icon": ` "knownIcon": "
        # EMAIL" `, "content": "heba.salam@example.com" ` `, ` "decoratedText": ` "icon":
        # ` "knownIcon": "PERSON" `, "content": "Online" ` `, ` "decoratedText": ` "
        # icon": ` "knownIcon": "PHONE" `, "content": "+1 (555) 555-1234" ` `, ` "
        # buttons": [ ` "textButton": ` "text": "Share", `, "onClick": ` "openLink": ` "
        # url": "https://example.com/share" ` ` `, ` "textButton": ` "text": "Edit", `, "
        # onClick": ` "action": ` "function": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "EDIT" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` ` `
        # ] ` ], "collapsible": true, "uncollapsibleWidgetsCount": 3 ` ], "cardActions":
        # [ ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https://
        # example.com/feedback" ` ` ` ], "name": "contact-card-K3wB6arF2H9L" ` ```
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Card]
        attr_accessor :card
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `openDynamicLinkAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :open_dynamic_link_action
      
        # If specified, this onClick triggers an open link action.
        # Corresponds to the JSON property `openLink`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OpenLink]
        attr_accessor :open_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @card = args[:card] if args.key?(:card)
          @open_dynamic_link_action = args[:open_dynamic_link_action] if args.key?(:open_dynamic_link_action)
          @open_link = args[:open_link] if args.key?(:open_link)
        end
      end
      
      # 
      class GoogleAppsCardV1OpenLink
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `onClose`
        # @return [String]
        attr_accessor :on_close
      
        # 
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
      
      # A section contains a collection of widgets that are rendered vertically in the
      # order that they are specified. Across all platforms, cards have a narrow fixed
      # width, so there is currently no need for layout properties, for example, float.
      class GoogleAppsCardV1Section
        include Google::Apis::Core::Hashable
      
        # Indicates whether this section is collapsible. If a section is collapsible,
        # the description must be given.
        # Corresponds to the JSON property `collapsible`
        # @return [Boolean]
        attr_accessor :collapsible
        alias_method :collapsible?, :collapsible
      
        # The header of the section. Formatted text is supported.
        # Corresponds to the JSON property `header`
        # @return [String]
        attr_accessor :header
      
        # The number of uncollapsible widgets. For example, when a section contains five
        # widgets and the `numUncollapsibleWidget` is set to `2`, the first two widgets
        # are always shown and the last three are collapsed as default. The `
        # numUncollapsibleWidget` is taken into account only when collapsible is set to `
        # true`.
        # Corresponds to the JSON property `uncollapsibleWidgetsCount`
        # @return [Fixnum]
        attr_accessor :uncollapsible_widgets_count
      
        # A section must contain at least 1 widget.
        # Corresponds to the JSON property `widgets`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1Widget>]
        attr_accessor :widgets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapsible = args[:collapsible] if args.key?(:collapsible)
          @header = args[:header] if args.key?(:header)
          @uncollapsible_widgets_count = args[:uncollapsible_widgets_count] if args.key?(:uncollapsible_widgets_count)
          @widgets = args[:widgets] if args.key?(:widgets)
        end
      end
      
      # A widget that creates a UI item (for example, a drop-down list) with options
      # for users to select.
      class GoogleAppsCardV1SelectionInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1SelectionItem>]
        attr_accessor :items
      
        # The label displayed ahead of the switch control.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text input which is used in formInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @label = args[:label] if args.key?(:label)
          @name = args[:name] if args.key?(:name)
          @on_change_action = args[:on_change_action] if args.key?(:on_change_action)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The item in the switch control. A radio button, at most one of the items is
      # selected.
      class GoogleAppsCardV1SelectionItem
        include Google::Apis::Core::Hashable
      
        # If more than one item is selected for `RADIO_BUTTON` and `DROPDOWN`, the first
        # selected item is treated as selected and the ones after are ignored.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The text to be displayed.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The value associated with this item. The client should use this as a form
        # input value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selected = args[:selected] if args.key?(:selected)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A suggestion item. Only supports text for now.
      class GoogleAppsCardV1SuggestionItem
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
      
      # A container wrapping elements necessary for showing suggestion items used in
      # text input autocomplete.
      class GoogleAppsCardV1Suggestions
        include Google::Apis::Core::Hashable
      
        # A list of suggestions items which will be used in are used in autocomplete.
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
      
      # 
      class GoogleAppsCardV1SwitchControl
        include Google::Apis::Core::Hashable
      
        # The control type, either switch or checkbox.
        # Corresponds to the JSON property `controlType`
        # @return [String]
        attr_accessor :control_type
      
        # The name of the switch widget that's used in formInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # If the switch is selected.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The value is what is passed back in the callback.
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
      
      # A text input is a UI item where users can input text. A text input can also
      # have an onChange action and suggestions.
      class GoogleAppsCardV1TextInput
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `autoCompleteAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :auto_complete_action
      
        # The hint text.
        # Corresponds to the JSON property `hintText`
        # @return [String]
        attr_accessor :hint_text
      
        # A container wrapping elements necessary for showing suggestion items used in
        # text input autocomplete.
        # Corresponds to the JSON property `initialSuggestions`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Suggestions]
        attr_accessor :initial_suggestions
      
        # At least one of label and hintText must be specified.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name of the text input which is used in formInput.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # The style of the text, for example, a single line or multiple lines.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The default value when there is no input from the user.
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
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A paragraph of text that supports formatting. See [Text formatting](workspace/
      # add-ons/concepts/widgets#text_formatting") for details.
      class GoogleAppsCardV1TextParagraph
        include Google::Apis::Core::Hashable
      
        # The text that's shown in the widget.
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
      
      # A widget is a UI element that presents texts, images, etc.
      class GoogleAppsCardV1Widget
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally.
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ButtonList]
        attr_accessor :button_list
      
        # The widget that lets users to specify a date and time.
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker]
        attr_accessor :date_time_picker
      
        # A widget that displays text with optional decorations such as a label above or
        # below the text, an icon in front of the text, a selection widget or a button
        # after the text.
        # Corresponds to the JSON property `decoratedText`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText]
        attr_accessor :decorated_text
      
        # A divider that appears in between widgets.
        # Corresponds to the JSON property `divider`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Divider]
        attr_accessor :divider
      
        # Represents a Grid widget that displays items in a configurable grid layout.
        # Corresponds to the JSON property `grid`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Grid]
        attr_accessor :grid
      
        # The horizontal alignment of this widget.
        # Corresponds to the JSON property `horizontalAlignment`
        # @return [String]
        attr_accessor :horizontal_alignment
      
        # An image that is specified by a URL and can have an onClick action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Image]
        attr_accessor :image
      
        # A widget that creates a UI item (for example, a drop-down list) with options
        # for users to select.
        # Corresponds to the JSON property `selectionInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput]
        attr_accessor :selection_input
      
        # A text input is a UI item where users can input text. A text input can also
        # have an onChange action and suggestions.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextInput]
        attr_accessor :text_input
      
        # A paragraph of text that supports formatting. See [Text formatting](workspace/
        # add-ons/concepts/widgets#text_formatting") for details.
        # Corresponds to the JSON property `textParagraph`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextParagraph]
        attr_accessor :text_paragraph
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @button_list = args[:button_list] if args.key?(:button_list)
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
      
      # The inputs with widgets.
      class Inputs
        include Google::Apis::Core::Hashable
      
        # Input Parameter for Date Picker widget.
        # Corresponds to the JSON property `dateInput`
        # @return [Google::Apis::ChatV1::DateInput]
        attr_accessor :date_input
      
        # Input Parameter for Date and Time Picker widget.
        # Corresponds to the JSON property `dateTimeInput`
        # @return [Google::Apis::ChatV1::DateTimeInput]
        attr_accessor :date_time_input
      
        # Input parameter for regular widgets. For single-valued widgets, it will be a
        # single value list; for multi-valued widgets, such as checkbox, all the values
        # are presented.
        # Corresponds to the JSON property `stringInputs`
        # @return [Google::Apis::ChatV1::StringInputs]
        attr_accessor :string_inputs
      
        # Input Parameter for Time Picker widget.
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
      
      # Represents a membership relation in Google Chat.
      class Membership
        include Google::Apis::Core::Hashable
      
        # The creation time of the membership a.k.a. the time at which the member joined
        # the space, if applicable.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A user in Google Chat.
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
      
      # A message in Google Chat.
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
      
        # Output only. The time at which the message was created in Google Chat server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A plain-text description of the message's cards, used when the actual cards
        # cannot be displayed (e.g. mobile notifications).
        # Corresponds to the JSON property `fallbackText`
        # @return [String]
        attr_accessor :fallback_text
      
        # Output only. The time at which the message was last updated in Google Chat
        # server. If the message was never updated, this field will be same as
        # create_time.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAMpdlehY/
        # messages/UMxbHmzDlr4.UMxbHmzDlr4`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Text for generating preview chips. This text will not be displayed to the user,
        # but any links to images, web pages, videos, etc. included here will generate
        # preview chips.
        # Corresponds to the JSON property `previewText`
        # @return [String]
        attr_accessor :preview_text
      
        # A user in Google Chat.
        # Corresponds to the JSON property `sender`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :sender
      
        # A Slash Command in Chat.
        # Corresponds to the JSON property `slashCommand`
        # @return [Google::Apis::ChatV1::SlashCommand]
        attr_accessor :slash_command
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat bot.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # Plain-text body of the message.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A thread in Google Chat.
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
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
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
      
      # A Slash Command in Chat.
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
      
        # A user in Google Chat.
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
      
      # A space in Google Chat. Spaces are conversations between two or more users or
      # 1:1 messages between a user and a Chat bot.
      class Space
        include Google::Apis::Core::Hashable
      
        # The display name (only if the space is of type `ROOM`). Please note that this
        # field might not be populated in direct messages between humans.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the space, in the form "spaces/*". Example: spaces/
        # AAAAAAAAAAAA
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
      
      # Input parameter for regular widgets. For single-valued widgets, it will be a
      # single value list; for multi-valued widgets, such as checkbox, all the values
      # are presented.
      class StringInputs
        include Google::Apis::Core::Hashable
      
        # 
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
      
      # A thread in Google Chat.
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
      
      # Input Parameter for Time Picker widget.
      class TimeInput
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # 
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
      
      # The timezone id and offset. The id is the tz database time zones such as "
      # America/Toronto". The user timezone offset, in milliseconds, from Coordinated
      # Universal Time (UTC).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
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
      
      # A user in Google Chat.
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
      
        # True when the user is deleted or the user's profile is not visible.
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
      
        # A user in Google Chat.
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
