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
      
      class Draft
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class History
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class HistoryLabelAdded
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class HistoryLabelRemoved
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class HistoryMessageAdded
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class HistoryMessageDeleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListDraftsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListHistoryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListLabelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListMessagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ListThreadsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MessagePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MessagePartBody
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class MessagePartHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ModifyMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class ModifyThreadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Profile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Thread
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WatchRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class WatchResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      end
      
      class Draft
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
        end
      end
      
      class History
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          collection :labels_added, as: 'labelsAdded', class: Google::Apis::GmailV1::HistoryLabelAdded, decorator: Google::Apis::GmailV1::HistoryLabelAdded::Representation
      
          collection :labels_removed, as: 'labelsRemoved', class: Google::Apis::GmailV1::HistoryLabelRemoved, decorator: Google::Apis::GmailV1::HistoryLabelRemoved::Representation
      
          collection :messages, as: 'messages', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
          collection :messages_added, as: 'messagesAdded', class: Google::Apis::GmailV1::HistoryMessageAdded, decorator: Google::Apis::GmailV1::HistoryMessageAdded::Representation
      
          collection :messages_deleted, as: 'messagesDeleted', class: Google::Apis::GmailV1::HistoryMessageDeleted, decorator: Google::Apis::GmailV1::HistoryMessageDeleted::Representation
      
        end
      end
      
      class HistoryLabelAdded
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_ids, as: 'labelIds'
          property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
        end
      end
      
      class HistoryLabelRemoved
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :label_ids, as: 'labelIds'
          property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
        end
      end
      
      class HistoryMessageAdded
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
        end
      end
      
      class HistoryMessageDeleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
        end
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :label_list_visibility, as: 'labelListVisibility'
          property :message_list_visibility, as: 'messageListVisibility'
          property :messages_total, as: 'messagesTotal'
          property :messages_unread, as: 'messagesUnread'
          property :name, as: 'name'
          property :threads_total, as: 'threadsTotal'
          property :threads_unread, as: 'threadsUnread'
          property :type, as: 'type'
        end
      end
      
      class ListDraftsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :drafts, as: 'drafts', class: Google::Apis::GmailV1::Draft, decorator: Google::Apis::GmailV1::Draft::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :result_size_estimate, as: 'resultSizeEstimate'
        end
      end
      
      class ListHistoryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :history, as: 'history', class: Google::Apis::GmailV1::History, decorator: Google::Apis::GmailV1::History::Representation
      
          property :history_id, as: 'historyId'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLabelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels', class: Google::Apis::GmailV1::Label, decorator: Google::Apis::GmailV1::Label::Representation
      
        end
      end
      
      class ListMessagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :result_size_estimate, as: 'resultSizeEstimate'
        end
      end
      
      class ListThreadsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          property :result_size_estimate, as: 'resultSizeEstimate'
          collection :threads, as: 'threads', class: Google::Apis::GmailV1::Thread, decorator: Google::Apis::GmailV1::Thread::Representation
      
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :history_id, as: 'historyId'
          property :id, as: 'id'
          property :internal_date, as: 'internalDate'
          collection :label_ids, as: 'labelIds'
          property :payload, as: 'payload', class: Google::Apis::GmailV1::MessagePart, decorator: Google::Apis::GmailV1::MessagePart::Representation
      
          property :raw, :base64 => true, as: 'raw'
          property :size_estimate, as: 'sizeEstimate'
          property :snippet, as: 'snippet'
          property :thread_id, as: 'threadId'
        end
      end
      
      class MessagePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body', class: Google::Apis::GmailV1::MessagePartBody, decorator: Google::Apis::GmailV1::MessagePartBody::Representation
      
          property :filename, as: 'filename'
          collection :headers, as: 'headers', class: Google::Apis::GmailV1::MessagePartHeader, decorator: Google::Apis::GmailV1::MessagePartHeader::Representation
      
          property :mime_type, as: 'mimeType'
          property :part_id, as: 'partId'
          collection :parts, as: 'parts', class: Google::Apis::GmailV1::MessagePart, decorator: Google::Apis::GmailV1::MessagePart::Representation
      
        end
      end
      
      class MessagePartBody
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attachment_id, as: 'attachmentId'
          property :data, :base64 => true, as: 'data'
          property :size, as: 'size'
        end
      end
      
      class MessagePartHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class ModifyMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_label_ids, as: 'addLabelIds'
          collection :remove_label_ids, as: 'removeLabelIds'
        end
      end
      
      class ModifyThreadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :add_label_ids, as: 'addLabelIds'
          collection :remove_label_ids, as: 'removeLabelIds'
        end
      end
      
      class Profile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :history_id, as: 'historyId'
          property :messages_total, as: 'messagesTotal'
          property :threads_total, as: 'threadsTotal'
        end
      end
      
      class Thread
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :history_id, as: 'historyId'
          property :id, as: 'id'
          collection :messages, as: 'messages', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::Message::Representation
      
          property :snippet, as: 'snippet'
        end
      end
      
      class WatchRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label_filter_action, as: 'labelFilterAction'
          collection :label_ids, as: 'labelIds'
          property :topic_name, as: 'topicName'
        end
      end
      
      class WatchResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expiration, as: 'expiration'
          property :history_id, as: 'historyId'
        end
      end
    end
  end
end
