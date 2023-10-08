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
    module SafebrowsingV5
      
      class GoogleSecuritySafebrowsingV5FullHash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5FullHashFullHashDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5SearchHashesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5FullHash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :full_hash, :base64 => true, as: 'fullHash'
          collection :full_hash_details, as: 'fullHashDetails', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHashFullHashDetail, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHashFullHashDetail::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV5FullHashFullHashDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributes, as: 'attributes'
          property :threat_type, as: 'threatType'
        end
      end
      
      class GoogleSecuritySafebrowsingV5SearchHashesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_duration, as: 'cacheDuration'
          collection :full_hashes, as: 'fullHashes', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHash, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHash::Representation
      
        end
      end
    end
  end
end
