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
    module WebriskV1
      
      # 
      class GoogleCloudWebriskV1ComputeThreatListDiffResponse
        include Google::Apis::Core::Hashable
      
        # Contains the set of entries to add to a local database. May contain a
        # combination of compressed and raw data in a single response.
        # Corresponds to the JSON property `additions`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1ThreatEntryAdditions]
        attr_accessor :additions
      
        # The expected state of a client's local database.
        # Corresponds to the JSON property `checksum`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum]
        attr_accessor :checksum
      
        # The new opaque client version token. This should be retained by the client and
        # passed into the next call of ComputeThreatListDiff as 'version_token'. A
        # separate version token should be stored and used for each threatList.
        # Corresponds to the JSON property `newVersionToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :new_version_token
      
        # The soonest the client should wait before issuing any diff request. Querying
        # sooner is unlikely to produce a meaningful diff. Waiting longer is acceptable
        # considering the use case. If this field is not set clients may update as soon
        # as they want.
        # Corresponds to the JSON property `recommendedNextDiff`
        # @return [String]
        attr_accessor :recommended_next_diff
      
        # Contains the set of entries to remove from a local database.
        # Corresponds to the JSON property `removals`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1ThreatEntryRemovals]
        attr_accessor :removals
      
        # The type of response. This may indicate that an action must be taken by the
        # client when the response is received.
        # Corresponds to the JSON property `responseType`
        # @return [String]
        attr_accessor :response_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additions = args[:additions] if args.key?(:additions)
          @checksum = args[:checksum] if args.key?(:checksum)
          @new_version_token = args[:new_version_token] if args.key?(:new_version_token)
          @recommended_next_diff = args[:recommended_next_diff] if args.key?(:recommended_next_diff)
          @removals = args[:removals] if args.key?(:removals)
          @response_type = args[:response_type] if args.key?(:response_type)
        end
      end
      
      # The expected state of a client's local database.
      class GoogleCloudWebriskV1ComputeThreatListDiffResponseChecksum
        include Google::Apis::Core::Hashable
      
        # The SHA256 hash of the client state; that is, of the sorted list of all hashes
        # present in the database.
        # Corresponds to the JSON property `sha256`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256 = args[:sha256] if args.key?(:sha256)
        end
      end
      
      # The uncompressed threat entries in hash format. Hashes can be anywhere from 4
      # to 32 bytes in size. A large majority are 4 bytes, but some hashes are
      # lengthened if they collide with the hash of a popular URI. Used for sending
      # ThreatEntryAdditons to clients that do not support compression, or when
      # sending non-4-byte hashes to clients that do support compression.
      class GoogleCloudWebriskV1RawHashes
        include Google::Apis::Core::Hashable
      
        # The number of bytes for each prefix encoded below. This field can be anywhere
        # from 4 (shortest prefix) to 32 (full SHA256 hash). In practice this is almost
        # always 4, except in exceptional circumstances.
        # Corresponds to the JSON property `prefixSize`
        # @return [Fixnum]
        attr_accessor :prefix_size
      
        # The hashes, in binary format, concatenated into one long string. Hashes are
        # sorted in lexicographic order. For JSON API users, hashes are base64-encoded.
        # Corresponds to the JSON property `rawHashes`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :raw_hashes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @prefix_size = args[:prefix_size] if args.key?(:prefix_size)
          @raw_hashes = args[:raw_hashes] if args.key?(:raw_hashes)
        end
      end
      
      # A set of raw indices to remove from a local list.
      class GoogleCloudWebriskV1RawIndices
        include Google::Apis::Core::Hashable
      
        # The indices to remove from a lexicographically-sorted local list.
        # Corresponds to the JSON property `indices`
        # @return [Array<Fixnum>]
        attr_accessor :indices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indices = args[:indices] if args.key?(:indices)
        end
      end
      
      # The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or
      # compressed removal indices.
      class GoogleCloudWebriskV1RiceDeltaEncoding
        include Google::Apis::Core::Hashable
      
        # The encoded deltas that are encoded using the Golomb-Rice coder.
        # Corresponds to the JSON property `encodedData`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :encoded_data
      
        # The number of entries that are delta encoded in the encoded data. If only a
        # single integer was encoded, this will be zero and the single value will be
        # stored in `first_value`.
        # Corresponds to the JSON property `entryCount`
        # @return [Fixnum]
        attr_accessor :entry_count
      
        # The offset of the first entry in the encoded data, or, if only a single
        # integer was encoded, that single integer's value. If the field is empty or
        # missing, assume zero.
        # Corresponds to the JSON property `firstValue`
        # @return [Fixnum]
        attr_accessor :first_value
      
        # The Golomb-Rice parameter, which is a number between 2 and 28. This field is
        # missing (that is, zero) if `num_entries` is zero.
        # Corresponds to the JSON property `riceParameter`
        # @return [Fixnum]
        attr_accessor :rice_parameter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoded_data = args[:encoded_data] if args.key?(:encoded_data)
          @entry_count = args[:entry_count] if args.key?(:entry_count)
          @first_value = args[:first_value] if args.key?(:first_value)
          @rice_parameter = args[:rice_parameter] if args.key?(:rice_parameter)
        end
      end
      
      # 
      class GoogleCloudWebriskV1SearchHashesResponse
        include Google::Apis::Core::Hashable
      
        # For requested entities that did not match the threat list, how long to cache
        # the response until.
        # Corresponds to the JSON property `negativeExpireTime`
        # @return [String]
        attr_accessor :negative_expire_time
      
        # The full hashes that matched the requested prefixes. The hash will be
        # populated in the key.
        # Corresponds to the JSON property `threats`
        # @return [Array<Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchHashesResponseThreatHash>]
        attr_accessor :threats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negative_expire_time = args[:negative_expire_time] if args.key?(:negative_expire_time)
          @threats = args[:threats] if args.key?(:threats)
        end
      end
      
      # Contains threat information on a matching hash.
      class GoogleCloudWebriskV1SearchHashesResponseThreatHash
        include Google::Apis::Core::Hashable
      
        # The cache lifetime for the returned match. Clients must not cache this
        # response past this timestamp to avoid false positives.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # A 32 byte SHA256 hash. This field is in binary format. For JSON requests,
        # hashes are base64-encoded.
        # Corresponds to the JSON property `hash`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :hash_prop
      
        # The ThreatList this threat belongs to. This must contain at least one entry.
        # Corresponds to the JSON property `threatTypes`
        # @return [Array<String>]
        attr_accessor :threat_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @threat_types = args[:threat_types] if args.key?(:threat_types)
        end
      end
      
      # 
      class GoogleCloudWebriskV1SearchUrisResponse
        include Google::Apis::Core::Hashable
      
        # Contains threat information on a matching uri.
        # Corresponds to the JSON property `threat`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1SearchUrisResponseThreatUri]
        attr_accessor :threat
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @threat = args[:threat] if args.key?(:threat)
        end
      end
      
      # Contains threat information on a matching uri.
      class GoogleCloudWebriskV1SearchUrisResponseThreatUri
        include Google::Apis::Core::Hashable
      
        # The cache lifetime for the returned match. Clients must not cache this
        # response past this timestamp to avoid false positives.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The ThreatList this threat belongs to.
        # Corresponds to the JSON property `threatTypes`
        # @return [Array<String>]
        attr_accessor :threat_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @threat_types = args[:threat_types] if args.key?(:threat_types)
        end
      end
      
      # Wraps a URI that might be displaying malicious content.
      class GoogleCloudWebriskV1Submission
        include Google::Apis::Core::Hashable
      
        # Required. The URI that is being reported for malicious content to be analyzed.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Contains the set of entries to add to a local database. May contain a
      # combination of compressed and raw data in a single response.
      class GoogleCloudWebriskV1ThreatEntryAdditions
        include Google::Apis::Core::Hashable
      
        # The raw SHA256-formatted entries. Repeated to allow returning sets of hashes
        # with different prefix sizes.
        # Corresponds to the JSON property `rawHashes`
        # @return [Array<Google::Apis::WebriskV1::GoogleCloudWebriskV1RawHashes>]
        attr_accessor :raw_hashes
      
        # The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or
        # compressed removal indices.
        # Corresponds to the JSON property `riceHashes`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1RiceDeltaEncoding]
        attr_accessor :rice_hashes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @raw_hashes = args[:raw_hashes] if args.key?(:raw_hashes)
          @rice_hashes = args[:rice_hashes] if args.key?(:rice_hashes)
        end
      end
      
      # Contains the set of entries to remove from a local database.
      class GoogleCloudWebriskV1ThreatEntryRemovals
        include Google::Apis::Core::Hashable
      
        # A set of raw indices to remove from a local list.
        # Corresponds to the JSON property `rawIndices`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1RawIndices]
        attr_accessor :raw_indices
      
        # The Rice-Golomb encoded data. Used for sending compressed 4-byte hashes or
        # compressed removal indices.
        # Corresponds to the JSON property `riceIndices`
        # @return [Google::Apis::WebriskV1::GoogleCloudWebriskV1RiceDeltaEncoding]
        attr_accessor :rice_indices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @raw_indices = args[:raw_indices] if args.key?(:raw_indices)
          @rice_indices = args[:rice_indices] if args.key?(:rice_indices)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::WebriskV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::WebriskV1::GoogleRpcStatus]
        attr_accessor :error
      
        # Contains a `SubmitUriMetadata` object.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Matches the `/v1/`project-name`/operations/`operation-id`` pattern.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class GoogleRpcStatus
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
    end
  end
end
