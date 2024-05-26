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
      
      class GoogleFirebaseFcmDataV1beta1AndroidDeliveryData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1Data
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1MessageInsightPercents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1MessageOutcomePercents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleFirebaseFcmDataV1beta1AndroidDeliveryData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics_label, as: 'analyticsLabel'
          property :app_id, as: 'appId'
          property :data, as: 'data', class: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1Data, decorator: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1Data::Representation
      
          property :date, as: 'date', class: Google::Apis::FcmdataV1beta1::GoogleTypeDate, decorator: Google::Apis::FcmdataV1beta1::GoogleTypeDate::Representation
      
        end
      end
      
      class GoogleFirebaseFcmDataV1beta1Data
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count_messages_accepted, :numeric_string => true, as: 'countMessagesAccepted'
          property :count_notifications_accepted, :numeric_string => true, as: 'countNotificationsAccepted'
          property :delivery_performance_percents, as: 'deliveryPerformancePercents', class: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents, decorator: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents::Representation
      
          property :message_insight_percents, as: 'messageInsightPercents', class: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1MessageInsightPercents, decorator: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1MessageInsightPercents::Representation
      
          property :message_outcome_percents, as: 'messageOutcomePercents', class: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1MessageOutcomePercents, decorator: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1MessageOutcomePercents::Representation
      
          property :proxy_notification_insight_percents, as: 'proxyNotificationInsightPercents', class: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents, decorator: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents::Representation
      
        end
      end
      
      class GoogleFirebaseFcmDataV1beta1DeliveryPerformancePercents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delayed_device_doze, as: 'delayedDeviceDoze'
          property :delayed_device_offline, as: 'delayedDeviceOffline'
          property :delayed_message_throttled, as: 'delayedMessageThrottled'
          property :delayed_user_stopped, as: 'delayedUserStopped'
          property :delivered_no_delay, as: 'deliveredNoDelay'
        end
      end
      
      class GoogleFirebaseFcmDataV1beta1ListAndroidDeliveryDataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :android_delivery_data, as: 'androidDeliveryData', class: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1AndroidDeliveryData, decorator: Google::Apis::FcmdataV1beta1::GoogleFirebaseFcmDataV1beta1AndroidDeliveryData::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleFirebaseFcmDataV1beta1MessageInsightPercents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority_lowered, as: 'priorityLowered'
        end
      end
      
      class GoogleFirebaseFcmDataV1beta1MessageOutcomePercents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivered, as: 'delivered'
          property :dropped_app_force_stopped, as: 'droppedAppForceStopped'
          property :dropped_device_inactive, as: 'droppedDeviceInactive'
          property :dropped_too_many_pending_messages, as: 'droppedTooManyPendingMessages'
          property :pending, as: 'pending'
        end
      end
      
      class GoogleFirebaseFcmDataV1beta1ProxyNotificationInsightPercents
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed, as: 'failed'
          property :proxied, as: 'proxied'
          property :skipped_not_throttled, as: 'skippedNotThrottled'
          property :skipped_opted_out, as: 'skippedOptedOut'
          property :skipped_unconfigured, as: 'skippedUnconfigured'
          property :skipped_unsupported, as: 'skippedUnsupported'
        end
      end
      
      class GoogleTypeDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
    end
  end
end
