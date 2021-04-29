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
      
      # Response message for PlaceActions.ListPlaceActionLinks.
      class ListPlaceActionLinksResponse
        include Google::Apis::Core::Hashable
      
        # If there are more place action links than the requested page size, then this
        # field is populated with a token to fetch the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The returned list of place action links.
        # Corresponds to the JSON property `placeActionLinks`
        # @return [Array<Google::Apis::MybusinessplaceactionsV1::PlaceActionLink>]
        attr_accessor :place_action_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @place_action_links = args[:place_action_links] if args.key?(:place_action_links)
        end
      end
      
      # Response message for PlaceActions.ListPlaceActionTypeMetadata.
      class ListPlaceActionTypeMetadataResponse
        include Google::Apis::Core::Hashable
      
        # If the number of action types exceeded the requested page size, this field
        # will be populated with a token to fetch the next page on a subsequent call to `
        # placeActionTypeMetadata.list`. If there are no more results, this field will
        # not be present in the response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A collection of metadata for the available place action types.
        # Corresponds to the JSON property `placeActionTypeMetadata`
        # @return [Array<Google::Apis::MybusinessplaceactionsV1::PlaceActionTypeMetadata>]
        attr_accessor :place_action_type_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @place_action_type_metadata = args[:place_action_type_metadata] if args.key?(:place_action_type_metadata)
        end
      end
      
      # Represents a place action link and its attributes.
      class PlaceActionLink
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the place action link was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Indicates whether this link can be edited by the client.
        # Corresponds to the JSON property `isEditable`
        # @return [Boolean]
        attr_accessor :is_editable
        alias_method :is_editable?, :is_editable
      
        # Optional. Whether this link is preferred by the merchant. Only one link can be
        # marked as preferred per place action type at a location. If a future request
        # marks a different link as preferred for the same place action type, then the
        # current preferred link (if any exists) will lose its preference.
        # Corresponds to the JSON property `isPreferred`
        # @return [Boolean]
        attr_accessor :is_preferred
        alias_method :is_preferred?, :is_preferred
      
        # Optional. The resource name, in the format `locations/`location_id`/
        # placeActionLinks/`place_action_link_id``. The name field will only be
        # considered in UpdatePlaceActionLink and DeletePlaceActionLink requests for
        # updating and deleting links respectively. However, it will be ignored in
        # CreatePlaceActionLink request, where `place_action_link_id` will be assigned
        # by the server on successful creation of a new link and returned as part of the
        # response.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The type of place action that can be performed using this link.
        # Corresponds to the JSON property `placeActionType`
        # @return [String]
        attr_accessor :place_action_type
      
        # Output only. Specifies the provider type.
        # Corresponds to the JSON property `providerType`
        # @return [String]
        attr_accessor :provider_type
      
        # Output only. The time when the place action link was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. The link uri. The same uri can be reused for different action types
        # across different locations. However, only one place action link is allowed for
        # each unique combination of (uri, place action type, location).
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @is_editable = args[:is_editable] if args.key?(:is_editable)
          @is_preferred = args[:is_preferred] if args.key?(:is_preferred)
          @name = args[:name] if args.key?(:name)
          @place_action_type = args[:place_action_type] if args.key?(:place_action_type)
          @provider_type = args[:provider_type] if args.key?(:provider_type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Metadata for supported place action types.
      class PlaceActionTypeMetadata
        include Google::Apis::Core::Hashable
      
        # The localized display name for the attribute, if available; otherwise, the
        # English display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The place action type.
        # Corresponds to the JSON property `placeActionType`
        # @return [String]
        attr_accessor :place_action_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @place_action_type = args[:place_action_type] if args.key?(:place_action_type)
        end
      end
    end
  end
end
