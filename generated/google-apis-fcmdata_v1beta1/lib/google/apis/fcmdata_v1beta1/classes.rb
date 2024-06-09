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
    module FcmdataV1beta1
      
      # Message delivery data for a given date, app, and analytics label combination.
      class GoogleFirebaseFcmDataV1beta1AndroidDeliveryData
        include Google::Apis::Core::Hashable
      
        # The analytics label associated with the messages sent. All messages sent
        # without an analytics label will be grouped together in a single entry.
        # Corresponds to the JSON property `analyticsLabel`
        # @return [String]
        attr_accessor :analytics_label
      
        # The app ID to which the messages were sent.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # Data detailing messaging delivery
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1Data]
        attr_accessor :data
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::FcmdataV1beta1::GoogleTypeDate]
        attr_accessor :date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_label = args[:analytics_label] if args.key?(:analytics_label)
          @app_id = args[:app_id] if args.key?(:app_id)
          @data = args[:data] if args.key?(:data)
          @date = args[:date] if args.key?(:date)
        end
      end
      
      # Data detailing messaging delivery
      class GoogleFirebaseFcmDataV1beta1Data
        include Google::Apis::Core::Hashable
      
        # Count of messages accepted by FCM intended for Android devices. The targeted
        # device must have opted in to the collection of usage and diagnostic
        # information.
        # Corresponds to the JSON property `countMessagesAccepted`
        # @return [Fixnum]
        attr_accessor :count_messages_accepted
      
        # Count of notifications accepted by FCM intended for Android devices. The
        # targeted device must have opted in to the collection of usage and diagnostic
        # information.
        # Corresponds to the JSON property `countNotificationsAccepted`
        # @return [Fixnum]
        attr_accessor :count_notifications_accepted
      
        # Overview of delivery performance for messages that were successfully delivered.
        # All percentages are calculated with countMessagesAccepted as the denominator.
        # These categories are not mutually exclusive; a message can be delayed for
        # multiple reasons.
        # Corresponds to the JSON property `deliveryPerformancePercents`
        # @return [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents]
        attr_accessor :delivery_performance_percents
      
        # Additional information about message delivery. All percentages are calculated
        # with countMessagesAccepted as the denominator.
        # Corresponds to the JSON property `messageInsightPercents`
        # @return [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1MessageInsightPercents]
        attr_accessor :message_insight_percents
      
        # Percentage breakdown of message delivery outcomes. These categories are
        # mutually exclusive. All percentages are calculated with countMessagesAccepted
        # as the denominator. These categories may not account for all message outcomes.
        # Corresponds to the JSON property `messageOutcomePercents`
        # @return [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1MessageOutcomePercents]
        attr_accessor :message_outcome_percents
      
        # Additional information about [proxy notification](https://firebase.google.com/
        # docs/cloud-messaging/android/message-priority#proxy) delivery. All percentages
        # are calculated with countNotificationsAccepted as the denominator.
        # Corresponds to the JSON property `proxyNotificationInsightPercents`
        # @return [Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents]
        attr_accessor :proxy_notification_insight_percents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count_messages_accepted = args[:count_messages_accepted] if args.key?(:count_messages_accepted)
          @count_notifications_accepted = args[:count_notifications_accepted] if args.key?(:count_notifications_accepted)
          @delivery_performance_percents = args[:delivery_performance_percents] if args.key?(:delivery_performance_percents)
          @message_insight_percents = args[:message_insight_percents] if args.key?(:message_insight_percents)
          @message_outcome_percents = args[:message_outcome_percents] if args.key?(:message_outcome_percents)
          @proxy_notification_insight_percents = args[:proxy_notification_insight_percents] if args.key?(:proxy_notification_insight_percents)
        end
      end
      
      # Overview of delivery performance for messages that were successfully delivered.
      # All percentages are calculated with countMessagesAccepted as the denominator.
      # These categories are not mutually exclusive; a message can be delayed for
      # multiple reasons.
      class GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents
        include Google::Apis::Core::Hashable
      
        # The percentage of accepted messages that were delayed because the device was
        # in doze mode. Only [normal priority messages](https://firebase.google.com/docs/
        # cloud-messaging/concept-options#setting-the-priority-of-a-message) should be
        # delayed due to doze mode.
        # Corresponds to the JSON property `delayedDeviceDoze`
        # @return [Float]
        attr_accessor :delayed_device_doze
      
        # The percentage of accepted messages that were delayed because the target
        # device was not connected at the time of sending. These messages were
        # eventually delivered when the device reconnected.
        # Corresponds to the JSON property `delayedDeviceOffline`
        # @return [Float]
        attr_accessor :delayed_device_offline
      
        # The percentage of accepted messages that were delayed due to message
        # throttling, such as [collapsible message throttling](https://firebase.google.
        # com/docs/cloud-messaging/concept-options#collapsible_throttling) or [maximum
        # message rate throttling](https://firebase.google.com/docs/cloud-messaging/
        # concept-options#device_throttling).
        # Corresponds to the JSON property `delayedMessageThrottled`
        # @return [Float]
        attr_accessor :delayed_message_throttled
      
        # The percentage of accepted messages that were delayed because the intended
        # device user-profile was [stopped](https://firebase.google.com/docs/cloud-
        # messaging/android/receive#handling_messages) on the target device at the time
        # of the send. The messages were eventually delivered when the user-profile was
        # started again.
        # Corresponds to the JSON property `delayedUserStopped`
        # @return [Float]
        attr_accessor :delayed_user_stopped
      
        # The percentage of accepted messages that were delivered to the device without
        # delay from the FCM system.
        # Corresponds to the JSON property `deliveredNoDelay`
        # @return [Float]
        attr_accessor :delivered_no_delay
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delayed_device_doze = args[:delayed_device_doze] if args.key?(:delayed_device_doze)
          @delayed_device_offline = args[:delayed_device_offline] if args.key?(:delayed_device_offline)
          @delayed_message_throttled = args[:delayed_message_throttled] if args.key?(:delayed_message_throttled)
          @delayed_user_stopped = args[:delayed_user_stopped] if args.key?(:delayed_user_stopped)
          @delivered_no_delay = args[:delivered_no_delay] if args.key?(:delivered_no_delay)
        end
      end
      
      # Response message for ListAndroidDeliveryData.
      class GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse
        include Google::Apis::Core::Hashable
      
        # The delivery data for the provided app. There will be one entry per
        # combination of app, date, and analytics label.
        # Corresponds to the JSON property `androidDeliveryData`
        # @return [Array<Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1AndroidDeliveryData>]
        attr_accessor :android_delivery_data
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_delivery_data = args[:android_delivery_data] if args.key?(:android_delivery_data)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Additional information about message delivery. All percentages are calculated
      # with countMessagesAccepted as the denominator.
      class GoogleFirebaseFcmDataV1beta1MessageInsightPercents
        include Google::Apis::Core::Hashable
      
        # The percentage of accepted messages that had their priority lowered from high
        # to normal. See [documentation for setting message priority](https://firebase.
        # google.com/docs/cloud-messaging/android/message-priority).
        # Corresponds to the JSON property `priorityLowered`
        # @return [Float]
        attr_accessor :priority_lowered
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @priority_lowered = args[:priority_lowered] if args.key?(:priority_lowered)
        end
      end
      
      # Percentage breakdown of message delivery outcomes. These categories are
      # mutually exclusive. All percentages are calculated with countMessagesAccepted
      # as the denominator. These categories may not account for all message outcomes.
      class GoogleFirebaseFcmDataV1beta1MessageOutcomePercents
        include Google::Apis::Core::Hashable
      
        # The percentage of accepted messages that were [collapsed](https://firebase.
        # google.com/docs/cloud-messaging/concept-options#collapsible_and_non-
        # collapsible_messages) by another message.
        # Corresponds to the JSON property `collapsed`
        # @return [Float]
        attr_accessor :collapsed
      
        # The percentage of all accepted messages that were successfully delivered to
        # the device.
        # Corresponds to the JSON property `delivered`
        # @return [Float]
        attr_accessor :delivered
      
        # The percentage of accepted messages that were dropped because the application
        # was force stopped on the device at the time of delivery and retries were
        # unsuccessful.
        # Corresponds to the JSON property `droppedAppForceStopped`
        # @return [Float]
        attr_accessor :dropped_app_force_stopped
      
        # The percentage of accepted messages that were dropped because the target
        # device is inactive. FCM will drop messages if the target device is deemed
        # inactive by our servers. If a device does reconnect, we call [
        # OnDeletedMessages()](https://firebase.google.com/docs/cloud-messaging/android/
        # receive#override-ondeletedmessages) in our SDK instead of delivering the
        # messages.
        # Corresponds to the JSON property `droppedDeviceInactive`
        # @return [Float]
        attr_accessor :dropped_device_inactive
      
        # The percentage of accepted messages that were dropped due to [too many
        # undelivered non-collapsible messages](https://firebase.google.com/docs/cloud-
        # messaging/concept-options#collapsible_and_non-collapsible_messages).
        # Specifically, each app instance can only have 100 pending messages stored on
        # our servers for a device which is disconnected. When that device reconnects,
        # those messages are delivered. When there are more than the maximum pending
        # messages, we call [OnDeletedMessages()](https://firebase.google.com/docs/cloud-
        # messaging/android/receive#override-ondeletedmessages) in our SDK instead of
        # delivering the messages.
        # Corresponds to the JSON property `droppedTooManyPendingMessages`
        # @return [Float]
        attr_accessor :dropped_too_many_pending_messages
      
        # The percentage of accepted messages that expired because [Time To Live (TTL)](
        # https://firebase.google.com/docs/cloud-messaging/concept-options#ttl) elapsed
        # before the target device reconnected.
        # Corresponds to the JSON property `droppedTtlExpired`
        # @return [Float]
        attr_accessor :dropped_ttl_expired
      
        # The percentage of messages accepted on this day that were not dropped and not
        # delivered, due to the device being disconnected (as of the end of the America/
        # Los_Angeles day when the message was sent to FCM). A portion of these messages
        # will be delivered the next day when the device connects but others may be
        # destined to devices that ultimately never reconnect.
        # Corresponds to the JSON property `pending`
        # @return [Float]
        attr_accessor :pending
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collapsed = args[:collapsed] if args.key?(:collapsed)
          @delivered = args[:delivered] if args.key?(:delivered)
          @dropped_app_force_stopped = args[:dropped_app_force_stopped] if args.key?(:dropped_app_force_stopped)
          @dropped_device_inactive = args[:dropped_device_inactive] if args.key?(:dropped_device_inactive)
          @dropped_too_many_pending_messages = args[:dropped_too_many_pending_messages] if args.key?(:dropped_too_many_pending_messages)
          @dropped_ttl_expired = args[:dropped_ttl_expired] if args.key?(:dropped_ttl_expired)
          @pending = args[:pending] if args.key?(:pending)
        end
      end
      
      # Additional information about [proxy notification](https://firebase.google.com/
      # docs/cloud-messaging/android/message-priority#proxy) delivery. All percentages
      # are calculated with countNotificationsAccepted as the denominator.
      class GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents
        include Google::Apis::Core::Hashable
      
        # The percentage of accepted notifications that failed to be proxied. This is
        # usually caused by exceptions that occurred while calling [notifyAsPackage](
        # https://developer.android.com/reference/android/app/NotificationManager#
        # notifyAsPackage%28java.lang.String,%20java.lang.String,%20int,%20android.app.
        # Notification%29).
        # Corresponds to the JSON property `failed`
        # @return [Float]
        attr_accessor :failed
      
        # The percentage of accepted notifications that were successfully proxied by [
        # Google Play services](https://developers.google.com/android/guides/overview).
        # Corresponds to the JSON property `proxied`
        # @return [Float]
        attr_accessor :proxied
      
        # The percentage of accepted notifications that were skipped because the
        # messages were not throttled.
        # Corresponds to the JSON property `skippedNotThrottled`
        # @return [Float]
        attr_accessor :skipped_not_throttled
      
        # The percentage of accepted notifications that were skipped because the app
        # disallowed these messages to be proxied.
        # Corresponds to the JSON property `skippedOptedOut`
        # @return [Float]
        attr_accessor :skipped_opted_out
      
        # The percentage of accepted notifications that were skipped because
        # configurations required for notifications to be proxied were missing.
        # Corresponds to the JSON property `skippedUnconfigured`
        # @return [Float]
        attr_accessor :skipped_unconfigured
      
        # The percentage of accepted notifications that were skipped because proxy
        # notification is unsupported for the recipient.
        # Corresponds to the JSON property `skippedUnsupported`
        # @return [Float]
        attr_accessor :skipped_unsupported
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failed = args[:failed] if args.key?(:failed)
          @proxied = args[:proxied] if args.key?(:proxied)
          @skipped_not_throttled = args[:skipped_not_throttled] if args.key?(:skipped_not_throttled)
          @skipped_opted_out = args[:skipped_opted_out] if args.key?(:skipped_opted_out)
          @skipped_unconfigured = args[:skipped_unconfigured] if args.key?(:skipped_unconfigured)
          @skipped_unsupported = args[:skipped_unsupported] if args.key?(:skipped_unsupported)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class GoogleTypeDate
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
    end
  end
end
