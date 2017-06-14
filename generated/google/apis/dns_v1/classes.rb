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
    module DnsV1
      
      # An atomic update to a collection of ResourceRecordSets.
      class Change
        include Google::Apis::Core::Hashable
      
        # Which ResourceRecordSets to add?
        # Corresponds to the JSON property `additions`
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :additions
      
        # Which ResourceRecordSets to remove? Must match existing data exactly.
        # Corresponds to the JSON property `deletions`
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :deletions
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
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
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The response to a request to enumerate Changes to a ResourceRecordSets
      # collection.
      class ListChangesResponse
        include Google::Apis::Core::Hashable
      
        # The requested changes.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::DnsV1::Change>]
        attr_accessor :changes
      
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
      
        # Unique identifier for the resource; defined by the server (output only)
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZone".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
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
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @name_server_set = args[:name_server_set] if args.key?(:name_server_set)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
        end
      end
      
      # 
      class ListManagedZonesResponse
        include Google::Apis::Core::Hashable
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The managed zone resources.
        # Corresponds to the JSON property `managedZones`
        # @return [Array<Google::Apis::DnsV1::ManagedZone>]
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
          @kind = args[:kind] if args.key?(:kind)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Google::Apis::DnsV1::Quota]
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
          @resource_records_per_rrset = args[:resource_records_per_rrset] if args.key?(:resource_records_per_rrset)
          @rrset_additions_per_change = args[:rrset_additions_per_change] if args.key?(:rrset_additions_per_change)
          @rrset_deletions_per_change = args[:rrset_deletions_per_change] if args.key?(:rrset_deletions_per_change)
          @rrsets_per_managed_zone = args[:rrsets_per_managed_zone] if args.key?(:rrsets_per_managed_zone)
          @total_rrdata_size_per_change = args[:total_rrdata_size_per_change] if args.key?(:total_rrdata_size_per_change)
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
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ListResourceRecordSetsResponse
        include Google::Apis::Core::Hashable
      
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
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :rrsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rrsets = args[:rrsets] if args.key?(:rrsets)
        end
      end
    end
  end
end
