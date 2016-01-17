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
    module GmailV1
      
      # A draft email in the user's mailbox.
      class Draft
        include Google::Apis::Core::Hashable
      
        # The immutable ID of the draft.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # An email message.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::GmailV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # A record of a change to the user's mailbox. Each history change may affect
      # multiple messages in multiple ways.
      class History
        include Google::Apis::Core::Hashable
      
        # The mailbox sequence ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Labels added to messages in this history record.
        # Corresponds to the JSON property `labelsAdded`
        # @return [Array<Google::Apis::GmailV1::HistoryLabelAdded>]
        attr_accessor :labels_added
      
        # Labels removed from messages in this history record.
        # Corresponds to the JSON property `labelsRemoved`
        # @return [Array<Google::Apis::GmailV1::HistoryLabelRemoved>]
        attr_accessor :labels_removed
      
        # List of messages changed in this history record. The fields for specific
        # change types, such as messagesAdded may duplicate messages in this field. We
        # recommend using the specific change-type fields instead of this.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::GmailV1::Message>]
        attr_accessor :messages
      
        # Messages added to the mailbox in this history record.
        # Corresponds to the JSON property `messagesAdded`
        # @return [Array<Google::Apis::GmailV1::HistoryMessageAdded>]
        attr_accessor :messages_added
      
        # Messages deleted (not Trashed) from the mailbox in this history record.
        # Corresponds to the JSON property `messagesDeleted`
        # @return [Array<Google::Apis::GmailV1::HistoryMessageDeleted>]
        attr_accessor :messages_deleted
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @labels_added = args[:labels_added] unless args[:labels_added].nil?
          @labels_removed = args[:labels_removed] unless args[:labels_removed].nil?
          @messages = args[:messages] unless args[:messages].nil?
          @messages_added = args[:messages_added] unless args[:messages_added].nil?
          @messages_deleted = args[:messages_deleted] unless args[:messages_deleted].nil?
        end
      end
      
      # 
      class HistoryLabelAdded
        include Google::Apis::Core::Hashable
      
        # Label IDs added to the message.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<String>]
        attr_accessor :label_ids
      
        # An email message.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::GmailV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_ids = args[:label_ids] unless args[:label_ids].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # 
      class HistoryLabelRemoved
        include Google::Apis::Core::Hashable
      
        # Label IDs removed from the message.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<String>]
        attr_accessor :label_ids
      
        # An email message.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::GmailV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_ids = args[:label_ids] unless args[:label_ids].nil?
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # 
      class HistoryMessageAdded
        include Google::Apis::Core::Hashable
      
        # An email message.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::GmailV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # 
      class HistoryMessageDeleted
        include Google::Apis::Core::Hashable
      
        # An email message.
        # Corresponds to the JSON property `message`
        # @return [Google::Apis::GmailV1::Message]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] unless args[:message].nil?
        end
      end
      
      # Labels are used to categorize messages and threads within the user's mailbox.
      class Label
        include Google::Apis::Core::Hashable
      
        # The immutable ID of the label.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The visibility of the label in the label list in the Gmail web interface.
        # Corresponds to the JSON property `labelListVisibility`
        # @return [String]
        attr_accessor :label_list_visibility
      
        # The visibility of the label in the message list in the Gmail web interface.
        # Corresponds to the JSON property `messageListVisibility`
        # @return [String]
        attr_accessor :message_list_visibility
      
        # The total number of messages with the label.
        # Corresponds to the JSON property `messagesTotal`
        # @return [Fixnum]
        attr_accessor :messages_total
      
        # The number of unread messages with the label.
        # Corresponds to the JSON property `messagesUnread`
        # @return [Fixnum]
        attr_accessor :messages_unread
      
        # The display name of the label.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The total number of threads with the label.
        # Corresponds to the JSON property `threadsTotal`
        # @return [Fixnum]
        attr_accessor :threads_total
      
        # The number of unread threads with the label.
        # Corresponds to the JSON property `threadsUnread`
        # @return [Fixnum]
        attr_accessor :threads_unread
      
        # The owner type for the label. User labels are created by the user and can be
        # modified and deleted by the user and can be applied to any message or thread.
        # System labels are internally created and cannot be added, modified, or deleted.
        # System labels may be able to be applied to or removed from messages and
        # threads under some circumstances but this is not guaranteed. For example,
        # users can apply and remove the INBOX and UNREAD labels from messages and
        # threads, but cannot apply or remove the DRAFTS or SENT labels from messages or
        # threads.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @label_list_visibility = args[:label_list_visibility] unless args[:label_list_visibility].nil?
          @message_list_visibility = args[:message_list_visibility] unless args[:message_list_visibility].nil?
          @messages_total = args[:messages_total] unless args[:messages_total].nil?
          @messages_unread = args[:messages_unread] unless args[:messages_unread].nil?
          @name = args[:name] unless args[:name].nil?
          @threads_total = args[:threads_total] unless args[:threads_total].nil?
          @threads_unread = args[:threads_unread] unless args[:threads_unread].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # 
      class ListDraftsResponse
        include Google::Apis::Core::Hashable
      
        # List of drafts.
        # Corresponds to the JSON property `drafts`
        # @return [Array<Google::Apis::GmailV1::Draft>]
        attr_accessor :drafts
      
        # Token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Estimated total number of results.
        # Corresponds to the JSON property `resultSizeEstimate`
        # @return [Fixnum]
        attr_accessor :result_size_estimate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drafts = args[:drafts] unless args[:drafts].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @result_size_estimate = args[:result_size_estimate] unless args[:result_size_estimate].nil?
        end
      end
      
      # 
      class ListHistoryResponse
        include Google::Apis::Core::Hashable
      
        # List of history records. Any messages contained in the response will typically
        # only have id and threadId fields populated.
        # Corresponds to the JSON property `history`
        # @return [Array<Google::Apis::GmailV1::History>]
        attr_accessor :history
      
        # The ID of the mailbox's current history record.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # Page token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @history = args[:history] unless args[:history].nil?
          @history_id = args[:history_id] unless args[:history_id].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # 
      class ListLabelsResponse
        include Google::Apis::Core::Hashable
      
        # List of labels.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::GmailV1::Label>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] unless args[:labels].nil?
        end
      end
      
      # 
      class ListMessagesResponse
        include Google::Apis::Core::Hashable
      
        # List of messages.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::GmailV1::Message>]
        attr_accessor :messages
      
        # Token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Estimated total number of results.
        # Corresponds to the JSON property `resultSizeEstimate`
        # @return [Fixnum]
        attr_accessor :result_size_estimate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @messages = args[:messages] unless args[:messages].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @result_size_estimate = args[:result_size_estimate] unless args[:result_size_estimate].nil?
        end
      end
      
      # 
      class ListThreadsResponse
        include Google::Apis::Core::Hashable
      
        # Page token to retrieve the next page of results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Estimated total number of results.
        # Corresponds to the JSON property `resultSizeEstimate`
        # @return [Fixnum]
        attr_accessor :result_size_estimate
      
        # List of threads.
        # Corresponds to the JSON property `threads`
        # @return [Array<Google::Apis::GmailV1::Thread>]
        attr_accessor :threads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @result_size_estimate = args[:result_size_estimate] unless args[:result_size_estimate].nil?
          @threads = args[:threads] unless args[:threads].nil?
        end
      end
      
      # An email message.
      class Message
        include Google::Apis::Core::Hashable
      
        # The ID of the last history record that modified this message.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # The immutable ID of the message.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The internal message creation timestamp (epoch ms), which determines ordering
        # in the inbox. For normal SMTP-received email, this represents the time the
        # message was originally accepted by Google, which is more reliable than the
        # Date header. However, for API-migrated mail, it can be configured by client to
        # be based on the Date header.
        # Corresponds to the JSON property `internalDate`
        # @return [String]
        attr_accessor :internal_date
      
        # List of IDs of labels applied to this message.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<String>]
        attr_accessor :label_ids
      
        # A single MIME message part.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::GmailV1::MessagePart]
        attr_accessor :payload
      
        # The entire email message in an RFC 2822 formatted and base64url encoded string.
        # Returned in messages.get and drafts.get responses when the format=RAW
        # parameter is supplied.
        # Corresponds to the JSON property `raw`
        # @return [String]
        attr_accessor :raw
      
        # Estimated size in bytes of the message.
        # Corresponds to the JSON property `sizeEstimate`
        # @return [Fixnum]
        attr_accessor :size_estimate
      
        # A short part of the message text.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # The ID of the thread the message belongs to. To add a message or draft to a
        # thread, the following criteria must be met:
        # - The requested threadId must be specified on the Message or Draft.Message you
        # supply with your request.
        # - The References and In-Reply-To headers must be set in compliance with the
        # RFC 2822 standard.
        # - The Subject headers must match.
        # Corresponds to the JSON property `threadId`
        # @return [String]
        attr_accessor :thread_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @history_id = args[:history_id] unless args[:history_id].nil?
          @id = args[:id] unless args[:id].nil?
          @internal_date = args[:internal_date] unless args[:internal_date].nil?
          @label_ids = args[:label_ids] unless args[:label_ids].nil?
          @payload = args[:payload] unless args[:payload].nil?
          @raw = args[:raw] unless args[:raw].nil?
          @size_estimate = args[:size_estimate] unless args[:size_estimate].nil?
          @snippet = args[:snippet] unless args[:snippet].nil?
          @thread_id = args[:thread_id] unless args[:thread_id].nil?
        end
      end
      
      # A single MIME message part.
      class MessagePart
        include Google::Apis::Core::Hashable
      
        # The body of a single MIME message part.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::GmailV1::MessagePartBody]
        attr_accessor :body
      
        # The filename of the attachment. Only present if this message part represents
        # an attachment.
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # List of headers on this message part. For the top-level message part,
        # representing the entire message payload, it will contain the standard RFC 2822
        # email headers such as To, From, and Subject.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::GmailV1::MessagePartHeader>]
        attr_accessor :headers
      
        # The MIME type of the message part.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The immutable ID of the message part.
        # Corresponds to the JSON property `partId`
        # @return [String]
        attr_accessor :part_id
      
        # The child MIME message parts of this part. This only applies to container MIME
        # message parts, for example multipart/*. For non- container MIME message part
        # types, such as text/plain, this field is empty. For more information, see RFC
        # 1521.
        # Corresponds to the JSON property `parts`
        # @return [Array<Google::Apis::GmailV1::MessagePart>]
        attr_accessor :parts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @body = args[:body] unless args[:body].nil?
          @filename = args[:filename] unless args[:filename].nil?
          @headers = args[:headers] unless args[:headers].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @part_id = args[:part_id] unless args[:part_id].nil?
          @parts = args[:parts] unless args[:parts].nil?
        end
      end
      
      # The body of a single MIME message part.
      class MessagePartBody
        include Google::Apis::Core::Hashable
      
        # When present, contains the ID of an external attachment that can be retrieved
        # in a separate messages.attachments.get request. When not present, the entire
        # content of the message part body is contained in the data field.
        # Corresponds to the JSON property `attachmentId`
        # @return [String]
        attr_accessor :attachment_id
      
        # The body data of a MIME message part. May be empty for MIME container types
        # that have no message body or when the body data is sent as a separate
        # attachment. An attachment ID is present if the body data is contained in a
        # separate attachment.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Total number of bytes in the body of the message part.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachment_id = args[:attachment_id] unless args[:attachment_id].nil?
          @data = args[:data] unless args[:data].nil?
          @size = args[:size] unless args[:size].nil?
        end
      end
      
      # 
      class MessagePartHeader
        include Google::Apis::Core::Hashable
      
        # The name of the header before the : separator. For example, To.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the header after the : separator. For example, someuser@example.
        # com.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # 
      class ModifyMessageRequest
        include Google::Apis::Core::Hashable
      
        # A list of IDs of labels to add to this message.
        # Corresponds to the JSON property `addLabelIds`
        # @return [Array<String>]
        attr_accessor :add_label_ids
      
        # A list IDs of labels to remove from this message.
        # Corresponds to the JSON property `removeLabelIds`
        # @return [Array<String>]
        attr_accessor :remove_label_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_label_ids = args[:add_label_ids] unless args[:add_label_ids].nil?
          @remove_label_ids = args[:remove_label_ids] unless args[:remove_label_ids].nil?
        end
      end
      
      # 
      class ModifyThreadRequest
        include Google::Apis::Core::Hashable
      
        # A list of IDs of labels to add to this thread.
        # Corresponds to the JSON property `addLabelIds`
        # @return [Array<String>]
        attr_accessor :add_label_ids
      
        # A list of IDs of labels to remove from this thread.
        # Corresponds to the JSON property `removeLabelIds`
        # @return [Array<String>]
        attr_accessor :remove_label_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_label_ids = args[:add_label_ids] unless args[:add_label_ids].nil?
          @remove_label_ids = args[:remove_label_ids] unless args[:remove_label_ids].nil?
        end
      end
      
      # Profile for a Gmail user.
      class Profile
        include Google::Apis::Core::Hashable
      
        # The user's email address.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The ID of the mailbox's current history record.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # The total number of messages in the mailbox.
        # Corresponds to the JSON property `messagesTotal`
        # @return [Fixnum]
        attr_accessor :messages_total
      
        # The total number of threads in the mailbox.
        # Corresponds to the JSON property `threadsTotal`
        # @return [Fixnum]
        attr_accessor :threads_total
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] unless args[:email_address].nil?
          @history_id = args[:history_id] unless args[:history_id].nil?
          @messages_total = args[:messages_total] unless args[:messages_total].nil?
          @threads_total = args[:threads_total] unless args[:threads_total].nil?
        end
      end
      
      # A collection of messages representing a conversation.
      class Thread
        include Google::Apis::Core::Hashable
      
        # The ID of the last history record that modified this thread.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        # The unique ID of the thread.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The list of messages in the thread.
        # Corresponds to the JSON property `messages`
        # @return [Array<Google::Apis::GmailV1::Message>]
        attr_accessor :messages
      
        # A short part of the message text.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @history_id = args[:history_id] unless args[:history_id].nil?
          @id = args[:id] unless args[:id].nil?
          @messages = args[:messages] unless args[:messages].nil?
          @snippet = args[:snippet] unless args[:snippet].nil?
        end
      end
      
      # Set up or update a new push notification watch on this user's mailbox.
      class WatchRequest
        include Google::Apis::Core::Hashable
      
        # Filtering behavior of labelIds list specified.
        # Corresponds to the JSON property `labelFilterAction`
        # @return [String]
        attr_accessor :label_filter_action
      
        # List of label_ids to restrict notifications about. By default, if unspecified,
        # all changes are pushed out. If specified then dictates which labels are
        # required for a push notification to be generated.
        # Corresponds to the JSON property `labelIds`
        # @return [Array<String>]
        attr_accessor :label_ids
      
        # A fully qualified Google Cloud Pub/Sub API topic name to publish the events to.
        # This topic name **must** already exist in Cloud Pub/Sub and you **must** have
        # already granted gmail "publish" permission on it. For example, "projects/my-
        # project-identifier/topics/my-topic-name" (using the Cloud Pub/Sub "v1" topic
        # naming format).
        # Note that the "my-project-identifier" portion must exactly match your Google
        # developer project id (the one executing this watch request).
        # Corresponds to the JSON property `topicName`
        # @return [String]
        attr_accessor :topic_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_filter_action = args[:label_filter_action] unless args[:label_filter_action].nil?
          @label_ids = args[:label_ids] unless args[:label_ids].nil?
          @topic_name = args[:topic_name] unless args[:topic_name].nil?
        end
      end
      
      # Push notification watch response.
      class WatchResponse
        include Google::Apis::Core::Hashable
      
        # When Gmail will stop sending notifications for mailbox updates (epoch millis).
        # Call watch again before this time to renew the watch.
        # Corresponds to the JSON property `expiration`
        # @return [String]
        attr_accessor :expiration
      
        # The ID of the mailbox's current history record.
        # Corresponds to the JSON property `historyId`
        # @return [String]
        attr_accessor :history_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expiration = args[:expiration] unless args[:expiration].nil?
          @history_id = args[:history_id] unless args[:history_id].nil?
        end
      end
    end
  end
end
