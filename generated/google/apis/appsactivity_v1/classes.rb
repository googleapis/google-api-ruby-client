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
      
      # An Activity resource is a combined view of multiple events. An activity has a
      # list of individual events and a combined view of the common fields among all
      # events.
      class Activity
        include Google::Apis::Core::Hashable
      
        # Represents the changes associated with an action taken by a user.
        # Corresponds to the JSON property `combinedEvent`
        # @return [Google::Apis::AppsactivityV1::Event]
        attr_accessor :combined_event
      
        # A list of all the Events that make up the Activity.
        # Corresponds to the JSON property `singleEvents`
        # @return [Array<Google::Apis::AppsactivityV1::Event>]
        attr_accessor :single_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @combined_event = args[:combined_event] unless args[:combined_event].nil?
          @single_events = args[:single_events] unless args[:single_events].nil?
        end
      end
      
      # Represents the changes associated with an action taken by a user.
      class Event
        include Google::Apis::Core::Hashable
      
        # Additional event types. Some events may have multiple types when multiple
        # actions are part of a single event. For example, creating a document, renaming
        # it, and sharing it may be part of a single file-creation event.
        # Corresponds to the JSON property `additionalEventTypes`
        # @return [Array<String>]
        attr_accessor :additional_event_types
      
        # The time at which the event occurred formatted as Unix time in milliseconds.
        # Corresponds to the JSON property `eventTimeMillis`
        # @return [String]
        attr_accessor :event_time_millis
      
        # Whether this event is caused by a user being deleted.
        # Corresponds to the JSON property `fromUserDeletion`
        # @return [Boolean]
        attr_accessor :from_user_deletion
        alias_method :from_user_deletion?, :from_user_deletion
      
        # Contains information about changes in an object's parents as a result of a
        # move type event.
        # Corresponds to the JSON property `move`
        # @return [Google::Apis::AppsactivityV1::Move]
        attr_accessor :move
      
        # Extra information for permissionChange type events, such as the user or group
        # the new permission applies to.
        # Corresponds to the JSON property `permissionChanges`
        # @return [Array<Google::Apis::AppsactivityV1::PermissionChange>]
        attr_accessor :permission_changes
      
        # The main type of event that occurred.
        # Corresponds to the JSON property `primaryEventType`
        # @return [String]
        attr_accessor :primary_event_type
      
        # Contains information about a renametype event.
        # Corresponds to the JSON property `rename`
        # @return [Google::Apis::AppsactivityV1::Rename]
        attr_accessor :rename
      
        # Information about the object modified by the event.
        # Corresponds to the JSON property `target`
        # @return [Google::Apis::AppsactivityV1::Target]
        attr_accessor :target
      
        # A representation of a user.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::AppsactivityV1::User]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_event_types = args[:additional_event_types] unless args[:additional_event_types].nil?
          @event_time_millis = args[:event_time_millis] unless args[:event_time_millis].nil?
          @from_user_deletion = args[:from_user_deletion] unless args[:from_user_deletion].nil?
          @move = args[:move] unless args[:move].nil?
          @permission_changes = args[:permission_changes] unless args[:permission_changes].nil?
          @primary_event_type = args[:primary_event_type] unless args[:primary_event_type].nil?
          @rename = args[:rename] unless args[:rename].nil?
          @target = args[:target] unless args[:target].nil?
          @user = args[:user] unless args[:user].nil?
        end
      end
      
      # The response from the list request. Contains a list of activities and a token
      # to retrieve the next page of results.
      class ListActivitiesResponse
        include Google::Apis::Core::Hashable
      
        # List of activities.
        # Corresponds to the JSON property `activities`
        # @return [Array<Google::Apis::AppsactivityV1::Activity>]
        attr_accessor :activities
      
        # Token for the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activities = args[:activities] unless args[:activities].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Contains information about changes in an object's parents as a result of a
      # move type event.
      class Move
        include Google::Apis::Core::Hashable
      
        # The added parent(s).
        # Corresponds to the JSON property `addedParents`
        # @return [Array<Google::Apis::AppsactivityV1::Parent>]
        attr_accessor :added_parents
      
        # The removed parent(s).
        # Corresponds to the JSON property `removedParents`
        # @return [Array<Google::Apis::AppsactivityV1::Parent>]
        attr_accessor :removed_parents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_parents = args[:added_parents] unless args[:added_parents].nil?
          @removed_parents = args[:removed_parents] unless args[:removed_parents].nil?
        end
      end
      
      # Contains information about a parent object. For example, a folder in Drive is
      # a parent for all files within it.
      class Parent
        include Google::Apis::Core::Hashable
      
        # The parent's ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Whether this is the root folder.
        # Corresponds to the JSON property `isRoot`
        # @return [Boolean]
        attr_accessor :is_root
        alias_method :is_root?, :is_root
      
        # The parent's title.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @is_root = args[:is_root] unless args[:is_root].nil?
          @title = args[:title] unless args[:title].nil?
        end
      end
      
      # Contains information about the permissions and type of access allowed with
      # regards to a Google Drive object. This is a subset of the fields contained in
      # a corresponding Drive Permissions object.
      class Permission
        include Google::Apis::Core::Hashable
      
        # The name of the user or group the permission applies to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID for this permission. Corresponds to the Drive API's permission ID
        # returned as part of the Drive Permissions resource.
        # Corresponds to the JSON property `permissionId`
        # @return [String]
        attr_accessor :permission_id
      
        # Indicates the Google Drive permissions role. The role determines a user's
        # ability to read, write, or comment on the file.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        # Indicates how widely permissions are granted.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A representation of a user.
        # Corresponds to the JSON property `user`
        # @return [Google::Apis::AppsactivityV1::User]
        attr_accessor :user
      
        # Whether the permission requires a link to the file.
        # Corresponds to the JSON property `withLink`
        # @return [Boolean]
        attr_accessor :with_link
        alias_method :with_link?, :with_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @permission_id = args[:permission_id] unless args[:permission_id].nil?
          @role = args[:role] unless args[:role].nil?
          @type = args[:type] unless args[:type].nil?
          @user = args[:user] unless args[:user].nil?
          @with_link = args[:with_link] unless args[:with_link].nil?
        end
      end
      
      # Contains information about a Drive object's permissions that changed as a
      # result of a permissionChange type event.
      class PermissionChange
        include Google::Apis::Core::Hashable
      
        # Lists all Permission objects added.
        # Corresponds to the JSON property `addedPermissions`
        # @return [Array<Google::Apis::AppsactivityV1::Permission>]
        attr_accessor :added_permissions
      
        # Lists all Permission objects removed.
        # Corresponds to the JSON property `removedPermissions`
        # @return [Array<Google::Apis::AppsactivityV1::Permission>]
        attr_accessor :removed_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @added_permissions = args[:added_permissions] unless args[:added_permissions].nil?
          @removed_permissions = args[:removed_permissions] unless args[:removed_permissions].nil?
        end
      end
      
      # Photo information for a user.
      class Photo
        include Google::Apis::Core::Hashable
      
        # The URL of the photo.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] unless args[:url].nil?
        end
      end
      
      # Contains information about a renametype event.
      class Rename
        include Google::Apis::Core::Hashable
      
        # The new title.
        # Corresponds to the JSON property `newTitle`
        # @return [String]
        attr_accessor :new_title
      
        # The old title.
        # Corresponds to the JSON property `oldTitle`
        # @return [String]
        attr_accessor :old_title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_title = args[:new_title] unless args[:new_title].nil?
          @old_title = args[:old_title] unless args[:old_title].nil?
        end
      end
      
      # Information about the object modified by the event.
      class Target
        include Google::Apis::Core::Hashable
      
        # The ID of the target. For example, in Google Drive, this is the file or folder
        # ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The MIME type of the target.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The name of the target. For example, in Google Drive, this is the title of the
        # file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @mime_type = args[:mime_type] unless args[:mime_type].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # A representation of a user.
      class User
        include Google::Apis::Core::Hashable
      
        # The displayable name of the user.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Photo information for a user.
        # Corresponds to the JSON property `photo`
        # @return [Google::Apis::AppsactivityV1::Photo]
        attr_accessor :photo
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @photo = args[:photo] unless args[:photo].nil?
        end
      end
    end
  end
end
