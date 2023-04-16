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
      
      class GoogleCloudAdvisorynotificationsV1Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1Csv
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1CsvCsvRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1ListNotificationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1MessageBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1Notification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1Subject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1Text
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudAdvisorynotificationsV1Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :csv, as: 'csv', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Csv, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Csv::Representation
      
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1Csv
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_rows, as: 'dataRows', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1CsvCsvRow, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1CsvCsvRow::Representation
      
          collection :headers, as: 'headers'
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1CsvCsvRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries'
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1ListNotificationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notifications, as: 'notifications', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Notification::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Attachment, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Attachment::Representation
      
          property :body, as: 'body', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1MessageBody, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1MessageBody::Representation
      
          property :create_time, as: 'createTime'
          property :localization_time, as: 'localizationTime'
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1MessageBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Text, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Text::Representation
      
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1Notification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          collection :messages, as: 'messages', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Message, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Message::Representation
      
          property :name, as: 'name'
          property :notification_type, as: 'notificationType'
          property :subject, as: 'subject', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Subject, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Subject::Representation
      
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text', class: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Text, decorator: Google::Apis::AdvisorynotificationsV1::GoogleCloudAdvisorynotificationsV1Text::Representation
      
        end
      end
      
      class GoogleCloudAdvisorynotificationsV1Text
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :en_text, as: 'enText'
          property :localization_state, as: 'localizationState'
          property :localized_text, as: 'localizedText'
        end
      end
    end
  end
end
