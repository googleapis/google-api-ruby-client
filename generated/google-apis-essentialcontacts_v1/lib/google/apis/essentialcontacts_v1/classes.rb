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
    module EssentialcontactsV1
      
      # Response message for the ComputeContacts method.
      class GoogleCloudEssentialcontactsV1ComputeContactsResponse
        include Google::Apis::Core::Hashable
      
        # All contacts for the resource that are subscribed to the specified
        # notification categories, including contacts inherited from any parent
        # resources.
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact>]
        attr_accessor :contacts
      
        # If there are more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token` and the rest of the
        # parameters the same as the original request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A contact that will receive notifications from Google Cloud.
      class GoogleCloudEssentialcontactsV1Contact
        include Google::Apis::Core::Hashable
      
        # Required. The email address to send notifications to. The email address does
        # not need to be a Google Account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Required. The preferred language for notifications, as a ISO 639-1 language
        # code. See [Supported languages](https://cloud.google.com/resource-manager/docs/
        # managing-notification-contacts#supported-languages) for a list of supported
        # languages.
        # Corresponds to the JSON property `languageTag`
        # @return [String]
        attr_accessor :language_tag
      
        # Output only. The identifier for the contact. Format: `resource_type`/`
        # resource_id`/contacts/`contact_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The categories of notifications that the contact will receive
        # communications for.
        # Corresponds to the JSON property `notificationCategorySubscriptions`
        # @return [Array<String>]
        attr_accessor :notification_category_subscriptions
      
        # The last time the validation_state was updated, either manually or
        # automatically. A contact is considered stale if its validation state was
        # updated more than 1 year ago.
        # Corresponds to the JSON property `validateTime`
        # @return [String]
        attr_accessor :validate_time
      
        # The validity of the contact. A contact is considered valid if it is the
        # correct recipient for notifications for a particular resource.
        # Corresponds to the JSON property `validationState`
        # @return [String]
        attr_accessor :validation_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @language_tag = args[:language_tag] if args.key?(:language_tag)
          @name = args[:name] if args.key?(:name)
          @notification_category_subscriptions = args[:notification_category_subscriptions] if args.key?(:notification_category_subscriptions)
          @validate_time = args[:validate_time] if args.key?(:validate_time)
          @validation_state = args[:validation_state] if args.key?(:validation_state)
        end
      end
      
      # Response message for the ListContacts method.
      class GoogleCloudEssentialcontactsV1ListContactsResponse
        include Google::Apis::Core::Hashable
      
        # The contacts for the specified resource.
        # Corresponds to the JSON property `contacts`
        # @return [Array<Google::Apis::EssentialcontactsV1::GoogleCloudEssentialcontactsV1Contact>]
        attr_accessor :contacts
      
        # If there are more results than those appearing in this response, then `
        # next_page_token` is included. To get the next set of results, call this method
        # again using the value of `next_page_token` as `page_token` and the rest of the
        # parameters the same as the original request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for the SendTestMessage method.
      class GoogleCloudEssentialcontactsV1SendTestMessageRequest
        include Google::Apis::Core::Hashable
      
        # Required. The list of names of the contacts to send a test message to. Format:
        # organizations/`organization_id`/contacts/`contact_id`, folders/`folder_id`/
        # contacts/`contact_id` or projects/`project_id`/contacts/`contact_id`
        # Corresponds to the JSON property `contacts`
        # @return [Array<String>]
        attr_accessor :contacts
      
        # Required. The notification category to send the test message for. All contacts
        # must be subscribed to this category.
        # Corresponds to the JSON property `notificationCategory`
        # @return [String]
        attr_accessor :notification_category
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
          @notification_category = args[:notification_category] if args.key?(:notification_category)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
