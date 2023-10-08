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
      
      # The full hash identified with one or more matches.
      class GoogleSecuritySafebrowsingV5FullHash
        include Google::Apis::Core::Hashable
      
        # The matching full hash. This is the SHA256 hash. The length will be exactly 32
        # bytes.
        # Corresponds to the JSON property `fullHash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :full_hash
      
        # Unordered list. A repeated field identifying the details relevant to this full
        # hash.
        # Corresponds to the JSON property `fullHashDetails`
        # @return [Array<Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHashFullHashDetail>]
        attr_accessor :full_hash_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_hash = args[:full_hash] if args.key?(:full_hash)
          @full_hash_details = args[:full_hash_details] if args.key?(:full_hash_details)
        end
      end
      
      # Details about a matching full hash. An important note about forward
      # compatibility: new threat types and threat attributes may be added by the
      # server at any time; those additions are considered minor version changes. It
      # is Google's policy not to expose minor version numbers in APIs (see https://
      # cloud.google.com/apis/design/versioning), so clients MUST be prepared to
      # receive FullHashDetail messages containing ThreatType enum values or
      # ThreatAttribute enum values that are considered invalid by the client.
      # Therefore, it is the client's responsibility to check for the validity of all
      # ThreatType and ThreatAttribute enum values; if any value is considered invalid,
      # the client MUST disregard the entire FullHashDetail message.
      class GoogleSecuritySafebrowsingV5FullHashFullHashDetail
        include Google::Apis::Core::Hashable
      
        # Unordered list. Additional attributes about those full hashes. This may be
        # empty.
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # The type of threat. This field will never be empty.
        # Corresponds to the JSON property `threatType`
        # @return [String]
        attr_accessor :threat_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @threat_type = args[:threat_type] if args.key?(:threat_type)
        end
      end
      
      # The response returned after searching threat hashes. Note that if nothing is
      # found, the server will return an OK status (HTTP status code 200) with the `
      # full_hashes` field empty, rather than returning a NOT_FOUND status (HTTP
      # status code 404).
      class GoogleSecuritySafebrowsingV5SearchHashesResponse
        include Google::Apis::Core::Hashable
      
        # The client-side cache duration. The client shall add this duration to the
        # current time to determine the expiration time. The expiration time then
        # applies to every hash prefix queried by the client in the request, regardless
        # of how many full hashes are returned in the response. Even if the server
        # returns no full hashes for a particular hash prefix, this fact should also be
        # cached by the client. Important: the client must not assume that the server
        # will return the same cache duration for all responses. The server may choose
        # different cache durations for different responses depending on the situation.
        # Corresponds to the JSON property `cacheDuration`
        # @return [String]
        attr_accessor :cache_duration
      
        # Unordered list. The unordered list of full hashes found.
        # Corresponds to the JSON property `fullHashes`
        # @return [Array<Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5FullHash>]
        attr_accessor :full_hashes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_duration = args[:cache_duration] if args.key?(:cache_duration)
          @full_hashes = args[:full_hashes] if args.key?(:full_hashes)
        end
      end
    end
  end
end
