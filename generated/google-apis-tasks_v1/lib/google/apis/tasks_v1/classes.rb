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
    module TasksV1
      
      # Information about the source of the task assignment (Document, Chat Space).
      class AssignmentInfo
        include Google::Apis::Core::Hashable
      
        # Information about the Drive resource where a task was assigned from (the
        # document, sheet, etc.).
        # Corresponds to the JSON property `driveResourceInfo`
        # @return [Google::Apis::TasksV1::DriveResourceInfo]
        attr_accessor :drive_resource_info
      
        # Output only. An absolute link to the original task in the surface of
        # assignment (Docs, Chat spaces, etc.).
        # Corresponds to the JSON property `linkToTask`
        # @return [String]
        attr_accessor :link_to_task
      
        # Information about the Chat Space where a task was assigned from.
        # Corresponds to the JSON property `spaceInfo`
        # @return [Google::Apis::TasksV1::SpaceInfo]
        attr_accessor :space_info
      
        # Output only. The type of surface this assigned task originates from. Currently
        # limited to DOCUMENT or SPACE.
        # Corresponds to the JSON property `surfaceType`
        # @return [String]
        attr_accessor :surface_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_resource_info = args[:drive_resource_info] if args.key?(:drive_resource_info)
          @link_to_task = args[:link_to_task] if args.key?(:link_to_task)
          @space_info = args[:space_info] if args.key?(:space_info)
          @surface_type = args[:surface_type] if args.key?(:surface_type)
        end
      end
      
      # Information about the Drive resource where a task was assigned from (the
      # document, sheet, etc.).
      class DriveResourceInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Identifier of the file in the Drive API.
        # Corresponds to the JSON property `driveFileId`
        # @return [String]
        attr_accessor :drive_file_id
      
        # Output only. Resource key required to access files shared via a shared link.
        # Not required for all files. See also developers.google.com/drive/api/guides/
        # resource-keys.
        # Corresponds to the JSON property `resourceKey`
        # @return [String]
        attr_accessor :resource_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drive_file_id = args[:drive_file_id] if args.key?(:drive_file_id)
          @resource_key = args[:resource_key] if args.key?(:resource_key)
        end
      end
      
      # Information about the Chat Space where a task was assigned from.
      class SpaceInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The Chat space where this task originates from. The format is "
        # spaces/`space`".
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # 
      class Task
        include Google::Apis::Core::Hashable
      
        # Information about the source of the task assignment (Document, Chat Space).
        # Corresponds to the JSON property `assignmentInfo`
        # @return [Google::Apis::TasksV1::AssignmentInfo]
        attr_accessor :assignment_info
      
        # Completion date of the task (as a RFC 3339 timestamp). This field is omitted
        # if the task has not been completed.
        # Corresponds to the JSON property `completed`
        # @return [String]
        attr_accessor :completed
      
        # Flag indicating whether the task has been deleted. For assigned tasks this
        # field is read-only. They can only be deleted by calling tasks.delete, in which
        # case both the assigned task and the original task (in Docs or Chat Spaces) are
        # deleted. To delete the assigned task only, navigate to the assignment surface
        # and unassign the task from there. The default is False.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Due date of the task (as a RFC 3339 timestamp). Optional. The due date only
        # records date information; the time portion of the timestamp is discarded when
        # setting the due date. It isn't possible to read or write the time that a task
        # is due via the API.
        # Corresponds to the JSON property `due`
        # @return [String]
        attr_accessor :due
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Flag indicating whether the task is hidden. This is the case if the task had
        # been marked completed when the task list was last cleared. The default is
        # False. This field is read-only.
        # Corresponds to the JSON property `hidden`
        # @return [Boolean]
        attr_accessor :hidden
        alias_method :hidden?, :hidden
      
        # Task identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Type of the resource. This is always "tasks#task".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. Collection of links. This collection is read-only.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::TasksV1::Task::Link>]
        attr_accessor :links
      
        # Notes describing the task. Tasks assigned from Google Docs cannot have notes.
        # Optional. Maximum length allowed: 8192 characters.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Output only. Parent task identifier. This field is omitted if it is a top-
        # level task. Use the "move" method to move the task under a different parent or
        # to the top level. A parent task can never be an assigned task (from Chat
        # Spaces, Docs). This field is read-only.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. String indicating the position of the task among its sibling
        # tasks under the same parent task or at the top level. If this string is
        # greater than another task's corresponding position string according to
        # lexicographical ordering, the task is positioned after the other task under
        # the same parent task (or at the top level). Use the "move" method to move the
        # task to another position.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        # Output only. URL pointing to this task. Used to retrieve, update, or delete
        # this task.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Status of the task. This is either "needsAction" or "completed".
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Title of the task. Maximum length allowed: 1024 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Last modification time of the task (as a RFC 3339 timestamp).
        # Corresponds to the JSON property `updated`
        # @return [String]
        attr_accessor :updated
      
        # Output only. An absolute link to the task in the Google Tasks Web UI.
        # Corresponds to the JSON property `webViewLink`
        # @return [String]
        attr_accessor :web_view_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignment_info = args[:assignment_info] if args.key?(:assignment_info)
          @completed = args[:completed] if args.key?(:completed)
          @deleted = args[:deleted] if args.key?(:deleted)
          @due = args[:due] if args.key?(:due)
          @etag = args[:etag] if args.key?(:etag)
          @hidden = args[:hidden] if args.key?(:hidden)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @links = args[:links] if args.key?(:links)
          @notes = args[:notes] if args.key?(:notes)
          @parent = args[:parent] if args.key?(:parent)
          @position = args[:position] if args.key?(:position)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @title = args[:title] if args.key?(:title)
          @updated = args[:updated] if args.key?(:updated)
          @web_view_link = args[:web_view_link] if args.key?(:web_view_link)
        end
        
        # 
        class Link
          include Google::Apis::Core::Hashable
        
          # The description. In HTML speak: Everything between <a> and </a>.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # The URL.
          # Corresponds to the JSON property `link`
          # @return [String]
          attr_accessor :link
        
          # Type of the link, e.g. "email".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @description = args[:description] if args.key?(:description)
            @link = args[:link] if args.key?(:link)
            @type = args[:type] if args.key?(:type)
          end
        end
      end
      
      # 
      class TaskList
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Task list identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Type of the resource. This is always "tasks#taskList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. URL pointing to this task list. Used to retrieve, update, or
        # delete this task list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Title of the task list. Maximum length allowed: 1024 characters.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Output only. Last modification time of the task list (as a RFC 3339 timestamp).
        # Corresponds to the JSON property `updated`
        # @return [String]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @self_link = args[:self_link] if args.key?(:self_link)
          @title = args[:title] if args.key?(:title)
          @updated = args[:updated] if args.key?(:updated)
        end
      end
      
      # 
      class TaskLists
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Collection of task lists.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::TasksV1::TaskList>]
        attr_accessor :items
      
        # Type of the resource. This is always "tasks#taskLists".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token that can be used to request the next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class Tasks
        include Google::Apis::Core::Hashable
      
        # ETag of the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Collection of tasks.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::TasksV1::Task>]
        attr_accessor :items
      
        # Type of the resource. This is always "tasks#tasks".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Token used to access the next page of this result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
