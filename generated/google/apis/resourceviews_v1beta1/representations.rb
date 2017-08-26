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
      
      class Label
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionViewsAddResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionViewsInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionViewsListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionViewsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RegionViewsRemoveResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceView
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneViewsAddResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneViewsInsertResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneViewsListResourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneViewsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ZoneViewsRemoveResourcesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Label
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class RegionViewsAddResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources'
        end
      end
      
      class RegionViewsInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ResourceviewsV1beta1::ResourceView, decorator: Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
      
        end
      end
      
      class RegionViewsListResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class RegionViewsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_views, as: 'resourceViews', class: Google::Apis::ResourceviewsV1beta1::ResourceView, decorator: Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
      
        end
      end
      
      class RegionViewsRemoveResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources'
        end
      end
      
      class ResourceView
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :description, as: 'description'
          property :id, as: 'id'
          property :kind, as: 'kind'
          collection :labels, as: 'labels', class: Google::Apis::ResourceviewsV1beta1::Label, decorator: Google::Apis::ResourceviewsV1beta1::Label::Representation
      
          property :last_modified, as: 'lastModified'
          collection :members, as: 'members'
          property :name, as: 'name'
          property :num_members, as: 'numMembers'
          property :self_link, as: 'selfLink'
        end
      end
      
      class ZoneViewsAddResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources'
        end
      end
      
      class ZoneViewsInsertResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource', class: Google::Apis::ResourceviewsV1beta1::ResourceView, decorator: Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
      
        end
      end
      
      class ZoneViewsListResourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :members, as: 'members'
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ZoneViewsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_views, as: 'resourceViews', class: Google::Apis::ResourceviewsV1beta1::ResourceView, decorator: Google::Apis::ResourceviewsV1beta1::ResourceView::Representation
      
        end
      end
      
      class ZoneViewsRemoveResourcesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resources, as: 'resources'
        end
      end
    end
  end
end
