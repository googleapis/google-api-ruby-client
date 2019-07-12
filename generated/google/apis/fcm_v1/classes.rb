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
    module FcmV1
      
      # Android specific options for messages sent through
      # [FCM connection server](https://goo.gl/4GLdUl).
      class AndroidConfig
        include Google::Apis::Core::Hashable
      
        # An identifier of a group of messages that can be collapsed, so that only
        # the last message gets sent when delivery can be resumed. A maximum of 4
        # different collapse keys is allowed at any given time.
        # Corresponds to the JSON property `collapseKey`
        # @return [String]
        attr_accessor :collapse_key
      
        # Arbitrary key/value payload. If present, it will override
        # google.firebase.fcm.v1.Message.data.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,String>]
        attr_accessor :data
      
        # Options for features provided by the FCM SDK for Android.
        # Corresponds to the JSON property `fcmOptions`
        # @return [Google::Apis::FcmV1::AndroidFcmOptions]
        attr_accessor :fcm_options
      
        # Notification to send to android devices.
        # Corresponds to the JSON property `notification`
        # @return [Google::Apis::FcmV1::AndroidNotification]
        attr_accessor :notification
      
        # Message priority. Can take "normal" and "high" values.
        # For more information, see [Setting the priority of a
        # message](https://goo.gl/GjONJv).
        # Corresponds to the JSON property `priority`
        # @return [String]
        attr_accessor :priority
      
        # Package name of the application where the registration token must match in
        # order to receive the message.
        # Corresponds to the JSON property `restrictedPackageName`
        # @return [String]
        attr_accessor :restricted_package_name
      
        # How long (in seconds) the message should be kept in FCM storage if the
        # device is offline. The maximum time to live supported is 4 weeks, and the
        # default value is 4 weeks if not set. Set it to 0 if want to send the
        # message immediately.
        # In JSON format, the Duration type is encoded as a string rather than an
        # object, where the string ends in the suffix "s" (indicating seconds) and
        # is preceded by the number of seconds, with nanoseconds expressed as
        # fractional seconds. For example, 3 seconds with 0 nanoseconds should be
        # encoded in JSON format as "3s", while 3 seconds and 1 nanosecond should
        # be expressed in JSON format as "3.000000001s". The ttl will be rounded down
        # to the nearest second.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapse_key = args[:collapse_key] if args.key?(:collapse_key)
          @data = args[:data] if args.key?(:data)
          @fcm_options = args[:fcm_options] if args.key?(:fcm_options)
          @notification = args[:notification] if args.key?(:notification)
          @priority = args[:priority] if args.key?(:priority)
          @restricted_package_name = args[:restricted_package_name] if args.key?(:restricted_package_name)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # Options for features provided by the FCM SDK for Android.
      class AndroidFcmOptions
        include Google::Apis::Core::Hashable
      
        # Label associated with the message's analytics data.
        # Corresponds to the JSON property `analyticsLabel`
        # @return [String]
        attr_accessor :analytics_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_label = args[:analytics_label] if args.key?(:analytics_label)
        end
      end
      
      # Notification to send to android devices.
      class AndroidNotification
        include Google::Apis::Core::Hashable
      
        # The notification's body text. If present, it will override
        # google.firebase.fcm.v1.Notification.body.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Variable string values to be used in place of the format specifiers in
        # body_loc_key to use to localize the body text to the user's current
        # localization.
        # See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
        # Corresponds to the JSON property `bodyLocArgs`
        # @return [Array<String>]
        attr_accessor :body_loc_args
      
        # The key to the body string in the app's string resources to use to localize
        # the body text to the user's current localization.
        # See [String Resources](https://goo.gl/NdFZGI) for more information.
        # Corresponds to the JSON property `bodyLocKey`
        # @return [String]
        attr_accessor :body_loc_key
      
        # The [notification's channel
        # id](https://developer.android.com/guide/topics/ui/notifiers/notifications#
        # ManageChannels)
        # (new in Android O). The app must create a channel with this channel ID
        # before any notification with this channel ID is received. If you don't send
        # this channel ID in the request, or if the channel ID provided has not yet
        # been created by the app, FCM uses the channel ID specified in the app
        # manifest.
        # Corresponds to the JSON property `channelId`
        # @return [String]
        attr_accessor :channel_id
      
        # The action associated with a user click on the notification.
        # If specified, an activity with a matching intent filter is launched when
        # a user clicks on the notification.
        # Corresponds to the JSON property `clickAction`
        # @return [String]
        attr_accessor :click_action
      
        # The notification's icon color, expressed in #rrggbb format.
        # Corresponds to the JSON property `color`
        # @return [String]
        attr_accessor :color
      
        # The notification's icon.
        # Sets the notification icon to myicon for drawable resource myicon.
        # If you don't send this key in the request, FCM displays the launcher icon
        # specified in your app manifest.
        # Corresponds to the JSON property `icon`
        # @return [String]
        attr_accessor :icon
      
        # Contains the URL of an image that is going to be displayed in a
        # notification. If present, it will override
        # google.firebase.fcm.v1.Notification.image.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # The sound to play when the device receives the notification.
        # Supports "default" or the filename of a sound resource bundled in the app.
        # Sound files must reside in /res/raw/.
        # Corresponds to the JSON property `sound`
        # @return [String]
        attr_accessor :sound
      
        # Identifier used to replace existing notifications in the notification
        # drawer.
        # If not specified, each request creates a new notification.
        # If specified and a notification with the same tag is already being shown,
        # the new notification replaces the existing one in the notification drawer.
        # Corresponds to the JSON property `tag`
        # @return [String]
        attr_accessor :tag
      
        # The notification's title. If present, it will override
        # google.firebase.fcm.v1.Notification.title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Variable string values to be used in place of the format specifiers in
        # title_loc_key to use to localize the title text to the user's current
        # localization.
        # See [Formatting and Styling](https://goo.gl/MalYE3) for more information.
        # Corresponds to the JSON property `titleLocArgs`
        # @return [Array<String>]
        attr_accessor :title_loc_args
      
        # The key to the title string in the app's string resources to use to
        # localize the title text to the user's current localization.
        # See [String Resources](https://goo.gl/NdFZGI) for more information.
        # Corresponds to the JSON property `titleLocKey`
        # @return [String]
        attr_accessor :title_loc_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @body_loc_args = args[:body_loc_args] if args.key?(:body_loc_args)
          @body_loc_key = args[:body_loc_key] if args.key?(:body_loc_key)
          @channel_id = args[:channel_id] if args.key?(:channel_id)
          @click_action = args[:click_action] if args.key?(:click_action)
          @color = args[:color] if args.key?(:color)
          @icon = args[:icon] if args.key?(:icon)
          @image = args[:image] if args.key?(:image)
          @sound = args[:sound] if args.key?(:sound)
          @tag = args[:tag] if args.key?(:tag)
          @title = args[:title] if args.key?(:title)
          @title_loc_args = args[:title_loc_args] if args.key?(:title_loc_args)
          @title_loc_key = args[:title_loc_key] if args.key?(:title_loc_key)
        end
      end
      
      # [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
      class ApnsConfig
        include Google::Apis::Core::Hashable
      
        # Options for features provided by the FCM SDK for iOS.
        # Corresponds to the JSON property `fcmOptions`
        # @return [Google::Apis::FcmV1::ApnsFcmOptions]
        attr_accessor :fcm_options
      
        # HTTP request headers defined in Apple Push Notification Service. Refer to
        # [APNs request headers](https://goo.gl/C6Yhia) for
        # supported headers, e.g. "apns-priority": "10".
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # APNs payload as a JSON object, including both `aps` dictionary and custom
        # payload. See [Payload Key Reference](https://goo.gl/32Pl5W).
        # If present, it overrides google.firebase.fcm.v1.Notification.title
        # and google.firebase.fcm.v1.Notification.body.
        # Corresponds to the JSON property `payload`
        # @return [Hash<String,Object>]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fcm_options = args[:fcm_options] if args.key?(:fcm_options)
          @headers = args[:headers] if args.key?(:headers)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # Options for features provided by the FCM SDK for iOS.
      class ApnsFcmOptions
        include Google::Apis::Core::Hashable
      
        # Label associated with the message's analytics data.
        # Corresponds to the JSON property `analyticsLabel`
        # @return [String]
        attr_accessor :analytics_label
      
        # Contains the URL of an image that is going to be displayed in a
        # notification. If present, it will override
        # google.firebase.fcm.v1.Notification.image.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_label = args[:analytics_label] if args.key?(:analytics_label)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # Platform independent options for features provided by the FCM SDKs.
      class FcmOptions
        include Google::Apis::Core::Hashable
      
        # Label associated with the message's analytics data.
        # Corresponds to the JSON property `analyticsLabel`
        # @return [String]
        attr_accessor :analytics_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_label = args[:analytics_label] if args.key?(:analytics_label)
        end
      end
      
      # Message to send by Firebase Cloud Messaging Service.
      class Message
        include Google::Apis::Core::Hashable
      
        # Android specific options for messages sent through
        # [FCM connection server](https://goo.gl/4GLdUl).
        # Corresponds to the JSON property `android`
        # @return [Google::Apis::FcmV1::AndroidConfig]
        attr_accessor :android
      
        # [Apple Push Notification Service](https://goo.gl/MXRTPa) specific options.
        # Corresponds to the JSON property `apns`
        # @return [Google::Apis::FcmV1::ApnsConfig]
        attr_accessor :apns
      
        # Condition to send a message to,
        # e.g. "'foo' in topics && 'bar' in topics".
        # Corresponds to the JSON property `condition`
        # @return [String]
        attr_accessor :condition
      
        # Input only. Arbitrary key/value payload.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,String>]
        attr_accessor :data
      
        # Platform independent options for features provided by the FCM SDKs.
        # Corresponds to the JSON property `fcmOptions`
        # @return [Google::Apis::FcmV1::FcmOptions]
        attr_accessor :fcm_options
      
        # Output Only. The identifier of the message sent, in the format of
        # `projects/*/messages/`message_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Basic notification template to use across all platforms.
        # Corresponds to the JSON property `notification`
        # @return [Google::Apis::FcmV1::Notification]
        attr_accessor :notification
      
        # Registration token to send a message to.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        # Topic name to send a message to, e.g. "weather".
        # Note: "/topics/" prefix should not be provided.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        # [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
        # Corresponds to the JSON property `webpush`
        # @return [Google::Apis::FcmV1::WebpushConfig]
        attr_accessor :webpush
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android = args[:android] if args.key?(:android)
          @apns = args[:apns] if args.key?(:apns)
          @condition = args[:condition] if args.key?(:condition)
          @data = args[:data] if args.key?(:data)
          @fcm_options = args[:fcm_options] if args.key?(:fcm_options)
          @name = args[:name] if args.key?(:name)
          @notification = args[:notification] if args.key?(:notification)
          @token = args[:token] if args.key?(:token)
          @topic = args[:topic] if args.key?(:topic)
          @webpush = args[:webpush] if args.key?(:webpush)
        end
      end
      
      # Basic notification template to use across all platforms.
      class Notification
        include Google::Apis::Core::Hashable
      
        # The notification's body text.
        # Corresponds to the JSON property `body`
        # @return [String]
        attr_accessor :body
      
        # Contains the URL of an image that is going to be downloaded on the device
        # and displayed in a notification.
        # JPEG, PNG, BMP have full support across platforms. Animated GIF and video
        # only work on iOS. WebP and HEIF have varying levels of support across
        # platforms and platform versions.
        # Android has 1MB image size limit.
        # Quota usage and implications/costs for hosting image on Firebase Storage:
        # https://firebase.google.com/pricing
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # The notification's title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] if args.key?(:body)
          @image = args[:image] if args.key?(:image)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Request to send a message to specified target.
      class SendMessageRequest
        include Google::Apis::Core::Hashable
      
        # Message to send by Firebase Cloud Messaging Service.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::FcmV1::Message]
        attr_accessor :message
      
        # Flag for testing the request without actually delivering the message.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # [Webpush protocol](https://tools.ietf.org/html/rfc8030) options.
      class WebpushConfig
        include Google::Apis::Core::Hashable
      
        # Arbitrary key/value payload. If present, it will override
        # google.firebase.fcm.v1.Message.data.
        # Corresponds to the JSON property `data`
        # @return [Hash<String,String>]
        attr_accessor :data
      
        # Options for features provided by the FCM SDK for Web.
        # Corresponds to the JSON property `fcmOptions`
        # @return [Google::Apis::FcmV1::WebpushFcmOptions]
        attr_accessor :fcm_options
      
        # HTTP headers defined in webpush protocol. Refer to
        # [Webpush protocol](https://tools.ietf.org/html/rfc8030#section-5) for
        # supported headers, e.g. "TTL": "15".
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # Web Notification options as a JSON object. Supports Notification instance
        # properties as defined in [Web Notification
        # API](https://developer.mozilla.org/en-US/docs/Web/API/Notification). If
        # present, "title" and "body" fields override
        # [google.firebase.fcm.v1.Notification.title] and
        # [google.firebase.fcm.v1.Notification.body].
        # Corresponds to the JSON property `notification`
        # @return [Hash<String,Object>]
        attr_accessor :notification
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @fcm_options = args[:fcm_options] if args.key?(:fcm_options)
          @headers = args[:headers] if args.key?(:headers)
          @notification = args[:notification] if args.key?(:notification)
        end
      end
      
      # Options for features provided by the FCM SDK for Web.
      class WebpushFcmOptions
        include Google::Apis::Core::Hashable
      
        # The link to open when the user clicks on the notification.
        # For all URL values, HTTPS is required.
        # Corresponds to the JSON property `link`
        # @return [String]
        attr_accessor :link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
        end
      end
    end
  end
end
