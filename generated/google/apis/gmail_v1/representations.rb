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
      
      class DraftRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HistoryRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HistoryLabelAddedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HistoryLabelRemovedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HistoryMessageAddedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class HistoryMessageDeletedRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class LabelRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListDraftsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListHistoryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListLabelsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListMessagesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListThreadsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MessagePartRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MessagePartBodyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MessagePartHeaderRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModifyMessageRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ModifyThreadRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ProfileRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ThreadRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class DraftRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
      end

      # @private
      class HistoryRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        collection :labels_added, as: 'labelsAdded', class: Google::Apis::GmailV1::HistoryLabelAdded, decorator: Google::Apis::GmailV1::HistoryLabelAddedRepresentation
        
        
        collection :labels_removed, as: 'labelsRemoved', class: Google::Apis::GmailV1::HistoryLabelRemoved, decorator: Google::Apis::GmailV1::HistoryLabelRemovedRepresentation
        
        
        collection :messages, as: 'messages', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
        
        
        collection :messages_added, as: 'messagesAdded', class: Google::Apis::GmailV1::HistoryMessageAdded, decorator: Google::Apis::GmailV1::HistoryMessageAddedRepresentation
        
        
        collection :messages_deleted, as: 'messagesDeleted', class: Google::Apis::GmailV1::HistoryMessageDeleted, decorator: Google::Apis::GmailV1::HistoryMessageDeletedRepresentation
      end

      # @private
      class HistoryLabelAddedRepresentation < Google::Apis::Core::JsonRepresentation
        collection :label_ids, as: 'labelIds'
        
        property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
      end

      # @private
      class HistoryLabelRemovedRepresentation < Google::Apis::Core::JsonRepresentation
        collection :label_ids, as: 'labelIds'
        
        property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
      end

      # @private
      class HistoryMessageAddedRepresentation < Google::Apis::Core::JsonRepresentation
        property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
      end

      # @private
      class HistoryMessageDeletedRepresentation < Google::Apis::Core::JsonRepresentation
        property :message, as: 'message', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
      end

      # @private
      class LabelRepresentation < Google::Apis::Core::JsonRepresentation
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

      # @private
      class ListDraftsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :drafts, as: 'drafts', class: Google::Apis::GmailV1::Draft, decorator: Google::Apis::GmailV1::DraftRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
        property :result_size_estimate, as: 'resultSizeEstimate'
      end

      # @private
      class ListHistoryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :history, as: 'history', class: Google::Apis::GmailV1::History, decorator: Google::Apis::GmailV1::HistoryRepresentation
        
        
        property :history_id, as: 'historyId'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class ListLabelsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :labels, as: 'labels', class: Google::Apis::GmailV1::Label, decorator: Google::Apis::GmailV1::LabelRepresentation
      end

      # @private
      class ListMessagesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :messages, as: 'messages', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
        property :result_size_estimate, as: 'resultSizeEstimate'
      end

      # @private
      class ListThreadsResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :next_page_token, as: 'nextPageToken'
        property :result_size_estimate, as: 'resultSizeEstimate'
        collection :threads, as: 'threads', class: Google::Apis::GmailV1::Thread, decorator: Google::Apis::GmailV1::ThreadRepresentation
      end

      # @private
      class MessageRepresentation < Google::Apis::Core::JsonRepresentation
        property :history_id, as: 'historyId'
        property :id, as: 'id'
        collection :label_ids, as: 'labelIds'
        
        property :payload, as: 'payload', class: Google::Apis::GmailV1::MessagePart, decorator: Google::Apis::GmailV1::MessagePartRepresentation
        
        property :raw, as: 'raw'
        property :size_estimate, as: 'sizeEstimate'
        property :snippet, as: 'snippet'
        property :thread_id, as: 'threadId'
      end

      # @private
      class MessagePartRepresentation < Google::Apis::Core::JsonRepresentation
        property :body, as: 'body', class: Google::Apis::GmailV1::MessagePartBody, decorator: Google::Apis::GmailV1::MessagePartBodyRepresentation
        
        property :filename, as: 'filename'
        collection :headers, as: 'headers', class: Google::Apis::GmailV1::MessagePartHeader, decorator: Google::Apis::GmailV1::MessagePartHeaderRepresentation
        
        
        property :mime_type, as: 'mimeType'
        property :part_id, as: 'partId'
        collection :parts, as: 'parts', class: Google::Apis::GmailV1::MessagePart, decorator: Google::Apis::GmailV1::MessagePartRepresentation
      end

      # @private
      class MessagePartBodyRepresentation < Google::Apis::Core::JsonRepresentation
        property :attachment_id, as: 'attachmentId'
        property :data, as: 'data'
        property :size, as: 'size'
      end

      # @private
      class MessagePartHeaderRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :value, as: 'value'
      end

      # @private
      class ModifyMessageRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :add_label_ids, as: 'addLabelIds'
        
        collection :remove_label_ids, as: 'removeLabelIds'
      end

      # @private
      class ModifyThreadRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :add_label_ids, as: 'addLabelIds'
        
        collection :remove_label_ids, as: 'removeLabelIds'
      end

      # @private
      class ProfileRepresentation < Google::Apis::Core::JsonRepresentation
        property :email_address, as: 'emailAddress'
        property :history_id, as: 'historyId'
        property :messages_total, as: 'messagesTotal'
        property :threads_total, as: 'threadsTotal'
      end

      # @private
      class ThreadRepresentation < Google::Apis::Core::JsonRepresentation
        property :history_id, as: 'historyId'
        property :id, as: 'id'
        collection :messages, as: 'messages', class: Google::Apis::GmailV1::Message, decorator: Google::Apis::GmailV1::MessageRepresentation
        
        
        property :snippet, as: 'snippet'
      end
    end
  end
end
