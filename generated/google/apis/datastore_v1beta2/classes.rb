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
    module DatastoreV1beta2
      
      # 
      class AllocateIdsRequest
        include Google::Apis::Core::Hashable
      
        # A list of keys with incomplete key paths to allocate IDs for. No key may be
        # reserved/read-only.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta2::Key>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # 
      class AllocateIdsResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DatastoreV1beta2::ResponseHeader]
        attr_accessor :header
      
        # The keys specified in the request (in the same order), each with its key path
        # completed with a newly allocated ID.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta2::Key>]
        attr_accessor :keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @keys = args[:keys] if args.key?(:keys)
        end
      end
      
      # 
      class BeginTransactionRequest
        include Google::Apis::Core::Hashable
      
        # The transaction isolation level. Either snapshot or serializable. The default
        # isolation level is snapshot isolation, which means that another transaction
        # may not concurrently modify the data that is modified by this transaction.
        # Optionally, a transaction can request to be made serializable which means that
        # another transaction cannot concurrently modify the data that is read or
        # modified by this transaction.
        # Corresponds to the JSON property `isolationLevel`
        # @return [String]
        attr_accessor :isolation_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @isolation_level = args[:isolation_level] if args.key?(:isolation_level)
        end
      end
      
      # 
      class BeginTransactionResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DatastoreV1beta2::ResponseHeader]
        attr_accessor :header
      
        # The transaction identifier (always present).
        # Corresponds to the JSON property `transaction`
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # 
      class CommitRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ignoreReadOnly`
        # @return [Boolean]
        attr_accessor :ignore_read_only
        alias_method :ignore_read_only?, :ignore_read_only
      
        # The type of commit to perform. Either TRANSACTIONAL or NON_TRANSACTIONAL.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # A set of changes to apply.
        # Corresponds to the JSON property `mutation`
        # @return [Google::Apis::DatastoreV1beta2::Mutation]
        attr_accessor :mutation
      
        # The transaction identifier, returned by a call to beginTransaction. Must be
        # set when mode is TRANSACTIONAL.
        # Corresponds to the JSON property `transaction`
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ignore_read_only = args[:ignore_read_only] if args.key?(:ignore_read_only)
          @mode = args[:mode] if args.key?(:mode)
          @mutation = args[:mutation] if args.key?(:mutation)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # 
      class CommitResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DatastoreV1beta2::ResponseHeader]
        attr_accessor :header
      
        # The result of performing the mutation (if any).
        # Corresponds to the JSON property `mutationResult`
        # @return [Google::Apis::DatastoreV1beta2::MutationResult]
        attr_accessor :mutation_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @mutation_result = args[:mutation_result] if args.key?(:mutation_result)
        end
      end
      
      # A filter that merges the multiple other filters using the given operation.
      class CompositeFilter
        include Google::Apis::Core::Hashable
      
        # The list of filters to combine. Must contain at least one filter.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DatastoreV1beta2::Filter>]
        attr_accessor :filters
      
        # The operator for combining multiple filters. Only "and" is currently supported.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # An entity.
      class Entity
        include Google::Apis::Core::Hashable
      
        # A unique identifier for an entity.
        # Corresponds to the JSON property `key`
        # @return [Google::Apis::DatastoreV1beta2::Key]
        attr_accessor :key
      
        # The entity's properties.
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,Google::Apis::DatastoreV1beta2::Property>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # The result of fetching an entity from the datastore.
      class EntityResult
        include Google::Apis::Core::Hashable
      
        # An entity.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::DatastoreV1beta2::Entity]
        attr_accessor :entity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
        end
      end
      
      # A holder for any type of filter. Exactly one field should be specified.
      class Filter
        include Google::Apis::Core::Hashable
      
        # A filter that merges the multiple other filters using the given operation.
        # Corresponds to the JSON property `compositeFilter`
        # @return [Google::Apis::DatastoreV1beta2::CompositeFilter]
        attr_accessor :composite_filter
      
        # A filter on a specific property.
        # Corresponds to the JSON property `propertyFilter`
        # @return [Google::Apis::DatastoreV1beta2::PropertyFilter]
        attr_accessor :property_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @composite_filter = args[:composite_filter] if args.key?(:composite_filter)
          @property_filter = args[:property_filter] if args.key?(:property_filter)
        end
      end
      
      # A GQL query.
      class GqlQuery
        include Google::Apis::Core::Hashable
      
        # When false, the query string must not contain a literal.
        # Corresponds to the JSON property `allowLiteral`
        # @return [Boolean]
        attr_accessor :allow_literal
        alias_method :allow_literal?, :allow_literal
      
        # A named argument must set field GqlQueryArg.name. No two named arguments may
        # have the same name. For each non-reserved named binding site in the query
        # string, there must be a named argument with that name, but not necessarily the
        # inverse.
        # Corresponds to the JSON property `nameArgs`
        # @return [Array<Google::Apis::DatastoreV1beta2::GqlQueryArg>]
        attr_accessor :name_args
      
        # Numbered binding site @1 references the first numbered argument, effectively
        # using 1-based indexing, rather than the usual 0. A numbered argument must NOT
        # set field GqlQueryArg.name. For each binding site numbered i in query_string,
        # there must be an ith numbered argument. The inverse must also be true.
        # Corresponds to the JSON property `numberArgs`
        # @return [Array<Google::Apis::DatastoreV1beta2::GqlQueryArg>]
        attr_accessor :number_args
      
        # The query string.
        # Corresponds to the JSON property `queryString`
        # @return [String]
        attr_accessor :query_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_literal = args[:allow_literal] if args.key?(:allow_literal)
          @name_args = args[:name_args] if args.key?(:name_args)
          @number_args = args[:number_args] if args.key?(:number_args)
          @query_string = args[:query_string] if args.key?(:query_string)
        end
      end
      
      # A binding argument for a GQL query.
      class GqlQueryArg
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `cursor`
        # @return [String]
        attr_accessor :cursor
      
        # Must match regex "[A-Za-z_$][A-Za-z_$0-9]*". Must not match regex "__.*__".
        # Must not be "".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DatastoreV1beta2::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cursor = args[:cursor] if args.key?(:cursor)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # A unique identifier for an entity.
      class Key
        include Google::Apis::Core::Hashable
      
        # An identifier for a particular subset of entities.
        # Entities are partitioned into various subsets, each used by different datasets
        # and different namespaces within a dataset and so forth.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DatastoreV1beta2::PartitionId]
        attr_accessor :partition_id
      
        # The entity path. An entity path consists of one or more elements composed of a
        # kind and a string or numerical identifier, which identify entities. The first
        # element identifies a root entity, the second element identifies a child of the
        # root entity, the third element a child of the second entity, and so forth. The
        # entities identified by all prefixes of the path are called the element's
        # ancestors. An entity path is always fully complete: ALL of the entity's
        # ancestors are required to be in the path along with the entity identifier
        # itself. The only exception is that in some documented cases, the identifier in
        # the last path element (for the entity) itself may be omitted. A path can never
        # be empty. The path can have at most 100 elements.
        # Corresponds to the JSON property `path`
        # @return [Array<Google::Apis::DatastoreV1beta2::KeyPathElement>]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # A (kind, ID/name) pair used to construct a key path.
      # At most one of name or ID may be set. If either is set, the element is
      # complete. If neither is set, the element is incomplete.
      class KeyPathElement
        include Google::Apis::Core::Hashable
      
        # The ID of the entity. Never equal to zero. Values less than zero are
        # discouraged and will not be supported in the future.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The kind of the entity. A kind matching regex "__.*__" is reserved/read-only.
        # A kind must not contain more than 500 characters. Cannot be "".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the entity. A name matching regex "__.*__" is reserved/read-only.
        # A name must not be more than 500 characters. Cannot be "".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A representation of a kind.
      class KindExpression
        include Google::Apis::Core::Hashable
      
        # The name of the kind.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class LookupRequest
        include Google::Apis::Core::Hashable
      
        # Keys of entities to look up from the datastore.
        # Corresponds to the JSON property `keys`
        # @return [Array<Google::Apis::DatastoreV1beta2::Key>]
        attr_accessor :keys
      
        # Options for this lookup request. Optional.
        # Corresponds to the JSON property `readOptions`
        # @return [Google::Apis::DatastoreV1beta2::ReadOptions]
        attr_accessor :read_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keys = args[:keys] if args.key?(:keys)
          @read_options = args[:read_options] if args.key?(:read_options)
        end
      end
      
      # 
      class LookupResponse
        include Google::Apis::Core::Hashable
      
        # A list of keys that were not looked up due to resource constraints.
        # Corresponds to the JSON property `deferred`
        # @return [Array<Google::Apis::DatastoreV1beta2::Key>]
        attr_accessor :deferred
      
        # Entities found.
        # Corresponds to the JSON property `found`
        # @return [Array<Google::Apis::DatastoreV1beta2::EntityResult>]
        attr_accessor :found
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DatastoreV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Entities not found, with only the key populated.
        # Corresponds to the JSON property `missing`
        # @return [Array<Google::Apis::DatastoreV1beta2::EntityResult>]
        attr_accessor :missing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deferred = args[:deferred] if args.key?(:deferred)
          @found = args[:found] if args.key?(:found)
          @header = args[:header] if args.key?(:header)
          @missing = args[:missing] if args.key?(:missing)
        end
      end
      
      # A set of changes to apply.
      class Mutation
        include Google::Apis::Core::Hashable
      
        # Keys of entities to delete. Each key must have a complete key path and must
        # not be reserved/read-only.
        # Corresponds to the JSON property `delete`
        # @return [Array<Google::Apis::DatastoreV1beta2::Key>]
        attr_accessor :delete
      
        # Ignore a user specified read-only period. Optional.
        # Corresponds to the JSON property `force`
        # @return [Boolean]
        attr_accessor :force
        alias_method :force?, :force
      
        # Entities to insert. Each inserted entity's key must have a complete path and
        # must not be reserved/read-only.
        # Corresponds to the JSON property `insert`
        # @return [Array<Google::Apis::DatastoreV1beta2::Entity>]
        attr_accessor :insert
      
        # Insert entities with a newly allocated ID. Each inserted entity's key must
        # omit the final identifier in its path and must not be reserved/read-only.
        # Corresponds to the JSON property `insertAutoId`
        # @return [Array<Google::Apis::DatastoreV1beta2::Entity>]
        attr_accessor :insert_auto_id
      
        # Entities to update. Each updated entity's key must have a complete path and
        # must not be reserved/read-only.
        # Corresponds to the JSON property `update`
        # @return [Array<Google::Apis::DatastoreV1beta2::Entity>]
        attr_accessor :update
      
        # Entities to upsert. Each upserted entity's key must have a complete path and
        # must not be reserved/read-only.
        # Corresponds to the JSON property `upsert`
        # @return [Array<Google::Apis::DatastoreV1beta2::Entity>]
        attr_accessor :upsert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete = args[:delete] if args.key?(:delete)
          @force = args[:force] if args.key?(:force)
          @insert = args[:insert] if args.key?(:insert)
          @insert_auto_id = args[:insert_auto_id] if args.key?(:insert_auto_id)
          @update = args[:update] if args.key?(:update)
          @upsert = args[:upsert] if args.key?(:upsert)
        end
      end
      
      # 
      class MutationResult
        include Google::Apis::Core::Hashable
      
        # Number of index writes.
        # Corresponds to the JSON property `indexUpdates`
        # @return [Fixnum]
        attr_accessor :index_updates
      
        # Keys for insertAutoId entities. One per entity from the request, in the same
        # order.
        # Corresponds to the JSON property `insertAutoIdKeys`
        # @return [Array<Google::Apis::DatastoreV1beta2::Key>]
        attr_accessor :insert_auto_id_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index_updates = args[:index_updates] if args.key?(:index_updates)
          @insert_auto_id_keys = args[:insert_auto_id_keys] if args.key?(:insert_auto_id_keys)
        end
      end
      
      # An identifier for a particular subset of entities.
      # Entities are partitioned into various subsets, each used by different datasets
      # and different namespaces within a dataset and so forth.
      class PartitionId
        include Google::Apis::Core::Hashable
      
        # The dataset ID.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The namespace.
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @namespace = args[:namespace] if args.key?(:namespace)
        end
      end
      
      # An entity property.
      class Property
        include Google::Apis::Core::Hashable
      
        # A blob key value.
        # Corresponds to the JSON property `blobKeyValue`
        # @return [String]
        attr_accessor :blob_key_value
      
        # A blob value. May be a maximum of 1,000,000 bytes. When indexed is true, may
        # have at most 500 bytes.
        # Corresponds to the JSON property `blobValue`
        # @return [String]
        attr_accessor :blob_value
      
        # A boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # A timestamp value.
        # Corresponds to the JSON property `dateTimeValue`
        # @return [DateTime]
        attr_accessor :date_time_value
      
        # A double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # An entity.
        # Corresponds to the JSON property `entityValue`
        # @return [Google::Apis::DatastoreV1beta2::Entity]
        attr_accessor :entity_value
      
        # If the value should be indexed.
        # The indexed property may be set for a null value. When indexed is true,
        # stringValue is limited to 500 characters and the blob value is limited to 500
        # bytes. Input values by default have indexed set to true; however, you can
        # explicitly set indexed to true if you want. (An output value never has indexed
        # explicitly set to true.) If a value is itself an entity, it cannot have
        # indexed set to true.
        # Corresponds to the JSON property `indexed`
        # @return [Boolean]
        attr_accessor :indexed
        alias_method :indexed?, :indexed
      
        # An integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [String]
        attr_accessor :integer_value
      
        # A unique identifier for an entity.
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::DatastoreV1beta2::Key]
        attr_accessor :key_value
      
        # A list value. Cannot contain another list value. A Value instance that sets
        # field list_value must not set field meaning or field indexed.
        # Corresponds to the JSON property `listValue`
        # @return [Array<Google::Apis::DatastoreV1beta2::Value>]
        attr_accessor :list_value
      
        # The meaning field is reserved and should not be used.
        # Corresponds to the JSON property `meaning`
        # @return [Fixnum]
        attr_accessor :meaning
      
        # A UTF-8 encoded string value. When indexed is true, may have at most 500
        # characters.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_key_value = args[:blob_key_value] if args.key?(:blob_key_value)
          @blob_value = args[:blob_value] if args.key?(:blob_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_time_value = args[:date_time_value] if args.key?(:date_time_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @entity_value = args[:entity_value] if args.key?(:entity_value)
          @indexed = args[:indexed] if args.key?(:indexed)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @key_value = args[:key_value] if args.key?(:key_value)
          @list_value = args[:list_value] if args.key?(:list_value)
          @meaning = args[:meaning] if args.key?(:meaning)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A representation of a property in a projection.
      class PropertyExpression
        include Google::Apis::Core::Hashable
      
        # The aggregation function to apply to the property. Optional. Can only be used
        # when grouping by at least one property. Must then be set on all properties in
        # the projection that are not being grouped by. Aggregation functions: first
        # selects the first result as determined by the query's order.
        # Corresponds to the JSON property `aggregationFunction`
        # @return [String]
        attr_accessor :aggregation_function
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta2::PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_function = args[:aggregation_function] if args.key?(:aggregation_function)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A filter on a specific property.
      class PropertyFilter
        include Google::Apis::Core::Hashable
      
        # The operator to filter by. One of lessThan, lessThanOrEqual, greaterThan,
        # greaterThanOrEqual, equal, or hasAncestor.
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta2::PropertyReference]
        attr_accessor :property
      
        # A message that can hold any of the supported value types and associated
        # metadata.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::DatastoreV1beta2::Value]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operator = args[:operator] if args.key?(:operator)
          @property = args[:property] if args.key?(:property)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The desired order for a specific property.
      class PropertyOrder
        include Google::Apis::Core::Hashable
      
        # The direction to order by. One of ascending or descending. Optional, defaults
        # to ascending.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # A reference to a property relative to the kind expressions.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::DatastoreV1beta2::PropertyReference]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direction = args[:direction] if args.key?(:direction)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A reference to a property relative to the kind expressions.
      class PropertyReference
        include Google::Apis::Core::Hashable
      
        # The name of the property.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A query.
      class Query
        include Google::Apis::Core::Hashable
      
        # An ending point for the query results. Optional. Query cursors are returned in
        # query result batches.
        # Corresponds to the JSON property `endCursor`
        # @return [String]
        attr_accessor :end_cursor
      
        # A holder for any type of filter. Exactly one field should be specified.
        # Corresponds to the JSON property `filter`
        # @return [Google::Apis::DatastoreV1beta2::Filter]
        attr_accessor :filter
      
        # The properties to group by (if empty, no grouping is applied to the result set)
        # .
        # Corresponds to the JSON property `groupBy`
        # @return [Array<Google::Apis::DatastoreV1beta2::PropertyReference>]
        attr_accessor :group_by
      
        # The kinds to query (if empty, returns entities from all kinds).
        # Corresponds to the JSON property `kinds`
        # @return [Array<Google::Apis::DatastoreV1beta2::KindExpression>]
        attr_accessor :kinds
      
        # The maximum number of results to return. Applies after all other constraints.
        # Optional.
        # Corresponds to the JSON property `limit`
        # @return [Fixnum]
        attr_accessor :limit
      
        # The number of results to skip. Applies before limit, but after all other
        # constraints (optional, defaults to 0).
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The order to apply to the query results (if empty, order is unspecified).
        # Corresponds to the JSON property `order`
        # @return [Array<Google::Apis::DatastoreV1beta2::PropertyOrder>]
        attr_accessor :order
      
        # The projection to return. If not set the entire entity is returned.
        # Corresponds to the JSON property `projection`
        # @return [Array<Google::Apis::DatastoreV1beta2::PropertyExpression>]
        attr_accessor :projection
      
        # A starting point for the query results. Optional. Query cursors are returned
        # in query result batches.
        # Corresponds to the JSON property `startCursor`
        # @return [String]
        attr_accessor :start_cursor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_cursor = args[:end_cursor] if args.key?(:end_cursor)
          @filter = args[:filter] if args.key?(:filter)
          @group_by = args[:group_by] if args.key?(:group_by)
          @kinds = args[:kinds] if args.key?(:kinds)
          @limit = args[:limit] if args.key?(:limit)
          @offset = args[:offset] if args.key?(:offset)
          @order = args[:order] if args.key?(:order)
          @projection = args[:projection] if args.key?(:projection)
          @start_cursor = args[:start_cursor] if args.key?(:start_cursor)
        end
      end
      
      # A batch of results produced by a query.
      class QueryResultBatch
        include Google::Apis::Core::Hashable
      
        # A cursor that points to the position after the last result in the batch. May
        # be absent. TODO(arfuller): Once all plans produce cursors update documentation
        # here.
        # Corresponds to the JSON property `endCursor`
        # @return [String]
        attr_accessor :end_cursor
      
        # The result type for every entity in entityResults. full for full entities,
        # projection for entities with only projected properties, keyOnly for entities
        # with only a key.
        # Corresponds to the JSON property `entityResultType`
        # @return [String]
        attr_accessor :entity_result_type
      
        # The results for this batch.
        # Corresponds to the JSON property `entityResults`
        # @return [Array<Google::Apis::DatastoreV1beta2::EntityResult>]
        attr_accessor :entity_results
      
        # The state of the query after the current batch. One of notFinished,
        # moreResultsAfterLimit, noMoreResults.
        # Corresponds to the JSON property `moreResults`
        # @return [String]
        attr_accessor :more_results
      
        # The number of results skipped because of Query.offset.
        # Corresponds to the JSON property `skippedResults`
        # @return [Fixnum]
        attr_accessor :skipped_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_cursor = args[:end_cursor] if args.key?(:end_cursor)
          @entity_result_type = args[:entity_result_type] if args.key?(:entity_result_type)
          @entity_results = args[:entity_results] if args.key?(:entity_results)
          @more_results = args[:more_results] if args.key?(:more_results)
          @skipped_results = args[:skipped_results] if args.key?(:skipped_results)
        end
      end
      
      # 
      class ReadOptions
        include Google::Apis::Core::Hashable
      
        # The read consistency to use. One of default, strong, or eventual. Cannot be
        # set when transaction is set. Lookup and ancestor queries default to strong,
        # global queries default to eventual and cannot be set to strong. Optional.
        # Default is default.
        # Corresponds to the JSON property `readConsistency`
        # @return [String]
        attr_accessor :read_consistency
      
        # The transaction to use. Optional.
        # Corresponds to the JSON property `transaction`
        # @return [String]
        attr_accessor :transaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_consistency = args[:read_consistency] if args.key?(:read_consistency)
          @transaction = args[:transaction] if args.key?(:transaction)
        end
      end
      
      # 
      class ResponseHeader
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "datastore#
        # responseHeader".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class RollbackRequest
        include Google::Apis::Core::Hashable
      
        # The transaction identifier, returned by a call to beginTransaction.
        # Corresponds to the JSON property `transaction`
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
      
      # 
      class RollbackResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DatastoreV1beta2::ResponseHeader]
        attr_accessor :header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
        end
      end
      
      # 
      class RunQueryRequest
        include Google::Apis::Core::Hashable
      
        # A GQL query.
        # Corresponds to the JSON property `gqlQuery`
        # @return [Google::Apis::DatastoreV1beta2::GqlQuery]
        attr_accessor :gql_query
      
        # An identifier for a particular subset of entities.
        # Entities are partitioned into various subsets, each used by different datasets
        # and different namespaces within a dataset and so forth.
        # Corresponds to the JSON property `partitionId`
        # @return [Google::Apis::DatastoreV1beta2::PartitionId]
        attr_accessor :partition_id
      
        # A query.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DatastoreV1beta2::Query]
        attr_accessor :query
      
        # The options for this query.
        # Corresponds to the JSON property `readOptions`
        # @return [Google::Apis::DatastoreV1beta2::ReadOptions]
        attr_accessor :read_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gql_query = args[:gql_query] if args.key?(:gql_query)
          @partition_id = args[:partition_id] if args.key?(:partition_id)
          @query = args[:query] if args.key?(:query)
          @read_options = args[:read_options] if args.key?(:read_options)
        end
      end
      
      # 
      class RunQueryResponse
        include Google::Apis::Core::Hashable
      
        # A batch of results produced by a query.
        # Corresponds to the JSON property `batch`
        # @return [Google::Apis::DatastoreV1beta2::QueryResultBatch]
        attr_accessor :batch
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DatastoreV1beta2::ResponseHeader]
        attr_accessor :header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch = args[:batch] if args.key?(:batch)
          @header = args[:header] if args.key?(:header)
        end
      end
      
      # A message that can hold any of the supported value types and associated
      # metadata.
      class Value
        include Google::Apis::Core::Hashable
      
        # A blob key value.
        # Corresponds to the JSON property `blobKeyValue`
        # @return [String]
        attr_accessor :blob_key_value
      
        # A blob value. May be a maximum of 1,000,000 bytes. When indexed is true, may
        # have at most 500 bytes.
        # Corresponds to the JSON property `blobValue`
        # @return [String]
        attr_accessor :blob_value
      
        # A boolean value.
        # Corresponds to the JSON property `booleanValue`
        # @return [Boolean]
        attr_accessor :boolean_value
        alias_method :boolean_value?, :boolean_value
      
        # A timestamp value.
        # Corresponds to the JSON property `dateTimeValue`
        # @return [DateTime]
        attr_accessor :date_time_value
      
        # A double value.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # An entity.
        # Corresponds to the JSON property `entityValue`
        # @return [Google::Apis::DatastoreV1beta2::Entity]
        attr_accessor :entity_value
      
        # If the value should be indexed.
        # The indexed property may be set for a null value. When indexed is true,
        # stringValue is limited to 500 characters and the blob value is limited to 500
        # bytes. Input values by default have indexed set to true; however, you can
        # explicitly set indexed to true if you want. (An output value never has indexed
        # explicitly set to true.) If a value is itself an entity, it cannot have
        # indexed set to true.
        # Corresponds to the JSON property `indexed`
        # @return [Boolean]
        attr_accessor :indexed
        alias_method :indexed?, :indexed
      
        # An integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [String]
        attr_accessor :integer_value
      
        # A unique identifier for an entity.
        # Corresponds to the JSON property `keyValue`
        # @return [Google::Apis::DatastoreV1beta2::Key]
        attr_accessor :key_value
      
        # A list value. Cannot contain another list value. A Value instance that sets
        # field list_value must not set field meaning or field indexed.
        # Corresponds to the JSON property `listValue`
        # @return [Array<Google::Apis::DatastoreV1beta2::Value>]
        attr_accessor :list_value
      
        # The meaning field is reserved and should not be used.
        # Corresponds to the JSON property `meaning`
        # @return [Fixnum]
        attr_accessor :meaning
      
        # A UTF-8 encoded string value. When indexed is true, may have at most 500
        # characters.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blob_key_value = args[:blob_key_value] if args.key?(:blob_key_value)
          @blob_value = args[:blob_value] if args.key?(:blob_value)
          @boolean_value = args[:boolean_value] if args.key?(:boolean_value)
          @date_time_value = args[:date_time_value] if args.key?(:date_time_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @entity_value = args[:entity_value] if args.key?(:entity_value)
          @indexed = args[:indexed] if args.key?(:indexed)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @key_value = args[:key_value] if args.key?(:key_value)
          @list_value = args[:list_value] if args.key?(:list_value)
          @meaning = args[:meaning] if args.key?(:meaning)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
    end
  end
end
