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
    module DnsV1beta2
      
      # An atomic update to a collection of ResourceRecordSets.
      class Change
        include Google::Apis::Core::Hashable
      
        # Which ResourceRecordSets to add?
        # Corresponds to the JSON property `additions`
        # @return [Array<Google::Apis::DnsV1beta2::ResourceRecordSet>]
        attr_accessor :additions
      
        # Which ResourceRecordSets to remove? Must match existing data exactly.
        # Corresponds to the JSON property `deletions`
        # @return [Array<Google::Apis::DnsV1beta2::ResourceRecordSet>]
        attr_accessor :deletions
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # If the DNS queries for the zone will be served.
        # Corresponds to the JSON property `isServing`
        # @return [Boolean]
        attr_accessor :is_serving
        alias_method :is_serving?, :is_serving
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#change".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time that this operation was started by the server (output only). This is
        # in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Status of the operation (output only).
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additions = args[:additions] if args.key?(:additions)
          @deletions = args[:deletions] if args.key?(:deletions)
          @id = args[:id] if args.key?(:id)
          @is_serving = args[:is_serving] if args.key?(:is_serving)
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The response to a request to enumerate Changes to a ResourceRecordSets
      # collection.
      class ChangesListResponse
        include Google::Apis::Core::Hashable
      
        # The requested changes.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::DnsV1beta2::Change>]
        attr_accessor :changes
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your pagination token.
        # In this way you can retrieve the complete contents of even very large
        # collections one page at a time. However, if the contents of the collection
        # change between the first and last paginated list request, the set of all
        # elements returned will be an inconsistent view of the collection. There is no
        # way to retrieve a "snapshot" of collections larger than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changes = args[:changes] if args.key?(:changes)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A DNSSEC key pair.
      class DnsKey
        include Google::Apis::Core::Hashable
      
        # String mnemonic specifying the DNSSEC algorithm of this key. Immutable after
        # creation time.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # The time that this resource was created in the control plane. This is in
        # RFC3339 text format. Output only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # A mutable string of at most 1024 characters associated with this resource for
        # the user's convenience. Has no effect on the resource's function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Cryptographic hashes of the DNSKEY resource record associated with this DnsKey.
        # These digests are needed to construct a DS record that points at this DNS key.
        # Output only.
        # Corresponds to the JSON property `digests`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKeyDigest>]
        attr_accessor :digests
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Active keys will be used to sign subsequent changes to the ManagedZone.
        # Inactive keys will still be present as DNSKEY Resource Records for the use of
        # resolvers validating existing signatures.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # Length of the key in bits. Specified at creation time then immutable.
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # The key tag is a non-cryptographic hash of the a DNSKEY resource record
        # associated with this DnsKey. The key tag can be used to identify a DNSKEY more
        # quickly (but it is not a unique identifier). In particular, the key tag is
        # used in a parent zone's DS record to point at the DNSKEY in this child
        # ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm
        # to calculate it is specified in RFC4034 Appendix B. Output only.
        # Corresponds to the JSON property `keyTag`
        # @return [Fixnum]
        attr_accessor :key_tag
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#dnsKey".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Base64 encoded public half of this key. Output only.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # One of "KEY_SIGNING" or "ZONE_SIGNING". Keys of type KEY_SIGNING have the
        # Secure Entry Point flag set and, when active, will be used to sign only
        # resource record sets of type DNSKEY. Otherwise, the Secure Entry Point flag
        # will be cleared and this key will be used to sign only resource record sets of
        # other types. Immutable after creation time.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @digests = args[:digests] if args.key?(:digests)
          @id = args[:id] if args.key?(:id)
          @is_active = args[:is_active] if args.key?(:is_active)
          @key_length = args[:key_length] if args.key?(:key_length)
          @key_tag = args[:key_tag] if args.key?(:key_tag)
          @kind = args[:kind] if args.key?(:kind)
          @public_key = args[:public_key] if args.key?(:public_key)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class DnsKeyDigest
        include Google::Apis::Core::Hashable
      
        # The base-16 encoded bytes of this digest. Suitable for use in a DS resource
        # record.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # Specifies the algorithm used to calculate this digest.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parameters for DnsKey key generation. Used for generating initial keys for a
      # new ManagedZone and as default when adding a new DnsKey.
      class DnsKeySpec
        include Google::Apis::Core::Hashable
      
        # String mnemonic specifying the DNSSEC algorithm of this key.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Length of the keys in bits.
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # One of "KEY_SIGNING" or "ZONE_SIGNING". Keys of type KEY_SIGNING have the
        # Secure Entry Point flag set and, when active, will be used to sign only
        # resource record sets of type DNSKEY. Otherwise, the Secure Entry Point flag
        # will be cleared and this key will be used to sign only resource record sets of
        # other types.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # dnsKeySpec".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @key_length = args[:key_length] if args.key?(:key_length)
          @key_type = args[:key_type] if args.key?(:key_type)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The response to a request to enumerate DnsKeys in a ManagedZone.
      class DnsKeysListResponse
        include Google::Apis::Core::Hashable
      
        # The requested resources.
        # Corresponds to the JSON property `dnsKeys`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKey>]
        attr_accessor :dns_keys
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your pagination token.
        # In this way you can retrieve the complete contents of even very large
        # collections one page at a time. However, if the contents of the collection
        # change between the first and last paginated list request, the set of all
        # elements returned will be an inconsistent view of the collection. There is no
        # way to retrieve a "snapshot" of collections larger than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_keys = args[:dns_keys] if args.key?(:dns_keys)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A zone is a subtree of the DNS namespace under one administrative
      # responsibility. A ManagedZone is a resource that represents a DNS zone hosted
      # by the Cloud DNS service.
      class ManagedZone
        include Google::Apis::Core::Hashable
      
        # The time that this resource was created on the server. This is in RFC3339 text
        # format. Output only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # A mutable string of at most 1024 characters associated with this resource for
        # the user's convenience. Has no effect on the managed zone's function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The DNS name of this managed zone, for instance "example.com.".
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # DNSSEC configuration.
        # Corresponds to the JSON property `dnssecConfig`
        # @return [Google::Apis::DnsV1beta2::ManagedZoneDnsSecConfig]
        attr_accessor :dnssec_config
      
        # Unique identifier for the resource; defined by the server (output only)
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZone".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # User assigned name for this resource. Must be unique within the project. The
        # name must be 1-63 characters long, must begin with a letter, end with a letter
        # or digit, and only contain lowercase letters, digits or dashes.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet
        # is a set of DNS name servers that all host the same ManagedZones. Most users
        # will leave this field unset.
        # Corresponds to the JSON property `nameServerSet`
        # @return [String]
        attr_accessor :name_server_set
      
        # Delegate your managed_zone to these virtual name servers; defined by the
        # server (output only)
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dnssec_config = args[:dnssec_config] if args.key?(:dnssec_config)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @name_server_set = args[:name_server_set] if args.key?(:name_server_set)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
        end
      end
      
      # 
      class ManagedZoneDnsSecConfig
        include Google::Apis::Core::Hashable
      
        # Specifies parameters that will be used for generating initial DnsKeys for this
        # ManagedZone. Output only while state is not OFF.
        # Corresponds to the JSON property `defaultKeySpecs`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKeySpec>]
        attr_accessor :default_key_specs
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZoneDnsSecConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Specifies the mechanism used to provide authenticated denial-of-existence
        # responses. Output only while state is not OFF.
        # Corresponds to the JSON property `nonExistence`
        # @return [String]
        attr_accessor :non_existence
      
        # Specifies whether DNSSEC is enabled, and what mode it is in.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_key_specs = args[:default_key_specs] if args.key?(:default_key_specs)
          @kind = args[:kind] if args.key?(:kind)
          @non_existence = args[:non_existence] if args.key?(:non_existence)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class ManagedZoneOperationsListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your page token.
        # In this way you can retrieve the complete contents of even very large
        # collections one page at a time. However, if the contents of the collection
        # change between the first and last paginated list request, the set of all
        # elements returned will be an inconsistent view of the collection. There is no
        # way to retrieve a consistent snapshot of a collection larger than the maximum
        # page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The operation resources.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DnsV1beta2::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # 
      class ManagedZonesListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The managed zone resources.
        # Corresponds to the JSON property `managedZones`
        # @return [Array<Google::Apis::DnsV1beta2::ManagedZone>]
        attr_accessor :managed_zones
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your page token.
        # In this way you can retrieve the complete contents of even very large
        # collections one page at a time. However, if the contents of the collection
        # change between the first and last paginated list request, the set of all
        # elements returned will be an inconsistent view of the collection. There is no
        # way to retrieve a consistent snapshot of a collection larger than the maximum
        # page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An operation represents a successful mutation performed on a Cloud DNS
      # resource. Operations provide: - An audit log of server resource mutations. - A
      # way to recover/retry API calls in the case where the response is never
      # received by the caller. Use the caller specified client_operation_id.
      class Operation
        include Google::Apis::Core::Hashable
      
        # Only populated if the operation targeted a DnsKey (output only).
        # Corresponds to the JSON property `dnsKeyContext`
        # @return [Google::Apis::DnsV1beta2::OperationDnsKeyContext]
        attr_accessor :dns_key_context
      
        # Unique identifier for the resource. This is the client_operation_id if the
        # client specified it when the mutation was initiated, otherwise, it is
        # generated by the server. The name must be 1-63 characters long and match the
        # regular expression [-a-z0-9]? (output only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # operation".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time that this operation was started by the server. This is in RFC3339
        # text format (output only).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Status of the operation. Can be one of the following: "PENDING" or "DONE" (
        # output only).
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of the operation. Operations include insert, update, and delete (output
        # only).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # User who requested the operation, for example: user@example.com. cloud-dns-
        # system for operations automatically done by the system. (output only)
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Only populated if the operation targeted a ManagedZone (output only).
        # Corresponds to the JSON property `zoneContext`
        # @return [Google::Apis::DnsV1beta2::OperationManagedZoneContext]
        attr_accessor :zone_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_key_context = args[:dns_key_context] if args.key?(:dns_key_context)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @user = args[:user] if args.key?(:user)
          @zone_context = args[:zone_context] if args.key?(:zone_context)
        end
      end
      
      # 
      class OperationDnsKeyContext
        include Google::Apis::Core::Hashable
      
        # A DNSSEC key pair.
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DnsV1beta2::DnsKey]
        attr_accessor :new_value
      
        # A DNSSEC key pair.
        # Corresponds to the JSON property `oldValue`
        # @return [Google::Apis::DnsV1beta2::DnsKey]
        attr_accessor :old_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
        end
      end
      
      # 
      class OperationManagedZoneContext
        include Google::Apis::Core::Hashable
      
        # A zone is a subtree of the DNS namespace under one administrative
        # responsibility. A ManagedZone is a resource that represents a DNS zone hosted
        # by the Cloud DNS service.
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DnsV1beta2::ManagedZone]
        attr_accessor :new_value
      
        # A zone is a subtree of the DNS namespace under one administrative
        # responsibility. A ManagedZone is a resource that represents a DNS zone hosted
        # by the Cloud DNS service.
        # Corresponds to the JSON property `oldValue`
        # @return [Google::Apis::DnsV1beta2::ManagedZone]
        attr_accessor :old_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
        end
      end
      
      # A project resource. The project is a top level container for resources
      # including Cloud DNS ManagedZones. Projects can be created only in the APIs
      # console.
      class Project
        include Google::Apis::Core::Hashable
      
        # User assigned unique identifier for the resource (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#project"
        # .
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Unique numeric identifier for the resource; defined by the server (output only)
        # .
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # Limits associated with a Project.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::DnsV1beta2::Quota]
        attr_accessor :quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @number = args[:number] if args.key?(:number)
          @quota = args[:quota] if args.key?(:quota)
        end
      end
      
      # Limits associated with a Project.
      class Quota
        include Google::Apis::Core::Hashable
      
        # Maximum allowed number of DnsKeys per ManagedZone.
        # Corresponds to the JSON property `dnsKeysPerManagedZone`
        # @return [Fixnum]
        attr_accessor :dns_keys_per_managed_zone
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#quota".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Maximum allowed number of managed zones in the project.
        # Corresponds to the JSON property `managedZones`
        # @return [Fixnum]
        attr_accessor :managed_zones
      
        # Maximum allowed number of ResourceRecords per ResourceRecordSet.
        # Corresponds to the JSON property `resourceRecordsPerRrset`
        # @return [Fixnum]
        attr_accessor :resource_records_per_rrset
      
        # Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest.
        # Corresponds to the JSON property `rrsetAdditionsPerChange`
        # @return [Fixnum]
        attr_accessor :rrset_additions_per_change
      
        # Maximum allowed number of ResourceRecordSets to delete per
        # ChangesCreateRequest.
        # Corresponds to the JSON property `rrsetDeletionsPerChange`
        # @return [Fixnum]
        attr_accessor :rrset_deletions_per_change
      
        # Maximum allowed number of ResourceRecordSets per zone in the project.
        # Corresponds to the JSON property `rrsetsPerManagedZone`
        # @return [Fixnum]
        attr_accessor :rrsets_per_managed_zone
      
        # Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes.
        # Corresponds to the JSON property `totalRrdataSizePerChange`
        # @return [Fixnum]
        attr_accessor :total_rrdata_size_per_change
      
        # DNSSEC algorithm and key length types that can be used for DnsKeys.
        # Corresponds to the JSON property `whitelistedKeySpecs`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKeySpec>]
        attr_accessor :whitelisted_key_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_keys_per_managed_zone = args[:dns_keys_per_managed_zone] if args.key?(:dns_keys_per_managed_zone)
          @kind = args[:kind] if args.key?(:kind)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
          @resource_records_per_rrset = args[:resource_records_per_rrset] if args.key?(:resource_records_per_rrset)
          @rrset_additions_per_change = args[:rrset_additions_per_change] if args.key?(:rrset_additions_per_change)
          @rrset_deletions_per_change = args[:rrset_deletions_per_change] if args.key?(:rrset_deletions_per_change)
          @rrsets_per_managed_zone = args[:rrsets_per_managed_zone] if args.key?(:rrsets_per_managed_zone)
          @total_rrdata_size_per_change = args[:total_rrdata_size_per_change] if args.key?(:total_rrdata_size_per_change)
          @whitelisted_key_specs = args[:whitelisted_key_specs] if args.key?(:whitelisted_key_specs)
        end
      end
      
      # A unit of data that will be returned by the DNS servers.
      class ResourceRecordSet
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # resourceRecordSet".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # For example, www.example.com.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).
        # Corresponds to the JSON property `rrdatas`
        # @return [Array<String>]
        attr_accessor :rrdatas
      
        # As defined in RFC 4034 (section 3.2).
        # Corresponds to the JSON property `signatureRrdatas`
        # @return [Array<String>]
        attr_accessor :signature_rrdatas
      
        # Number of seconds that this ResourceRecordSet can be cached by resolvers.
        # Corresponds to the JSON property `ttl`
        # @return [Fixnum]
        attr_accessor :ttl
      
        # The identifier of a supported record type, for example, A, AAAA, MX, TXT, and
        # so on.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @rrdatas = args[:rrdatas] if args.key?(:rrdatas)
          @signature_rrdatas = args[:signature_rrdatas] if args.key?(:signature_rrdatas)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ResourceRecordSetsListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your pagination token.
        # In this way you can retrieve the complete contents of even very large
        # collections one page at a time. However, if the contents of the collection
        # change between the first and last paginated list request, the set of all
        # elements returned will be an inconsistent view of the collection. There is no
        # way to retrieve a consistent snapshot of a collection larger than the maximum
        # page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resource record set resources.
        # Corresponds to the JSON property `rrsets`
        # @return [Array<Google::Apis::DnsV1beta2::ResourceRecordSet>]
        attr_accessor :rrsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rrsets = args[:rrsets] if args.key?(:rrsets)
        end
      end
      
      # Elements common to every response.
      class ResponseHeader
        include Google::Apis::Core::Hashable
      
        # For mutating operation requests that completed successfully. This is the
        # client_operation_id if the client specified it, otherwise it is generated by
        # the server (output only).
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
    end
  end
end
