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
    module AppsactivityV1
      
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class EventRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ListActivitiesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class MoveRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ParentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PermissionChangeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class PhotoRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RenameRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class TargetRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class ActivityRepresentation < Google::Apis::Core::JsonRepresentation
        property :combined_event, as: 'combinedEvent', class: Google::Apis::AppsactivityV1::Event, decorator: Google::Apis::AppsactivityV1::EventRepresentation
        
        collection :single_events, as: 'singleEvents', class: Google::Apis::AppsactivityV1::Event, decorator: Google::Apis::AppsactivityV1::EventRepresentation
      end

      # @private
      class EventRepresentation < Google::Apis::Core::JsonRepresentation
        collection :additional_event_types, as: 'additionalEventTypes'
        
        property :event_time_millis, as: 'eventTimeMillis'
        property :from_user_deletion, as: 'fromUserDeletion'
        property :move, as: 'move', class: Google::Apis::AppsactivityV1::Move, decorator: Google::Apis::AppsactivityV1::MoveRepresentation
        
        collection :permission_changes, as: 'permissionChanges', class: Google::Apis::AppsactivityV1::PermissionChange, decorator: Google::Apis::AppsactivityV1::PermissionChangeRepresentation
        
        
        property :primary_event_type, as: 'primaryEventType'
        property :rename, as: 'rename', class: Google::Apis::AppsactivityV1::Rename, decorator: Google::Apis::AppsactivityV1::RenameRepresentation
        
        property :target, as: 'target', class: Google::Apis::AppsactivityV1::Target, decorator: Google::Apis::AppsactivityV1::TargetRepresentation
        
        property :user, as: 'user', class: Google::Apis::AppsactivityV1::User, decorator: Google::Apis::AppsactivityV1::UserRepresentation
      end

      # @private
      class ListActivitiesResponseRepresentation < Google::Apis::Core::JsonRepresentation
        collection :activities, as: 'activities', class: Google::Apis::AppsactivityV1::Activity, decorator: Google::Apis::AppsactivityV1::ActivityRepresentation
        
        
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class MoveRepresentation < Google::Apis::Core::JsonRepresentation
        collection :added_parents, as: 'addedParents', class: Google::Apis::AppsactivityV1::Parent, decorator: Google::Apis::AppsactivityV1::ParentRepresentation
        
        
        collection :removed_parents, as: 'removedParents', class: Google::Apis::AppsactivityV1::Parent, decorator: Google::Apis::AppsactivityV1::ParentRepresentation
      end

      # @private
      class ParentRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :is_root, as: 'isRoot'
        property :title, as: 'title'
      end

      # @private
      class PermissionRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :permission_id, as: 'permissionId'
        property :role, as: 'role'
        property :type, as: 'type'
        property :user, as: 'user', class: Google::Apis::AppsactivityV1::User, decorator: Google::Apis::AppsactivityV1::UserRepresentation
        
        property :with_link, as: 'withLink'
      end

      # @private
      class PermissionChangeRepresentation < Google::Apis::Core::JsonRepresentation
        collection :added_permissions, as: 'addedPermissions', class: Google::Apis::AppsactivityV1::Permission, decorator: Google::Apis::AppsactivityV1::PermissionRepresentation
        
        
        collection :removed_permissions, as: 'removedPermissions', class: Google::Apis::AppsactivityV1::Permission, decorator: Google::Apis::AppsactivityV1::PermissionRepresentation
      end

      # @private
      class PhotoRepresentation < Google::Apis::Core::JsonRepresentation
        property :url, as: 'url'
      end

      # @private
      class RenameRepresentation < Google::Apis::Core::JsonRepresentation
        property :new_title, as: 'newTitle'
        property :old_title, as: 'oldTitle'
      end

      # @private
      class TargetRepresentation < Google::Apis::Core::JsonRepresentation
        property :id, as: 'id'
        property :mime_type, as: 'mimeType'
        property :name, as: 'name'
      end

      # @private
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        property :name, as: 'name'
        property :photo, as: 'photo', class: Google::Apis::AppsactivityV1::Photo, decorator: Google::Apis::AppsactivityV1::PhotoRepresentation
      end
    end
  end
end
