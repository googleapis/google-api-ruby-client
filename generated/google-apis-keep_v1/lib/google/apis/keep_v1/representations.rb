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
      
      class Attachment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreatePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreatePermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeletePermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreatePermissionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Family
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Group
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Note
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Permission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Section
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class User
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attachment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :mime_type, as: 'mimeType'
          property :name, as: 'name'
        end
      end
      
      class BatchCreatePermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::KeepV1::CreatePermissionRequest, decorator: Google::Apis::KeepV1::CreatePermissionRequest::Representation
      
        end
      end
      
      class BatchCreatePermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions', class: Google::Apis::KeepV1::Permission, decorator: Google::Apis::KeepV1::Permission::Representation
      
        end
      end
      
      class BatchDeletePermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class CreatePermissionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :parent, as: 'parent'
          property :permission, as: 'permission', class: Google::Apis::KeepV1::Permission, decorator: Google::Apis::KeepV1::Permission::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Family
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Group
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class ListContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list_items, as: 'listItems', class: Google::Apis::KeepV1::ListItem, decorator: Google::Apis::KeepV1::ListItem::Representation
      
        end
      end
      
      class ListItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checked, as: 'checked'
          collection :child_list_items, as: 'childListItems', class: Google::Apis::KeepV1::ListItem, decorator: Google::Apis::KeepV1::ListItem::Representation
      
          property :text, as: 'text', class: Google::Apis::KeepV1::TextContent, decorator: Google::Apis::KeepV1::TextContent::Representation
      
        end
      end
      
      class ListNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notes, as: 'notes', class: Google::Apis::KeepV1::Note, decorator: Google::Apis::KeepV1::Note::Representation
      
        end
      end
      
      class Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attachments, as: 'attachments', class: Google::Apis::KeepV1::Attachment, decorator: Google::Apis::KeepV1::Attachment::Representation
      
          property :body, as: 'body', class: Google::Apis::KeepV1::Section, decorator: Google::Apis::KeepV1::Section::Representation
      
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          collection :permissions, as: 'permissions', class: Google::Apis::KeepV1::Permission, decorator: Google::Apis::KeepV1::Permission::Representation
      
          property :title, as: 'title'
          property :trash_time, as: 'trashTime'
          property :trashed, as: 'trashed'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Permission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deleted, as: 'deleted'
          property :email, as: 'email'
          property :family, as: 'family', class: Google::Apis::KeepV1::Family, decorator: Google::Apis::KeepV1::Family::Representation
      
          property :group, as: 'group', class: Google::Apis::KeepV1::Group, decorator: Google::Apis::KeepV1::Group::Representation
      
          property :name, as: 'name'
          property :role, as: 'role'
          property :user, as: 'user', class: Google::Apis::KeepV1::User, decorator: Google::Apis::KeepV1::User::Representation
      
        end
      end
      
      class Section
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :list, as: 'list', class: Google::Apis::KeepV1::ListContent, decorator: Google::Apis::KeepV1::ListContent::Representation
      
          property :text, as: 'text', class: Google::Apis::KeepV1::TextContent, decorator: Google::Apis::KeepV1::TextContent::Representation
      
        end
      end
      
      class TextContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class User
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
    end
  end
end
