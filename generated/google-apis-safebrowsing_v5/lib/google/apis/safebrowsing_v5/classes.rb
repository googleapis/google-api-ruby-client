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
      
      # The response containing multiple hash lists.
      class GoogleSecuritySafebrowsingV5BatchGetHashListsResponse
        include Google::Apis::Core::Hashable
      
        # The hash lists in the same order given in the request.
        # Corresponds to the JSON property `hashLists`
        # @return [Array<Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList>]
        attr_accessor :hash_lists
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hash_lists = args[:hash_lists] if args.key?(:hash_lists)
        end
      end
      
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
      # cloud.google.com/apis/design/versioning for the versioning policy), so clients
      # MUST be prepared to receive `FullHashDetail` messages containing `ThreatType`
      # enum values or `ThreatAttribute` enum values that are considered invalid by
      # the client. Therefore, it is the client's responsibility to check for the
      # validity of all `ThreatType` and `ThreatAttribute` enum values; if any value
      # is considered invalid, the client MUST disregard the entire `FullHashDetail`
      # message.
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
      
      # A list of hashes identified by its name.
      class GoogleSecuritySafebrowsingV5HashList
        include Google::Apis::Core::Hashable
      
        # Same as `RiceDeltaEncoded32Bit` except this encodes 64-bit numbers.
        # Corresponds to the JSON property `additionsEightBytes`
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit]
        attr_accessor :additions_eight_bytes
      
        # The Rice-Golomb encoded data. Used for either hashes or removal indices. It is
        # guaranteed that every hash or index here has the same length, and this length
        # is exactly 32 bits. Generally speaking, if we sort all the entries
        # lexicographically, we will find that the higher order bits tend not to change
        # as frequently as lower order bits. This means that if we also take the
        # adjacent difference between entries, the higher order bits have a high
        # probability of being zero. This exploits this high probability of zero by
        # essentially choosing a certain number of bits; all bits more significant than
        # this are likely to be zero so we use unary encoding. See the `rice_parameter`
        # field. Historical note: the Rice-delta encoding was first used in V4 of this
        # API. In V5, two significant improvements were made: firstly, the Rice-delta
        # encoding is now available with hash prefixes longer than 4 bytes; secondly,
        # the encoded data are now treated as big-endian so as to avoid a costly sorting
        # step.
        # Corresponds to the JSON property `additionsFourBytes`
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit]
        attr_accessor :additions_four_bytes
      
        # Same as `RiceDeltaEncoded32Bit` except this encodes 128-bit numbers.
        # Corresponds to the JSON property `additionsSixteenBytes`
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit]
        attr_accessor :additions_sixteen_bytes
      
        # Same as `RiceDeltaEncoded32Bit` except this encodes 256-bit numbers.
        # Corresponds to the JSON property `additionsThirtyTwoBytes`
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit]
        attr_accessor :additions_thirty_two_bytes
      
        # The Rice-Golomb encoded data. Used for either hashes or removal indices. It is
        # guaranteed that every hash or index here has the same length, and this length
        # is exactly 32 bits. Generally speaking, if we sort all the entries
        # lexicographically, we will find that the higher order bits tend not to change
        # as frequently as lower order bits. This means that if we also take the
        # adjacent difference between entries, the higher order bits have a high
        # probability of being zero. This exploits this high probability of zero by
        # essentially choosing a certain number of bits; all bits more significant than
        # this are likely to be zero so we use unary encoding. See the `rice_parameter`
        # field. Historical note: the Rice-delta encoding was first used in V4 of this
        # API. In V5, two significant improvements were made: firstly, the Rice-delta
        # encoding is now available with hash prefixes longer than 4 bytes; secondly,
        # the encoded data are now treated as big-endian so as to avoid a costly sorting
        # step.
        # Corresponds to the JSON property `compressedRemovals`
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit]
        attr_accessor :compressed_removals
      
        # Metadata about a particular hash list.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashListMetadata]
        attr_accessor :metadata
      
        # Clients should wait at least this long to get the hash list again. If omitted
        # or zero, clients SHOULD fetch immediately because it indicates that the server
        # has an additional update to be sent to the client, but could not due to the
        # client-specified constraints.
        # Corresponds to the JSON property `minimumWaitDuration`
        # @return [String]
        attr_accessor :minimum_wait_duration
      
        # The name of the hash list. Note that the Global Cache is also just a hash list
        # and can be referred to here.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # When true, this is a partial diff containing additions and removals based on
        # what the client already has. When false, this is the complete hash list. When
        # false, the client MUST delete any locally stored version for this hash list.
        # This means that either the version possessed by the client is seriously out-of-
        # date or the client data is believed to be corrupt. The `compressed_removals`
        # field will be empty. When true, the client MUST apply an incremental update by
        # applying removals and then additions.
        # Corresponds to the JSON property `partialUpdate`
        # @return [Boolean]
        attr_accessor :partial_update
        alias_method :partial_update?, :partial_update
      
        # The sorted list of all hashes, hashed again with SHA256. This is the checksum
        # for the sorted list of all hashes present in the database after applying the
        # provided update. In the case that no updates were provided, the server will
        # omit this field to indicate that the client should use the existing checksum.
        # Corresponds to the JSON property `sha256Checksum`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256_checksum
      
        # The version of the hash list. The client MUST NOT manipulate those bytes.
        # Corresponds to the JSON property `version`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additions_eight_bytes = args[:additions_eight_bytes] if args.key?(:additions_eight_bytes)
          @additions_four_bytes = args[:additions_four_bytes] if args.key?(:additions_four_bytes)
          @additions_sixteen_bytes = args[:additions_sixteen_bytes] if args.key?(:additions_sixteen_bytes)
          @additions_thirty_two_bytes = args[:additions_thirty_two_bytes] if args.key?(:additions_thirty_two_bytes)
          @compressed_removals = args[:compressed_removals] if args.key?(:compressed_removals)
          @metadata = args[:metadata] if args.key?(:metadata)
          @minimum_wait_duration = args[:minimum_wait_duration] if args.key?(:minimum_wait_duration)
          @name = args[:name] if args.key?(:name)
          @partial_update = args[:partial_update] if args.key?(:partial_update)
          @sha256_checksum = args[:sha256_checksum] if args.key?(:sha256_checksum)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Metadata about a particular hash list.
      class GoogleSecuritySafebrowsingV5HashListMetadata
        include Google::Apis::Core::Hashable
      
        # A human-readable description about this list. Written in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The supported hash length for this hash list. Each hash list will support
        # exactly one length. If a different hash length is introduced for the same set
        # of threat types or safe types, it will be introduced as a separate list with a
        # distinct name and respective hash length set.
        # Corresponds to the JSON property `hashLength`
        # @return [String]
        attr_accessor :hash_length
      
        # Unordered list. If not empty, this specifies that the hash list represents a
        # list of likely safe hashes, and this enumerates the ways they are considered
        # likely safe. This field is mutually exclusive with the threat_types field.
        # Corresponds to the JSON property `likelySafeTypes`
        # @return [Array<String>]
        attr_accessor :likely_safe_types
      
        # Unordered list. If not empty, this specifies that the hash list is a kind of
        # threat list, and this enumerates the kind of threats associated with hashes or
        # hash prefixes in this hash list. May be empty if the entry does not represent
        # a threat, i.e. in the case that it represents a likely safe type.
        # Corresponds to the JSON property `threatTypes`
        # @return [Array<String>]
        attr_accessor :threat_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @hash_length = args[:hash_length] if args.key?(:hash_length)
          @likely_safe_types = args[:likely_safe_types] if args.key?(:likely_safe_types)
          @threat_types = args[:threat_types] if args.key?(:threat_types)
        end
      end
      
      # The response containing metadata about hash lists.
      class GoogleSecuritySafebrowsingV5ListHashListsResponse
        include Google::Apis::Core::Hashable
      
        # The hash lists in an arbitrary order. Only metadata about the hash lists will
        # be included, not the contents.
        # Corresponds to the JSON property `hashLists`
        # @return [Array<Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5HashList>]
        attr_accessor :hash_lists
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hash_lists = args[:hash_lists] if args.key?(:hash_lists)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Same as `RiceDeltaEncoded32Bit` except this encodes 128-bit numbers.
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded128Bit
        include Google::Apis::Core::Hashable
      
        # The encoded deltas that are encoded using the Golomb-Rice coder.
        # Corresponds to the JSON property `encodedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_data
      
        # The number of entries that are delta encoded in the encoded data. If only a
        # single integer was encoded, this will be zero and the single value will be
        # stored in `first_value`.
        # Corresponds to the JSON property `entriesCount`
        # @return [Fixnum]
        attr_accessor :entries_count
      
        # The upper 64 bits of the first entry in the encoded data (hashes). If the
        # field is empty, the upper 64 bits are all zero.
        # Corresponds to the JSON property `firstValueHi`
        # @return [Fixnum]
        attr_accessor :first_value_hi
      
        # The lower 64 bits of the first entry in the encoded data (hashes). If the
        # field is empty, the lower 64 bits are all zero.
        # Corresponds to the JSON property `firstValueLo`
        # @return [Fixnum]
        attr_accessor :first_value_lo
      
        # The Golomb-Rice parameter. This parameter is guaranteed to be between 99 and
        # 126, inclusive.
        # Corresponds to the JSON property `riceParameter`
        # @return [Fixnum]
        attr_accessor :rice_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_data = args[:encoded_data] if args.key?(:encoded_data)
          @entries_count = args[:entries_count] if args.key?(:entries_count)
          @first_value_hi = args[:first_value_hi] if args.key?(:first_value_hi)
          @first_value_lo = args[:first_value_lo] if args.key?(:first_value_lo)
          @rice_parameter = args[:rice_parameter] if args.key?(:rice_parameter)
        end
      end
      
      # Same as `RiceDeltaEncoded32Bit` except this encodes 256-bit numbers.
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded256Bit
        include Google::Apis::Core::Hashable
      
        # The encoded deltas that are encoded using the Golomb-Rice coder.
        # Corresponds to the JSON property `encodedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_data
      
        # The number of entries that are delta encoded in the encoded data. If only a
        # single integer was encoded, this will be zero and the single value will be
        # stored in `first_value`.
        # Corresponds to the JSON property `entriesCount`
        # @return [Fixnum]
        attr_accessor :entries_count
      
        # The first 64 bits of the first entry in the encoded data (hashes). If the
        # field is empty, the first 64 bits are all zero.
        # Corresponds to the JSON property `firstValueFirstPart`
        # @return [Fixnum]
        attr_accessor :first_value_first_part
      
        # The last 64 bits of the first entry in the encoded data (hashes). If the field
        # is empty, the last 64 bits are all zero.
        # Corresponds to the JSON property `firstValueFourthPart`
        # @return [Fixnum]
        attr_accessor :first_value_fourth_part
      
        # The 65 through 128th bits of the first entry in the encoded data (hashes). If
        # the field is empty, the 65 through 128th bits are all zero.
        # Corresponds to the JSON property `firstValueSecondPart`
        # @return [Fixnum]
        attr_accessor :first_value_second_part
      
        # The 129 through 192th bits of the first entry in the encoded data (hashes). If
        # the field is empty, the 129 through 192th bits are all zero.
        # Corresponds to the JSON property `firstValueThirdPart`
        # @return [Fixnum]
        attr_accessor :first_value_third_part
      
        # The Golomb-Rice parameter. This parameter is guaranteed to be between 227 and
        # 254, inclusive.
        # Corresponds to the JSON property `riceParameter`
        # @return [Fixnum]
        attr_accessor :rice_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_data = args[:encoded_data] if args.key?(:encoded_data)
          @entries_count = args[:entries_count] if args.key?(:entries_count)
          @first_value_first_part = args[:first_value_first_part] if args.key?(:first_value_first_part)
          @first_value_fourth_part = args[:first_value_fourth_part] if args.key?(:first_value_fourth_part)
          @first_value_second_part = args[:first_value_second_part] if args.key?(:first_value_second_part)
          @first_value_third_part = args[:first_value_third_part] if args.key?(:first_value_third_part)
          @rice_parameter = args[:rice_parameter] if args.key?(:rice_parameter)
        end
      end
      
      # The Rice-Golomb encoded data. Used for either hashes or removal indices. It is
      # guaranteed that every hash or index here has the same length, and this length
      # is exactly 32 bits. Generally speaking, if we sort all the entries
      # lexicographically, we will find that the higher order bits tend not to change
      # as frequently as lower order bits. This means that if we also take the
      # adjacent difference between entries, the higher order bits have a high
      # probability of being zero. This exploits this high probability of zero by
      # essentially choosing a certain number of bits; all bits more significant than
      # this are likely to be zero so we use unary encoding. See the `rice_parameter`
      # field. Historical note: the Rice-delta encoding was first used in V4 of this
      # API. In V5, two significant improvements were made: firstly, the Rice-delta
      # encoding is now available with hash prefixes longer than 4 bytes; secondly,
      # the encoded data are now treated as big-endian so as to avoid a costly sorting
      # step.
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded32Bit
        include Google::Apis::Core::Hashable
      
        # The encoded deltas that are encoded using the Golomb-Rice coder.
        # Corresponds to the JSON property `encodedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_data
      
        # The number of entries that are delta encoded in the encoded data. If only a
        # single integer was encoded, this will be zero and the single value will be
        # stored in `first_value`.
        # Corresponds to the JSON property `entriesCount`
        # @return [Fixnum]
        attr_accessor :entries_count
      
        # The first entry in the encoded data (hashes or indices), or, if only a single
        # hash prefix or index was encoded, that entry's value. If the field is empty,
        # the entry is zero.
        # Corresponds to the JSON property `firstValue`
        # @return [Fixnum]
        attr_accessor :first_value
      
        # The Golomb-Rice parameter. This parameter is guaranteed to be between 3 and 30,
        # inclusive.
        # Corresponds to the JSON property `riceParameter`
        # @return [Fixnum]
        attr_accessor :rice_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_data = args[:encoded_data] if args.key?(:encoded_data)
          @entries_count = args[:entries_count] if args.key?(:entries_count)
          @first_value = args[:first_value] if args.key?(:first_value)
          @rice_parameter = args[:rice_parameter] if args.key?(:rice_parameter)
        end
      end
      
      # Same as `RiceDeltaEncoded32Bit` except this encodes 64-bit numbers.
      class GoogleSecuritySafebrowsingV5RiceDeltaEncoded64Bit
        include Google::Apis::Core::Hashable
      
        # The encoded deltas that are encoded using the Golomb-Rice coder.
        # Corresponds to the JSON property `encodedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_data
      
        # The number of entries that are delta encoded in the encoded data. If only a
        # single integer was encoded, this will be zero and the single value will be
        # stored in `first_value`.
        # Corresponds to the JSON property `entriesCount`
        # @return [Fixnum]
        attr_accessor :entries_count
      
        # The first entry in the encoded data (hashes), or, if only a single hash prefix
        # was encoded, that entry's value. If the field is empty, the entry is zero.
        # Corresponds to the JSON property `firstValue`
        # @return [Fixnum]
        attr_accessor :first_value
      
        # The Golomb-Rice parameter. This parameter is guaranteed to be between 35 and
        # 62, inclusive.
        # Corresponds to the JSON property `riceParameter`
        # @return [Fixnum]
        attr_accessor :rice_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_data = args[:encoded_data] if args.key?(:encoded_data)
          @entries_count = args[:entries_count] if args.key?(:entries_count)
          @first_value = args[:first_value] if args.key?(:first_value)
          @rice_parameter = args[:rice_parameter] if args.key?(:rice_parameter)
        end
      end
      
      # The response returned after searching threat hashes. If nothing is found, the
      # server will return an OK status (HTTP status code 200) with the `full_hashes`
      # field empty, rather than returning a NOT_FOUND status (HTTP status code 404). *
      # *What's new in V5**: There is a separation between `FullHash` and `
      # FullHashDetail`. In the case when a hash represents a site having multiple
      # threats (e.g. both MALWARE and SOCIAL_ENGINEERING), the full hash does not
      # need to be sent twice as in V4. Furthermore, the cache duration has been
      # simplified into a single `cache_duration` field.
      class GoogleSecuritySafebrowsingV5SearchHashesResponse
        include Google::Apis::Core::Hashable
      
        # The client-side cache duration. The client MUST add this duration to the
        # current time to determine the expiration time. The expiration time then
        # applies to every hash prefix queried by the client in the request, regardless
        # of how many full hashes are returned in the response. Even if the server
        # returns no full hashes for a particular hash prefix, this fact MUST also be
        # cached by the client. If and only if the field `full_hashes` is empty, the
        # client MAY increase the `cache_duration` to determine a new expiration that is
        # later than that specified by the server. In any case, the increased cache
        # duration must not be longer than 24 hours. Important: the client MUST NOT
        # assume that the server will return the same cache duration for all responses.
        # The server MAY choose different cache durations for different responses
        # depending on the situation.
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
      
      # The response returned after searching threats matching the specified URLs. If
      # nothing is found, the server will return an OK status (HTTP status code 200)
      # with the `threats` field empty, rather than returning a NOT_FOUND status (HTTP
      # status code 404).
      class GoogleSecuritySafebrowsingV5SearchUrlsResponse
        include Google::Apis::Core::Hashable
      
        # The client-side cache duration. The client MUST add this duration to the
        # current time to determine the expiration time. The expiration time then
        # applies to every URL queried by the client in the request, regardless of how
        # many URLs are returned in the response. Even if the server returns no matches
        # for a particular URL, this fact MUST also be cached by the client. If and only
        # if the field `threats` is empty, the client MAY increase the `cache_duration`
        # to determine a new expiration that is later than that specified by the server.
        # In any case, the increased cache duration must not be longer than 24 hours.
        # Important: the client MUST NOT assume that the server will return the same
        # cache duration for all responses. The server MAY choose different cache
        # durations for different responses depending on the situation.
        # Corresponds to the JSON property `cacheDuration`
        # @return [String]
        attr_accessor :cache_duration
      
        # Unordered list. The unordered list of threat matches found. Each entry
        # contains a URL and the threat types that were found matching that URL. The
        # list size can be greater than the number of URLs in the request as the all
        # expressions of the URL would've been considered.
        # Corresponds to the JSON property `threats`
        # @return [Array<Google::Apis::SafebrowsingV5::GoogleSecuritySafebrowsingV5ThreatUrl>]
        attr_accessor :threats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_duration = args[:cache_duration] if args.key?(:cache_duration)
          @threats = args[:threats] if args.key?(:threats)
        end
      end
      
      # A URL matching one or more threats.
      class GoogleSecuritySafebrowsingV5ThreatUrl
        include Google::Apis::Core::Hashable
      
        # Unordered list. The unordered list of threat that the URL is classified as.
        # Corresponds to the JSON property `threatTypes`
        # @return [Array<String>]
        attr_accessor :threat_types
      
        # The requested URL that was matched by one or more threats.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threat_types = args[:threat_types] if args.key?(:threat_types)
          @url = args[:url] if args.key?(:url)
        end
      end
    end
  end
end
