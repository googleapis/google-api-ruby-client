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
      
      class GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5FullHash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5FullHashFullHashDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5HashList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5HashListMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5ListHashListsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5SearchHashesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5SearchUrlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5ThreatUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hash_lists, as: 'hashLists', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList::Representation
      
        end
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
      
      class GoogleSecuritySafebrowsingV5HashList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :additions_eight_bytes, as: 'additionsEightBytes', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit::Representation
      
          property :additions_four_bytes, as: 'additionsFourBytes', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit::Representation
      
          property :additions_sixteen_bytes, as: 'additionsSixteenBytes', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit::Representation
      
          property :additions_thirty_two_bytes, as: 'additionsThirtyTwoBytes', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit::Representation
      
          property :compressed_removals, as: 'compressedRemovals', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashListMetadata, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashListMetadata::Representation
      
          property :minimum_wait_duration, as: 'minimumWaitDuration'
          property :name, as: 'name'
          property :partial_update, as: 'partialUpdate'
          property :sha256_checksum, :base64 => true, as: 'sha256Checksum'
          property :version, :base64 => true, as: 'version'
        end
      end
      
      class GoogleSecuritySafebrowsingV5HashListMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :hash_length, as: 'hashLength'
          collection :likely_safe_types, as: 'likelySafeTypes'
          collection :threat_types, as: 'threatTypes'
        end
      end
      
      class GoogleSecuritySafebrowsingV5ListHashListsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :hash_lists, as: 'hashLists', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :entries_count, as: 'entriesCount'
          property :first_value_hi, :numeric_string => true, as: 'firstValueHi'
          property :first_value_lo, :numeric_string => true, as: 'firstValueLo'
          property :rice_parameter, as: 'riceParameter'
        end
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :entries_count, as: 'entriesCount'
          property :first_value_first_part, :numeric_string => true, as: 'firstValueFirstPart'
          property :first_value_fourth_part, :numeric_string => true, as: 'firstValueFourthPart'
          property :first_value_second_part, :numeric_string => true, as: 'firstValueSecondPart'
          property :first_value_third_part, :numeric_string => true, as: 'firstValueThirdPart'
          property :rice_parameter, as: 'riceParameter'
        end
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :entries_count, as: 'entriesCount'
          property :first_value, as: 'firstValue'
          property :rice_parameter, as: 'riceParameter'
        end
      end
      
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoded_data, :base64 => true, as: 'encodedData'
          property :entries_count, as: 'entriesCount'
          property :first_value, :numeric_string => true, as: 'firstValue'
          property :rice_parameter, as: 'riceParameter'
        end
      end
      
      class GoogleSecuritySafebrowsingV5SearchHashesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_duration, as: 'cacheDuration'
          collection :full_hashes, as: 'fullHashes', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHash, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHash::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV5SearchUrlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cache_duration, as: 'cacheDuration'
          collection :threats, as: 'threats', class: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ThreatUrl, decorator: Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ThreatUrl::Representation
      
        end
      end
      
      class GoogleSecuritySafebrowsingV5ThreatUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :threat_types, as: 'threatTypes'
          property :url, as: 'url'
        end
      end
    end
  end
end
