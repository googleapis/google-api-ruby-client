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
    module PlaygroupingV1alpha1
      
      # Request message for CreateOrUpdateTags. VerifyToken.
      class CreateOrUpdateTagsRequest
        include Google::Apis::Core::Hashable
      
        # Tags to be inserted or updated.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::PlaygroupingV1alpha1::Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Response message for CreateOrUpdateTags.
      class CreateOrUpdateTagsResponse
        include Google::Apis::Core::Hashable
      
        # All requested tags are returned, including pre-existing ones.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::PlaygroupingV1alpha1::Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # A tag is associated with exactly one package name and user.
      class Tag
        include Google::Apis::Core::Hashable
      
        # A boolean value of the tag.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # A signed 64-bit integer value of the tag.
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # Required. Key for the tag.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # A string value of the tag.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # A time value of the tag.
        # Corresponds to the JSON property `timeValue`
        # @return [String]
        attr_accessor :time_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @key = args[:key] if args.key?(:key)
          @string_value = args[:string_value] if args.key?(:string_value)
          @time_value = args[:time_value] if args.key?(:time_value)
        end
      end
      
      # Request message for VerifyToken.
      class VerifyTokenRequest
        include Google::Apis::Core::Hashable
      
        # Required. Persona represented by the token. Format: personas/`persona`
        # Corresponds to the JSON property `persona`
        # @return [String]
        attr_accessor :persona
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @persona = args[:persona] if args.key?(:persona)
        end
      end
      
      # Response message for VerifyToken.
      class VerifyTokenResponse
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
