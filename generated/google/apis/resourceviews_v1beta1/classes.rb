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
    module ResourceviewsV1beta1
      
      # The Label to be applied to the resource views.
      class Label
        include Google::Apis::Core::Hashable
      
        # Key of the label.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Value of the label.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The request to add resources to the resource view.
      class RegionViewsAddResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The list of resources to be added.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # The response to a resource view insert request.
      class RegionViewsInsertResponse
        include Google::Apis::Core::Hashable
      
        # The resource view object.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ResourceviewsV1beta1::ResourceView]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # The response to the list resource request.
      class RegionViewsListResourcesResponse
        include Google::Apis::Core::Hashable
      
        # The resources in the view.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # A token used for pagination.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response to the list resource view request.
      class RegionViewsListResponse
        include Google::Apis::Core::Hashable
      
        # A token used for pagination.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of resource views that meet the criteria.
        # Corresponds to the JSON property `resourceViews`
        # @return [Array<Google::Apis::ResourceviewsV1beta1::ResourceView>]
        attr_accessor :resource_views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_views = args[:resource_views] if args.key?(:resource_views)
        end
      end
      
      # The request to remove resources from the resource view.
      class RegionViewsRemoveResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The list of resources to be removed.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # The resource view object.
      class ResourceView
        include Google::Apis::Core::Hashable
      
        # The creation time of the resource view.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # The detailed description of the resource view.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The ID of the resource view.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The labels for events.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::ResourceviewsV1beta1::Label>]
        attr_accessor :labels
      
        # The last modified time of the view. Not supported yet.
        # Corresponds to the JSON property `lastModified`
        # @return [String]
        attr_accessor :last_modified
      
        # A list of all resources in the resource view.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # The name of the resource view.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The total number of resources in the resource view.
        # Corresponds to the JSON property `numMembers`
        # @return [Fixnum]
        attr_accessor :num_members
      
        # [Output Only] A self-link to the resource view.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @last_modified = args[:last_modified] if args.key?(:last_modified)
          @members = args[:members] if args.key?(:members)
          @name = args[:name] if args.key?(:name)
          @num_members = args[:num_members] if args.key?(:num_members)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # The request to add resources to the resource view.
      class ZoneViewsAddResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The list of resources to be added.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # The response to an insert request.
      class ZoneViewsInsertResponse
        include Google::Apis::Core::Hashable
      
        # The resource view object.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ResourceviewsV1beta1::ResourceView]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # The response to a list resource request.
      class ZoneViewsListResourcesResponse
        include Google::Apis::Core::Hashable
      
        # The full URL of resources in the view.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # A token used for pagination.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @members = args[:members] if args.key?(:members)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response to a list request.
      class ZoneViewsListResponse
        include Google::Apis::Core::Hashable
      
        # A token used for pagination.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The result that contains all resource views that meet the criteria.
        # Corresponds to the JSON property `resourceViews`
        # @return [Array<Google::Apis::ResourceviewsV1beta1::ResourceView>]
        attr_accessor :resource_views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_views = args[:resource_views] if args.key?(:resource_views)
        end
      end
      
      # The request to remove resources from the resource view.
      class ZoneViewsRemoveResourcesRequest
        include Google::Apis::Core::Hashable
      
        # The list of resources to be removed.
        # Corresponds to the JSON property `resources`
        # @return [Array<String>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
    end
  end
end
