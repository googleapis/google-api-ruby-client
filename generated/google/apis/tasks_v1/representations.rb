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
      class TaskRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TaskListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TaskListsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class TasksRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class TaskRepresentation < Google::Apis::Core::JsonRepresentation
        property :completed, as: 'completed', type: DateTime
        property :deleted, as: 'deleted'
        property :due, as: 'due', type: DateTime
        property :etag, as: 'etag'
        property :hidden, as: 'hidden'
        property :id, as: 'id'
        property :kind, as: 'kind'
        collection :links, as: 'links', class: Google::Apis::TasksV1::Task::Link do
          property :description, as: 'description'
          property :link, as: 'link'
          property :type, as: 'type'
        end
        
        
        property :notes, as: 'notes'
        property :parent, as: 'parent'
        property :position, as: 'position'
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class TaskListRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class TaskListsRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::TasksV1::TaskList, decorator: Google::Apis::TasksV1::TaskListRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class TasksRepresentation < Google::Apis::Core::JsonRepresentation
        property :etag, as: 'etag'
        collection :items, as: 'items', class: Google::Apis::TasksV1::Task, decorator: Google::Apis::TasksV1::TaskRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end
    end
  end
end
