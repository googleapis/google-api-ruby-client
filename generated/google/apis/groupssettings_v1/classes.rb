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
    module GroupssettingsV1
      
      # JSON template for Group resource
      class Groups
        include Google::Apis::Core::Hashable
      
        # Are external members allowed to join the group.
        # Corresponds to the JSON property `allowExternalMembers`
        # @return [String]
        attr_accessor :allow_external_members
      
        # Is google allowed to contact admins.
        # Corresponds to the JSON property `allowGoogleCommunication`
        # @return [String]
        attr_accessor :allow_google_communication
      
        # If posting from web is allowed.
        # Corresponds to the JSON property `allowWebPosting`
        # @return [String]
        attr_accessor :allow_web_posting
      
        # If the group is archive only
        # Corresponds to the JSON property `archiveOnly`
        # @return [String]
        attr_accessor :archive_only
      
        # Custom footer text.
        # Corresponds to the JSON property `customFooterText`
        # @return [String]
        attr_accessor :custom_footer_text
      
        # Default email to which reply to any message should go.
        # Corresponds to the JSON property `customReplyTo`
        # @return [String]
        attr_accessor :custom_reply_to
      
        # Default message deny notification message
        # Corresponds to the JSON property `defaultMessageDenyNotificationText`
        # @return [String]
        attr_accessor :default_message_deny_notification_text
      
        # Description of the group
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Email id of the group
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # If favorite replies should be displayed above other replies.
        # Corresponds to the JSON property `favoriteRepliesOnTop`
        # @return [String]
        attr_accessor :favorite_replies_on_top
      
        # Whether to include custom footer.
        # Corresponds to the JSON property `includeCustomFooter`
        # @return [String]
        attr_accessor :include_custom_footer
      
        # If this groups should be included in global address list or not.
        # Corresponds to the JSON property `includeInGlobalAddressList`
        # @return [String]
        attr_accessor :include_in_global_address_list
      
        # If the contents of the group are archived.
        # Corresponds to the JSON property `isArchived`
        # @return [String]
        attr_accessor :is_archived
      
        # The type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Maximum message size allowed.
        # Corresponds to the JSON property `maxMessageBytes`
        # @return [Fixnum]
        attr_accessor :max_message_bytes
      
        # Can members post using the group email address.
        # Corresponds to the JSON property `membersCanPostAsTheGroup`
        # @return [String]
        attr_accessor :members_can_post_as_the_group
      
        # Default message display font. Possible values are: DEFAULT_FONT
        # FIXED_WIDTH_FONT
        # Corresponds to the JSON property `messageDisplayFont`
        # @return [String]
        attr_accessor :message_display_font
      
        # Moderation level for messages. Possible values are: MODERATE_ALL_MESSAGES
        # MODERATE_NON_MEMBERS MODERATE_NEW_MEMBERS MODERATE_NONE
        # Corresponds to the JSON property `messageModerationLevel`
        # @return [String]
        attr_accessor :message_moderation_level
      
        # Name of the Group
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Primary language for the group.
        # Corresponds to the JSON property `primaryLanguage`
        # @return [String]
        attr_accessor :primary_language
      
        # Whome should the default reply to a message go to. Possible values are:
        # REPLY_TO_CUSTOM REPLY_TO_SENDER REPLY_TO_LIST REPLY_TO_OWNER REPLY_TO_IGNORE
        # REPLY_TO_MANAGERS
        # Corresponds to the JSON property `replyTo`
        # @return [String]
        attr_accessor :reply_to
      
        # Should the member be notified if his message is denied by owner.
        # Corresponds to the JSON property `sendMessageDenyNotification`
        # @return [String]
        attr_accessor :send_message_deny_notification
      
        # Is the group listed in groups directory
        # Corresponds to the JSON property `showInGroupDirectory`
        # @return [String]
        attr_accessor :show_in_group_directory
      
        # Moderation level for messages detected as spam. Possible values are: ALLOW
        # MODERATE SILENTLY_MODERATE REJECT
        # Corresponds to the JSON property `spamModerationLevel`
        # @return [String]
        attr_accessor :spam_moderation_level
      
        # Permissions to add members. Possible values are: ALL_MANAGERS_CAN_ADD
        # ALL_OWNERS_CAN_ADD ALL_MEMBERS_CAN_ADD NONE_CAN_ADD
        # Corresponds to the JSON property `whoCanAdd`
        # @return [String]
        attr_accessor :who_can_add
      
        # Permission to add references to a topic. Possible values are: NONE OWNERS_ONLY
        # MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanAddReferences`
        # @return [String]
        attr_accessor :who_can_add_references
      
        # Permission to assign topics in a forum to another user. Possible values are:
        # NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanAssignTopics`
        # @return [String]
        attr_accessor :who_can_assign_topics
      
        # Permission to contact owner of the group via web UI. Possible values are:
        # ANYONE_CAN_CONTACT ALL_IN_DOMAIN_CAN_CONTACT ALL_MEMBERS_CAN_CONTACT
        # ALL_MANAGERS_CAN_CONTACT
        # Corresponds to the JSON property `whoCanContactOwner`
        # @return [String]
        attr_accessor :who_can_contact_owner
      
        # Permission to enter free form tags for topics in a forum. Possible values are:
        # NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanEnterFreeFormTags`
        # @return [String]
        attr_accessor :who_can_enter_free_form_tags
      
        # Permissions to invite members. Possible values are: ALL_MEMBERS_CAN_INVITE
        # ALL_MANAGERS_CAN_INVITE ALL_OWNERS_CAN_INVITE NONE_CAN_INVITE
        # Corresponds to the JSON property `whoCanInvite`
        # @return [String]
        attr_accessor :who_can_invite
      
        # Permissions to join the group. Possible values are: ANYONE_CAN_JOIN
        # ALL_IN_DOMAIN_CAN_JOIN INVITED_CAN_JOIN CAN_REQUEST_TO_JOIN
        # Corresponds to the JSON property `whoCanJoin`
        # @return [String]
        attr_accessor :who_can_join
      
        # Permission to leave the group. Possible values are: ALL_MANAGERS_CAN_LEAVE
        # ALL_OWNERS_CAN_LEAVE ALL_MEMBERS_CAN_LEAVE NONE_CAN_LEAVE
        # Corresponds to the JSON property `whoCanLeaveGroup`
        # @return [String]
        attr_accessor :who_can_leave_group
      
        # Permission to mark a topic as a duplicate of another topic. Possible values
        # are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanMarkDuplicate`
        # @return [String]
        attr_accessor :who_can_mark_duplicate
      
        # Permission to mark any other user's post as a favorite reply. Possible values
        # are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanMarkFavoriteReplyOnAnyTopic`
        # @return [String]
        attr_accessor :who_can_mark_favorite_reply_on_any_topic
      
        # Permission to mark a post for a topic they started as a favorite reply.
        # Possible values are: NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS
        # ALL_MEMBERS
        # Corresponds to the JSON property `whoCanMarkFavoriteReplyOnOwnTopic`
        # @return [String]
        attr_accessor :who_can_mark_favorite_reply_on_own_topic
      
        # Permission to mark a topic as not needing a response. Possible values are:
        # NONE OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanMarkNoResponseNeeded`
        # @return [String]
        attr_accessor :who_can_mark_no_response_needed
      
        # Permission to change tags and categories. Possible values are: NONE
        # OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanModifyTagsAndCategories`
        # @return [String]
        attr_accessor :who_can_modify_tags_and_categories
      
        # Permissions to post messages to the group. Possible values are: NONE_CAN_POST
        # ALL_MANAGERS_CAN_POST ALL_MEMBERS_CAN_POST ALL_OWNERS_CAN_POST
        # ALL_IN_DOMAIN_CAN_POST ANYONE_CAN_POST
        # Corresponds to the JSON property `whoCanPostMessage`
        # @return [String]
        attr_accessor :who_can_post_message
      
        # Permission to take topics in a forum. Possible values are: NONE OWNERS_ONLY
        # MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanTakeTopics`
        # @return [String]
        attr_accessor :who_can_take_topics
      
        # Permission to unassign any topic in a forum. Possible values are: NONE
        # OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanUnassignTopic`
        # @return [String]
        attr_accessor :who_can_unassign_topic
      
        # Permission to unmark any post from a favorite reply. Possible values are: NONE
        # OWNERS_ONLY MANAGERS_ONLY OWNERS_AND_MANAGERS ALL_MEMBERS
        # Corresponds to the JSON property `whoCanUnmarkFavoriteReplyOnAnyTopic`
        # @return [String]
        attr_accessor :who_can_unmark_favorite_reply_on_any_topic
      
        # Permissions to view group. Possible values are: ANYONE_CAN_VIEW
        # ALL_IN_DOMAIN_CAN_VIEW ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
        # ALL_OWNERS_CAN_VIEW
        # Corresponds to the JSON property `whoCanViewGroup`
        # @return [String]
        attr_accessor :who_can_view_group
      
        # Permissions to view membership. Possible values are: ALL_IN_DOMAIN_CAN_VIEW
        # ALL_MEMBERS_CAN_VIEW ALL_MANAGERS_CAN_VIEW
        # Corresponds to the JSON property `whoCanViewMembership`
        # @return [String]
        attr_accessor :who_can_view_membership
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_external_members = args[:allow_external_members] if args.key?(:allow_external_members)
          @allow_google_communication = args[:allow_google_communication] if args.key?(:allow_google_communication)
          @allow_web_posting = args[:allow_web_posting] if args.key?(:allow_web_posting)
          @archive_only = args[:archive_only] if args.key?(:archive_only)
          @custom_footer_text = args[:custom_footer_text] if args.key?(:custom_footer_text)
          @custom_reply_to = args[:custom_reply_to] if args.key?(:custom_reply_to)
          @default_message_deny_notification_text = args[:default_message_deny_notification_text] if args.key?(:default_message_deny_notification_text)
          @description = args[:description] if args.key?(:description)
          @email = args[:email] if args.key?(:email)
          @favorite_replies_on_top = args[:favorite_replies_on_top] if args.key?(:favorite_replies_on_top)
          @include_custom_footer = args[:include_custom_footer] if args.key?(:include_custom_footer)
          @include_in_global_address_list = args[:include_in_global_address_list] if args.key?(:include_in_global_address_list)
          @is_archived = args[:is_archived] if args.key?(:is_archived)
          @kind = args[:kind] if args.key?(:kind)
          @max_message_bytes = args[:max_message_bytes] if args.key?(:max_message_bytes)
          @members_can_post_as_the_group = args[:members_can_post_as_the_group] if args.key?(:members_can_post_as_the_group)
          @message_display_font = args[:message_display_font] if args.key?(:message_display_font)
          @message_moderation_level = args[:message_moderation_level] if args.key?(:message_moderation_level)
          @name = args[:name] if args.key?(:name)
          @primary_language = args[:primary_language] if args.key?(:primary_language)
          @reply_to = args[:reply_to] if args.key?(:reply_to)
          @send_message_deny_notification = args[:send_message_deny_notification] if args.key?(:send_message_deny_notification)
          @show_in_group_directory = args[:show_in_group_directory] if args.key?(:show_in_group_directory)
          @spam_moderation_level = args[:spam_moderation_level] if args.key?(:spam_moderation_level)
          @who_can_add = args[:who_can_add] if args.key?(:who_can_add)
          @who_can_add_references = args[:who_can_add_references] if args.key?(:who_can_add_references)
          @who_can_assign_topics = args[:who_can_assign_topics] if args.key?(:who_can_assign_topics)
          @who_can_contact_owner = args[:who_can_contact_owner] if args.key?(:who_can_contact_owner)
          @who_can_enter_free_form_tags = args[:who_can_enter_free_form_tags] if args.key?(:who_can_enter_free_form_tags)
          @who_can_invite = args[:who_can_invite] if args.key?(:who_can_invite)
          @who_can_join = args[:who_can_join] if args.key?(:who_can_join)
          @who_can_leave_group = args[:who_can_leave_group] if args.key?(:who_can_leave_group)
          @who_can_mark_duplicate = args[:who_can_mark_duplicate] if args.key?(:who_can_mark_duplicate)
          @who_can_mark_favorite_reply_on_any_topic = args[:who_can_mark_favorite_reply_on_any_topic] if args.key?(:who_can_mark_favorite_reply_on_any_topic)
          @who_can_mark_favorite_reply_on_own_topic = args[:who_can_mark_favorite_reply_on_own_topic] if args.key?(:who_can_mark_favorite_reply_on_own_topic)
          @who_can_mark_no_response_needed = args[:who_can_mark_no_response_needed] if args.key?(:who_can_mark_no_response_needed)
          @who_can_modify_tags_and_categories = args[:who_can_modify_tags_and_categories] if args.key?(:who_can_modify_tags_and_categories)
          @who_can_post_message = args[:who_can_post_message] if args.key?(:who_can_post_message)
          @who_can_take_topics = args[:who_can_take_topics] if args.key?(:who_can_take_topics)
          @who_can_unassign_topic = args[:who_can_unassign_topic] if args.key?(:who_can_unassign_topic)
          @who_can_unmark_favorite_reply_on_any_topic = args[:who_can_unmark_favorite_reply_on_any_topic] if args.key?(:who_can_unmark_favorite_reply_on_any_topic)
          @who_can_view_group = args[:who_can_view_group] if args.key?(:who_can_view_group)
          @who_can_view_membership = args[:who_can_view_membership] if args.key?(:who_can_view_membership)
        end
      end
    end
  end
end
