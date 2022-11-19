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
      
      # Parameters that a Chat app can use to configure how it's response is posted.
      class ActionResponse
        include Google::Apis::Core::Hashable
      
        # Contains a [dialog](https://developers.google.com/chat/how-tos/dialogs) and
        # request status code.
        # Corresponds to the JSON property `dialogAction`
        # @return [Google::Apis::ChatV1::DialogAction]
        attr_accessor :dialog_action
      
        # Input only. The type of Chat app response.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Input only. URL for users to auth or config. (Only for REQUEST_CONFIG response
        # types.)
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
      
      # Represents the status for a request to either invoke or submit a [dialog](
      # https://developers.google.com/chat/how-tos/dialogs).
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
        # download the attachment. Chat apps should not use this URL to download
        # attachment content.
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
        # to a human user. Chat apps should not use this URL to download attachment
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
      # browser. Not supported by Google Chat apps.
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
      
      # Widgets for Chat apps to specify.
      class CardWithId
        include Google::Apis::Core::Hashable
      
        # Cards support a defined layout, interactive UI elements like buttons, and rich
        # media like images. Use cards to present detailed information, gather
        # information from users, and guide users to take a next step. In Google Chat,
        # cards appear in several places: - As stand-alone messages. - Accompanying a
        # text message, just beneath the text message. - As a [dialog](https://
        # developers.google.com/chat/how-tos/dialogs). The following example JSON
        # creates a "contact card" that features: - A header with the contact's name,
        # job title, avatar picture. - A section with the contact information, including
        # formatted text. - Buttons that users can click to share the contact or see
        # more or less info. ![Example contact card](https://developers.google.com/chat/
        # images/card_api_reference.png) ``` ` "cardsV2": [ ` "cardId": "unique-card-id",
        # "card": ` "header": ` "title": "Sasha", "subtitle": "Software Engineer", "
        # imageUrl": "https://developers.google.com/chat/images/quickstart-app-avatar.
        # png", "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha", `, "sections":
        # [ ` "header": "Contact Info", "collapsible": true, "uncollapsibleWidgetsCount"
        # : 1, "widgets": [ ` "decoratedText": ` "startIcon": ` "knownIcon": "EMAIL", `,
        # "text": "sasha@example.com", ` `, ` "decoratedText": ` "startIcon": ` "
        # knownIcon": "PERSON", `, "text": "Online", `, `, ` "decoratedText": ` "
        # startIcon": ` "knownIcon": "PHONE", `, "text": "+1 (555) 555-1234", ` `, ` "
        # buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "openLink": ` "url"
        # : "https://example.com/share", ` ` `, ` "text": "Edit", "onClick": ` "action":
        # ` "function": "goToView", "parameters": [ ` "key": "viewType", "value": "EDIT",
        # ` ], ` ` `, ], ` `, ], `, ], `, ` ], ` ```
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Card]
        attr_accessor :card
      
        # Required for `cardsV2` messages. Chat app-specified identifier for this widget.
        # Scoped within a message.
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
      
      # Represents information about the user's client, such as locale, host app, and
      # platform. For Chat apps, `CommonEventObject` includes data submitted by users
      # interacting with cards, like data entered in [dialogs](https://developers.
      # google.com/chat/how-tos/dialogs).
      class CommonEventObject
        include Google::Apis::Core::Hashable
      
        # A map containing the current values of the widgets in a card. The map keys are
        # the string IDs assigned to each widget, and the values represent inputs to the
        # widget. Depending on the input data type, a different object represents each
        # input: For single-value widgets, `StringInput`. For multi-value widgets, an
        # array of `StringInput` objects. For a date-time picker, a `DateTimeInput`. For
        # a date-only picker, a `DateInput`. For a time-only picker, a `TimeInput`.
        # Corresponds with the data entered by a user on a card in a [dialog](https://
        # developers.google.com/chat/how-tos/dialogs).
        # Corresponds to the JSON property `formInputs`
        # @return [Hash<String,Google::Apis::ChatV1::Inputs>]
        attr_accessor :form_inputs
      
        # The hostApp enum which indicates the app the add-on is invoked from. Always `
        # CHAT` for Chat apps.
        # Corresponds to the JSON property `hostApp`
        # @return [String]
        attr_accessor :host_app
      
        # Name of the invoked function associated with the widget. Only set for Chat
        # apps.
        # Corresponds to the JSON property `invokedFunction`
        # @return [String]
        attr_accessor :invoked_function
      
        # Custom [parameters](/chat/api/reference/rest/v1/cards#ActionParameter) passed
        # to the invoked function. Both keys and values must be strings.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        # The platform enum which indicates the platform where the event originates (`
        # WEB`, `IOS`, or `ANDROID`). Not supported by Chat apps.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The timezone ID and offset from Coordinated Universal Time (UTC). Not
        # supported by Chat apps.
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::ChatV1::TimeZone]
        attr_accessor :time_zone
      
        # The full `locale.displayName` in the format of [ISO 639 language code]-[ISO
        # 3166 country/region code] such as "en-US". Not supported by Chat apps.
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
      
      # Date input values. Not supported by Chat apps.
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
      
      # Date and time input values. Not supported by Chat apps.
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
      
      # Google Chat events.
      class DeprecatedEvent
        include Google::Apis::Core::Hashable
      
        # A form action describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::FormAction]
        attr_accessor :action
      
        # Represents information about the user's client, such as locale, host app, and
        # platform. For Chat apps, `CommonEventObject` includes data submitted by users
        # interacting with cards, like data entered in [dialogs](https://developers.
        # google.com/chat/how-tos/dialogs).
        # Corresponds to the JSON property `common`
        # @return [Google::Apis::ChatV1::CommonEventObject]
        attr_accessor :common
      
        # The URL the Chat app should redirect the user to after they have completed an
        # authorization or configuration flow outside of Google Chat. See the [
        # Authorizing access to 3p services guide](/chat/how-tos/auth-3p) for more
        # information.
        # Corresponds to the JSON property `configCompleteRedirectUrl`
        # @return [String]
        attr_accessor :config_complete_redirect_url
      
        # The type of [dialog](https://developers.google.com/chat/how-tos/dialogs) event
        # received.
        # Corresponds to the JSON property `dialogEventType`
        # @return [String]
        attr_accessor :dialog_event_type
      
        # The timestamp indicating when the event occurred.
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # True when the event is related to [dialogs](https://developers.google.com/chat/
        # how-tos/dialogs).
        # Corresponds to the JSON property `isDialogEvent`
        # @return [Boolean]
        attr_accessor :is_dialog_event
        alias_method :is_dialog_event?, :is_dialog_event
      
        # A message in Google Chat.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::ChatV1::Message]
        attr_accessor :message
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # The Chat app-defined key for the thread related to the event. See the
        # thread_key field of the `spaces.message.create` request for more information.
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
      
        # Cards support a defined layout, interactive UI elements like buttons, and rich
        # media like images. Use cards to present detailed information, gather
        # information from users, and guide users to take a next step. In Google Chat,
        # cards appear in several places: - As stand-alone messages. - Accompanying a
        # text message, just beneath the text message. - As a [dialog](https://
        # developers.google.com/chat/how-tos/dialogs). The following example JSON
        # creates a "contact card" that features: - A header with the contact's name,
        # job title, avatar picture. - A section with the contact information, including
        # formatted text. - Buttons that users can click to share the contact or see
        # more or less info. ![Example contact card](https://developers.google.com/chat/
        # images/card_api_reference.png) ``` ` "cardsV2": [ ` "cardId": "unique-card-id",
        # "card": ` "header": ` "title": "Sasha", "subtitle": "Software Engineer", "
        # imageUrl": "https://developers.google.com/chat/images/quickstart-app-avatar.
        # png", "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha", `, "sections":
        # [ ` "header": "Contact Info", "collapsible": true, "uncollapsibleWidgetsCount"
        # : 1, "widgets": [ ` "decoratedText": ` "startIcon": ` "knownIcon": "EMAIL", `,
        # "text": "sasha@example.com", ` `, ` "decoratedText": ` "startIcon": ` "
        # knownIcon": "PERSON", `, "text": "Online", `, `, ` "decoratedText": ` "
        # startIcon": ` "knownIcon": "PHONE", `, "text": "+1 (555) 555-1234", ` `, ` "
        # buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "openLink": ` "url"
        # : "https://example.com/share", ` ` `, ` "text": "Edit", "onClick": ` "action":
        # ` "function": "goToView", "parameters": [ ` "key": "viewType", "value": "EDIT",
        # ` ], ` ` `, ], ` `, ], `, ], `, ` ], ` ```
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
      
      # Contains a [dialog](https://developers.google.com/chat/how-tos/dialogs) and
      # request status code.
      class DialogAction
        include Google::Apis::Core::Hashable
      
        # Represents the status for a request to either invoke or submit a [dialog](
        # https://developers.google.com/chat/how-tos/dialogs).
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
      # an Apps Script can be invoked to handle the form.
      class FormAction
        include Google::Apis::Core::Hashable
      
        # The method name is used to identify which part of the form triggered the form
        # submission. This information is echoed back to the Chat app as part of the
        # card click event. The same method name can be used for several elements that
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
      
        # A custom function to invoke when the containing element is clicked or othrwise
        # activated. For example usage, see [Create interactive cards](https://
        # developers.google.com/chat/how-tos/cards-onclick).
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Optional. Required when opening a [dialog](https://developers.google.com/chat/
        # how-tos/dialogs). What to do in response to an interaction with a user, such
        # as a user clicking button on a card message. If unspecified, the app responds
        # by executing an `action` - like opening a link or running a function - as
        # normal. By specifying an `interaction`, the app can respond in special
        # interactive ways. For example, by setting `interaction` to `OPEN_DIALOG`, the
        # app can open a [dialog](https://developers.google.com/chat/how-tos/dialogs).
        # When specified, a loading indicator is not shown. Supported by Chat apps, but
        # not Google Workspace Add-ons. If specified for an add-on, the entire card is
        # stripped and nothing is shown in the client.
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
        # false`. If `true`, form values remain after the action is triggered. When
        # using [LoadIndicator.NONE](https://developers.google.com/workspace/add-ons/
        # reference/rpc/google.apps.card.v1#loadindicator) for actions, `persist_values`
        # = `true`is recommended, as it ensures that any changes made by the user after
        # form or on change actions are sent to the server are not overwritten by the
        # response. If `false`, the form values are cleared when the action is triggered.
        # When `persist_values` is set to `false`, it is strongly recommended that the
        # card use [LoadIndicator.SPINNER](https://developers.google.com/workspace/add-
        # ons/reference/rpc/google.apps.card.v1#loadindicator) for all actions, as this
        # locks the UI to ensure no changes are made by the user while the action is
        # being processed. Not supported by Chat apps.
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
          @interaction = args[:interaction] if args.key?(:interaction)
          @load_indicator = args[:load_indicator] if args.key?(:load_indicator)
          @parameters = args[:parameters] if args.key?(:parameters)
          @persist_values = args[:persist_values] if args.key?(:persist_values)
        end
      end
      
      # List of string parameters to supply when the action method is invoked. For
      # example, consider three snooze buttons: snooze now, snooze 1 day, snooze next
      # week. You might use action method = snooze(), passing the snooze type and
      # snooze time in the list of string parameters. To learn more, see [
      # CommonEventObject](https://developers.google.com/chat/api/reference/rest/v1/
      # Event#commoneventobject).
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
      
      # Represents the complete border style applied to items in a widget.
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
      
      # A text, icon, or text + icon button that users can click. To make an image a
      # clickable button, specify an Image (not an ImageComponent) and set an `onClick`
      # action.
      class GoogleAppsCardV1Button
        include Google::Apis::Core::Hashable
      
        # The alternative text used for accessibility. Set descriptive text that lets
        # users know what the button does. For example, if a button opens a hyperlink,
        # you might write: "Opens a new browser tab and navigates to the Google Chat
        # developer documentation at https://developers.google.com/chat". Has no effect
        # when an icon is set; use `icon.alt_text` instead.
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
      
        # If `true`, the button is displayed in an inactive state and doesn't respond to
        # user actions.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # An icon displayed in a widget on a card. Supports [standard](https://
        # developers.google.com/chat/api/guides/message-formats/cards) and [custom](
        # https://developers.google.com/chat/api/guides/message-formats/cards#
        # customicons) icons.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # The text displayed inside the button.
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
      
      # Cards support a defined layout, interactive UI elements like buttons, and rich
      # media like images. Use cards to present detailed information, gather
      # information from users, and guide users to take a next step. In Google Chat,
      # cards appear in several places: - As stand-alone messages. - Accompanying a
      # text message, just beneath the text message. - As a [dialog](https://
      # developers.google.com/chat/how-tos/dialogs). The following example JSON
      # creates a "contact card" that features: - A header with the contact's name,
      # job title, avatar picture. - A section with the contact information, including
      # formatted text. - Buttons that users can click to share the contact or see
      # more or less info. ![Example contact card](https://developers.google.com/chat/
      # images/card_api_reference.png) ``` ` "cardsV2": [ ` "cardId": "unique-card-id",
      # "card": ` "header": ` "title": "Sasha", "subtitle": "Software Engineer", "
      # imageUrl": "https://developers.google.com/chat/images/quickstart-app-avatar.
      # png", "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha", `, "sections":
      # [ ` "header": "Contact Info", "collapsible": true, "uncollapsibleWidgetsCount"
      # : 1, "widgets": [ ` "decoratedText": ` "startIcon": ` "knownIcon": "EMAIL", `,
      # "text": "sasha@example.com", ` `, ` "decoratedText": ` "startIcon": ` "
      # knownIcon": "PERSON", `, "text": "Online", `, `, ` "decoratedText": ` "
      # startIcon": ` "knownIcon": "PHONE", `, "text": "+1 (555) 555-1234", ` `, ` "
      # buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "openLink": ` "url"
      # : "https://example.com/share", ` ` `, ` "text": "Edit", "onClick": ` "action":
      # ` "function": "goToView", "parameters": [ ` "key": "viewType", "value": "EDIT",
      # ` ], ` ` `, ], ` `, ], `, ], `, ` ], ` ```
      class GoogleAppsCardV1Card
        include Google::Apis::Core::Hashable
      
        # The card's actions. Actions are added to the card's toolbar menu. Because Chat
        # app cards have no toolbar, `cardActions[]` is not supported by Chat apps. For
        # example, the following JSON constructs a card action menu with Settings and
        # Send Feedback options: ``` "card_actions": [ ` "actionLabel": "Settings", "
        # onClick": ` "action": ` "functionName": "goToView", "parameters": [ ` "key": "
        # viewType", "value": "SETTING" ` ], "loadIndicator": "LoadIndicator.SPINNER" ` `
        # `, ` "actionLabel": "Send Feedback", "onClick": ` "openLink": ` "url": "https:
        # //example.com/feedback" ` ` ` ] ```
        # Corresponds to the JSON property `cardActions`
        # @return [Array<Google::Apis::ChatV1::GoogleAppsCardV1CardAction>]
        attr_accessor :card_actions
      
        # In Google Workspace add-ons, sets the display properties of the `
        # peekCardHeader`. Not supported by Chat apps.
        # Corresponds to the JSON property `displayStyle`
        # @return [String]
        attr_accessor :display_style
      
        # A persistent (sticky) footer that that appears at the bottom of the card.
        # Setting `fixedFooter` without specifying a `primaryButton` or a `
        # secondaryButton` causes an error. Chat apps support `fixedFooter` in [dialogs](
        # https://developers.google.com/chat/how-tos/dialogs), but not in [card messages]
        # (https://developers.google.com/chat/api/guides/message-formats/cards).
        # Corresponds to the JSON property `fixedFooter`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardFixedFooter]
        attr_accessor :fixed_footer
      
        # Represents a card header.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardHeader]
        attr_accessor :header
      
        # Name of the card. Used as a card identifier in card navigation. Because Chat
        # apps don't support card navigation, they ignore this field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a card header.
        # Corresponds to the JSON property `peekCardHeader`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1CardHeader]
        attr_accessor :peek_card_header
      
        # Contains a collection of widgets. Each section has its own, optional header.
        # Sections are visually separated by a line divider.
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
      # invoice in a browser. Not supported by Chat apps.
      class GoogleAppsCardV1CardAction
        include Google::Apis::Core::Hashable
      
        # The label that displays as the action menu item.
        # Corresponds to the JSON property `actionLabel`
        # @return [String]
        attr_accessor :action_label
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button.
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
      # secondaryButton` causes an error. Chat apps support `fixedFooter` in [dialogs](
      # https://developers.google.com/chat/how-tos/dialogs), but not in [card messages]
      # (https://developers.google.com/chat/api/guides/message-formats/cards).
      class GoogleAppsCardV1CardFixedFooter
        include Google::Apis::Core::Hashable
      
        # A text, icon, or text + icon button that users can click. To make an image a
        # clickable button, specify an Image (not an ImageComponent) and set an `onClick`
        # action.
        # Corresponds to the JSON property `primaryButton`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :primary_button
      
        # A text, icon, or text + icon button that users can click. To make an image a
        # clickable button, specify an Image (not an ImageComponent) and set an `onClick`
        # action.
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
      
      # Represents a card header.
      class GoogleAppsCardV1CardHeader
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image which is used for accessibility.
        # Corresponds to the JSON property `imageAltText`
        # @return [String]
        attr_accessor :image_alt_text
      
        # The shape used to crop the image.
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
      
      # Lets users specify a date, a time, or both a date and a time. Accepts text
      # input from users, but features an interactive date and time selector that
      # helps users enter correctly-formatted dates and times. If users enter a date
      # or time incorrectly, the widget shows an error that prompts users to enter the
      # correct format. Not supported by Chat apps. Support by Chat apps coming soon.
      class GoogleAppsCardV1DateTimePicker
        include Google::Apis::Core::Hashable
      
        # The text that prompts users to enter a date, time, or datetime. Specify text
        # that helps the user enter the information your app needs. For example, if
        # users are setting an appointment, then a label like "Appointment date" or "
        # Appointment date and time" might work well.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name by which the datetime picker is identified in a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
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
      
        # What kind of date and time input the datetime picker supports.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value displayed as the default value before user input or previous user
        # input, represented in milliseconds ([Epoch time](https://en.wikipedia.org/wiki/
        # Unix_time)). For `DATE_AND_TIME` type, the full epoch value is used. For `
        # DATE_ONLY` type, only date of the epoch time is used. For `TIME_ONLY` type,
        # only time of the epoch time is used. For example, to represent 3:00 AM, set
        # epoch time to `3 * 60 * 60 * 1000`.
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
      
        # The text that appears below `text`. Always truncates. Supports simple
        # formatting. See Text formatting for formatting details.
        # Corresponds to the JSON property `bottomLabel`
        # @return [String]
        attr_accessor :bottom_label
      
        # A text, icon, or text + icon button that users can click. To make an image a
        # clickable button, specify an Image (not an ImageComponent) and set an `onClick`
        # action.
        # Corresponds to the JSON property `button`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Button]
        attr_accessor :button
      
        # An icon displayed in a widget on a card. Supports [standard](https://
        # developers.google.com/chat/api/guides/message-formats/cards) and [custom](
        # https://developers.google.com/chat/api/guides/message-formats/cards#
        # customicons) icons.
        # Corresponds to the JSON property `endIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :end_icon
      
        # An icon displayed in a widget on a card. Supports [standard](https://
        # developers.google.com/chat/api/guides/message-formats/cards) and [custom](
        # https://developers.google.com/chat/api/guides/message-formats/cards#
        # customicons) icons.
        # Corresponds to the JSON property `icon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :icon
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button.
        # Corresponds to the JSON property `onClick`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1OnClick]
        attr_accessor :on_click
      
        # An icon displayed in a widget on a card. Supports [standard](https://
        # developers.google.com/chat/api/guides/message-formats/cards) and [custom](
        # https://developers.google.com/chat/api/guides/message-formats/cards#
        # customicons) icons.
        # Corresponds to the JSON property `startIcon`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Icon]
        attr_accessor :start_icon
      
        # Either a toggle-style switch or a checkbox inside a `decoratedText` widget.
        # Only supported on the `decoratedText` widget. Currently supported in [dialogs](
        # https://developers.google.com/chat/how-tos/dialogs). Support for [card
        # messages](https://developers.google.com/chat/api/guides/message-formats/cards)
        # is coming soon.
        # Corresponds to the JSON property `switchControl`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SwitchControl]
        attr_accessor :switch_control
      
        # Required. The primary text. Supports simple formatting. See Text formatting
        # for formatting details.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The text that appears above `text`. Always truncates. Supports simple
        # formatting. See Text formatting for formatting details.
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
      
      # Displays a divider between widgets, a horizontal line. For example, the
      # following JSON creates a divider: ``` "divider": ` ` ```
      class GoogleAppsCardV1Divider
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Displays a grid with a collection of items. A grid supports any number of
      # columns and items. The number of rows is determined by items divided by
      # columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items
      # and 2 columns has 6 rows. Currently supported in [dialogs](https://developers.
      # google.com/chat/how-tos/dialogs). Support for [card messages](https://
      # developers.google.com/chat/api/guides/message-formats/cards) is coming soon.
      # For example, the following JSON creates a 2 column grid with a single item: ```
      # "grid": ` "title": "A fine collection of items", "numColumns": 2, "
      # borderStyle": ` "type": "STROKE", "cornerRadius": 4.0 `, "items": [ "image": `
      # "imageUri": "https://www.example.com/image.png", "cropStyle": ` "type": "
      # SQUARE" `, "borderStyle": ` "type": "STROKE" ` `, "title": "An item", "
      # textAlignment": "CENTER" ], "onClick": ` "openLink": ` "url":"https://www.
      # example.com" ` ` ` ```
      class GoogleAppsCardV1Grid
        include Google::Apis::Core::Hashable
      
        # Represents the complete border style applied to items in a widget.
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
        # such as a button.
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
      
        # Represents an image.
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
      
      # An icon displayed in a widget on a card. Supports [standard](https://
      # developers.google.com/chat/api/guides/message-formats/cards) and [custom](
      # https://developers.google.com/chat/api/guides/message-formats/cards#
      # customicons) icons.
      class GoogleAppsCardV1Icon
        include Google::Apis::Core::Hashable
      
        # Optional. A description of the icon used for accessibility. If unspecified, a
        # default value is provided. As a best practice, you should set a helpful
        # description. For example, if an icon displays a user's account portrait, you
        # could describe it as "A user's account portrait." If the icon displays in a
        # Button, this alt text takes precedence and overwrites the button's alt text,
        # so you should write alt text for the button: Set descriptive text that lets
        # users know what the button does. For example, if a button opens a hyperlink,
        # you might write: "Opens a new browser tab and navigates to the Google Chat
        # developer documentation at https://developers.google.com/chat".
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Display a custom icon hosted at an HTTPS URL. For example: ``` "iconUrl": "
        # https://developers.google.com/chat/images/quickstart-app-avatar.png" ```
        # Supported file types include `.png` and `.jpg`.
        # Corresponds to the JSON property `iconUrl`
        # @return [String]
        attr_accessor :icon_url
      
        # The crop style applied to the image. In some cases, applying a `CIRCLE` crop
        # causes the image to be drawn larger than a standard icon.
        # Corresponds to the JSON property `imageType`
        # @return [String]
        attr_accessor :image_type
      
        # Display one of the standard icons provided by Google Workspace. For example,
        # to display an airplane icon, specify `AIRPLANE`. For a bus, specify `BUS`. For
        # a full list of supported icons, see [standard icons](https://developers.google.
        # com/chat/api/guides/message-formats/cards).
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
      
      # An image that is specified by a URL and can have an `onClick` action.
      class GoogleAppsCardV1Image
        include Google::Apis::Core::Hashable
      
        # The alternative text of this image, used for accessibility.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # The `https` URL that hosts the image. For example: ``` https://developers.
        # google.com/chat/images/quickstart-app-avatar.png ```
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        # Represents how to respond when users click an interactive element on a card,
        # such as a button.
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
      
      # Represents an image.
      class GoogleAppsCardV1ImageComponent
        include Google::Apis::Core::Hashable
      
        # The accessibility label for the image.
        # Corresponds to the JSON property `altText`
        # @return [String]
        attr_accessor :alt_text
      
        # Represents the complete border style applied to items in a widget.
        # Corresponds to the JSON property `borderStyle`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1BorderStyle]
        attr_accessor :border_style
      
        # Represents the crop style applied to an image. For example, here's how to
        # apply a 16 by 9 aspect ratio: ``` cropStyle ` "type": "RECTANGLE_CUSTOM", "
        # aspectRatio": 16/9 ` ```
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
      
      # Represents the crop style applied to an image. For example, here's how to
      # apply a 16 by 9 aspect ratio: ``` cropStyle ` "type": "RECTANGLE_CUSTOM", "
      # aspectRatio": 16/9 ` ```
      class GoogleAppsCardV1ImageCropStyle
        include Google::Apis::Core::Hashable
      
        # The aspect ratio to use if the crop type is `RECTANGLE_CUSTOM`. For example,
        # here's how to apply a 16 by 9 aspect ratio: ``` cropStyle ` "type": "
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
      
      # Represents how to respond when users click an interactive element on a card,
      # such as a button.
      class GoogleAppsCardV1OnClick
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :action
      
        # Cards support a defined layout, interactive UI elements like buttons, and rich
        # media like images. Use cards to present detailed information, gather
        # information from users, and guide users to take a next step. In Google Chat,
        # cards appear in several places: - As stand-alone messages. - Accompanying a
        # text message, just beneath the text message. - As a [dialog](https://
        # developers.google.com/chat/how-tos/dialogs). The following example JSON
        # creates a "contact card" that features: - A header with the contact's name,
        # job title, avatar picture. - A section with the contact information, including
        # formatted text. - Buttons that users can click to share the contact or see
        # more or less info. ![Example contact card](https://developers.google.com/chat/
        # images/card_api_reference.png) ``` ` "cardsV2": [ ` "cardId": "unique-card-id",
        # "card": ` "header": ` "title": "Sasha", "subtitle": "Software Engineer", "
        # imageUrl": "https://developers.google.com/chat/images/quickstart-app-avatar.
        # png", "imageType": "CIRCLE", "imageAltText": "Avatar for Sasha", `, "sections":
        # [ ` "header": "Contact Info", "collapsible": true, "uncollapsibleWidgetsCount"
        # : 1, "widgets": [ ` "decoratedText": ` "startIcon": ` "knownIcon": "EMAIL", `,
        # "text": "sasha@example.com", ` `, ` "decoratedText": ` "startIcon": ` "
        # knownIcon": "PERSON", `, "text": "Online", `, `, ` "decoratedText": ` "
        # startIcon": ` "knownIcon": "PHONE", `, "text": "+1 (555) 555-1234", ` `, ` "
        # buttonList": ` "buttons": [ ` "text": "Share", "onClick": ` "openLink": ` "url"
        # : "https://example.com/share", ` ` `, ` "text": "Edit", "onClick": ` "action":
        # ` "function": "goToView", "parameters": [ ` "key": "viewType", "value": "EDIT",
        # ` ], ` ` `, ], ` `, ], `, ], `, ` ], ` ```
        # Corresponds to the JSON property `card`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Card]
        attr_accessor :card
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `openDynamicLinkAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :open_dynamic_link_action
      
        # Represents an `onClick` event that opens a hyperlink.
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
      
      # Represents an `onClick` event that opens a hyperlink.
      class GoogleAppsCardV1OpenLink
        include Google::Apis::Core::Hashable
      
        # Whether the client forgets about a link after opening it, or observes it until
        # the window closes. Not supported by Chat apps.
        # Corresponds to the JSON property `onClose`
        # @return [String]
        attr_accessor :on_close
      
        # How to open a link. Not supported by Chat apps.
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
      # order that they are specified.
      class GoogleAppsCardV1Section
        include Google::Apis::Core::Hashable
      
        # Indicates whether this section is collapsible. Collapsible sections hide some
        # or all widgets, but users can expand the section to reveal the hidden widgets
        # by clicking **Show more**. Users can hide the widgets again by clicking **Show
        # less**. To determine which widgets are hidden, specify `
        # uncollapsibleWidgetsCount`.
        # Corresponds to the JSON property `collapsible`
        # @return [Boolean]
        attr_accessor :collapsible
        alias_method :collapsible?, :collapsible
      
        # Text that appears at the top of a section. Supports [simple HTML formatted
        # text](https://developers.google.com/apps-script/add-ons/concepts/widgets#
        # text_formatting).
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
      
        # All the widgets in the section. Must contain at least 1 widget.
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
      
      # A widget that creates a UI item with options for users to select. For example,
      # a dropdown menu or check list. Chat apps receive and can process the value of
      # entered text during form input events. For details about working with form
      # inputs, see [Receive form data](https://developers.google.com/chat/how-tos/
      # dialogs#receive_form_data_from_dialogs). When you need to collect data from
      # users that matches options you set, use a selection input. To collect abstract
      # data from users, use the text input widget instead. Only supported in [dialogs]
      # (https://developers.google.com/chat/how-tos/dialogs). Support for [card
      # messages](https://developers.google.com/chat/api/guides/message-formats/cards)
      # coming soon.
      class GoogleAppsCardV1SelectionInput
        include Google::Apis::Core::Hashable
      
        # An array of the selected items. For example, all the selected check boxes.
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
      
        # The name by which the selection input is identified in a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # The way that an option appears to users. Different options support different
        # types of interactions. For example, users can enable multiple check boxes, but
        # can only select one value from a dropdown menu. Each selection input supports
        # one type of selection. Mixing check boxes and switches, for example, is not
        # supported.
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
      
      # A selectable item in a selection input, such as a check box or a switch.
      class GoogleAppsCardV1SelectionItem
        include Google::Apis::Core::Hashable
      
        # When `true`, more than one item is selected. If more than one item is selected
        # for radio buttons and dropdown menus, the first selected item is received and
        # the ones after are ignored.
        # Corresponds to the JSON property `selected`
        # @return [Boolean]
        attr_accessor :selected
        alias_method :selected?, :selected
      
        # The text displayed to users.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # The value associated with this item. The client should use this as a form
        # input value. For details about working with form inputs, see [Receive form
        # data](https://developers.google.com/chat/how-tos/dialogs#
        # receive_form_data_from_dialogs).
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
      
      # One suggested value that users can enter in a text input field.
      class GoogleAppsCardV1SuggestionItem
        include Google::Apis::Core::Hashable
      
        # The value of a suggested input to a text input field. This is equivalent to
        # what users would enter themselves.
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
      # users start typing "Jav", the list of suggestions filters to show just Java
      # and JavaScript. Suggested values help guide users to enter values that your
      # app can make sense of. When referring to JavaScript, some users might enter "
      # javascript" and others "java script". Suggesting "JavaScript" can standardize
      # how users interact with your app. When specified, `TextInput.type` is always `
      # SINGLE_LINE`, even if it is set to `MULTIPLE_LINE`.
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
      
      # Either a toggle-style switch or a checkbox inside a `decoratedText` widget.
      # Only supported on the `decoratedText` widget. Currently supported in [dialogs](
      # https://developers.google.com/chat/how-tos/dialogs). Support for [card
      # messages](https://developers.google.com/chat/api/guides/message-formats/cards)
      # is coming soon.
      class GoogleAppsCardV1SwitchControl
        include Google::Apis::Core::Hashable
      
        # How the switch appears in the user interface.
        # Corresponds to the JSON property `controlType`
        # @return [String]
        attr_accessor :control_type
      
        # The name by which the switch widget is identified in a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
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
        # developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
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
      # actions. Chat apps receive and can process the value of entered text during
      # form input events. For details about working with form inputs, see [Receive
      # form data](https://developers.google.com/chat/how-tos/dialogs#
      # receive_form_data_from_dialogs). When you need to collect abstract data from
      # users, use a text input. To collect defined data from users, use the selection
      # input widget instead. Only supported in [dialogs](https://developers.google.
      # com/chat/how-tos/dialogs). Support for [card messages](https://developers.
      # google.com/chat/api/guides/message-formats/cards) coming soon.
      class GoogleAppsCardV1TextInput
        include Google::Apis::Core::Hashable
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `autoCompleteAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :auto_complete_action
      
        # Text that appears inside the text input field meant to assist users by
        # prompting them to enter a certain value. This text is not visible after users
        # begin typing. Required if `label` is unspecified. Otherwise, optional.
        # Corresponds to the JSON property `hintText`
        # @return [String]
        attr_accessor :hint_text
      
        # Suggested values that users can enter. These values appear when users click
        # inside the text input field. As users type, the suggested values dynamically
        # filter to match what the users have typed. For example, a text input field for
        # programming language might suggest Java, JavaScript, Python, and C++. When
        # users start typing "Jav", the list of suggestions filters to show just Java
        # and JavaScript. Suggested values help guide users to enter values that your
        # app can make sense of. When referring to JavaScript, some users might enter "
        # javascript" and others "java script". Suggesting "JavaScript" can standardize
        # how users interact with your app. When specified, `TextInput.type` is always `
        # SINGLE_LINE`, even if it is set to `MULTIPLE_LINE`.
        # Corresponds to the JSON property `initialSuggestions`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Suggestions]
        attr_accessor :initial_suggestions
      
        # The text that appears above the text input field in the user interface.
        # Specify text that helps the user enter the information your app needs. For
        # example, if you are asking someone's name, but specifically need their surname,
        # write "surname" instead of "name". Required if `hintText` is unspecified.
        # Otherwise, optional.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The name by which the text input is identified in a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An action that describes the behavior when the form is submitted. For example,
        # an Apps Script can be invoked to handle the form.
        # Corresponds to the JSON property `onChangeAction`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Action]
        attr_accessor :on_change_action
      
        # How a text input field appears in the user interface. For example, whether the
        # field is single or multi-line.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The value entered by a user, returned as part of a form input event. For
        # details about working with form inputs, see [Receive form data](https://
        # developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
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
      
      # A paragraph of text that supports formatting. See [Text formatting](https://
      # developers.google.com/workspace/add-ons/concepts/widgets#text_formatting) for
      # details.
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
      
      # Each card is made up of widgets. A widget is a composite object that can
      # represent one of text, images, buttons, and other object types.
      class GoogleAppsCardV1Widget
        include Google::Apis::Core::Hashable
      
        # A list of buttons layed out horizontally.
        # Corresponds to the JSON property `buttonList`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1ButtonList]
        attr_accessor :button_list
      
        # Lets users specify a date, a time, or both a date and a time. Accepts text
        # input from users, but features an interactive date and time selector that
        # helps users enter correctly-formatted dates and times. If users enter a date
        # or time incorrectly, the widget shows an error that prompts users to enter the
        # correct format. Not supported by Chat apps. Support by Chat apps coming soon.
        # Corresponds to the JSON property `dateTimePicker`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DateTimePicker]
        attr_accessor :date_time_picker
      
        # A widget that displays text with optional decorations such as a label above or
        # below the text, an icon in front of the text, a selection widget or a button
        # after the text.
        # Corresponds to the JSON property `decoratedText`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1DecoratedText]
        attr_accessor :decorated_text
      
        # Displays a divider between widgets, a horizontal line. For example, the
        # following JSON creates a divider: ``` "divider": ` ` ```
        # Corresponds to the JSON property `divider`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Divider]
        attr_accessor :divider
      
        # Displays a grid with a collection of items. A grid supports any number of
        # columns and items. The number of rows is determined by items divided by
        # columns. A grid with 10 items and 2 columns has 5 rows. A grid with 11 items
        # and 2 columns has 6 rows. Currently supported in [dialogs](https://developers.
        # google.com/chat/how-tos/dialogs). Support for [card messages](https://
        # developers.google.com/chat/api/guides/message-formats/cards) is coming soon.
        # For example, the following JSON creates a 2 column grid with a single item: ```
        # "grid": ` "title": "A fine collection of items", "numColumns": 2, "
        # borderStyle": ` "type": "STROKE", "cornerRadius": 4.0 `, "items": [ "image": `
        # "imageUri": "https://www.example.com/image.png", "cropStyle": ` "type": "
        # SQUARE" `, "borderStyle": ` "type": "STROKE" ` `, "title": "An item", "
        # textAlignment": "CENTER" ], "onClick": ` "openLink": ` "url":"https://www.
        # example.com" ` ` ` ```
        # Corresponds to the JSON property `grid`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Grid]
        attr_accessor :grid
      
        # An image that is specified by a URL and can have an `onClick` action.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1Image]
        attr_accessor :image
      
        # A widget that creates a UI item with options for users to select. For example,
        # a dropdown menu or check list. Chat apps receive and can process the value of
        # entered text during form input events. For details about working with form
        # inputs, see [Receive form data](https://developers.google.com/chat/how-tos/
        # dialogs#receive_form_data_from_dialogs). When you need to collect data from
        # users that matches options you set, use a selection input. To collect abstract
        # data from users, use the text input widget instead. Only supported in [dialogs]
        # (https://developers.google.com/chat/how-tos/dialogs). Support for [card
        # messages](https://developers.google.com/chat/api/guides/message-formats/cards)
        # coming soon.
        # Corresponds to the JSON property `selectionInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1SelectionInput]
        attr_accessor :selection_input
      
        # A field in which users can enter text. Supports suggestions and on-change
        # actions. Chat apps receive and can process the value of entered text during
        # form input events. For details about working with form inputs, see [Receive
        # form data](https://developers.google.com/chat/how-tos/dialogs#
        # receive_form_data_from_dialogs). When you need to collect abstract data from
        # users, use a text input. To collect defined data from users, use the selection
        # input widget instead. Only supported in [dialogs](https://developers.google.
        # com/chat/how-tos/dialogs). Support for [card messages](https://developers.
        # google.com/chat/api/guides/message-formats/cards) coming soon.
        # Corresponds to the JSON property `textInput`
        # @return [Google::Apis::ChatV1::GoogleAppsCardV1TextInput]
        attr_accessor :text_input
      
        # A paragraph of text that supports formatting. See [Text formatting](https://
        # developers.google.com/workspace/add-ons/concepts/widgets#text_formatting) for
        # details.
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
      
      # Types of data inputs for widgets. Users enter data with these inputs.
      class Inputs
        include Google::Apis::Core::Hashable
      
        # Date input values. Not supported by Chat apps.
        # Corresponds to the JSON property `dateInput`
        # @return [Google::Apis::ChatV1::DateInput]
        attr_accessor :date_input
      
        # Date and time input values. Not supported by Chat apps.
        # Corresponds to the JSON property `dateTimeInput`
        # @return [Google::Apis::ChatV1::DateTimeInput]
        attr_accessor :date_time_input
      
        # Input parameter for regular widgets. For single-valued widgets, it is a single
        # value list. For multi-valued widgets, such as checkbox, all the values are
        # presented.
        # Corresponds to the JSON property `stringInputs`
        # @return [Google::Apis::ChatV1::StringInputs]
        attr_accessor :string_inputs
      
        # Time input values. Not supported by Chat apps.
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
      
        # A token that can be sent as `pageToken` to retrieve the next page of results.
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
      
      # The response corresponding to ListSpacesRequest.
      class ListSpacesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `pageToken` to retrieve the next page of results.
        # If empty, there are no subsequent pages.
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
      
      # A matched url in a Chat message. Chat apps can preview matched URLs. For more
      # information, refer to [Preview links](https://developers.google.com/chat/how-
      # tos/preview-links).
      class MatchedUrl
        include Google::Apis::Core::Hashable
      
        # Output only. The url that was matched.
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
      
        # Output only. The creation time of the membership, such as when a member joined
        # or was invited to join a space.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A user in Google Chat.
        # Corresponds to the JSON property `member`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :member
      
        # Resource name of the membership. Format: spaces/`space`/members/`member`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. User's role within a Chat space, which determines their permitted
        # actions in the space.
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
          @member = args[:member] if args.key?(:member)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A message in Google Chat.
      class Message
        include Google::Apis::Core::Hashable
      
        # Parameters that a Chat app can use to configure how it's response is posted.
        # Corresponds to the JSON property `actionResponse`
        # @return [Google::Apis::ChatV1::ActionResponse]
        attr_accessor :action_response
      
        # Output only. Annotations associated with the text in this message.
        # Corresponds to the JSON property `annotations`
        # @return [Array<Google::Apis::ChatV1::Annotation>]
        attr_accessor :annotations
      
        # Plain-text body of the message with all Chat app mentions stripped out.
        # Corresponds to the JSON property `argumentText`
        # @return [String]
        attr_accessor :argument_text
      
        # User uploaded attachment.
        # Corresponds to the JSON property `attachment`
        # @return [Array<Google::Apis::ChatV1::Attachment>]
        attr_accessor :attachment
      
        # Deprecated: Use `cards_v2` instead. Rich, formatted and interactive cards that
        # can be used to display UI elements such as: formatted texts, buttons,
        # clickable images. Cards are normally displayed below the plain-text body of
        # the message.
        # Corresponds to the JSON property `cards`
        # @return [Array<Google::Apis::ChatV1::Card>]
        attr_accessor :cards
      
        # Richly formatted and interactive cards that display UI elements and editable
        # widgets, such as: - Formatted text - Buttons - Clickable images - Checkboxes -
        # Radio buttons - Input widgets. Cards are usually displayed below the text-body
        # of a Chat message, but can situationally appear other places, such as [dialogs]
        # (https://developers.google.com/chat/how-tos/dialogs). The `cardId` is a unique
        # identifier among cards in the same message and for identifying user input
        # values. Currently supported widgets include: - `TextParagraph` - `
        # DecoratedText` - `Image` - `ButtonList` - `Divider`
        # Corresponds to the JSON property `cardsV2`
        # @return [Array<Google::Apis::ChatV1::CardWithId>]
        attr_accessor :cards_v2
      
        # A custom name for a Chat message assigned at creation. Must start with `client-
        # ` and contain only lowercase letters, numbers, and hyphens up to 63 characters
        # in length. Specify this field to get, update, or delete the message with the
        # specified value. For example usage, see [Name a created message](https://
        # developers.google.com/chat/api/guides/crudl/messages#name_a_created_message).
        # Corresponds to the JSON property `clientAssignedMessageId`
        # @return [String]
        attr_accessor :client_assigned_message_id
      
        # Output only. The time at which the message was created in Google Chat server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A plain-text description of the message's cards, used when the actual cards
        # cannot be displayed (e.g. mobile notifications).
        # Corresponds to the JSON property `fallbackText`
        # @return [String]
        attr_accessor :fallback_text
      
        # Output only. The time at which the message was last edited by a user. If the
        # message has never been edited, this field is empty.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # A matched url in a Chat message. Chat apps can preview matched URLs. For more
        # information, refer to [Preview links](https://developers.google.com/chat/how-
        # tos/preview-links).
        # Corresponds to the JSON property `matchedUrl`
        # @return [Google::Apis::ChatV1::MatchedUrl]
        attr_accessor :matched_url
      
        # Resource name in the form `spaces/*/messages/*`. Example: `spaces/AAAAAAAAAAA/
        # messages/BBBBBBBBBBB.BBBBBBBBBBB`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A user in Google Chat.
        # Corresponds to the JSON property `sender`
        # @return [Google::Apis::ChatV1::User]
        attr_accessor :sender
      
        # A [slash command](https://developers.google.com/chat/how-tos/slash-commands)
        # in Google Chat.
        # Corresponds to the JSON property `slashCommand`
        # @return [Google::Apis::ChatV1::SlashCommand]
        attr_accessor :slash_command
      
        # A space in Google Chat. Spaces are conversations between two or more users or
        # 1:1 messages between a user and a Chat app.
        # Corresponds to the JSON property `space`
        # @return [Google::Apis::ChatV1::Space]
        attr_accessor :space
      
        # Plain-text body of the message. The first link to an image, video, web page,
        # or other preview-able item generates a preview chip.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # A thread in Google Chat.
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
          @action_response = args[:action_response] if args.key?(:action_response)
          @annotations = args[:annotations] if args.key?(:annotations)
          @argument_text = args[:argument_text] if args.key?(:argument_text)
          @attachment = args[:attachment] if args.key?(:attachment)
          @cards = args[:cards] if args.key?(:cards)
          @cards_v2 = args[:cards_v2] if args.key?(:cards_v2)
          @client_assigned_message_id = args[:client_assigned_message_id] if args.key?(:client_assigned_message_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @fallback_text = args[:fallback_text] if args.key?(:fallback_text)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @matched_url = args[:matched_url] if args.key?(:matched_url)
          @name = args[:name] if args.key?(:name)
          @sender = args[:sender] if args.key?(:sender)
          @slash_command = args[:slash_command] if args.key?(:slash_command)
          @space = args[:space] if args.key?(:space)
          @text = args[:text] if args.key?(:text)
          @thread = args[:thread] if args.key?(:thread)
          @thread_reply = args[:thread_reply] if args.key?(:thread_reply)
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
      
      # A [slash command](https://developers.google.com/chat/how-tos/slash-commands)
      # in Google Chat.
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
      # 1:1 messages between a user and a Chat app.
      class Space
        include Google::Apis::Core::Hashable
      
        # The space's display name. For direct messages between humans, this field might
        # be empty.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the space. Format: spaces/`space`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Whether the space is a DM between a Chat app and a single human.
        # Corresponds to the JSON property `singleUserBotDm`
        # @return [Boolean]
        attr_accessor :single_user_bot_dm
        alias_method :single_user_bot_dm?, :single_user_bot_dm
      
        # Details about the space including description and rules.
        # Corresponds to the JSON property `spaceDetails`
        # @return [Google::Apis::ChatV1::SpaceDetails]
        attr_accessor :space_details
      
        # Output only. The threading state in the Chat space.
        # Corresponds to the JSON property `spaceThreadingState`
        # @return [String]
        attr_accessor :space_threading_state
      
        # Output only. Deprecated: Use `spaceThreadingState` instead. Whether messages
        # are threaded in this space.
        # Corresponds to the JSON property `threaded`
        # @return [Boolean]
        attr_accessor :threaded
        alias_method :threaded?, :threaded
      
        # Output only. Deprecated: Use `singleUserBotDm` or `spaceType` (developer
        # preview) instead. The type of a space.
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
          @space_details = args[:space_details] if args.key?(:space_details)
          @space_threading_state = args[:space_threading_state] if args.key?(:space_threading_state)
          @threaded = args[:threaded] if args.key?(:threaded)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details about the space including description and rules.
      class SpaceDetails
        include Google::Apis::Core::Hashable
      
        # Optional. A description of the space. It could describe the space's discussion
        # topic, functional purpose, or participants.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. The space's rules, expectations, and etiquette.
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
      
        # An array of strings entered by the user.
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
      
        # Resource name of the thread. Example: spaces/`space`/threads/`thread`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Opaque thread identifier. To start or add to a thread, create a
        # message and specify a `threadKey` or the thread.name. For example usage, see [
        # Start or reply to a message thread](/chat/api/guides/crudl/messages#
        # start_or_reply_to_a_message_thread). For other requests, this is an output
        # only field.
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
      
      # Time input values. Not supported by Chat apps.
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
      
      # The timezone ID and offset from Coordinated Universal Time (UTC). Not
      # supported by Chat apps.
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
      
      # A user in Google Chat.
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
      
        # Resource name for a Google Chat user. For human users, represents a person in
        # the People API or a user in the Admin SDK Directory API. Format: `users/`user``
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
