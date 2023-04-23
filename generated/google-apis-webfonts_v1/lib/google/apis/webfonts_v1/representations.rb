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
    module WebfontsV1
      
      class Axis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Webfont
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WebfontList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Axis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end, as: 'end'
          property :start, as: 'start'
          property :tag, as: 'tag'
        end
      end
      
      class Webfont
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :axes, as: 'axes', class: Google::Apis::WebfontsV1::Axis, decorator: Google::Apis::WebfontsV1::Axis::Representation
      
          property :category, as: 'category'
          property :family, as: 'family'
          hash :files, as: 'files'
          property :kind, as: 'kind'
          property :last_modified, as: 'lastModified'
          property :menu, as: 'menu'
          collection :subsets, as: 'subsets'
          collection :variants, as: 'variants'
          property :version, as: 'version'
        end
      end
      
      class WebfontList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::WebfontsV1::Webfont, decorator: Google::Apis::WebfontsV1::Webfont::Representation
      
          property :kind, as: 'kind'
        end
      end
    end
  end
end
