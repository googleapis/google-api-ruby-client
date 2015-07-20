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
    module CloudresourcemanagerV1beta1
      
      # A Project is a high-level Google Cloud Platform entity. It is a container for
      # ACLs, APIs, AppEngine Apps, VMs, and other Google Cloud Platform resources.
      class Project
        include Google::Apis::Core::Hashable
      
        # The number uniquely identifying the project. Example: 415104041262 Read-only.
        # Corresponds to the JSON property `projectNumber`
        # @return [String]
        attr_accessor :project_number
      
        # The unique, user-assigned ID of the project. It must be 6 to 30 lowercase
        # letters, digits, or hyphens. It must start with a letter. Trailing hyphens are
        # prohibited. Example: tokyo-rain-123 Read-only after creation.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The project lifecycle state. Read-only.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # The user-assigned name of the project. This field is optional and can remain
        # unset. Allowed characters are: lowercase and uppercase letters, numbers,
        # hyphen, single-quote, double-quote, space, and exclamation point. Example: My
        # Project Read-write.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Creation time. Read-only.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The labels associated with this project. Label keys must be between 1 and 63
        # characters long and must conform to the following regular expression: \[a-z\](\
        # [-a-z0-9\]*\[a-z0-9\])?. Label values must be between 0 and 63 characters long
        # and must conform to the regular expression (\[a-z\](\[-a-z0-9\]*\[a-z0-9\])?)?.
        # No more than 256 labels can be associated with a given resource. Clients
        # should store labels in a representation such as JSON that does not depend on
        # specific characters being disallowed. Example: "environment" : "dev" Read-
        # write.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_number = args[:project_number] unless args[:project_number].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
          @lifecycle_state = args[:lifecycle_state] unless args[:lifecycle_state].nil?
          @name = args[:name] unless args[:name].nil?
          @create_time = args[:create_time] unless args[:create_time].nil?
          @labels = args[:labels] unless args[:labels].nil?
        end
      end
      
      # A page of the response received from the [ListProjects][google.
      # cloudresourcemanager.projects.v1beta1.DeveloperProjects.ListProjects] method.
      # A paginated response where more pages are available has `next_page_token` set.
      # This token can be used in a subsequent request to retrieve the next request
      # page.
      class ListProjectsResponse
        include Google::Apis::Core::Hashable
      
        # The list of projects that matched the list filter. This list can be paginated.
        # Corresponds to the JSON property `projects`
        # @return [Array<Google::Apis::CloudresourcemanagerV1beta1::Project>]
        attr_accessor :projects
      
        # Pagination token. If the result set is too large to fit in a single response,
        # this token is returned. It encodes the position of the current result cursor.
        # Feeding this value into a new list request with the `page_token` parameter
        # gives the next page of the results. When `next_page_token` is not filled in,
        # there is no next page and the list returned is the last page in the result set.
        # Pagination tokens have a limited lifetime. Note: pagination is not yet
        # supported; the server will not set this field.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @projects = args[:projects] unless args[:projects].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
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
    end
  end
end
