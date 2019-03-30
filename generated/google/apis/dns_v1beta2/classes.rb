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
      
      # 
      class Change
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `additions`
        # @return [Array<Google::Apis::DnsV1beta2::ResourceRecordSet>]
        attr_accessor :additions
      
        # 
        # Corresponds to the JSON property `deletions`
        # @return [Array<Google::Apis::DnsV1beta2::ResourceRecordSet>]
        attr_accessor :deletions
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `isServing`
        # @return [Boolean]
        attr_accessor :is_serving
        alias_method :is_serving?, :is_serving
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#change".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
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
      
      # 
      class ChangesListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::DnsV1beta2::Change>]
        attr_accessor :changes
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
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
      
      # 
      class DnsKey
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # 
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `digests`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKeyDigest>]
        attr_accessor :digests
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # 
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # 
        # Corresponds to the JSON property `keyTag`
        # @return [Fixnum]
        attr_accessor :key_tag
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#dnsKey".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # 
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
      
        # 
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # 
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
      
      # 
      class DnsKeySpec
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # 
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # 
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
      
      # 
      class DnsKeysListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dnsKeys`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKey>]
        attr_accessor :dns_keys
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
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
      
      # 
      class ManagedZone
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # 
        # Corresponds to the JSON property `dnssecConfig`
        # @return [Google::Apis::DnsV1beta2::ManagedZoneDnsSecConfig]
        attr_accessor :dnssec_config
      
        # 
        # Corresponds to the JSON property `forwardingConfig`
        # @return [Google::Apis::DnsV1beta2::ManagedZoneForwardingConfig]
        attr_accessor :forwarding_config
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZone".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `nameServerSet`
        # @return [String]
        attr_accessor :name_server_set
      
        # 
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        # 
        # Corresponds to the JSON property `peeringConfig`
        # @return [Google::Apis::DnsV1beta2::ManagedZonePeeringConfig]
        attr_accessor :peering_config
      
        # 
        # Corresponds to the JSON property `privateVisibilityConfig`
        # @return [Google::Apis::DnsV1beta2::ManagedZonePrivateVisibilityConfig]
        attr_accessor :private_visibility_config
      
        # 
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dnssec_config = args[:dnssec_config] if args.key?(:dnssec_config)
          @forwarding_config = args[:forwarding_config] if args.key?(:forwarding_config)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @name_server_set = args[:name_server_set] if args.key?(:name_server_set)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
          @peering_config = args[:peering_config] if args.key?(:peering_config)
          @private_visibility_config = args[:private_visibility_config] if args.key?(:private_visibility_config)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # 
      class ManagedZoneDnsSecConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `defaultKeySpecs`
        # @return [Array<Google::Apis::DnsV1beta2::DnsKeySpec>]
        attr_accessor :default_key_specs
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZoneDnsSecConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nonExistence`
        # @return [String]
        attr_accessor :non_existence
      
        # 
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
      class ManagedZoneForwardingConfig
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZoneForwardingConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `targetNameServers`
        # @return [Array<Google::Apis::DnsV1beta2::ManagedZoneForwardingConfigNameServerTarget>]
        attr_accessor :target_name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @target_name_servers = args[:target_name_servers] if args.key?(:target_name_servers)
        end
      end
      
      # 
      class ManagedZoneForwardingConfigNameServerTarget
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipv4Address`
        # @return [String]
        attr_accessor :ipv4_address
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZoneForwardingConfigNameServerTarget".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ipv4_address = args[:ipv4_address] if args.key?(:ipv4_address)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ManagedZoneOperationsListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
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
      class ManagedZonePeeringConfig
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZonePeeringConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `targetNetwork`
        # @return [Google::Apis::DnsV1beta2::ManagedZonePeeringConfigTargetNetwork]
        attr_accessor :target_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @target_network = args[:target_network] if args.key?(:target_network)
        end
      end
      
      # 
      class ManagedZonePeeringConfigTargetNetwork
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `deactivateTime`
        # @return [String]
        attr_accessor :deactivate_time
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZonePeeringConfigTargetNetwork".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deactivate_time = args[:deactivate_time] if args.key?(:deactivate_time)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # 
      class ManagedZonePrivateVisibilityConfig
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZonePrivateVisibilityConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::DnsV1beta2::ManagedZonePrivateVisibilityConfigNetwork>]
        attr_accessor :networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @networks = args[:networks] if args.key?(:networks)
        end
      end
      
      # 
      class ManagedZonePrivateVisibilityConfigNetwork
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # managedZonePrivateVisibilityConfigNetwork".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # 
      class ManagedZonesListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `managedZones`
        # @return [Array<Google::Apis::DnsV1beta2::ManagedZone>]
        attr_accessor :managed_zones
      
        # 
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
      
      # 
      class Operation
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dnsKeyContext`
        # @return [Google::Apis::DnsV1beta2::OperationDnsKeyContext]
        attr_accessor :dns_key_context
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # operation".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # 
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # 
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # 
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # 
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
      
        # 
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DnsV1beta2::DnsKey]
        attr_accessor :new_value
      
        # 
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
      
        # 
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DnsV1beta2::ManagedZone]
        attr_accessor :new_value
      
        # 
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
      
      # 
      class PoliciesListResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::DnsV1beta2::Policy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # 
      class PoliciesPatchResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # 
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DnsV1beta2::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # 
      class PoliciesUpdateResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # 
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DnsV1beta2::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # 
      class Policy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `alternativeNameServerConfig`
        # @return [Google::Apis::DnsV1beta2::PolicyAlternativeNameServerConfig]
        attr_accessor :alternative_name_server_config
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # 
        # Corresponds to the JSON property `enableInboundForwarding`
        # @return [Boolean]
        attr_accessor :enable_inbound_forwarding
        alias_method :enable_inbound_forwarding?, :enable_inbound_forwarding
      
        # 
        # Corresponds to the JSON property `enableLogging`
        # @return [Boolean]
        attr_accessor :enable_logging
        alias_method :enable_logging?, :enable_logging
      
        # 
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#policy".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::DnsV1beta2::PolicyNetwork>]
        attr_accessor :networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_name_server_config = args[:alternative_name_server_config] if args.key?(:alternative_name_server_config)
          @description = args[:description] if args.key?(:description)
          @enable_inbound_forwarding = args[:enable_inbound_forwarding] if args.key?(:enable_inbound_forwarding)
          @enable_logging = args[:enable_logging] if args.key?(:enable_logging)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
        end
      end
      
      # 
      class PolicyAlternativeNameServerConfig
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # policyAlternativeNameServerConfig".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `targetNameServers`
        # @return [Array<Google::Apis::DnsV1beta2::PolicyAlternativeNameServerConfigTargetNameServer>]
        attr_accessor :target_name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @target_name_servers = args[:target_name_servers] if args.key?(:target_name_servers)
        end
      end
      
      # 
      class PolicyAlternativeNameServerConfigTargetNameServer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `ipv4Address`
        # @return [String]
        attr_accessor :ipv4_address
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # policyAlternativeNameServerConfigTargetNameServer".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ipv4_address = args[:ipv4_address] if args.key?(:ipv4_address)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class PolicyNetwork
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # policyNetwork".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # 
      class Project
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#project"
        # .
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # 
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
      
      # 
      class Quota
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dnsKeysPerManagedZone`
        # @return [Fixnum]
        attr_accessor :dns_keys_per_managed_zone
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#quota".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `managedZones`
        # @return [Fixnum]
        attr_accessor :managed_zones
      
        # 
        # Corresponds to the JSON property `managedZonesPerNetwork`
        # @return [Fixnum]
        attr_accessor :managed_zones_per_network
      
        # 
        # Corresponds to the JSON property `networksPerManagedZone`
        # @return [Fixnum]
        attr_accessor :networks_per_managed_zone
      
        # 
        # Corresponds to the JSON property `networksPerPolicy`
        # @return [Fixnum]
        attr_accessor :networks_per_policy
      
        # 
        # Corresponds to the JSON property `policies`
        # @return [Fixnum]
        attr_accessor :policies
      
        # 
        # Corresponds to the JSON property `resourceRecordsPerRrset`
        # @return [Fixnum]
        attr_accessor :resource_records_per_rrset
      
        # 
        # Corresponds to the JSON property `rrsetAdditionsPerChange`
        # @return [Fixnum]
        attr_accessor :rrset_additions_per_change
      
        # 
        # Corresponds to the JSON property `rrsetDeletionsPerChange`
        # @return [Fixnum]
        attr_accessor :rrset_deletions_per_change
      
        # 
        # Corresponds to the JSON property `rrsetsPerManagedZone`
        # @return [Fixnum]
        attr_accessor :rrsets_per_managed_zone
      
        # 
        # Corresponds to the JSON property `targetNameServersPerManagedZone`
        # @return [Fixnum]
        attr_accessor :target_name_servers_per_managed_zone
      
        # 
        # Corresponds to the JSON property `targetNameServersPerPolicy`
        # @return [Fixnum]
        attr_accessor :target_name_servers_per_policy
      
        # 
        # Corresponds to the JSON property `totalRrdataSizePerChange`
        # @return [Fixnum]
        attr_accessor :total_rrdata_size_per_change
      
        # 
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
          @managed_zones_per_network = args[:managed_zones_per_network] if args.key?(:managed_zones_per_network)
          @networks_per_managed_zone = args[:networks_per_managed_zone] if args.key?(:networks_per_managed_zone)
          @networks_per_policy = args[:networks_per_policy] if args.key?(:networks_per_policy)
          @policies = args[:policies] if args.key?(:policies)
          @resource_records_per_rrset = args[:resource_records_per_rrset] if args.key?(:resource_records_per_rrset)
          @rrset_additions_per_change = args[:rrset_additions_per_change] if args.key?(:rrset_additions_per_change)
          @rrset_deletions_per_change = args[:rrset_deletions_per_change] if args.key?(:rrset_deletions_per_change)
          @rrsets_per_managed_zone = args[:rrsets_per_managed_zone] if args.key?(:rrsets_per_managed_zone)
          @target_name_servers_per_managed_zone = args[:target_name_servers_per_managed_zone] if args.key?(:target_name_servers_per_managed_zone)
          @target_name_servers_per_policy = args[:target_name_servers_per_policy] if args.key?(:target_name_servers_per_policy)
          @total_rrdata_size_per_change = args[:total_rrdata_size_per_change] if args.key?(:total_rrdata_size_per_change)
          @whitelisted_key_specs = args[:whitelisted_key_specs] if args.key?(:whitelisted_key_specs)
        end
      end
      
      # 
      class ResourceRecordSet
        include Google::Apis::Core::Hashable
      
        # Identifies what kind of resource this is. Value: the fixed string "dns#
        # resourceRecordSet".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `rrdatas`
        # @return [Array<String>]
        attr_accessor :rrdatas
      
        # 
        # Corresponds to the JSON property `signatureRrdatas`
        # @return [Array<String>]
        attr_accessor :signature_rrdatas
      
        # 
        # Corresponds to the JSON property `ttl`
        # @return [Fixnum]
        attr_accessor :ttl
      
        # 
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
      
        # 
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1beta2::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # 
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
      
      # 
      class ResponseHeader
        include Google::Apis::Core::Hashable
      
        # 
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
