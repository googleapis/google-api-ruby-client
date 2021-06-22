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
    module KeepV1
      
      # An attachment to a note.
      class Attachment
        include Google::Apis::Core::Hashable
      
        # The MIME types (IANA media types) in which the attachment is available.
        # Corresponds to the JSON property `mimeType`
        # @return [Array<String>]
        attr_accessor :mime_type
      
        # The resource name;
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The request to add one or more permissions on the note. Currently, only the `
      # WRITER` role may be specified. If adding a permission fails, then the entire
      # request fails and no changes are made.
      class BatchCreatePermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The request message specifying the resources to create.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::KeepV1::CreatePermissionRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # The response for creating permissions on a note.
      class BatchCreatePermissionsResponse
        include Google::Apis::Core::Hashable
      
        # Permissions created.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::KeepV1::Permission>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # The request to remove one or more permissions from a note. A permission with
      # the `OWNER` role can't be removed. If removing a permission fails, then the
      # entire request fails and no changes are made. Returns a 400 bad request error
      # if a specified permission does not exist on the note.
      class BatchDeletePermissionsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The names of the permissions to delete. Format: `notes/`note`/
        # permissions/`permission``
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # The request to add a single permission on the note.
      class CreatePermissionRequest
        include Google::Apis::Core::Hashable
      
        # Required. The parent note where this permission will be created. Format: `
        # notes/`note``
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A single permission on the note. Associates a `member` with a `role`.
        # Corresponds to the JSON property `permission`
        # @return [Google::Apis::KeepV1::Permission]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes a single Google Family.
      class Family
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes a single Group.
      class Group
        include Google::Apis::Core::Hashable
      
        # The group email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # The list of items for a single list note.
      class ListContent
        include Google::Apis::Core::Hashable
      
        # The items in the list. The number of items must be less than 1,000.
        # Corresponds to the JSON property `listItems`
        # @return [Array<Google::Apis::KeepV1::ListItem>]
        attr_accessor :list_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list_items = args[:list_items] if args.key?(:list_items)
        end
      end
      
      # A single list item in a note's list.
      class ListItem
        include Google::Apis::Core::Hashable
      
        # Whether this item has been checked off or not.
        # Corresponds to the JSON property `checked`
        # @return [Boolean]
        attr_accessor :checked
        alias_method :checked?, :checked
      
        # If set, list of list items nested under this list item. Only one level of
        # nesting is allowed.
        # Corresponds to the JSON property `childListItems`
        # @return [Array<Google::Apis::KeepV1::ListItem>]
        attr_accessor :child_list_items
      
        # The block of text for a single text section or list item.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::KeepV1::TextContent]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checked = args[:checked] if args.key?(:checked)
          @child_list_items = args[:child_list_items] if args.key?(:child_list_items)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The response when listing a page of notes.
      class ListNotesResponse
        include Google::Apis::Core::Hashable
      
        # Next page's `page_token` field.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A page of notes.
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::KeepV1::Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # A single note.
      class Note
        include Google::Apis::Core::Hashable
      
        # Output only. The attachments attached to this note.
        # Corresponds to the JSON property `attachments`
        # @return [Array<Google::Apis::KeepV1::Attachment>]
        attr_accessor :attachments
      
        # The content of the note.
        # Corresponds to the JSON property `body`
        # @return [Google::Apis::KeepV1::Section]
        attr_accessor :body
      
        # Output only. When this note was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The resource name of this note. See general note on identifiers
        # in KeepService.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The list of permissions set on the note. Contains at least one
        # entry for the note owner.
        # Corresponds to the JSON property `permissions`
        # @return [Array<Google::Apis::KeepV1::Permission>]
        attr_accessor :permissions
      
        # The title of the note. Length must be less than 1,000 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. When this note was trashed. If `trashed`, the note is eventually
        # deleted. If the note is not trashed, this field is not set (and the trashed
        # field is `false`).
        # Corresponds to the JSON property `trashTime`
        # @return [String]
        attr_accessor :trash_time
      
        # Output only. `true` if this note has been trashed. If trashed, the note is
        # eventually deleted.
        # Corresponds to the JSON property `trashed`
        # @return [Boolean]
        attr_accessor :trashed
        alias_method :trashed?, :trashed
      
        # Output only. When this note was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attachments = args[:attachments] if args.key?(:attachments)
          @body = args[:body] if args.key?(:body)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @permissions = args[:permissions] if args.key?(:permissions)
          @title = args[:title] if args.key?(:title)
          @trash_time = args[:trash_time] if args.key?(:trash_time)
          @trashed = args[:trashed] if args.key?(:trashed)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A single permission on the note. Associates a `member` with a `role`.
      class Permission
        include Google::Apis::Core::Hashable
      
        # Output only. Whether this member has been deleted. If the member is recovered,
        # this value is set to false and the recovered member retains the role on the
        # note.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # The email associated with the member. If set on create, the `email` field in
        # the `User` or `Group` message must either be empty or match this field. On
        # read, may be unset if the member does not have an associated email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Describes a single Google Family.
        # Corresponds to the JSON property `family`
        # @return [Google::Apis::KeepV1::Family]
        attr_accessor :family
      
        # Describes a single Group.
        # Corresponds to the JSON property `group`
        # @return [Google::Apis::KeepV1::Group]
        attr_accessor :group
      
        # Output only. The resource name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The role granted by this permission. The role determines the entity’s ability
        # to read, write, and share notes.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Describes a single user.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::KeepV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @email = args[:email] if args.key?(:email)
          @family = args[:family] if args.key?(:family)
          @group = args[:group] if args.key?(:group)
          @name = args[:name] if args.key?(:name)
          @role = args[:role] if args.key?(:role)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # The content of the note.
      class Section
        include Google::Apis::Core::Hashable
      
        # The list of items for a single list note.
        # Corresponds to the JSON property `list`
        # @return [Google::Apis::KeepV1::ListContent]
        attr_accessor :list
      
        # The block of text for a single text section or list item.
        # Corresponds to the JSON property `text`
        # @return [Google::Apis::KeepV1::TextContent]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @list = args[:list] if args.key?(:list)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The block of text for a single text section or list item.
      class TextContent
        include Google::Apis::Core::Hashable
      
        # The text of the note. The limits on this vary with the specific field using
        # this type.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Describes a single user.
      class User
        include Google::Apis::Core::Hashable
      
        # The user's email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
        end
      end
    end
  end
end
