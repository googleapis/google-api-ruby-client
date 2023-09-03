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
      
      class CreateOrUpdateTagsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateOrUpdateTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateOrUpdateTagsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags', class: Google::Apis::PlaygroupingV1alpha1::Tag, decorator: Google::Apis::PlaygroupingV1alpha1::Tag::Representation
      
        end
      end
      
      class CreateOrUpdateTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :tags, as: 'tags', class: Google::Apis::PlaygroupingV1alpha1::Tag, decorator: Google::Apis::PlaygroupingV1alpha1::Tag::Representation
      
        end
      end
      
      class Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boolean_value, as: 'booleanValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :key, as: 'key'
          property :string_value, as: 'stringValue'
          property :time_value, as: 'timeValue'
        end
      end
      
      class VerifyTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :persona, as: 'persona'
        end
      end
      
      class VerifyTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
