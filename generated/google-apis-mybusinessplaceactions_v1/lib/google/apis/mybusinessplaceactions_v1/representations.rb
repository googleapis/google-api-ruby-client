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
    module MybusinessplaceactionsV1
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPlaceActionLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPlaceActionTypeMetadataResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceActionLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlaceActionTypeMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListPlaceActionLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :place_action_links, as: 'placeActionLinks', class: Google::Apis::MybusinessplaceactionsV1::PlaceActionLink, decorator: Google::Apis::MybusinessplaceactionsV1::PlaceActionLink::Representation
      
        end
      end
      
      class ListPlaceActionTypeMetadataResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :place_action_type_metadata, as: 'placeActionTypeMetadata', class: Google::Apis::MybusinessplaceactionsV1::PlaceActionTypeMetadata, decorator: Google::Apis::MybusinessplaceactionsV1::PlaceActionTypeMetadata::Representation
      
        end
      end
      
      class PlaceActionLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :is_editable, as: 'isEditable'
          property :is_preferred, as: 'isPreferred'
          property :name, as: 'name'
          property :place_action_type, as: 'placeActionType'
          property :provider_type, as: 'providerType'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class PlaceActionTypeMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :place_action_type, as: 'placeActionType'
        end
      end
    end
  end
end
