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
    module AdvisorynotificationsV1
      
      # Attachment with specific information about the issue.
      class GoogleCloudAdvisorynotificationsV1Attachment
        include Google::Apis::Core::Hashable
      
        # A representation of a CSV file attachment, as a list of column headers and a
        # list of data rows.
        # Corresponds to the JSON property `csv`
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Csv]
        attr_accessor :csv
      
        # The title of the attachment.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv = args[:csv] if args.key?(:csv)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A representation of a CSV file attachment, as a list of column headers and a
      # list of data rows.
      class GoogleCloudAdvisorynotificationsV1Csv
        include Google::Apis::Core::Hashable
      
        # The list of data rows in a CSV file, as string arrays rather than as a single
        # comma-separated string.
        # Corresponds to the JSON property `dataRows`
        # @return [Array<Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1CsvCsvRow>]
        attr_accessor :data_rows
      
        # The list of headers for data columns in a CSV file.
        # Corresponds to the JSON property `headers`
        # @return [Array<String>]
        attr_accessor :headers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_rows = args[:data_rows] if args.key?(:data_rows)
          @headers = args[:headers] if args.key?(:headers)
        end
      end
      
      # A representation of a single data row in a CSV file.
      class GoogleCloudAdvisorynotificationsV1CsvCsvRow
        include Google::Apis::Core::Hashable
      
        # The data entries in a CSV file row, as a string array rather than a single
        # comma-separated string.
        # Corresponds to the JSON property `entries`
        # @return [Array<String>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Response of ListNotifications endpoint.
      class GoogleCloudAdvisorynotificationsV1ListNotificationsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of notifications under a given parent.
        # Corresponds to the JSON property `notifications`
        # @return [Array<Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification>]
        attr_accessor :notifications
      
        # Estimation of a total number of notifications.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notifications = args[:notifications] if args.key?(:notifications)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A message which contains notification details.
      class GoogleCloudAdvisorynotificationsV1Message
        include Google::Apis::Core::Hashable
      
        # The attachments to download.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Attachment>]
        attr_accessor :attachments
      
        # A message body containing text.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1MessageBody]
        attr_accessor :body
      
        # The Message creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Time when Message was localized
        # Corresponds to the JSON property `localizationTime`
        # @return [String]
        attr_accessor :localization_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @body = args[:body] if args.key?(:body)
          @create_time = args[:create_time] if args.key?(:create_time)
          @localization_time = args[:localization_time] if args.key?(:localization_time)
        end
      end
      
      # A message body containing text.
      class GoogleCloudAdvisorynotificationsV1MessageBody
        include Google::Apis::Core::Hashable
      
        # A text object containing the English text and its localized copies.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Text]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A notification object for notifying customers about security and privacy
      # issues.
      class GoogleCloudAdvisorynotificationsV1Notification
        include Google::Apis::Core::Hashable
      
        # Output only. Time the notification was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A list of messages in the notification.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Message>]
        attr_accessor :messages
      
        # The resource name of the notification. Format: organizations/`organization`/
        # locations/`location`/notifications/`notification`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of notification
        # Corresponds to the JSON property `notificationType`
        # @return [String]
        attr_accessor :notification_type
      
        # A subject line of a notification.
        # Corresponds to the JSON property `subject`
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Subject]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @messages = args[:messages] if args.key?(:messages)
          @name = args[:name] if args.key?(:name)
          @notification_type = args[:notification_type] if args.key?(:notification_type)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # A subject line of a notification.
      class GoogleCloudAdvisorynotificationsV1Subject
        include Google::Apis::Core::Hashable
      
        # A text object containing the English text and its localized copies.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Text]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # A text object containing the English text and its localized copies.
      class GoogleCloudAdvisorynotificationsV1Text
        include Google::Apis::Core::Hashable
      
        # The English copy.
        # Corresponds to the JSON property `enText`
        # @return [String]
        attr_accessor :en_text
      
        # Status of the localization.
        # Corresponds to the JSON property `localizationState`
        # @return [String]
        attr_accessor :localization_state
      
        # The requested localized copy (if applicable).
        # Corresponds to the JSON property `localizedText`
        # @return [String]
        attr_accessor :localized_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @en_text = args[:en_text] if args.key?(:en_text)
          @localization_state = args[:localization_state] if args.key?(:localization_state)
          @localized_text = args[:localized_text] if args.key?(:localized_text)
        end
      end
    end
  end
end
