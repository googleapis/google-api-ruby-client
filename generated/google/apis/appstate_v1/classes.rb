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
    module AppstateV1
      
      # This is a JSON template for an app state resource.
      class GetResponse
        include Google::Apis::Core::Hashable
      
        # The current app state version.
        # Corresponds to the JSON property `currentStateVersion`
        # @return [String]
        attr_accessor :current_state_version
      
        # The requested data.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string appstate#getResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The key for the data.
        # Corresponds to the JSON property `stateKey`
        # @return [Fixnum]
        attr_accessor :state_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_state_version = args[:current_state_version] if args.key?(:current_state_version)
          @data = args[:data] if args.key?(:data)
          @kind = args[:kind] if args.key?(:kind)
          @state_key = args[:state_key] if args.key?(:state_key)
        end
      end
      
      # This is a JSON template to convert a list-response for app state.
      class ListResponse
        include Google::Apis::Core::Hashable
      
        # The app state data.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AppstateV1::GetResponse>]
        attr_accessor :items
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string appstate#listResponse.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The maximum number of keys allowed for this user.
        # Corresponds to the JSON property `maximumKeyCount`
        # @return [Fixnum]
        attr_accessor :maximum_key_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @maximum_key_count = args[:maximum_key_count] if args.key?(:maximum_key_count)
        end
      end
      
      # This is a JSON template for a requests which update app state
      class UpdateRequest
        include Google::Apis::Core::Hashable
      
        # The new app state data that your application is trying to update with.
        # Corresponds to the JSON property `data`
        # @return [String]
        attr_accessor :data
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string appstate#updateRequest.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # This is a JSON template for an app state write result.
      class WriteResult
        include Google::Apis::Core::Hashable
      
        # The version of the data for this key on the server.
        # Corresponds to the JSON property `currentStateVersion`
        # @return [String]
        attr_accessor :current_state_version
      
        # Uniquely identifies the type of this resource. Value is always the fixed
        # string appstate#writeResult.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The written key.
        # Corresponds to the JSON property `stateKey`
        # @return [Fixnum]
        attr_accessor :state_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_state_version = args[:current_state_version] if args.key?(:current_state_version)
          @kind = args[:kind] if args.key?(:kind)
          @state_key = args[:state_key] if args.key?(:state_key)
        end
      end
    end
  end
end
