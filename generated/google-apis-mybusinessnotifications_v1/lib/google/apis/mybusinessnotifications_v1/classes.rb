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
    module MybusinessnotificationsV1
      
      # A Google Pub/Sub topic where notifications can be published when a location is
      # updated or has a new review. There will be only one notification setting
      # resource per-account.
      class NotificationSetting
        include Google::Apis::Core::Hashable
      
        # Required. The resource name this setting is for. This is of the form `accounts/
        # `account_id`/notificationSetting`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The types of notifications that will be sent to the Pub/Sub topic. To stop
        # receiving notifications entirely, use NotificationSettings.
        # UpdateNotificationSetting with an empty notification_types or set the
        # pubsub_topic to an empty string.
        # Corresponds to the JSON property `notificationTypes`
        # @return [Array<String>]
        attr_accessor :notification_types
      
        # Optional. The Google Pub/Sub topic that will receive notifications when
        # locations managed by this account are updated. If unset, no notifications will
        # be posted. The account mybusiness-api-pubsub@system.gserviceaccount.com must
        # have at least Publish permissions on the Pub/Sub topic.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [String]
        attr_accessor :pubsub_topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @notification_types = args[:notification_types] if args.key?(:notification_types)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
        end
      end
    end
  end
end
