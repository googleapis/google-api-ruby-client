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
    module FirebasedatabaseV1beta
      
      # Representation of a Realtime Database instance. Details on interacting with
      # contents of a DatabaseInstance can be found at: https://firebase.google.com/
      # docs/database/rest/start.
      class DatabaseInstance
        include Google::Apis::Core::Hashable
      
        # Immutable. The globally unique hostname of the database.
        # Corresponds to the JSON property `databaseUrl`
        # @return [String]
        attr_accessor :database_url
      
        # The fully qualified resource name of the database instance, in the form: `
        # projects/`project-number`/locations/`location-id`/instances/`database-id``.
        # Currently the only supported location is 'us-central1'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The resource name of the project this instance belongs to. For example: `
        # projects/`project-number``.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The database's lifecycle state. Read-only.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The database instance type. On creation only USER_DATABASE is allowed, which
        # is also the default when omitted.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_url = args[:database_url] if args.key?(:database_url)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The request sent to the DisableDatabaseInstance method.
      class DisableDatabaseInstanceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response from the ListDatabaseInstances method.
      class ListDatabaseInstancesResponse
        include Google::Apis::Core::Hashable
      
        # List of each DatabaseInstance that is in the parent Firebase project.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::FirebasedatabaseV1beta::DatabaseInstance>]
        attr_accessor :instances
      
        # If the result list is too large to fit in a single response, then a token is
        # returned. If the string is empty, then this response is the last page of
        # results. This token can be used in a subsequent call to `ListDatabaseInstances`
        # to find the next group of database instances. Page tokens are short-lived and
        # should not be persisted.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request sent to the ReenableDatabaseInstance method.
      class ReenableDatabaseInstanceRequest
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
