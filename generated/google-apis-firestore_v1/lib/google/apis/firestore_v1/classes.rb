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
    module FirestoreV1
      
      # Defines an aggregation that produces a single result.
      class Aggregation
        include Google::Apis::Core::Hashable
      
        # Optional. Optional name of the field to store the result of the aggregation
        # into. If not provided, Firestore will pick a default name following the format
        # `field_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
        # COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) OVER ( ... ); ```
        # becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2) AS
        # field_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) AS field_2 OVER ( ... ); ```
        # Requires: * Must be unique across all aggregation aliases. * Conform to
        # document field name limitations.
        # Corresponds to the JSON property `alias`
        # @return [String]
        attr_accessor :alias
      
        # Average of the values of the requested field. * Only numeric values will be
        # aggregated. All non-numeric values including `NULL` are skipped. * If the
        # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
        # standards. * If the aggregated value set is empty, returns `NULL`. * Always
        # returns the result as a double.
        # Corresponds to the JSON property `avg`
        # @return [Google::Apis::FirestoreV1::Avg]
        attr_accessor :avg
      
        # Count of documents that match the query. The `COUNT(*)` aggregation function
        # operates on the entire document so it does not require a field reference.
        # Corresponds to the JSON property `count`
        # @return [Google::Apis::FirestoreV1::Count]
        attr_accessor :count
      
        # Sum of the values of the requested field. * Only numeric values will be
        # aggregated. All non-numeric values including `NULL` are skipped. * If the
        # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
        # standards. * If the aggregated value set is empty, returns 0. * Returns a 64-
        # bit integer if all aggregated numbers are integers and the sum result does not
        # overflow. Otherwise, the result is returned as a double. Note that even if all
        # the aggregated values are integers, the result is returned as a double if it
        # cannot fit within a 64-bit signed integer. When this occurs, the returned
        # value will lose precision. * When underflow occurs, floating-point aggregation
        # is non-deterministic. This means that running the same query repeatedly
        # without any changes to the underlying values could produce slightly different
        # results each time. In those cases, values should be stored as integers over
        # floating-point numbers.
        # Corresponds to the JSON property `sum`
        # @return [Google::Apis::FirestoreV1::Sum]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias = args[:alias] if args.key?(:alias)
          @avg = args[:avg] if args.key?(:avg)
          @count = args[:count] if args.key?(:count)
          @sum = args[:sum] if args.key?(:sum)
        end
      end
      
      # The result of a single bucket from a Firestore aggregation query. The keys of `
      # aggregate_fields` are the same for all results in an aggregation query, unlike
      # document queries which can have different fields present for each result.
      class AggregationResult
        include Google::Apis::Core::Hashable
      
        # The result of the aggregation functions, ex: `COUNT(*) AS total_docs`. The key
        # is the alias assigned to the aggregation function on input and the size of
        # this map equals the number of aggregation functions in the query.
        # Corresponds to the JSON property `aggregateFields`
        # @return [Hash<String,Google::Apis::FirestoreV1::Value>]
        attr_accessor :aggregate_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregate_fields = args[:aggregate_fields] if args.key?(:aggregate_fields)
        end
      end
      
      # An array value.
      class ArrayValue
        include Google::Apis::Core::Hashable
      
        # Values in the array.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::FirestoreV1::Value>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Average of the values of the requested field. * Only numeric values will be
      # aggregated. All non-numeric values including `NULL` are skipped. * If the
      # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
      # standards. * If the aggregated value set is empty, returns `NULL`. * Always
      # returns the result as a double.
      class Avg
        include Google::Apis::Core::Hashable
      
        # A reference to a field in a document, ex: `stats.operations`.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::FirestoreV1::FieldReference]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # The request for Firestore.BatchGetDocuments.
      class BatchGetDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # The names of the documents to retrieve. In the format: `projects/`project_id`/
        # databases/`database_id`/documents/`document_path``. The request will fail if
        # any of the document is not a child resource of the given `database`. Duplicate
        # names will be elided.
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        # A set of field paths on a document. Used to restrict a get or update operation
        # on a document to a subset of its fields. This is different from standard field
        # masks, as this is always scoped to a Document, and takes in account the
        # dynamic nature of Value.
        # Corresponds to the JSON property `mask`
        # @return [Google::Apis::FirestoreV1::DocumentMask]
        attr_accessor :mask
      
        # Options for creating a new transaction.
        # Corresponds to the JSON property `newTransaction`
        # @return [Google::Apis::FirestoreV1::TransactionOptions]
        attr_accessor :new_transaction
      
        # Reads documents as they were at the given time. This must be a microsecond
        # precision timestamp within the past one hour, or if Point-in-Time Recovery is
        # enabled, can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # Reads documents in a transaction.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @mask = args[:mask] if args.key?(:mask)
          @new_transaction = args[:new_transaction] if args.key?(:new_transaction)
          @read_time = args[:read_time] if args.key?(:read_time)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The streamed response for Firestore.BatchGetDocuments.
      class BatchGetDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # A Firestore document. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `found`
        # @return [Google::Apis::FirestoreV1::Document]
        attr_accessor :found
      
        # A document name that was requested but does not exist. In the format: `
        # projects/`project_id`/databases/`database_id`/documents/`document_path``.
        # Corresponds to the JSON property `missing`
        # @return [String]
        attr_accessor :missing
      
        # The time at which the document was read. This may be monotically increasing,
        # in this case the previous documents in the result stream are guaranteed not to
        # have changed between their read_time and this one.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The transaction that was started as part of this request. Will only be set in
        # the first response, and only if BatchGetDocumentsRequest.new_transaction was
        # set in the request.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @found = args[:found] if args.key?(:found)
          @missing = args[:missing] if args.key?(:missing)
          @read_time = args[:read_time] if args.key?(:read_time)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The request for Firestore.BatchWrite.
      class BatchWriteRequest
        include Google::Apis::Core::Hashable
      
        # Labels associated with this batch write.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The writes to apply. Method does not apply writes atomically and does not
        # guarantee ordering. Each write succeeds or fails independently. You cannot
        # write to the same document more than once per request.
        # Corresponds to the JSON property `writes`
        # @return [Array<Google::Apis::FirestoreV1::Write>]
        attr_accessor :writes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @writes = args[:writes] if args.key?(:writes)
        end
      end
      
      # The response from Firestore.BatchWrite.
      class BatchWriteResponse
        include Google::Apis::Core::Hashable
      
        # The status of applying the writes. This i-th write status corresponds to the i-
        # th write in the request.
        # Corresponds to the JSON property `status`
        # @return [Array<Google::Apis::FirestoreV1::Status>]
        attr_accessor :status
      
        # The result of applying the writes. This i-th write result corresponds to the i-
        # th write in the request.
        # Corresponds to the JSON property `writeResults`
        # @return [Array<Google::Apis::FirestoreV1::WriteResult>]
        attr_accessor :write_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @status = args[:status] if args.key?(:status)
          @write_results = args[:write_results] if args.key?(:write_results)
        end
      end
      
      # The request for Firestore.BeginTransaction.
      class BeginTransactionRequest
        include Google::Apis::Core::Hashable
      
        # Options for creating a new transaction.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::FirestoreV1::TransactionOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # The response for Firestore.BeginTransaction.
      class BeginTransactionResponse
        include Google::Apis::Core::Hashable
      
        # The transaction that was started.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # A sequence of bits, encoded in a byte array. Each byte in the `bitmap` byte
      # array stores 8 bits of the sequence. The only exception is the last byte,
      # which may store 8 _or fewer_ bits. The `padding` defines the number of bits of
      # the last byte to be ignored as "padding". The values of these "padding" bits
      # are unspecified and must be ignored. To retrieve the first bit, bit 0,
      # calculate: `(bitmap[0] & 0x01) != 0`. To retrieve the second bit, bit 1,
      # calculate: `(bitmap[0] & 0x02) != 0`. To retrieve the third bit, bit 2,
      # calculate: `(bitmap[0] & 0x04) != 0`. To retrieve the fourth bit, bit 3,
      # calculate: `(bitmap[0] & 0x08) != 0`. To retrieve bit n, calculate: `(bitmap[n
      # / 8] & (0x01 << (n % 8))) != 0`. The "size" of a `BitSequence` (the number of
      # bits it contains) is calculated by this formula: `(bitmap.length * 8) -
      # padding`.
      class BitSequence
        include Google::Apis::Core::Hashable
      
        # The bytes that encode the bit sequence. May have a length of zero.
        # Corresponds to the JSON property `bitmap`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bitmap
      
        # The number of bits of the last byte in `bitmap` to ignore as "padding". If the
        # length of `bitmap` is zero, then this value must be `0`. Otherwise, this value
        # must be between 0 and 7, inclusive.
        # Corresponds to the JSON property `padding`
        # @return [Fixnum]
        attr_accessor :padding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitmap = args[:bitmap] if args.key?(:bitmap)
          @padding = args[:padding] if args.key?(:padding)
        end
      end
      
      # A bloom filter (https://en.wikipedia.org/wiki/Bloom_filter). The bloom filter
      # hashes the entries with MD5 and treats the resulting 128-bit hash as 2
      # distinct 64-bit hash values, interpreted as unsigned integers using 2's
      # complement encoding. These two hash values, named `h1` and `h2`, are then used
      # to compute the `hash_count` hash values using the formula, starting at `i=0`:
      # h(i) = h1 + (i * h2) These resulting values are then taken modulo the number
      # of bits in the bloom filter to get the bits of the bloom filter to test for
      # the given entry.
      class BloomFilter
        include Google::Apis::Core::Hashable
      
        # A sequence of bits, encoded in a byte array. Each byte in the `bitmap` byte
        # array stores 8 bits of the sequence. The only exception is the last byte,
        # which may store 8 _or fewer_ bits. The `padding` defines the number of bits of
        # the last byte to be ignored as "padding". The values of these "padding" bits
        # are unspecified and must be ignored. To retrieve the first bit, bit 0,
        # calculate: `(bitmap[0] & 0x01) != 0`. To retrieve the second bit, bit 1,
        # calculate: `(bitmap[0] & 0x02) != 0`. To retrieve the third bit, bit 2,
        # calculate: `(bitmap[0] & 0x04) != 0`. To retrieve the fourth bit, bit 3,
        # calculate: `(bitmap[0] & 0x08) != 0`. To retrieve bit n, calculate: `(bitmap[n
        # / 8] & (0x01 << (n % 8))) != 0`. The "size" of a `BitSequence` (the number of
        # bits it contains) is calculated by this formula: `(bitmap.length * 8) -
        # padding`.
        # Corresponds to the JSON property `bits`
        # @return [Google::Apis::FirestoreV1::BitSequence]
        attr_accessor :bits
      
        # The number of hashes used by the algorithm.
        # Corresponds to the JSON property `hashCount`
        # @return [Fixnum]
        attr_accessor :hash_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bits = args[:bits] if args.key?(:bits)
          @hash_count = args[:hash_count] if args.key?(:hash_count)
        end
      end
      
      # A selection of a collection, such as `messages as m1`.
      class CollectionSelector
        include Google::Apis::Core::Hashable
      
        # When false, selects only collections that are immediate children of the `
        # parent` specified in the containing `RunQueryRequest`. When true, selects all
        # descendant collections.
        # Corresponds to the JSON property `allDescendants`
        # @return [Boolean]
        attr_accessor :all_descendants
        alias_method :all_descendants?, :all_descendants
      
        # The collection ID. When set, selects only collections with this ID.
        # Corresponds to the JSON property `collectionId`
        # @return [String]
        attr_accessor :collection_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_descendants = args[:all_descendants] if args.key?(:all_descendants)
          @collection_id = args[:collection_id] if args.key?(:collection_id)
        end
      end
      
      # The request for Firestore.Commit.
      class CommitRequest
        include Google::Apis::Core::Hashable
      
        # If set, applies all writes in this transaction, and commits it.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        # The writes to apply. Always executed atomically and in order.
        # Corresponds to the JSON property `writes`
        # @return [Array<Google::Apis::FirestoreV1::Write>]
        attr_accessor :writes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction = args[:transaction] if args.key?(:transaction)
          @writes = args[:writes] if args.key?(:writes)
        end
      end
      
      # The response for Firestore.Commit.
      class CommitResponse
        include Google::Apis::Core::Hashable
      
        # The time at which the commit occurred. Any read with an equal or greater `
        # read_time` is guaranteed to see the effects of the commit.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        # The result of applying the writes. This i-th write result corresponds to the i-
        # th write in the request.
        # Corresponds to the JSON property `writeResults`
        # @return [Array<Google::Apis::FirestoreV1::WriteResult>]
        attr_accessor :write_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
          @write_results = args[:write_results] if args.key?(:write_results)
        end
      end
      
      # A filter that merges multiple other filters using the given operator.
      class CompositeFilter
        include Google::Apis::Core::Hashable
      
        # The list of filters to combine. Requires: * At least one filter is present.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::FirestoreV1::Filter>]
        attr_accessor :filters
      
        # The operator for combining multiple filters.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @op = args[:op] if args.key?(:op)
        end
      end
      
      # Count of documents that match the query. The `COUNT(*)` aggregation function
      # operates on the entire document so it does not require a field reference.
      class Count
        include Google::Apis::Core::Hashable
      
        # Optional. Optional constraint on the maximum number of documents to count.
        # This provides a way to set an upper bound on the number of documents to scan,
        # limiting latency, and cost. Unspecified is interpreted as no bound. High-Level
        # Example: ``` AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k ); ```
        # Requires: * Must be greater than zero when present.
        # Corresponds to the JSON property `upTo`
        # @return [Fixnum]
        attr_accessor :up_to
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @up_to = args[:up_to] if args.key?(:up_to)
        end
      end
      
      # A position in a query result set.
      class Cursor
        include Google::Apis::Core::Hashable
      
        # If the position is just before or just after the given values, relative to the
        # sort order defined by the query.
        # Corresponds to the JSON property `before`
        # @return [Boolean]
        attr_accessor :before
        alias_method :before?, :before
      
        # The values that represent a position, in the order they appear in the order by
        # clause of a query. Can contain fewer values than specified in the order by
        # clause.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::FirestoreV1::Value>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @before = args[:before] if args.key?(:before)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A Firestore document. Must not exceed 1 MiB - 4 bytes.
      class Document
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the document was created. This value increases
        # monotonically when a document is deleted then recreated. It can also be
        # compared to values from other documents and the `read_time` of a query.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The document's fields. The map keys represent field names. Field names
        # matching the regular expression `__.*__` are reserved. Reserved field names
        # are forbidden except in certain documented contexts. The field names,
        # represented as UTF-8, must not exceed 1,500 bytes and cannot be empty. Field
        # paths may be used in other contexts to refer to structured fields defined here.
        # For `map_value`, the field path is represented by a dot-delimited (`.`)
        # string of segments. Each segment is either a simple field name (defined below)
        # or a quoted field name. For example, the structured field `"foo" : ` map_value:
        # ` "x&y" : ` string_value: "hello" ```` would be represented by the field path
        # `` foo.`x&y` ``. A simple field name contains only characters `a` to `z`, `A`
        # to `Z`, `0` to `9`, or `_`, and must not start with `0` to `9`. For example, `
        # foo_bar_17`. A quoted field name starts and ends with `` ` `` and may contain
        # any character. Some characters, including `` ` ``, must be escaped using a `\`.
        # For example, `` `x&y` `` represents `x&y` and `` `bak\`tik` `` represents ``
        # bak`tik ``.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::FirestoreV1::Value>]
        attr_accessor :fields
      
        # The resource name of the document, for example `projects/`project_id`/
        # databases/`database_id`/documents/`document_path``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which the document was last changed. This value is
        # initially set to the `create_time` then increases monotonically with each
        # change to the document. It can also be compared to values from other documents
        # and the `read_time` of a query.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A Document has changed. May be the result of multiple writes, including
      # deletes, that ultimately resulted in a new value for the Document. Multiple
      # DocumentChange messages may be returned for the same logical change, if
      # multiple targets are affected.
      class DocumentChange
        include Google::Apis::Core::Hashable
      
        # A Firestore document. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::FirestoreV1::Document]
        attr_accessor :document
      
        # A set of target IDs for targets that no longer match this document.
        # Corresponds to the JSON property `removedTargetIds`
        # @return [Array<Fixnum>]
        attr_accessor :removed_target_ids
      
        # A set of target IDs of targets that match this document.
        # Corresponds to the JSON property `targetIds`
        # @return [Array<Fixnum>]
        attr_accessor :target_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @removed_target_ids = args[:removed_target_ids] if args.key?(:removed_target_ids)
          @target_ids = args[:target_ids] if args.key?(:target_ids)
        end
      end
      
      # A Document has been deleted. May be the result of multiple writes, including
      # updates, the last of which deleted the Document. Multiple DocumentDelete
      # messages may be returned for the same logical delete, if multiple targets are
      # affected.
      class DocumentDelete
        include Google::Apis::Core::Hashable
      
        # The resource name of the Document that was deleted.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        # The read timestamp at which the delete was observed. Greater or equal to the `
        # commit_time` of the delete.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A set of target IDs for targets that previously matched this entity.
        # Corresponds to the JSON property `removedTargetIds`
        # @return [Array<Fixnum>]
        attr_accessor :removed_target_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @read_time = args[:read_time] if args.key?(:read_time)
          @removed_target_ids = args[:removed_target_ids] if args.key?(:removed_target_ids)
        end
      end
      
      # A set of field paths on a document. Used to restrict a get or update operation
      # on a document to a subset of its fields. This is different from standard field
      # masks, as this is always scoped to a Document, and takes in account the
      # dynamic nature of Value.
      class DocumentMask
        include Google::Apis::Core::Hashable
      
        # The list of field paths in the mask. See Document.fields for a field path
        # syntax reference.
        # Corresponds to the JSON property `fieldPaths`
        # @return [Array<String>]
        attr_accessor :field_paths
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_paths = args[:field_paths] if args.key?(:field_paths)
        end
      end
      
      # A Document has been removed from the view of the targets. Sent if the document
      # is no longer relevant to a target and is out of view. Can be sent instead of a
      # DocumentDelete or a DocumentChange if the server can not send the new value of
      # the document. Multiple DocumentRemove messages may be returned for the same
      # logical write or delete, if multiple targets are affected.
      class DocumentRemove
        include Google::Apis::Core::Hashable
      
        # The resource name of the Document that has gone out of view.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        # The read timestamp at which the remove was observed. Greater or equal to the `
        # commit_time` of the change/delete/remove.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A set of target IDs for targets that previously matched this document.
        # Corresponds to the JSON property `removedTargetIds`
        # @return [Array<Fixnum>]
        attr_accessor :removed_target_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @read_time = args[:read_time] if args.key?(:read_time)
          @removed_target_ids = args[:removed_target_ids] if args.key?(:removed_target_ids)
        end
      end
      
      # A transformation of a document.
      class DocumentTransform
        include Google::Apis::Core::Hashable
      
        # The name of the document to transform.
        # Corresponds to the JSON property `document`
        # @return [String]
        attr_accessor :document
      
        # The list of transformations to apply to the fields of the document, in order.
        # This must not be empty.
        # Corresponds to the JSON property `fieldTransforms`
        # @return [Array<Google::Apis::FirestoreV1::FieldTransform>]
        attr_accessor :field_transforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @field_transforms = args[:field_transforms] if args.key?(:field_transforms)
        end
      end
      
      # A target specified by a set of documents names.
      class DocumentsTarget
        include Google::Apis::Core::Hashable
      
        # The names of the documents to retrieve. In the format: `projects/`project_id`/
        # databases/`database_id`/documents/`document_path``. The request will fail if
        # any of the document is not a child resource of the given `database`. Duplicate
        # names will be elided.
        # Corresponds to the JSON property `documents`
        # @return [Array<String>]
        attr_accessor :documents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Execution statistics for the query.
      class ExecutionStats
        include Google::Apis::Core::Hashable
      
        # Debugging statistics from the execution of the query. Note that the debugging
        # stats are subject to change as Firestore evolves. It could include: ` "
        # indexes_entries_scanned": "1000", "documents_scanned": "20", "billing_details"
        # : ` "documents_billable": "20", "index_entries_billable": "1000", "
        # min_query_cost": "0" ` `
        # Corresponds to the JSON property `debugStats`
        # @return [Hash<String,Object>]
        attr_accessor :debug_stats
      
        # Total time to execute the query in the backend.
        # Corresponds to the JSON property `executionDuration`
        # @return [String]
        attr_accessor :execution_duration
      
        # Total billable read operations.
        # Corresponds to the JSON property `readOperations`
        # @return [Fixnum]
        attr_accessor :read_operations
      
        # Total number of results returned, including documents, projections,
        # aggregation results, keys.
        # Corresponds to the JSON property `resultsReturned`
        # @return [Fixnum]
        attr_accessor :results_returned
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @debug_stats = args[:debug_stats] if args.key?(:debug_stats)
          @execution_duration = args[:execution_duration] if args.key?(:execution_duration)
          @read_operations = args[:read_operations] if args.key?(:read_operations)
          @results_returned = args[:results_returned] if args.key?(:results_returned)
        end
      end
      
      # A digest of all the documents that match a given target.
      class ExistenceFilter
        include Google::Apis::Core::Hashable
      
        # The total count of documents that match target_id. If different from the count
        # of documents in the client that match, the client must manually determine
        # which documents no longer match the target. The client can use the `
        # unchanged_names` bloom filter to assist with this determination by testing ALL
        # the document names against the filter; if the document name is NOT in the
        # filter, it means the document no longer matches the target.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The target ID to which this filter applies.
        # Corresponds to the JSON property `targetId`
        # @return [Fixnum]
        attr_accessor :target_id
      
        # A bloom filter (https://en.wikipedia.org/wiki/Bloom_filter). The bloom filter
        # hashes the entries with MD5 and treats the resulting 128-bit hash as 2
        # distinct 64-bit hash values, interpreted as unsigned integers using 2's
        # complement encoding. These two hash values, named `h1` and `h2`, are then used
        # to compute the `hash_count` hash values using the formula, starting at `i=0`:
        # h(i) = h1 + (i * h2) These resulting values are then taken modulo the number
        # of bits in the bloom filter to get the bits of the bloom filter to test for
        # the given entry.
        # Corresponds to the JSON property `unchangedNames`
        # @return [Google::Apis::FirestoreV1::BloomFilter]
        attr_accessor :unchanged_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @target_id = args[:target_id] if args.key?(:target_id)
          @unchanged_names = args[:unchanged_names] if args.key?(:unchanged_names)
        end
      end
      
      # Explain metrics for the query.
      class ExplainMetrics
        include Google::Apis::Core::Hashable
      
        # Execution statistics for the query.
        # Corresponds to the JSON property `executionStats`
        # @return [Google::Apis::FirestoreV1::ExecutionStats]
        attr_accessor :execution_stats
      
        # Planning phase information for the query.
        # Corresponds to the JSON property `planSummary`
        # @return [Google::Apis::FirestoreV1::PlanSummary]
        attr_accessor :plan_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_stats = args[:execution_stats] if args.key?(:execution_stats)
          @plan_summary = args[:plan_summary] if args.key?(:plan_summary)
        end
      end
      
      # Explain options for the query.
      class ExplainOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to execute this query. When false (the default), the query
        # will be planned, returning only metrics from the planning stages. When true,
        # the query will be planned and executed, returning the full query results along
        # with both planning and execution stage metrics.
        # Corresponds to the JSON property `analyze`
        # @return [Boolean]
        attr_accessor :analyze
        alias_method :analyze?, :analyze
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyze = args[:analyze] if args.key?(:analyze)
        end
      end
      
      # A filter on a specific field.
      class FieldFilter
        include Google::Apis::Core::Hashable
      
        # A reference to a field in a document, ex: `stats.operations`.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::FirestoreV1::FieldReference]
        attr_accessor :field
      
        # The operator to filter by.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        # A message that can hold any of the supported value types.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::FirestoreV1::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @op = args[:op] if args.key?(:op)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A reference to a field in a document, ex: `stats.operations`.
      class FieldReference
        include Google::Apis::Core::Hashable
      
        # A reference to a field in a document. Requires: * MUST be a dot-delimited (`.`)
        # string of segments, where each segment conforms to document field name
        # limitations.
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_path = args[:field_path] if args.key?(:field_path)
        end
      end
      
      # A transformation of a field of the document.
      class FieldTransform
        include Google::Apis::Core::Hashable
      
        # An array value.
        # Corresponds to the JSON property `appendMissingElements`
        # @return [Google::Apis::FirestoreV1::ArrayValue]
        attr_accessor :append_missing_elements
      
        # The path of the field. See Document.fields for the field path syntax reference.
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # A message that can hold any of the supported value types.
        # Corresponds to the JSON property `increment`
        # @return [Google::Apis::FirestoreV1::Value]
        attr_accessor :increment
      
        # A message that can hold any of the supported value types.
        # Corresponds to the JSON property `maximum`
        # @return [Google::Apis::FirestoreV1::Value]
        attr_accessor :maximum
      
        # A message that can hold any of the supported value types.
        # Corresponds to the JSON property `minimum`
        # @return [Google::Apis::FirestoreV1::Value]
        attr_accessor :minimum
      
        # An array value.
        # Corresponds to the JSON property `removeAllFromArray`
        # @return [Google::Apis::FirestoreV1::ArrayValue]
        attr_accessor :remove_all_from_array
      
        # Sets the field to the given server value.
        # Corresponds to the JSON property `setToServerValue`
        # @return [String]
        attr_accessor :set_to_server_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append_missing_elements = args[:append_missing_elements] if args.key?(:append_missing_elements)
          @field_path = args[:field_path] if args.key?(:field_path)
          @increment = args[:increment] if args.key?(:increment)
          @maximum = args[:maximum] if args.key?(:maximum)
          @minimum = args[:minimum] if args.key?(:minimum)
          @remove_all_from_array = args[:remove_all_from_array] if args.key?(:remove_all_from_array)
          @set_to_server_value = args[:set_to_server_value] if args.key?(:set_to_server_value)
        end
      end
      
      # A filter.
      class Filter
        include Google::Apis::Core::Hashable
      
        # A filter that merges multiple other filters using the given operator.
        # Corresponds to the JSON property `compositeFilter`
        # @return [Google::Apis::FirestoreV1::CompositeFilter]
        attr_accessor :composite_filter
      
        # A filter on a specific field.
        # Corresponds to the JSON property `fieldFilter`
        # @return [Google::Apis::FirestoreV1::FieldFilter]
        attr_accessor :field_filter
      
        # A filter with a single operand.
        # Corresponds to the JSON property `unaryFilter`
        # @return [Google::Apis::FirestoreV1::UnaryFilter]
        attr_accessor :unary_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_filter = args[:composite_filter] if args.key?(:composite_filter)
          @field_filter = args[:field_filter] if args.key?(:field_filter)
          @unary_filter = args[:unary_filter] if args.key?(:unary_filter)
        end
      end
      
      # Nearest Neighbors search config. The ordering provided by FindNearest
      # supersedes the order_by stage. If multiple documents have the same vector
      # distance, the returned document order is not guaranteed to be stable between
      # queries.
      class FindNearest
        include Google::Apis::Core::Hashable
      
        # Required. The distance measure to use, required.
        # Corresponds to the JSON property `distanceMeasure`
        # @return [String]
        attr_accessor :distance_measure
      
        # Optional. Optional name of the field to output the result of the vector
        # distance calculation. Must conform to document field name limitations.
        # Corresponds to the JSON property `distanceResultField`
        # @return [String]
        attr_accessor :distance_result_field
      
        # Optional. Option to specify a threshold for which no less similar documents
        # will be returned. The behavior of the specified `distance_measure` will affect
        # the meaning of the distance threshold. Since DOT_PRODUCT distances increase
        # when the vectors are more similar, the comparison is inverted. * For EUCLIDEAN,
        # COSINE: `WHERE distance <= distance_threshold` * For DOT_PRODUCT: `WHERE
        # distance >= distance_threshold`
        # Corresponds to the JSON property `distanceThreshold`
        # @return [Float]
        attr_accessor :distance_threshold
      
        # Required. The number of nearest neighbors to return. Must be a positive
        # integer of no more than 1000.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # A message that can hold any of the supported value types.
        # Corresponds to the JSON property `queryVector`
        # @return [Google::Apis::FirestoreV1::Value]
        attr_accessor :query_vector
      
        # A reference to a field in a document, ex: `stats.operations`.
        # Corresponds to the JSON property `vectorField`
        # @return [Google::Apis::FirestoreV1::FieldReference]
        attr_accessor :vector_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distance_measure = args[:distance_measure] if args.key?(:distance_measure)
          @distance_result_field = args[:distance_result_field] if args.key?(:distance_result_field)
          @distance_threshold = args[:distance_threshold] if args.key?(:distance_threshold)
          @limit = args[:limit] if args.key?(:limit)
          @query_vector = args[:query_vector] if args.key?(:query_vector)
          @vector_field = args[:vector_field] if args.key?(:vector_field)
        end
      end
      
      # A Backup of a Cloud Firestore Database. The backup contains all documents and
      # index configurations for the given database at a specific point in time.
      class GoogleFirestoreAdminV1Backup
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the Firestore database that the backup is from. Format is
        # `projects/`project`/databases/`database``.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Output only. The system-generated UUID4 for the Firestore database that the
        # backup is from.
        # Corresponds to the JSON property `databaseUid`
        # @return [String]
        attr_accessor :database_uid
      
        # Output only. The timestamp at which this backup expires.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Output only. The unique resource name of the Backup. Format is `projects/`
        # project`/locations/`location`/backups/`backup``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The backup contains an externally consistent copy of the database
        # at this time.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Backup specific statistics.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Stats]
        attr_accessor :stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @database_uid = args[:database_uid] if args.key?(:database_uid)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
          @state = args[:state] if args.key?(:state)
          @stats = args[:stats] if args.key?(:stats)
        end
      end
      
      # A backup schedule for a Cloud Firestore Database. This resource is owned by
      # the database it is backing up, and is deleted along with the database. The
      # actual backups are not though.
      class GoogleFirestoreAdminV1BackupSchedule
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp at which this backup schedule was created and
        # effective since. No backups will be created for this schedule before this time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Represents a recurring schedule that runs every day. The time zone is UTC.
        # Corresponds to the JSON property `dailyRecurrence`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1DailyRecurrence]
        attr_accessor :daily_recurrence
      
        # Output only. The unique backup schedule identifier across all locations and
        # databases for the given project. This will be auto-assigned. Format is `
        # projects/`project`/databases/`database`/backupSchedules/`backup_schedule``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # At what relative time in the future, compared to its creation time, the backup
        # should be deleted, e.g. keep backups for 7 days. The maximum supported
        # retention period is 14 weeks.
        # Corresponds to the JSON property `retention`
        # @return [String]
        attr_accessor :retention
      
        # Output only. The timestamp at which this backup schedule was most recently
        # updated. When a backup schedule is first created, this is the same as
        # create_time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Represents a recurring schedule that runs on a specified day of the week. The
        # time zone is UTC.
        # Corresponds to the JSON property `weeklyRecurrence`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1WeeklyRecurrence]
        attr_accessor :weekly_recurrence
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @daily_recurrence = args[:daily_recurrence] if args.key?(:daily_recurrence)
          @name = args[:name] if args.key?(:name)
          @retention = args[:retention] if args.key?(:retention)
          @update_time = args[:update_time] if args.key?(:update_time)
          @weekly_recurrence = args[:weekly_recurrence] if args.key?(:weekly_recurrence)
        end
      end
      
      # Information about a backup that was used to restore a database.
      class GoogleFirestoreAdminV1BackupSource
        include Google::Apis::Core::Hashable
      
        # The resource name of the backup that was used to restore this database. Format:
        # `projects/`project`/locations/`location`/backups/`backup``.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
        end
      end
      
      # Metadata for google.longrunning.Operation results from FirestoreAdmin.
      # BulkDeleteDocuments.
      class GoogleFirestoreAdminV1BulkDeleteDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # The IDs of the collection groups that are being deleted.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # The time this operation completed. Will be unset if operation still in
        # progress.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Which namespace IDs are being deleted.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        # The state of the operation.
        # Corresponds to the JSON property `operationState`
        # @return [String]
        attr_accessor :operation_state
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressDocuments`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_documents
      
        # The timestamp that corresponds to the version of the database that is being
        # read to get the list of documents to delete. This time can also be used as the
        # timestamp of PITR in case of disaster recovery (subject to PITR window limit).
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        # The time this operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @end_time = args[:end_time] if args.key?(:end_time)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
          @operation_state = args[:operation_state] if args.key?(:operation_state)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_documents = args[:progress_documents] if args.key?(:progress_documents)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for FirestoreAdmin.BulkDeleteDocuments. When both collection_ids
      # and namespace_ids are set, only documents satisfying both conditions will be
      # deleted. Requests with namespace_ids and collection_ids both empty will be
      # rejected. Please use FirestoreAdmin.DeleteDatabase instead.
      class GoogleFirestoreAdminV1BulkDeleteDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. IDs of the collection groups to delete. Unspecified means all
        # collection groups. Each collection group in this list must be unique.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # Optional. Namespaces to delete. An empty list means all namespaces. This is
        # the recommended usage for databases that don't use namespaces. An empty string
        # element represents the default namespace. This should be used if the database
        # has data in non-default namespaces, but doesn't want to delete from them. Each
        # namespace in this list must be unique.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
        end
      end
      
      # Metadata for the long-running operation from the CloneDatabase request.
      class GoogleFirestoreAdminV1CloneDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # The name of the database being cloned to.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The time the clone finished, unset for ongoing clones.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The operation state of the clone.
        # Corresponds to the JSON property `operationState`
        # @return [String]
        attr_accessor :operation_state
      
        # A consistent snapshot of a database at a specific point in time. A PITR (Point-
        # in-time recovery) snapshot with previous versions of a database's data is
        # available for every minute up to the associated database's data retention
        # period. If the PITR feature is enabled, the retention period is 7 days;
        # otherwise, it is one hour.
        # Corresponds to the JSON property `pitrSnapshot`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1PitrSnapshot]
        attr_accessor :pitr_snapshot
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressPercentage`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_percentage
      
        # The time the clone was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @end_time = args[:end_time] if args.key?(:end_time)
          @operation_state = args[:operation_state] if args.key?(:operation_state)
          @pitr_snapshot = args[:pitr_snapshot] if args.key?(:pitr_snapshot)
          @progress_percentage = args[:progress_percentage] if args.key?(:progress_percentage)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request message for FirestoreAdmin.CloneDatabase.
      class GoogleFirestoreAdminV1CloneDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The ID to use for the database, which will become the final
        # component of the database's resource name. This database ID must not be
        # associated with an existing database. This value should be 4-63 characters.
        # Valid characters are /a-z-/ with first character a letter and the last a
        # letter or a number. Must not be UUID-like /[0-9a-f]`8`(-[0-9a-f]`4`)`3`-[0-9a-
        # f]`12`/. "(default)" database ID is also valid.
        # Corresponds to the JSON property `databaseId`
        # @return [String]
        attr_accessor :database_id
      
        # Encryption configuration for a new database being created from another source.
        # The source could be a Backup .
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1EncryptionConfig]
        attr_accessor :encryption_config
      
        # A consistent snapshot of a database at a specific point in time. A PITR (Point-
        # in-time recovery) snapshot with previous versions of a database's data is
        # available for every minute up to the associated database's data retention
        # period. If the PITR feature is enabled, the retention period is 7 days;
        # otherwise, it is one hour.
        # Corresponds to the JSON property `pitrSnapshot`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1PitrSnapshot]
        attr_accessor :pitr_snapshot
      
        # Optional. Immutable. Tags to be bound to the cloned database. The tags should
        # be provided in the format of `tagKeys/`tag_key_id` -> tagValues/`tag_value_id``
        # .
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_id = args[:database_id] if args.key?(:database_id)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @pitr_snapshot = args[:pitr_snapshot] if args.key?(:pitr_snapshot)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # The CMEK (Customer Managed Encryption Key) configuration for a Firestore
      # database. If not present, the database is secured by the default Google
      # encryption key.
      class GoogleFirestoreAdminV1CmekConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Currently in-use [KMS key versions](https://cloud.google.com/kms/
        # docs/resource-hierarchy#key_versions). During [key rotation](https://cloud.
        # google.com/kms/docs/key-rotation), there can be multiple in-use key versions.
        # The expected format is `projects/`project_id`/locations/`kms_location`/
        # keyRings/`key_ring`/cryptoKeys/`crypto_key`/cryptoKeyVersions/`key_version``.
        # Corresponds to the JSON property `activeKeyVersion`
        # @return [Array<String>]
        attr_accessor :active_key_version
      
        # Required. Only keys in the same location as this database are allowed to be
        # used for encryption. For Firestore's nam5 multi-region, this corresponds to
        # Cloud KMS multi-region us. For Firestore's eur3 multi-region, this corresponds
        # to Cloud KMS multi-region europe. See https://cloud.google.com/kms/docs/
        # locations. The expected format is `projects/`project_id`/locations/`
        # kms_location`/keyRings/`key_ring`/cryptoKeys/`crypto_key``.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_key_version = args[:active_key_version] if args.key?(:active_key_version)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Metadata related to the create database operation.
      class GoogleFirestoreAdminV1CreateDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration options for using CMEK (Customer Managed Encryption Key)
      # encryption.
      class GoogleFirestoreAdminV1CustomerManagedEncryptionOptions
        include Google::Apis::Core::Hashable
      
        # Required. Only keys in the same location as the database are allowed to be
        # used for encryption. For Firestore's nam5 multi-region, this corresponds to
        # Cloud KMS multi-region us. For Firestore's eur3 multi-region, this corresponds
        # to Cloud KMS multi-region europe. See https://cloud.google.com/kms/docs/
        # locations. The expected format is `projects/`project_id`/locations/`
        # kms_location`/keyRings/`key_ring`/cryptoKeys/`crypto_key``.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Represents a recurring schedule that runs every day. The time zone is UTC.
      class GoogleFirestoreAdminV1DailyRecurrence
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Cloud Firestore Database.
      class GoogleFirestoreAdminV1Database
        include Google::Apis::Core::Hashable
      
        # The App Engine integration mode to use for this database.
        # Corresponds to the JSON property `appEngineIntegrationMode`
        # @return [String]
        attr_accessor :app_engine_integration_mode
      
        # The CMEK (Customer Managed Encryption Key) configuration for a Firestore
        # database. If not present, the database is secured by the default Google
        # encryption key.
        # Corresponds to the JSON property `cmekConfig`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1CmekConfig]
        attr_accessor :cmek_config
      
        # The concurrency control mode to use for this database.
        # Corresponds to the JSON property `concurrencyMode`
        # @return [String]
        attr_accessor :concurrency_mode
      
        # Output only. The timestamp at which this database was created. Databases
        # created before 2016 do not populate create_time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. The edition of the database.
        # Corresponds to the JSON property `databaseEdition`
        # @return [String]
        attr_accessor :database_edition
      
        # State of delete protection for the database.
        # Corresponds to the JSON property `deleteProtectionState`
        # @return [String]
        attr_accessor :delete_protection_state
      
        # Output only. The timestamp at which this database was deleted. Only set if the
        # database has been deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Output only. The earliest timestamp at which older versions of the data can be
        # read from the database. See [version_retention_period] above; this field is
        # populated with `now - version_retention_period`. This value is continuously
        # updated, and becomes stale the moment it is queried. If you are using this
        # value to recover data, make sure to account for the time from the moment when
        # the value is queried to the moment when you initiate the recovery.
        # Corresponds to the JSON property `earliestVersionTime`
        # @return [String]
        attr_accessor :earliest_version_time
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. Background: Free tier is the ability of a Firestore database to
        # use a small amount of resources every day without being charged. Once usage
        # exceeds the free tier limit further usage is charged. Whether this database
        # can make use of the free tier. Only one database per project can be eligible
        # for the free tier. The first (or next) database that is created in a project
        # without a free tier database will be marked as eligible for the free tier.
        # Databases that are created while there is a free tier database will not be
        # eligible for the free tier.
        # Corresponds to the JSON property `freeTier`
        # @return [Boolean]
        attr_accessor :free_tier
        alias_method :free_tier?, :free_tier
      
        # Output only. The key_prefix for this database. This key_prefix is used, in
        # combination with the project ID ("~") to construct the application ID that is
        # returned from the Cloud Datastore APIs in Google App Engine first generation
        # runtimes. This value may be empty in which case the appid to use for URL-
        # encoded keys is the project_id (eg: foo instead of v~foo).
        # Corresponds to the JSON property `keyPrefix`
        # @return [String]
        attr_accessor :key_prefix
      
        # The location of the database. Available locations are listed at https://cloud.
        # google.com/firestore/docs/locations.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # The resource name of the Database. Format: `projects/`project`/databases/`
        # database``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Whether to enable the PITR feature on this database.
        # Corresponds to the JSON property `pointInTimeRecoveryEnablement`
        # @return [String]
        attr_accessor :point_in_time_recovery_enablement
      
        # Output only. The database resource's prior database ID. This field is only
        # populated for deleted databases.
        # Corresponds to the JSON property `previousId`
        # @return [String]
        attr_accessor :previous_id
      
        # Information about the provenance of this database.
        # Corresponds to the JSON property `sourceInfo`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1SourceInfo]
        attr_accessor :source_info
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: "123/environment": "production", "123/costCenter": "
        # marketing"
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # The type of the database. See https://cloud.google.com/datastore/docs/
        # firestore-or-datastore for information about how to choose.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The system-generated UUID4 for this Database.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The timestamp at which this database was most recently updated.
        # Note this only includes updates to the database resource and not data
        # contained by the database.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The period during which past versions of data are retained in the
        # database. Any read or query can specify a `read_time` within this window, and
        # will read the state of the database at that time. If the PITR feature is
        # enabled, the retention period is 7 days. Otherwise, the retention period is 1
        # hour.
        # Corresponds to the JSON property `versionRetentionPeriod`
        # @return [String]
        attr_accessor :version_retention_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_integration_mode = args[:app_engine_integration_mode] if args.key?(:app_engine_integration_mode)
          @cmek_config = args[:cmek_config] if args.key?(:cmek_config)
          @concurrency_mode = args[:concurrency_mode] if args.key?(:concurrency_mode)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_edition = args[:database_edition] if args.key?(:database_edition)
          @delete_protection_state = args[:delete_protection_state] if args.key?(:delete_protection_state)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @earliest_version_time = args[:earliest_version_time] if args.key?(:earliest_version_time)
          @etag = args[:etag] if args.key?(:etag)
          @free_tier = args[:free_tier] if args.key?(:free_tier)
          @key_prefix = args[:key_prefix] if args.key?(:key_prefix)
          @location_id = args[:location_id] if args.key?(:location_id)
          @name = args[:name] if args.key?(:name)
          @point_in_time_recovery_enablement = args[:point_in_time_recovery_enablement] if args.key?(:point_in_time_recovery_enablement)
          @previous_id = args[:previous_id] if args.key?(:previous_id)
          @source_info = args[:source_info] if args.key?(:source_info)
          @tags = args[:tags] if args.key?(:tags)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version_retention_period = args[:version_retention_period] if args.key?(:version_retention_period)
        end
      end
      
      # Metadata related to the delete database operation.
      class GoogleFirestoreAdminV1DeleteDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for FirestoreAdmin.DisableUserCreds.
      class GoogleFirestoreAdminV1DisableUserCredsRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The request for FirestoreAdmin.EnableUserCreds.
      class GoogleFirestoreAdminV1EnableUserCredsRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Encryption configuration for a new database being created from another source.
      # The source could be a Backup .
      class GoogleFirestoreAdminV1EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # The configuration options for using CMEK (Customer Managed Encryption Key)
        # encryption.
        # Corresponds to the JSON property `customerManagedEncryption`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1CustomerManagedEncryptionOptions]
        attr_accessor :customer_managed_encryption
      
        # The configuration options for using Google default encryption.
        # Corresponds to the JSON property `googleDefaultEncryption`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions]
        attr_accessor :google_default_encryption
      
        # The configuration options for using the same encryption method as the source.
        # Corresponds to the JSON property `useSourceEncryption`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1SourceEncryptionOptions]
        attr_accessor :use_source_encryption
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_managed_encryption = args[:customer_managed_encryption] if args.key?(:customer_managed_encryption)
          @google_default_encryption = args[:google_default_encryption] if args.key?(:google_default_encryption)
          @use_source_encryption = args[:use_source_encryption] if args.key?(:use_source_encryption)
        end
      end
      
      # Metadata for google.longrunning.Operation results from FirestoreAdmin.
      # ExportDocuments.
      class GoogleFirestoreAdminV1ExportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Which collection IDs are being exported.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # The time this operation completed. Will be unset if operation still in
        # progress.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Which namespace IDs are being exported.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        # The state of the export operation.
        # Corresponds to the JSON property `operationState`
        # @return [String]
        attr_accessor :operation_state
      
        # Where the documents are being exported to.
        # Corresponds to the JSON property `outputUriPrefix`
        # @return [String]
        attr_accessor :output_uri_prefix
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressDocuments`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_documents
      
        # The timestamp that corresponds to the version of the database that is being
        # exported. If unspecified, there are no guarantees about the consistency of the
        # documents being exported.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        # The time this operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @end_time = args[:end_time] if args.key?(:end_time)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
          @operation_state = args[:operation_state] if args.key?(:operation_state)
          @output_uri_prefix = args[:output_uri_prefix] if args.key?(:output_uri_prefix)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_documents = args[:progress_documents] if args.key?(:progress_documents)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for FirestoreAdmin.ExportDocuments.
      class GoogleFirestoreAdminV1ExportDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Which collection IDs to export. Unspecified means all collections. Each
        # collection ID in this list must be unique.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # An empty list represents all namespaces. This is the preferred usage for
        # databases that don't use namespaces. An empty string element represents the
        # default namespace. This should be used if the database has data in non-default
        # namespaces, but doesn't want to include them. Each namespace in this list must
        # be unique.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        # The output URI. Currently only supports Google Cloud Storage URIs of the form:
        # `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name of the
        # Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional Google Cloud
        # Storage namespace path. When choosing a name, be sure to consider Google Cloud
        # Storage naming guidelines: https://cloud.google.com/storage/docs/naming. If
        # the URI is a bucket (without a namespace path), a prefix will be generated
        # based on the start time.
        # Corresponds to the JSON property `outputUriPrefix`
        # @return [String]
        attr_accessor :output_uri_prefix
      
        # The timestamp that corresponds to the version of the database to be exported.
        # The timestamp must be in the past, rounded to the minute and not older than
        # earliestVersionTime. If specified, then the exported documents will represent
        # a consistent view of the database at the provided time. Otherwise, there are
        # no guarantees about the consistency of the exported documents.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
          @output_uri_prefix = args[:output_uri_prefix] if args.key?(:output_uri_prefix)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Returned in the google.longrunning.Operation response field.
      class GoogleFirestoreAdminV1ExportDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # Location of the output files. This can be used to begin an import into Cloud
        # Firestore (this project or another project) after the operation completes
        # successfully.
        # Corresponds to the JSON property `outputUriPrefix`
        # @return [String]
        attr_accessor :output_uri_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_uri_prefix = args[:output_uri_prefix] if args.key?(:output_uri_prefix)
        end
      end
      
      # Represents a single field in the database. Fields are grouped by their "
      # Collection Group", which represent all collections in the database with the
      # same ID.
      class GoogleFirestoreAdminV1Field
        include Google::Apis::Core::Hashable
      
        # The index configuration for this field.
        # Corresponds to the JSON property `indexConfig`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexConfig]
        attr_accessor :index_config
      
        # Required. A field name of the form: `projects/`project_id`/databases/`
        # database_id`/collectionGroups/`collection_id`/fields/`field_path`` A field
        # path can be a simple field name, e.g. `address` or a path to fields within `
        # map_value` , e.g. `address.city`, or a special field path. The only valid
        # special field is `*`, which represents any field. Field paths can be quoted
        # using `` ` `` (backtick). The only character that must be escaped within a
        # quoted field path is the backtick character itself, escaped using a backslash.
        # Special characters in field paths that must be quoted include: `*`, `.`, `` ` `
        # ` (backtick), `[`, `]`, as well as any ascii symbolic characters. Examples: ``
        # `address.city` `` represents a field named `address.city`, not the map key `
        # city` in the field `address`. `` `*` `` represents a field named `*`, not any
        # field. A special `Field` contains the default indexing settings for all fields.
        # This field's resource name is: `projects/`project_id`/databases/`database_id`/
        # collectionGroups/__default__/fields/*` Indexes defined on this `Field` will be
        # applied to all fields which do not have their own `Field` index configuration.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The TTL (time-to-live) configuration for documents that have this `Field` set.
        # Storing a timestamp value into a TTL-enabled field will be treated as the
        # document's absolute expiration time. Timestamp values in the past indicate
        # that the document is eligible for immediate expiration. Using any other data
        # type or leaving the field absent will disable expiration for the individual
        # document.
        # Corresponds to the JSON property `ttlConfig`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1TtlConfig]
        attr_accessor :ttl_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index_config = args[:index_config] if args.key?(:index_config)
          @name = args[:name] if args.key?(:name)
          @ttl_config = args[:ttl_config] if args.key?(:ttl_config)
        end
      end
      
      # Metadata for google.longrunning.Operation results from FirestoreAdmin.
      # UpdateField.
      class GoogleFirestoreAdminV1FieldOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time this operation completed. Will be unset if operation still in
        # progress.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The field resource that this operation is acting on. For example: `projects/`
        # project_id`/databases/`database_id`/collectionGroups/`collection_id`/fields/`
        # field_path``
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # A list of IndexConfigDelta, which describe the intent of this operation.
        # Corresponds to the JSON property `indexConfigDeltas`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexConfigDelta>]
        attr_accessor :index_config_deltas
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressDocuments`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_documents
      
        # The time this operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Information about a TTL configuration change.
        # Corresponds to the JSON property `ttlConfigDelta`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1TtlConfigDelta]
        attr_accessor :ttl_config_delta
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @field = args[:field] if args.key?(:field)
          @index_config_deltas = args[:index_config_deltas] if args.key?(:index_config_deltas)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_documents = args[:progress_documents] if args.key?(:progress_documents)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @ttl_config_delta = args[:ttl_config_delta] if args.key?(:ttl_config_delta)
        end
      end
      
      # An index that stores vectors in a flat data structure, and supports exhaustive
      # search.
      class GoogleFirestoreAdminV1FlatIndex
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration options for using Google default encryption.
      class GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata for google.longrunning.Operation results from FirestoreAdmin.
      # ImportDocuments.
      class GoogleFirestoreAdminV1ImportDocumentsMetadata
        include Google::Apis::Core::Hashable
      
        # Which collection IDs are being imported.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # The time this operation completed. Will be unset if operation still in
        # progress.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The location of the documents being imported.
        # Corresponds to the JSON property `inputUriPrefix`
        # @return [String]
        attr_accessor :input_uri_prefix
      
        # Which namespace IDs are being imported.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        # The state of the import operation.
        # Corresponds to the JSON property `operationState`
        # @return [String]
        attr_accessor :operation_state
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressDocuments`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_documents
      
        # The time this operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @end_time = args[:end_time] if args.key?(:end_time)
          @input_uri_prefix = args[:input_uri_prefix] if args.key?(:input_uri_prefix)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
          @operation_state = args[:operation_state] if args.key?(:operation_state)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_documents = args[:progress_documents] if args.key?(:progress_documents)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request for FirestoreAdmin.ImportDocuments.
      class GoogleFirestoreAdminV1ImportDocumentsRequest
        include Google::Apis::Core::Hashable
      
        # Which collection IDs to import. Unspecified means all collections included in
        # the import. Each collection ID in this list must be unique.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # Location of the exported files. This must match the output_uri_prefix of an
        # ExportDocumentsResponse from an export that has completed successfully. See:
        # google.firestore.admin.v1.ExportDocumentsResponse.output_uri_prefix.
        # Corresponds to the JSON property `inputUriPrefix`
        # @return [String]
        attr_accessor :input_uri_prefix
      
        # An empty list represents all namespaces. This is the preferred usage for
        # databases that don't use namespaces. An empty string element represents the
        # default namespace. This should be used if the database has data in non-default
        # namespaces, but doesn't want to include them. Each namespace in this list must
        # be unique.
        # Corresponds to the JSON property `namespaceIds`
        # @return [Array<String>]
        attr_accessor :namespace_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @input_uri_prefix = args[:input_uri_prefix] if args.key?(:input_uri_prefix)
          @namespace_ids = args[:namespace_ids] if args.key?(:namespace_ids)
        end
      end
      
      # Cloud Firestore indexes enable simple and complex queries against documents in
      # a database.
      class GoogleFirestoreAdminV1Index
        include Google::Apis::Core::Hashable
      
        # The API scope supported by this index.
        # Corresponds to the JSON property `apiScope`
        # @return [String]
        attr_accessor :api_scope
      
        # Immutable. The density configuration of the index.
        # Corresponds to the JSON property `density`
        # @return [String]
        attr_accessor :density
      
        # The fields supported by this index. For composite indexes, this requires a
        # minimum of 2 and a maximum of 100 fields. The last field entry is always for
        # the field path `__name__`. If, on creation, `__name__` was not specified as
        # the last field, it will be added automatically with the same direction as that
        # of the last field defined. If the final field in a composite index is not
        # directional, the `__name__` will be ordered ASCENDING (unless explicitly
        # specified). For single field indexes, this will always be exactly one entry
        # with a field path equal to the field path of the associated field.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1IndexField>]
        attr_accessor :fields
      
        # Optional. Whether the index is multikey. By default, the index is not multikey.
        # For non-multikey indexes, none of the paths in the index definition reach or
        # traverse an array, except via an explicit array index. For multikey indexes,
        # at most one of the paths in the index definition reach or traverse an array,
        # except via an explicit array index. Violations will result in errors. Note
        # this field only applies to index with MONGODB_COMPATIBLE_API ApiScope.
        # Corresponds to the JSON property `multikey`
        # @return [Boolean]
        attr_accessor :multikey
        alias_method :multikey?, :multikey
      
        # Output only. A server defined name for this index. The form of this name for
        # composite indexes will be: `projects/`project_id`/databases/`database_id`/
        # collectionGroups/`collection_id`/indexes/`composite_index_id`` For single
        # field indexes, this field will be empty.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indexes with a collection query scope specified allow queries against a
        # collection that is the child of a specific document, specified at query time,
        # and that has the same collection ID. Indexes with a collection group query
        # scope specified allow queries against all collections descended from a
        # specific document, specified at query time, and that have the same collection
        # ID as this index.
        # Corresponds to the JSON property `queryScope`
        # @return [String]
        attr_accessor :query_scope
      
        # Optional. The number of shards for the index.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Output only. The serving state of the index.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_scope = args[:api_scope] if args.key?(:api_scope)
          @density = args[:density] if args.key?(:density)
          @fields = args[:fields] if args.key?(:fields)
          @multikey = args[:multikey] if args.key?(:multikey)
          @name = args[:name] if args.key?(:name)
          @query_scope = args[:query_scope] if args.key?(:query_scope)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The index configuration for this field.
      class GoogleFirestoreAdminV1IndexConfig
        include Google::Apis::Core::Hashable
      
        # Output only. Specifies the resource name of the `Field` from which this field'
        # s index configuration is set (when `uses_ancestor_config` is true), or from
        # which it *would* be set if this field had no index configuration (when `
        # uses_ancestor_config` is false).
        # Corresponds to the JSON property `ancestorField`
        # @return [String]
        attr_accessor :ancestor_field
      
        # The indexes supported for this field.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index>]
        attr_accessor :indexes
      
        # Output only When true, the `Field`'s index configuration is in the process of
        # being reverted. Once complete, the index config will transition to the same
        # state as the field specified by `ancestor_field`, at which point `
        # uses_ancestor_config` will be `true` and `reverting` will be `false`.
        # Corresponds to the JSON property `reverting`
        # @return [Boolean]
        attr_accessor :reverting
        alias_method :reverting?, :reverting
      
        # Output only. When true, the `Field`'s index configuration is set from the
        # configuration specified by the `ancestor_field`. When false, the `Field`'s
        # index configuration is defined explicitly.
        # Corresponds to the JSON property `usesAncestorConfig`
        # @return [Boolean]
        attr_accessor :uses_ancestor_config
        alias_method :uses_ancestor_config?, :uses_ancestor_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestor_field = args[:ancestor_field] if args.key?(:ancestor_field)
          @indexes = args[:indexes] if args.key?(:indexes)
          @reverting = args[:reverting] if args.key?(:reverting)
          @uses_ancestor_config = args[:uses_ancestor_config] if args.key?(:uses_ancestor_config)
        end
      end
      
      # Information about an index configuration change.
      class GoogleFirestoreAdminV1IndexConfigDelta
        include Google::Apis::Core::Hashable
      
        # Specifies how the index is changing.
        # Corresponds to the JSON property `changeType`
        # @return [String]
        attr_accessor :change_type
      
        # Cloud Firestore indexes enable simple and complex queries against documents in
        # a database.
        # Corresponds to the JSON property `index`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index]
        attr_accessor :index
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_type = args[:change_type] if args.key?(:change_type)
          @index = args[:index] if args.key?(:index)
        end
      end
      
      # A field in an index. The field_path describes which field is indexed, the
      # value_mode describes how the field value is indexed.
      class GoogleFirestoreAdminV1IndexField
        include Google::Apis::Core::Hashable
      
        # Indicates that this field supports operations on `array_value`s.
        # Corresponds to the JSON property `arrayConfig`
        # @return [String]
        attr_accessor :array_config
      
        # Can be __name__. For single field indexes, this must match the name of the
        # field or may be omitted.
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # Indicates that this field supports ordering by the specified order or
        # comparing using =, !=, <, <=, >, >=.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        # The index configuration to support vector search operations
        # Corresponds to the JSON property `vectorConfig`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1VectorConfig]
        attr_accessor :vector_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_config = args[:array_config] if args.key?(:array_config)
          @field_path = args[:field_path] if args.key?(:field_path)
          @order = args[:order] if args.key?(:order)
          @vector_config = args[:vector_config] if args.key?(:vector_config)
        end
      end
      
      # Metadata for google.longrunning.Operation results from FirestoreAdmin.
      # CreateIndex.
      class GoogleFirestoreAdminV1IndexOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time this operation completed. Will be unset if operation still in
        # progress.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The index resource that this operation is acting on. For example: `projects/`
        # project_id`/databases/`database_id`/collectionGroups/`collection_id`/indexes/`
        # index_id``
        # Corresponds to the JSON property `index`
        # @return [String]
        attr_accessor :index
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressBytes`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_bytes
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressDocuments`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_documents
      
        # The time this operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The state of the operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @index = args[:index] if args.key?(:index)
          @progress_bytes = args[:progress_bytes] if args.key?(:progress_bytes)
          @progress_documents = args[:progress_documents] if args.key?(:progress_documents)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The response for FirestoreAdmin.ListBackupSchedules.
      class GoogleFirestoreAdminV1ListBackupSchedulesResponse
        include Google::Apis::Core::Hashable
      
        # List of all backup schedules.
        # Corresponds to the JSON property `backupSchedules`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSchedule>]
        attr_accessor :backup_schedules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_schedules = args[:backup_schedules] if args.key?(:backup_schedules)
        end
      end
      
      # The response for FirestoreAdmin.ListBackups.
      class GoogleFirestoreAdminV1ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # List of all backups for the project.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Backup>]
        attr_accessor :backups
      
        # List of locations that existing backups were not able to be fetched from.
        # Instead of failing the entire requests when a single location is unreachable,
        # this response returns a partial result set and list of locations unable to be
        # reached here. The request can be retried against a single location to get a
        # concrete error.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backups = args[:backups] if args.key?(:backups)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The list of databases for a project.
      class GoogleFirestoreAdminV1ListDatabasesResponse
        include Google::Apis::Core::Hashable
      
        # The databases in the project.
        # Corresponds to the JSON property `databases`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Database>]
        attr_accessor :databases
      
        # In the event that data about individual databases cannot be listed they will
        # be recorded here. An example entry might be: projects/some_project/locations/
        # some_location This can happen if the Cloud Region that the Database resides in
        # is currently unavailable. In this case we can't fetch all the details about
        # the database. You may be able to get a more detailed error message (or
        # possibly fetch the resource) by sending a 'Get' request for the resource or a '
        # List' request for the specific location.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @databases = args[:databases] if args.key?(:databases)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response for FirestoreAdmin.ListFields.
      class GoogleFirestoreAdminV1ListFieldsResponse
        include Google::Apis::Core::Hashable
      
        # The requested fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Field>]
        attr_accessor :fields
      
        # A page token that may be used to request another page of results. If blank,
        # this is the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for FirestoreAdmin.ListIndexes.
      class GoogleFirestoreAdminV1ListIndexesResponse
        include Google::Apis::Core::Hashable
      
        # The requested indexes.
        # Corresponds to the JSON property `indexes`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Index>]
        attr_accessor :indexes
      
        # A page token that may be used to request another page of results. If blank,
        # this is the last page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indexes = args[:indexes] if args.key?(:indexes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for FirestoreAdmin.ListUserCreds.
      class GoogleFirestoreAdminV1ListUserCredsResponse
        include Google::Apis::Core::Hashable
      
        # The user creds for the database.
        # Corresponds to the JSON property `userCreds`
        # @return [Array<Google::Apis::FirestoreV1::GoogleFirestoreAdminV1UserCreds>]
        attr_accessor :user_creds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_creds = args[:user_creds] if args.key?(:user_creds)
        end
      end
      
      # The metadata message for google.cloud.location.Location.metadata.
      class GoogleFirestoreAdminV1LocationMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A consistent snapshot of a database at a specific point in time. A PITR (Point-
      # in-time recovery) snapshot with previous versions of a database's data is
      # available for every minute up to the associated database's data retention
      # period. If the PITR feature is enabled, the retention period is 7 days;
      # otherwise, it is one hour.
      class GoogleFirestoreAdminV1PitrSnapshot
        include Google::Apis::Core::Hashable
      
        # Required. The name of the database that this was a snapshot of. Format: `
        # projects/`project`/databases/`database``.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Output only. Public UUID of the database the snapshot was associated with.
        # Corresponds to the JSON property `databaseUid`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :database_uid
      
        # Required. Snapshot time of the database.
        # Corresponds to the JSON property `snapshotTime`
        # @return [String]
        attr_accessor :snapshot_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @database_uid = args[:database_uid] if args.key?(:database_uid)
          @snapshot_time = args[:snapshot_time] if args.key?(:snapshot_time)
        end
      end
      
      # Describes the progress of the operation. Unit of work is generic and must be
      # interpreted based on where Progress is used.
      class GoogleFirestoreAdminV1Progress
        include Google::Apis::Core::Hashable
      
        # The amount of work completed.
        # Corresponds to the JSON property `completedWork`
        # @return [Fixnum]
        attr_accessor :completed_work
      
        # The amount of work estimated.
        # Corresponds to the JSON property `estimatedWork`
        # @return [Fixnum]
        attr_accessor :estimated_work
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completed_work = args[:completed_work] if args.key?(:completed_work)
          @estimated_work = args[:estimated_work] if args.key?(:estimated_work)
        end
      end
      
      # The request for FirestoreAdmin.ResetUserPassword.
      class GoogleFirestoreAdminV1ResetUserPasswordRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes a Resource Identity principal.
      class GoogleFirestoreAdminV1ResourceIdentity
        include Google::Apis::Core::Hashable
      
        # Output only. Principal identifier string. See: https://cloud.google.com/iam/
        # docs/principal-identifiers
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @principal = args[:principal] if args.key?(:principal)
        end
      end
      
      # Metadata for the long-running operation from the RestoreDatabase request.
      class GoogleFirestoreAdminV1RestoreDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        # The name of the backup restoring from.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # The name of the database being restored to.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # The time the restore finished, unset for ongoing restores.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The operation state of the restore.
        # Corresponds to the JSON property `operationState`
        # @return [String]
        attr_accessor :operation_state
      
        # Describes the progress of the operation. Unit of work is generic and must be
        # interpreted based on where Progress is used.
        # Corresponds to the JSON property `progressPercentage`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1Progress]
        attr_accessor :progress_percentage
      
        # The time the restore was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @database = args[:database] if args.key?(:database)
          @end_time = args[:end_time] if args.key?(:end_time)
          @operation_state = args[:operation_state] if args.key?(:operation_state)
          @progress_percentage = args[:progress_percentage] if args.key?(:progress_percentage)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The request message for FirestoreAdmin.RestoreDatabase.
      class GoogleFirestoreAdminV1RestoreDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. Backup to restore from. Must be from the same project as the parent.
        # The restored database will be created in the same location as the source
        # backup. Format is: `projects/`project_id`/locations/`location`/backups/`backup`
        # `
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Required. The ID to use for the database, which will become the final
        # component of the database's resource name. This database ID must not be
        # associated with an existing database. This value should be 4-63 characters.
        # Valid characters are /a-z-/ with first character a letter and the last a
        # letter or a number. Must not be UUID-like /[0-9a-f]`8`(-[0-9a-f]`4`)`3`-[0-9a-
        # f]`12`/. "(default)" database ID is also valid.
        # Corresponds to the JSON property `databaseId`
        # @return [String]
        attr_accessor :database_id
      
        # Encryption configuration for a new database being created from another source.
        # The source could be a Backup .
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1EncryptionConfig]
        attr_accessor :encryption_config
      
        # Optional. Immutable. Tags to be bound to the restored database. The tags
        # should be provided in the format of `tagKeys/`tag_key_id` -> tagValues/`
        # tag_value_id``.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @database_id = args[:database_id] if args.key?(:database_id)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # The configuration options for using the same encryption method as the source.
      class GoogleFirestoreAdminV1SourceEncryptionOptions
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information about the provenance of this database.
      class GoogleFirestoreAdminV1SourceInfo
        include Google::Apis::Core::Hashable
      
        # Information about a backup that was used to restore a database.
        # Corresponds to the JSON property `backup`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1BackupSource]
        attr_accessor :backup
      
        # The associated long-running operation. This field may not be set after the
        # operation has completed. Format: `projects/`project`/databases/`database`/
        # operations/`operation``.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Backup specific statistics.
      class GoogleFirestoreAdminV1Stats
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of documents contained in the backup.
        # Corresponds to the JSON property `documentCount`
        # @return [Fixnum]
        attr_accessor :document_count
      
        # Output only. The total number of index entries contained in the backup.
        # Corresponds to the JSON property `indexCount`
        # @return [Fixnum]
        attr_accessor :index_count
      
        # Output only. Summation of the size of all documents and index entries in the
        # backup, measured in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_count = args[:document_count] if args.key?(:document_count)
          @index_count = args[:index_count] if args.key?(:index_count)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
      
      # The TTL (time-to-live) configuration for documents that have this `Field` set.
      # Storing a timestamp value into a TTL-enabled field will be treated as the
      # document's absolute expiration time. Timestamp values in the past indicate
      # that the document is eligible for immediate expiration. Using any other data
      # type or leaving the field absent will disable expiration for the individual
      # document.
      class GoogleFirestoreAdminV1TtlConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The state of the TTL configuration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about a TTL configuration change.
      class GoogleFirestoreAdminV1TtlConfigDelta
        include Google::Apis::Core::Hashable
      
        # Specifies how the TTL configuration is changing.
        # Corresponds to the JSON property `changeType`
        # @return [String]
        attr_accessor :change_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @change_type = args[:change_type] if args.key?(:change_type)
        end
      end
      
      # Metadata related to the update database operation.
      class GoogleFirestoreAdminV1UpdateDatabaseMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A Cloud Firestore User Creds.
      class GoogleFirestoreAdminV1UserCreds
        include Google::Apis::Core::Hashable
      
        # Output only. The time the user creds were created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Identifier. The resource name of the UserCreds. Format: `projects/`project`/
        # databases/`database`/userCreds/`user_creds``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes a Resource Identity principal.
        # Corresponds to the JSON property `resourceIdentity`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1ResourceIdentity]
        attr_accessor :resource_identity
      
        # Output only. The plaintext server-generated password for the user creds. Only
        # populated in responses for CreateUserCreds and ResetUserPassword.
        # Corresponds to the JSON property `securePassword`
        # @return [String]
        attr_accessor :secure_password
      
        # Output only. Whether the user creds are enabled or disabled. Defaults to
        # ENABLED on creation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time the user creds were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @resource_identity = args[:resource_identity] if args.key?(:resource_identity)
          @secure_password = args[:secure_password] if args.key?(:secure_password)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The index configuration to support vector search operations
      class GoogleFirestoreAdminV1VectorConfig
        include Google::Apis::Core::Hashable
      
        # Required. The vector dimension this configuration applies to. The resulting
        # index will only include vectors of this dimension, and can be used for vector
        # search with the same dimension.
        # Corresponds to the JSON property `dimension`
        # @return [Fixnum]
        attr_accessor :dimension
      
        # An index that stores vectors in a flat data structure, and supports exhaustive
        # search.
        # Corresponds to the JSON property `flat`
        # @return [Google::Apis::FirestoreV1::GoogleFirestoreAdminV1FlatIndex]
        attr_accessor :flat
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @flat = args[:flat] if args.key?(:flat)
        end
      end
      
      # Represents a recurring schedule that runs on a specified day of the week. The
      # time zone is UTC.
      class GoogleFirestoreAdminV1WeeklyRecurrence
        include Google::Apis::Core::Hashable
      
        # The day of week to run. DAY_OF_WEEK_UNSPECIFIED is not allowed.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
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
        # @return [Array<Google::Apis::FirestoreV1::GoogleLongrunningOperation>]
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
        # @return [Google::Apis::FirestoreV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # An object that represents a latitude/longitude pair. This is expressed as a
      # pair of doubles to represent degrees latitude and degrees longitude. Unless
      # specified otherwise, this object must conform to the WGS84 standard. Values
      # must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # The request for Firestore.ListCollectionIds.
      class ListCollectionIdsRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of results to return.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token. Must be a value from ListCollectionIdsResponse.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Reads documents as they were at the given time. This must be a microsecond
        # precision timestamp within the past one hour, or if Point-in-Time Recovery is
        # enabled, can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # The response from Firestore.ListCollectionIds.
      class ListCollectionIdsResponse
        include Google::Apis::Core::Hashable
      
        # The collection ids.
        # Corresponds to the JSON property `collectionIds`
        # @return [Array<String>]
        attr_accessor :collection_ids
      
        # A page token that may be used to continue the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @collection_ids = args[:collection_ids] if args.key?(:collection_ids)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for Firestore.ListDocuments.
      class ListDocumentsResponse
        include Google::Apis::Core::Hashable
      
        # The Documents found.
        # Corresponds to the JSON property `documents`
        # @return [Array<Google::Apis::FirestoreV1::Document>]
        attr_accessor :documents
      
        # A token to retrieve the next page of documents. If this field is omitted,
        # there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::FirestoreV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A request for Firestore.Listen
      class ListenRequest
        include Google::Apis::Core::Hashable
      
        # A specification of a set of documents to listen to.
        # Corresponds to the JSON property `addTarget`
        # @return [Google::Apis::FirestoreV1::Target]
        attr_accessor :add_target
      
        # Labels associated with this target change.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The ID of a target to remove from this stream.
        # Corresponds to the JSON property `removeTarget`
        # @return [Fixnum]
        attr_accessor :remove_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @add_target = args[:add_target] if args.key?(:add_target)
          @labels = args[:labels] if args.key?(:labels)
          @remove_target = args[:remove_target] if args.key?(:remove_target)
        end
      end
      
      # The response for Firestore.Listen.
      class ListenResponse
        include Google::Apis::Core::Hashable
      
        # A Document has changed. May be the result of multiple writes, including
        # deletes, that ultimately resulted in a new value for the Document. Multiple
        # DocumentChange messages may be returned for the same logical change, if
        # multiple targets are affected.
        # Corresponds to the JSON property `documentChange`
        # @return [Google::Apis::FirestoreV1::DocumentChange]
        attr_accessor :document_change
      
        # A Document has been deleted. May be the result of multiple writes, including
        # updates, the last of which deleted the Document. Multiple DocumentDelete
        # messages may be returned for the same logical delete, if multiple targets are
        # affected.
        # Corresponds to the JSON property `documentDelete`
        # @return [Google::Apis::FirestoreV1::DocumentDelete]
        attr_accessor :document_delete
      
        # A Document has been removed from the view of the targets. Sent if the document
        # is no longer relevant to a target and is out of view. Can be sent instead of a
        # DocumentDelete or a DocumentChange if the server can not send the new value of
        # the document. Multiple DocumentRemove messages may be returned for the same
        # logical write or delete, if multiple targets are affected.
        # Corresponds to the JSON property `documentRemove`
        # @return [Google::Apis::FirestoreV1::DocumentRemove]
        attr_accessor :document_remove
      
        # A digest of all the documents that match a given target.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::FirestoreV1::ExistenceFilter]
        attr_accessor :filter
      
        # Targets being watched have changed.
        # Corresponds to the JSON property `targetChange`
        # @return [Google::Apis::FirestoreV1::TargetChange]
        attr_accessor :target_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document_change = args[:document_change] if args.key?(:document_change)
          @document_delete = args[:document_delete] if args.key?(:document_delete)
          @document_remove = args[:document_remove] if args.key?(:document_remove)
          @filter = args[:filter] if args.key?(:filter)
          @target_change = args[:target_change] if args.key?(:target_change)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A map value.
      class MapValue
        include Google::Apis::Core::Hashable
      
        # The map's fields. The map keys represent field names. Field names matching the
        # regular expression `__.*__` are reserved. Reserved field names are forbidden
        # except in certain documented contexts. The map keys, represented as UTF-8,
        # must not exceed 1,500 bytes and cannot be empty.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::FirestoreV1::Value>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # An order on a field.
      class Order
        include Google::Apis::Core::Hashable
      
        # The direction to order by. Defaults to `ASCENDING`.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # A reference to a field in a document, ex: `stats.operations`.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::FirestoreV1::FieldReference]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direction = args[:direction] if args.key?(:direction)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # The request for Firestore.PartitionQuery.
      class PartitionQueryRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of partitions to return in this call, subject to `
        # partition_count`. For example, if `partition_count` = 10 and `page_size` = 8,
        # the first call to PartitionQuery will return up to 8 partitions and a `
        # next_page_token` if more results exist. A second call to PartitionQuery will
        # return up to 2 partitions, to complete the total of 10 specified in `
        # partition_count`.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The `next_page_token` value returned from a previous call to PartitionQuery
        # that may be used to get an additional set of results. There are no ordering
        # guarantees between sets of results. Thus, using multiple sets of results will
        # require merging the different result sets. For example, two subsequent calls
        # using a page_token may return: * cursor B, cursor M, cursor Q * cursor A,
        # cursor U, cursor W To obtain a complete result set ordered with respect to the
        # results of the query supplied to PartitionQuery, the results sets should be
        # merged: cursor A, cursor B, cursor M, cursor Q, cursor U, cursor W
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # The desired maximum number of partition points. The partitions may be returned
        # across multiple pages of results. The number must be positive. The actual
        # number of partitions returned may be fewer. For example, this may be set to
        # one fewer than the number of parallel queries to be run, or in running a data
        # pipeline job, one fewer than the number of workers or compute instances
        # available.
        # Corresponds to the JSON property `partitionCount`
        # @return [Fixnum]
        attr_accessor :partition_count
      
        # Reads documents as they were at the given time. This must be a microsecond
        # precision timestamp within the past one hour, or if Point-in-Time Recovery is
        # enabled, can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A Firestore query. The query stages are executed in the following order: 1.
        # from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7.
        # find_nearest
        # Corresponds to the JSON property `structuredQuery`
        # @return [Google::Apis::FirestoreV1::StructuredQuery]
        attr_accessor :structured_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @partition_count = args[:partition_count] if args.key?(:partition_count)
          @read_time = args[:read_time] if args.key?(:read_time)
          @structured_query = args[:structured_query] if args.key?(:structured_query)
        end
      end
      
      # The response for Firestore.PartitionQuery.
      class PartitionQueryResponse
        include Google::Apis::Core::Hashable
      
        # A page token that may be used to request an additional set of results, up to
        # the number specified by `partition_count` in the PartitionQuery request. If
        # blank, there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Partition results. Each partition is a split point that can be used by
        # RunQuery as a starting or end point for the query results. The RunQuery
        # requests must be made with the same query supplied to this PartitionQuery
        # request. The partition cursors will be ordered according to same ordering as
        # the results of the query supplied to PartitionQuery. For example, if a
        # PartitionQuery request returns partition cursors A and B, running the
        # following three queries will return the entire result set of the original
        # query: * query, end_at A * query, start_at A, end_at B * query, start_at B An
        # empty result may indicate that the query has too few results to be partitioned,
        # or that the query is not yet supported for partitioning.
        # Corresponds to the JSON property `partitions`
        # @return [Array<Google::Apis::FirestoreV1::Cursor>]
        attr_accessor :partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partitions = args[:partitions] if args.key?(:partitions)
        end
      end
      
      # Planning phase information for the query.
      class PlanSummary
        include Google::Apis::Core::Hashable
      
        # The indexes selected for the query. For example: [ `"query_scope": "Collection"
        # , "properties": "(foo ASC, __name__ ASC)"`, `"query_scope": "Collection", "
        # properties": "(bar ASC, __name__ ASC)"` ]
        # Corresponds to the JSON property `indexesUsed`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :indexes_used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indexes_used = args[:indexes_used] if args.key?(:indexes_used)
        end
      end
      
      # A precondition on a document, used for conditional operations.
      class Precondition
        include Google::Apis::Core::Hashable
      
        # When set to `true`, the target document must exist. When set to `false`, the
        # target document must not exist.
        # Corresponds to the JSON property `exists`
        # @return [Boolean]
        attr_accessor :exists
        alias_method :exists?, :exists
      
        # When set, the target document must exist and have been last updated at that
        # time. Timestamp must be microsecond aligned.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exists = args[:exists] if args.key?(:exists)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The projection of document's fields to return.
      class Projection
        include Google::Apis::Core::Hashable
      
        # The fields to return. If empty, all fields are returned. To only return the
        # name of the document, use `['__name__']`.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::FirestoreV1::FieldReference>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # A target specified by a query.
      class QueryTarget
        include Google::Apis::Core::Hashable
      
        # The parent resource name. In the format: `projects/`project_id`/databases/`
        # database_id`/documents` or `projects/`project_id`/databases/`database_id`/
        # documents/`document_path``. For example: `projects/my-project/databases/my-
        # database/documents` or `projects/my-project/databases/my-database/documents/
        # chatrooms/my-chatroom`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A Firestore query. The query stages are executed in the following order: 1.
        # from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7.
        # find_nearest
        # Corresponds to the JSON property `structuredQuery`
        # @return [Google::Apis::FirestoreV1::StructuredQuery]
        attr_accessor :structured_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parent = args[:parent] if args.key?(:parent)
          @structured_query = args[:structured_query] if args.key?(:structured_query)
        end
      end
      
      # Options for a transaction that can only be used to read documents.
      class ReadOnly
        include Google::Apis::Core::Hashable
      
        # Reads documents at the given time. This must be a microsecond precision
        # timestamp within the past one hour, or if Point-in-Time Recovery is enabled,
        # can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_time = args[:read_time] if args.key?(:read_time)
        end
      end
      
      # Options for a transaction that can be used to read and write documents.
      # Firestore does not allow 3rd party auth requests to create read-write.
      # transactions.
      class ReadWrite
        include Google::Apis::Core::Hashable
      
        # An optional transaction to retry.
        # Corresponds to the JSON property `retryTransaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :retry_transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @retry_transaction = args[:retry_transaction] if args.key?(:retry_transaction)
        end
      end
      
      # The request for Firestore.Rollback.
      class RollbackRequest
        include Google::Apis::Core::Hashable
      
        # Required. The transaction to roll back.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The request for Firestore.RunAggregationQuery.
      class RunAggregationQueryRequest
        include Google::Apis::Core::Hashable
      
        # Explain options for the query.
        # Corresponds to the JSON property `explainOptions`
        # @return [Google::Apis::FirestoreV1::ExplainOptions]
        attr_accessor :explain_options
      
        # Options for creating a new transaction.
        # Corresponds to the JSON property `newTransaction`
        # @return [Google::Apis::FirestoreV1::TransactionOptions]
        attr_accessor :new_transaction
      
        # Executes the query at the given timestamp. This must be a microsecond
        # precision timestamp within the past one hour, or if Point-in-Time Recovery is
        # enabled, can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # Firestore query for running an aggregation over a StructuredQuery.
        # Corresponds to the JSON property `structuredAggregationQuery`
        # @return [Google::Apis::FirestoreV1::StructuredAggregationQuery]
        attr_accessor :structured_aggregation_query
      
        # Run the aggregation within an already active transaction. The value here is
        # the opaque transaction ID to execute the query in.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explain_options = args[:explain_options] if args.key?(:explain_options)
          @new_transaction = args[:new_transaction] if args.key?(:new_transaction)
          @read_time = args[:read_time] if args.key?(:read_time)
          @structured_aggregation_query = args[:structured_aggregation_query] if args.key?(:structured_aggregation_query)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for Firestore.RunAggregationQuery.
      class RunAggregationQueryResponse
        include Google::Apis::Core::Hashable
      
        # Explain metrics for the query.
        # Corresponds to the JSON property `explainMetrics`
        # @return [Google::Apis::FirestoreV1::ExplainMetrics]
        attr_accessor :explain_metrics
      
        # The time at which the aggregate result was computed. This is always
        # monotonically increasing; in this case, the previous AggregationResult in the
        # result stream are guaranteed not to have changed between their `read_time` and
        # this one. If the query returns no results, a response with `read_time` and no `
        # result` will be sent, and this represents the time at which the query was run.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The result of a single bucket from a Firestore aggregation query. The keys of `
        # aggregate_fields` are the same for all results in an aggregation query, unlike
        # document queries which can have different fields present for each result.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::FirestoreV1::AggregationResult]
        attr_accessor :result
      
        # The transaction that was started as part of this request. Only present on the
        # first response when the request requested to start a new transaction.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explain_metrics = args[:explain_metrics] if args.key?(:explain_metrics)
          @read_time = args[:read_time] if args.key?(:read_time)
          @result = args[:result] if args.key?(:result)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The request for Firestore.RunQuery.
      class RunQueryRequest
        include Google::Apis::Core::Hashable
      
        # Explain options for the query.
        # Corresponds to the JSON property `explainOptions`
        # @return [Google::Apis::FirestoreV1::ExplainOptions]
        attr_accessor :explain_options
      
        # Options for creating a new transaction.
        # Corresponds to the JSON property `newTransaction`
        # @return [Google::Apis::FirestoreV1::TransactionOptions]
        attr_accessor :new_transaction
      
        # Reads documents as they were at the given time. This must be a microsecond
        # precision timestamp within the past one hour, or if Point-in-Time Recovery is
        # enabled, can additionally be a whole minute timestamp within the past 7 days.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A Firestore query. The query stages are executed in the following order: 1.
        # from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7.
        # find_nearest
        # Corresponds to the JSON property `structuredQuery`
        # @return [Google::Apis::FirestoreV1::StructuredQuery]
        attr_accessor :structured_query
      
        # Run the query within an already active transaction. The value here is the
        # opaque transaction ID to execute the query in.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explain_options = args[:explain_options] if args.key?(:explain_options)
          @new_transaction = args[:new_transaction] if args.key?(:new_transaction)
          @read_time = args[:read_time] if args.key?(:read_time)
          @structured_query = args[:structured_query] if args.key?(:structured_query)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The response for Firestore.RunQuery.
      class RunQueryResponse
        include Google::Apis::Core::Hashable
      
        # A Firestore document. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `document`
        # @return [Google::Apis::FirestoreV1::Document]
        attr_accessor :document
      
        # If present, Firestore has completely finished the request and no more
        # documents will be returned.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # Explain metrics for the query.
        # Corresponds to the JSON property `explainMetrics`
        # @return [Google::Apis::FirestoreV1::ExplainMetrics]
        attr_accessor :explain_metrics
      
        # The time at which the document was read. This may be monotonically increasing;
        # in this case, the previous documents in the result stream are guaranteed not
        # to have changed between their `read_time` and this one. If the query returns
        # no results, a response with `read_time` and no `document` will be sent, and
        # this represents the time at which the query was run.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # The number of results that have been skipped due to an offset between the last
        # response and the current response.
        # Corresponds to the JSON property `skippedResults`
        # @return [Fixnum]
        attr_accessor :skipped_results
      
        # The transaction that was started as part of this request. Can only be set in
        # the first response, and only if RunQueryRequest.new_transaction was set in the
        # request. If set, no other fields will be set in this response.
        # Corresponds to the JSON property `transaction`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @document = args[:document] if args.key?(:document)
          @done = args[:done] if args.key?(:done)
          @explain_metrics = args[:explain_metrics] if args.key?(:explain_metrics)
          @read_time = args[:read_time] if args.key?(:read_time)
          @skipped_results = args[:skipped_results] if args.key?(:skipped_results)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
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
      
      # Firestore query for running an aggregation over a StructuredQuery.
      class StructuredAggregationQuery
        include Google::Apis::Core::Hashable
      
        # Optional. Series of aggregations to apply over the results of the `
        # structured_query`. Requires: * A minimum of one and maximum of five
        # aggregations per query.
        # Corresponds to the JSON property `aggregations`
        # @return [Array<Google::Apis::FirestoreV1::Aggregation>]
        attr_accessor :aggregations
      
        # A Firestore query. The query stages are executed in the following order: 1.
        # from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7.
        # find_nearest
        # Corresponds to the JSON property `structuredQuery`
        # @return [Google::Apis::FirestoreV1::StructuredQuery]
        attr_accessor :structured_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregations = args[:aggregations] if args.key?(:aggregations)
          @structured_query = args[:structured_query] if args.key?(:structured_query)
        end
      end
      
      # A Firestore query. The query stages are executed in the following order: 1.
      # from 2. where 3. select 4. order_by + start_at + end_at 5. offset 6. limit 7.
      # find_nearest
      class StructuredQuery
        include Google::Apis::Core::Hashable
      
        # A position in a query result set.
        # Corresponds to the JSON property `endAt`
        # @return [Google::Apis::FirestoreV1::Cursor]
        attr_accessor :end_at
      
        # Nearest Neighbors search config. The ordering provided by FindNearest
        # supersedes the order_by stage. If multiple documents have the same vector
        # distance, the returned document order is not guaranteed to be stable between
        # queries.
        # Corresponds to the JSON property `findNearest`
        # @return [Google::Apis::FirestoreV1::FindNearest]
        attr_accessor :find_nearest
      
        # The collections to query.
        # Corresponds to the JSON property `from`
        # @return [Array<Google::Apis::FirestoreV1::CollectionSelector>]
        attr_accessor :from
      
        # The maximum number of results to return. Applies after all other constraints.
        # Requires: * The value must be greater than or equal to zero if specified.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # The number of documents to skip before returning the first result. This
        # applies after the constraints specified by the `WHERE`, `START AT`, & `END AT`
        # but before the `LIMIT` clause. Requires: * The value must be greater than or
        # equal to zero if specified.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order to apply to the query results. Firestore allows callers to provide a
        # full ordering, a partial ordering, or no ordering at all. In all cases,
        # Firestore guarantees a stable ordering through the following rules: * The `
        # order_by` is required to reference all fields used with an inequality filter. *
        # All fields that are required to be in the `order_by` but are not already
        # present are appended in lexicographical ordering of the field name. * If an
        # order on `__name__` is not specified, it is appended by default. Fields are
        # appended with the same sort direction as the last order specified, or '
        # ASCENDING' if no order was specified. For example: * `ORDER BY a` becomes `
        # ORDER BY a ASC, __name__ ASC` * `ORDER BY a DESC` becomes `ORDER BY a DESC,
        # __name__ DESC` * `WHERE a > 1` becomes `WHERE a > 1 ORDER BY a ASC, __name__
        # ASC` * `WHERE __name__ > ... AND a > 1` becomes `WHERE __name__ > ... AND a >
        # 1 ORDER BY a ASC, __name__ ASC`
        # Corresponds to the JSON property `orderBy`
        # @return [Array<Google::Apis::FirestoreV1::Order>]
        attr_accessor :order_by
      
        # The projection of document's fields to return.
        # Corresponds to the JSON property `select`
        # @return [Google::Apis::FirestoreV1::Projection]
        attr_accessor :select
      
        # A position in a query result set.
        # Corresponds to the JSON property `startAt`
        # @return [Google::Apis::FirestoreV1::Cursor]
        attr_accessor :start_at
      
        # A filter.
        # Corresponds to the JSON property `where`
        # @return [Google::Apis::FirestoreV1::Filter]
        attr_accessor :where
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_at = args[:end_at] if args.key?(:end_at)
          @find_nearest = args[:find_nearest] if args.key?(:find_nearest)
          @from = args[:from] if args.key?(:from)
          @limit = args[:limit] if args.key?(:limit)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @select = args[:select] if args.key?(:select)
          @start_at = args[:start_at] if args.key?(:start_at)
          @where = args[:where] if args.key?(:where)
        end
      end
      
      # Sum of the values of the requested field. * Only numeric values will be
      # aggregated. All non-numeric values including `NULL` are skipped. * If the
      # aggregated values contain `NaN`, returns `NaN`. Infinity math follows IEEE-754
      # standards. * If the aggregated value set is empty, returns 0. * Returns a 64-
      # bit integer if all aggregated numbers are integers and the sum result does not
      # overflow. Otherwise, the result is returned as a double. Note that even if all
      # the aggregated values are integers, the result is returned as a double if it
      # cannot fit within a 64-bit signed integer. When this occurs, the returned
      # value will lose precision. * When underflow occurs, floating-point aggregation
      # is non-deterministic. This means that running the same query repeatedly
      # without any changes to the underlying values could produce slightly different
      # results each time. In those cases, values should be stored as integers over
      # floating-point numbers.
      class Sum
        include Google::Apis::Core::Hashable
      
        # A reference to a field in a document, ex: `stats.operations`.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::FirestoreV1::FieldReference]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # A specification of a set of documents to listen to.
      class Target
        include Google::Apis::Core::Hashable
      
        # A target specified by a set of documents names.
        # Corresponds to the JSON property `documents`
        # @return [Google::Apis::FirestoreV1::DocumentsTarget]
        attr_accessor :documents
      
        # The number of documents that last matched the query at the resume token or
        # read time. This value is only relevant when a `resume_type` is provided. This
        # value being present and greater than zero signals that the client wants `
        # ExistenceFilter.unchanged_names` to be included in the response.
        # Corresponds to the JSON property `expectedCount`
        # @return [Fixnum]
        attr_accessor :expected_count
      
        # If the target should be removed once it is current and consistent.
        # Corresponds to the JSON property `once`
        # @return [Boolean]
        attr_accessor :once
        alias_method :once?, :once
      
        # A target specified by a query.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::FirestoreV1::QueryTarget]
        attr_accessor :query
      
        # Start listening after a specific `read_time`. The client must know the state
        # of matching documents at this time.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A resume token from a prior TargetChange for an identical target. Using a
        # resume token with a different target is unsupported and may fail.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # The target ID that identifies the target on the stream. Must be a positive
        # number and non-zero. If `target_id` is 0 (or unspecified), the server will
        # assign an ID for this target and return that in a `TargetChange::ADD` event.
        # Once a target with `target_id=0` is added, all subsequent targets must also
        # have `target_id=0`. If an `AddTarget` request with `target_id != 0` is sent to
        # the server after a target with `target_id=0` is added, the server will
        # immediately send a response with a `TargetChange::Remove` event. Note that if
        # the client sends multiple `AddTarget` requests without an ID, the order of IDs
        # returned in `TargetChange.target_ids` are undefined. Therefore, clients should
        # provide a target ID instead of relying on the server to assign one. If `
        # target_id` is non-zero, there must not be an existing active target on this
        # stream with the same ID.
        # Corresponds to the JSON property `targetId`
        # @return [Fixnum]
        attr_accessor :target_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @documents = args[:documents] if args.key?(:documents)
          @expected_count = args[:expected_count] if args.key?(:expected_count)
          @once = args[:once] if args.key?(:once)
          @query = args[:query] if args.key?(:query)
          @read_time = args[:read_time] if args.key?(:read_time)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @target_id = args[:target_id] if args.key?(:target_id)
        end
      end
      
      # Targets being watched have changed.
      class TargetChange
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `cause`
        # @return [Google::Apis::FirestoreV1::Status]
        attr_accessor :cause
      
        # The consistent `read_time` for the given `target_ids` (omitted when the
        # target_ids are not at a consistent snapshot). The stream is guaranteed to send
        # a `read_time` with `target_ids` empty whenever the entire stream reaches a new
        # consistent snapshot. ADD, CURRENT, and RESET messages are guaranteed to (
        # eventually) result in a new consistent snapshot (while NO_CHANGE and REMOVE
        # messages are not). For a given stream, `read_time` is guaranteed to be
        # monotonically increasing.
        # Corresponds to the JSON property `readTime`
        # @return [String]
        attr_accessor :read_time
      
        # A token that can be used to resume the stream for the given `target_ids`, or
        # all targets if `target_ids` is empty. Not set on every target change.
        # Corresponds to the JSON property `resumeToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :resume_token
      
        # The type of change that occurred.
        # Corresponds to the JSON property `targetChangeType`
        # @return [String]
        attr_accessor :target_change_type
      
        # The target IDs of targets that have changed. If empty, the change applies to
        # all targets. The order of the target IDs is not defined.
        # Corresponds to the JSON property `targetIds`
        # @return [Array<Fixnum>]
        attr_accessor :target_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cause = args[:cause] if args.key?(:cause)
          @read_time = args[:read_time] if args.key?(:read_time)
          @resume_token = args[:resume_token] if args.key?(:resume_token)
          @target_change_type = args[:target_change_type] if args.key?(:target_change_type)
          @target_ids = args[:target_ids] if args.key?(:target_ids)
        end
      end
      
      # Options for creating a new transaction.
      class TransactionOptions
        include Google::Apis::Core::Hashable
      
        # Options for a transaction that can only be used to read documents.
        # Corresponds to the JSON property `readOnly`
        # @return [Google::Apis::FirestoreV1::ReadOnly]
        attr_accessor :read_only
      
        # Options for a transaction that can be used to read and write documents.
        # Firestore does not allow 3rd party auth requests to create read-write.
        # transactions.
        # Corresponds to the JSON property `readWrite`
        # @return [Google::Apis::FirestoreV1::ReadWrite]
        attr_accessor :read_write
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_only = args[:read_only] if args.key?(:read_only)
          @read_write = args[:read_write] if args.key?(:read_write)
        end
      end
      
      # A filter with a single operand.
      class UnaryFilter
        include Google::Apis::Core::Hashable
      
        # A reference to a field in a document, ex: `stats.operations`.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::FirestoreV1::FieldReference]
        attr_accessor :field
      
        # The unary operator to apply.
        # Corresponds to the JSON property `op`
        # @return [String]
        attr_accessor :op
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @op = args[:op] if args.key?(:op)
        end
      end
      
      # A message that can hold any of the supported value types.
      class Value
        include Google::Apis::Core::Hashable
      
        # An array value.
        # Corresponds to the JSON property `arrayValue`
        # @return [Google::Apis::FirestoreV1::ArrayValue]
        attr_accessor :array_value
      
        # A boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # A bytes value. Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes
        # are considered by queries.
        # Corresponds to the JSON property `bytesValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_value
      
        # A double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # An object that represents a latitude/longitude pair. This is expressed as a
        # pair of doubles to represent degrees latitude and degrees longitude. Unless
        # specified otherwise, this object must conform to the WGS84 standard. Values
        # must be within normalized ranges.
        # Corresponds to the JSON property `geoPointValue`
        # @return [Google::Apis::FirestoreV1::LatLng]
        attr_accessor :geo_point_value
      
        # An integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # A map value.
        # Corresponds to the JSON property `mapValue`
        # @return [Google::Apis::FirestoreV1::MapValue]
        attr_accessor :map_value
      
        # A null value.
        # Corresponds to the JSON property `nullValue`
        # @return [String]
        attr_accessor :null_value
      
        # A reference to a document. For example: `projects/`project_id`/databases/`
        # database_id`/documents/`document_path``.
        # Corresponds to the JSON property `referenceValue`
        # @return [String]
        attr_accessor :reference_value
      
        # A string value. The string, represented as UTF-8, must not exceed 1 MiB - 89
        # bytes. Only the first 1,500 bytes of the UTF-8 representation are considered
        # by queries.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # A timestamp value. Precise only to microseconds. When stored, any additional
        # precision is rounded down.
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array_value = args[:array_value] if args.key?(:array_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @bytes_value = args[:bytes_value] if args.key?(:bytes_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @geo_point_value = args[:geo_point_value] if args.key?(:geo_point_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @map_value = args[:map_value] if args.key?(:map_value)
          @null_value = args[:null_value] if args.key?(:null_value)
          @reference_value = args[:reference_value] if args.key?(:reference_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # A write on a document.
      class Write
        include Google::Apis::Core::Hashable
      
        # A precondition on a document, used for conditional operations.
        # Corresponds to the JSON property `currentDocument`
        # @return [Google::Apis::FirestoreV1::Precondition]
        attr_accessor :current_document
      
        # A document name to delete. In the format: `projects/`project_id`/databases/`
        # database_id`/documents/`document_path``.
        # Corresponds to the JSON property `delete`
        # @return [String]
        attr_accessor :delete
      
        # A transformation of a document.
        # Corresponds to the JSON property `transform`
        # @return [Google::Apis::FirestoreV1::DocumentTransform]
        attr_accessor :transform
      
        # A Firestore document. Must not exceed 1 MiB - 4 bytes.
        # Corresponds to the JSON property `update`
        # @return [Google::Apis::FirestoreV1::Document]
        attr_accessor :update
      
        # A set of field paths on a document. Used to restrict a get or update operation
        # on a document to a subset of its fields. This is different from standard field
        # masks, as this is always scoped to a Document, and takes in account the
        # dynamic nature of Value.
        # Corresponds to the JSON property `updateMask`
        # @return [Google::Apis::FirestoreV1::DocumentMask]
        attr_accessor :update_mask
      
        # The transforms to perform after update. This field can be set only when the
        # operation is `update`. If present, this write is equivalent to performing `
        # update` and `transform` to the same document atomically and in order.
        # Corresponds to the JSON property `updateTransforms`
        # @return [Array<Google::Apis::FirestoreV1::FieldTransform>]
        attr_accessor :update_transforms
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_document = args[:current_document] if args.key?(:current_document)
          @delete = args[:delete] if args.key?(:delete)
          @transform = args[:transform] if args.key?(:transform)
          @update = args[:update] if args.key?(:update)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
          @update_transforms = args[:update_transforms] if args.key?(:update_transforms)
        end
      end
      
      # The request for Firestore.Write. The first request creates a stream, or
      # resumes an existing one from a token. When creating a new stream, the server
      # replies with a response containing only an ID and a token, to use in the next
      # request. When resuming a stream, the server first streams any responses later
      # than the given token, then a response containing only an up-to-date token, to
      # use in the next request.
      class WriteRequest
        include Google::Apis::Core::Hashable
      
        # Labels associated with this write request.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The ID of the write stream to resume. This may only be set in the first
        # message. When left empty, a new write stream will be created.
        # Corresponds to the JSON property `streamId`
        # @return [String]
        attr_accessor :stream_id
      
        # A stream token that was previously sent by the server. The client should set
        # this field to the token from the most recent WriteResponse it has received.
        # This acknowledges that the client has received responses up to this token.
        # After sending this token, earlier tokens may not be used anymore. The server
        # may close the stream if there are too many unacknowledged responses. Leave
        # this field unset when creating a new stream. To resume a stream at a specific
        # point, set this field and the `stream_id` field. Leave this field unset when
        # creating a new stream.
        # Corresponds to the JSON property `streamToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :stream_token
      
        # The writes to apply. Always executed atomically and in order. This must be
        # empty on the first request. This may be empty on the last request. This must
        # not be empty on all other requests.
        # Corresponds to the JSON property `writes`
        # @return [Array<Google::Apis::FirestoreV1::Write>]
        attr_accessor :writes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @stream_id = args[:stream_id] if args.key?(:stream_id)
          @stream_token = args[:stream_token] if args.key?(:stream_token)
          @writes = args[:writes] if args.key?(:writes)
        end
      end
      
      # The response for Firestore.Write.
      class WriteResponse
        include Google::Apis::Core::Hashable
      
        # The time at which the commit occurred. Any read with an equal or greater `
        # read_time` is guaranteed to see the effects of the write.
        # Corresponds to the JSON property `commitTime`
        # @return [String]
        attr_accessor :commit_time
      
        # The ID of the stream. Only set on the first message, when a new stream was
        # created.
        # Corresponds to the JSON property `streamId`
        # @return [String]
        attr_accessor :stream_id
      
        # A token that represents the position of this response in the stream. This can
        # be used by a client to resume the stream at this point. This field is always
        # set.
        # Corresponds to the JSON property `streamToken`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :stream_token
      
        # The result of applying the writes. This i-th write result corresponds to the i-
        # th write in the request.
        # Corresponds to the JSON property `writeResults`
        # @return [Array<Google::Apis::FirestoreV1::WriteResult>]
        attr_accessor :write_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_time = args[:commit_time] if args.key?(:commit_time)
          @stream_id = args[:stream_id] if args.key?(:stream_id)
          @stream_token = args[:stream_token] if args.key?(:stream_token)
          @write_results = args[:write_results] if args.key?(:write_results)
        end
      end
      
      # The result of applying a write.
      class WriteResult
        include Google::Apis::Core::Hashable
      
        # The results of applying each DocumentTransform.FieldTransform, in the same
        # order.
        # Corresponds to the JSON property `transformResults`
        # @return [Array<Google::Apis::FirestoreV1::Value>]
        attr_accessor :transform_results
      
        # The last update time of the document after applying the write. Not set after a
        # `delete`. If the write did not actually change the document, this will be the
        # previous update_time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @transform_results = args[:transform_results] if args.key?(:transform_results)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
    end
  end
end
