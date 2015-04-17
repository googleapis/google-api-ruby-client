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
    module TasksV1
      
      # 
      class Task
        include Google::Apis::Core::Hashable
      
        # Completion date of the task (as a RFC 3339 timestamp). This field is omitted
        # if the task has not been completed.
        # Corresponds to the JSON property `completed`
        # @return [DateTime]
        attr_accessor :completed
      
        # Flag indicating whether the task has been deleted. The default if False.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Due date of the task (as a RFC 3339 timestamp). Optional.
        # Corresponds to the JSON property `due`
        # @return [DateTime]
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
      
        # Type of the resource. This is always "tasks#task".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Collection of links. This collection is read-only.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::TasksV1::Task::Link>]
        attr_accessor :links
      
        # Notes describing the task. Optional.
        # Corresponds to the JSON property `notes`
        # @return [String]
        attr_accessor :notes
      
        # Parent task identifier. This field is omitted if it is a top-level task. This
        # field is read-only. Use the "move" method to move the task under a different
        # parent or to the top level.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # String indicating the position of the task among its sibling tasks under the
        # same parent task or at the top level. If this string is greater than another
        # task's corresponding position string according to lexicographical ordering,
        # the task is positioned after the other task under the same parent task (or at
        # the top level). This field is read-only. Use the "move" method to move the
        # task to another position.
        # Corresponds to the JSON property `position`
        # @return [String]
        attr_accessor :position
      
        # URL pointing to this task. Used to retrieve, update, or delete this task.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Status of the task. This is either "needsAction" or "completed".
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Title of the task.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Last modification time of the task (as a RFC 3339 timestamp).
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed = args[:completed] unless args[:completed].nil?
          @deleted = args[:deleted] unless args[:deleted].nil?
          @due = args[:due] unless args[:due].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @hidden = args[:hidden] unless args[:hidden].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @links = args[:links] unless args[:links].nil?
          @notes = args[:notes] unless args[:notes].nil?
          @parent = args[:parent] unless args[:parent].nil?
          @position = args[:position] unless args[:position].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @status = args[:status] unless args[:status].nil?
          @title = args[:title] unless args[:title].nil?
          @updated = args[:updated] unless args[:updated].nil?
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
            @description = args[:description] unless args[:description].nil?
            @link = args[:link] unless args[:link].nil?
            @type = args[:type] unless args[:type].nil?
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
      
        # Type of the resource. This is always "tasks#taskList".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL pointing to this task list. Used to retrieve, update, or delete this task
        # list.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Title of the task list.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Last modification time of the task list (as a RFC 3339 timestamp).
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] unless args[:etag].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @title = args[:title] unless args[:title].nil?
          @updated = args[:updated] unless args[:updated].nil?
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
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
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
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
    end
  end
end
