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
    module ComputeV1
      
      # A specification of the type and number of accelerator cards attached to the
      # instance.
      class AcceleratorConfig
        include Google::Apis::Core::Hashable
      
        # The number of the guest accelerator cards exposed to this instance.
        # Corresponds to the JSON property `acceleratorCount`
        # @return [Fixnum]
        attr_accessor :accelerator_count
      
        # Full or partial URL of the accelerator type resource to attach to this
        # instance. If you are creating an instance template, specify only the
        # accelerator name.
        # Corresponds to the JSON property `acceleratorType`
        # @return [String]
        attr_accessor :accelerator_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_count = args[:accelerator_count] if args.key?(:accelerator_count)
          @accelerator_type = args[:accelerator_type] if args.key?(:accelerator_type)
        end
      end
      
      # An Accelerator Type resource. (== resource_for beta.acceleratorTypes ==) (==
      # resource_for v1.acceleratorTypes ==)
      class AcceleratorType
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The type of the resource. Always compute#acceleratorType for
        # accelerator types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Maximum accelerator cards allowed per instance.
        # Corresponds to the JSON property `maximumCardsPerInstance`
        # @return [Fixnum]
        attr_accessor :maximum_cards_per_instance
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The name of the zone where the accelerator type resides, such as
        # us-central1-a. You must specify this field as part of the HTTP request URL. It
        # is not settable as a field in the request body.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @maximum_cards_per_instance = args[:maximum_cards_per_instance] if args.key?(:maximum_cards_per_instance)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class AcceleratorTypeAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of AcceleratorTypesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::AcceleratorTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#acceleratorTypeAggregatedList
        # for aggregated lists of accelerator types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AcceleratorTypeAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AcceleratorTypeAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of accelerator types.
      class AcceleratorTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of AcceleratorType resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::AcceleratorType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#acceleratorTypeList for lists
        # of accelerator types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AcceleratorTypeList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AcceleratorTypeList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class AcceleratorTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of accelerator types contained in this scope.
        # Corresponds to the JSON property `acceleratorTypes`
        # @return [Array<Google::Apis::ComputeV1::AcceleratorType>]
        attr_accessor :accelerator_types
      
        # [Output Only] An informational warning that appears when the accelerator types
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AcceleratorTypesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accelerator_types = args[:accelerator_types] if args.key?(:accelerator_types)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] An informational warning that appears when the accelerator types
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AcceleratorTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An access configuration attached to an instance's network interface. Only one
      # access config per instance is supported.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # [Output Only] Type of the resource. Always compute#accessConfig for access
        # configs.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of this access configuration. The default and recommended name is
        # External NAT but you can use any arbitrary string you would like. For example,
        # My external IP or Network Access.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An external IP address associated with this instance. Specify an unused static
        # external IP address available to the project or leave this field undefined to
        # use an IP from a shared ephemeral IP address pool. If you specify a static
        # external IP address, it must live in the same region as the zone of the
        # instance.
        # Corresponds to the JSON property `natIP`
        # @return [String]
        attr_accessor :nat_ip
      
        # The DNS domain name for the public PTR record. This field can only be set when
        # the set_public_ptr field is enabled.
        # Corresponds to the JSON property `publicPtrDomainName`
        # @return [String]
        attr_accessor :public_ptr_domain_name
      
        # Specifies whether a public DNS ?PTR? record should be created to map the
        # external IP address of the instance to a DNS domain name.
        # Corresponds to the JSON property `setPublicPtr`
        # @return [Boolean]
        attr_accessor :set_public_ptr
        alias_method :set_public_ptr?, :set_public_ptr
      
        # The type of configuration. The default and only option is ONE_TO_ONE_NAT.
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
          @nat_ip = args[:nat_ip] if args.key?(:nat_ip)
          @public_ptr_domain_name = args[:public_ptr_domain_name] if args.key?(:public_ptr_domain_name)
          @set_public_ptr = args[:set_public_ptr] if args.key?(:set_public_ptr)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A reserved address resource. (== resource_for beta.addresses ==) (==
      # resource_for v1.addresses ==) (== resource_for beta.globalAddresses ==) (==
      # resource_for v1.globalAddresses ==)
      class Address
        include Google::Apis::Core::Hashable
      
        # The static IP address represented by this resource.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The type of address to reserve, either INTERNAL or EXTERNAL. If unspecified,
        # defaults to EXTERNAL.
        # Corresponds to the JSON property `addressType`
        # @return [String]
        attr_accessor :address_type
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The IP Version that will be used by this address. Valid options are IPV4 or
        # IPV6. This can only be specified for a global address.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # [Output Only] Type of the resource. Always compute#address for addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the regional address resides. This field
        # is not applicable to global addresses. You must specify this field as part of
        # the HTTP request URL. You cannot set this field in the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The status of the address, which can be one of RESERVING,
        # RESERVED, or IN_USE. An address that is RESERVING is currently in the process
        # of being reserved. A RESERVED address is currently reserved and available to
        # use. An IN_USE address is currently being used by another resource and is not
        # available.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # The URL of the subnetwork in which to reserve the address. If an IP address is
        # specified, it must be within the subnetwork's IP range. This field can only be
        # used with INTERNAL type with GCE_ENDPOINT/DNS_RESOLVER purposes.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # [Output Only] The URLs of the resources that are using this address.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @address_type = args[:address_type] if args.key?(:address_type)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @users = args[:users] if args.key?(:users)
        end
      end
      
      # 
      class AddressAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of AddressesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::AddressesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#addressAggregatedList for
        # aggregated lists of addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AddressAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AddressAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of addresses.
      class AddressList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Address resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Address>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#addressList for lists of
        # addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AddressList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AddressList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class AddressesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of addresses contained in this scope.
        # Corresponds to the JSON property `addresses`
        # @return [Array<Google::Apis::ComputeV1::Address>]
        attr_accessor :addresses
      
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AddressesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AddressesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An alias IP range attached to an instance's network interface.
      class AliasIpRange
        include Google::Apis::Core::Hashable
      
        # The IP CIDR range represented by this alias IP range. This IP CIDR range must
        # belong to the specified subnetwork and cannot contain IP addresses reserved by
        # system or used by other network interfaces. This range may be a single IP
        # address (e.g. 10.2.3.4), a netmask (e.g. /24) or a CIDR format string (e.g. 10.
        # 1.2.0/24).
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # Optional subnetwork secondary range name specifying the secondary range from
        # which to allocate the IP CIDR range for this alias IP range. If left
        # unspecified, the primary range of the subnetwork will be used.
        # Corresponds to the JSON property `subnetworkRangeName`
        # @return [String]
        attr_accessor :subnetwork_range_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @subnetwork_range_name = args[:subnetwork_range_name] if args.key?(:subnetwork_range_name)
        end
      end
      
      # An instance-attached disk resource.
      class AttachedDisk
        include Google::Apis::Core::Hashable
      
        # Specifies whether the disk will be auto-deleted when the instance is deleted (
        # but not when the disk is detached from the instance).
        # Corresponds to the JSON property `autoDelete`
        # @return [Boolean]
        attr_accessor :auto_delete
        alias_method :auto_delete?, :auto_delete
      
        # Indicates that this is a boot disk. The virtual machine will use the first
        # partition of the disk for its root filesystem.
        # Corresponds to the JSON property `boot`
        # @return [Boolean]
        attr_accessor :boot
        alias_method :boot?, :boot
      
        # Specifies a unique device name of your choice that is reflected into the /dev/
        # disk/by-id/google-* tree of a Linux operating system running within the
        # instance. This name can be used to reference the device for mounting, resizing,
        # and so on, from within the instance.
        # If not specified, the server chooses a default device name to apply to this
        # disk, in the form persistent-disks-x, where x is a number assigned by Google
        # Compute Engine. This field is only applicable for persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `diskEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :disk_encryption_key
      
        # A list of features to enable on the guest operating system. Applicable only
        # for bootable images. Read  Enabling guest operating system features to see a
        # list of available options.
        # Corresponds to the JSON property `guestOsFeatures`
        # @return [Array<Google::Apis::ComputeV1::GuestOsFeature>]
        attr_accessor :guest_os_features
      
        # [Output Only] A zero-based index to this disk, where 0 is reserved for the
        # boot disk. If you have many disks attached to an instance, each disk would
        # have a unique index number.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # [Input Only] Specifies the parameters for a new disk that will be created
        # alongside the new instance. Use initialization parameters to create boot disks
        # or local SSDs attached to the new instance.
        # This property is mutually exclusive with the source property; you can only
        # define one or the other, but not both.
        # Corresponds to the JSON property `initializeParams`
        # @return [Google::Apis::ComputeV1::AttachedDiskInitializeParams]
        attr_accessor :initialize_params
      
        # Specifies the disk interface to use for attaching this disk, which is either
        # SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and
        # the request will fail if you attempt to attach a persistent disk in any other
        # format than SCSI. Local SSDs can use either NVME or SCSI. For performance
        # characteristics of SCSI over NVMe, see Local SSD performance.
        # Corresponds to the JSON property `interface`
        # @return [String]
        attr_accessor :interface
      
        # [Output Only] Type of the resource. Always compute#attachedDisk for attached
        # disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Any valid publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not
        # specified, the default is to attach the disk in READ_WRITE mode.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Specifies a valid partial or full URL to an existing Persistent Disk resource.
        # When creating a new instance, one of initializeParams.sourceImage or disks.
        # source is required except for local SSD.
        # If desired, you can also attach existing non-root persistent disks using this
        # property. This field is only applicable for persistent disks.
        # Note that for InstanceTemplate, specify the disk name, not the URL for the
        # disk.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Specifies the type of the disk, either SCRATCH or PERSISTENT. If not specified,
        # the default is PERSISTENT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_delete = args[:auto_delete] if args.key?(:auto_delete)
          @boot = args[:boot] if args.key?(:boot)
          @device_name = args[:device_name] if args.key?(:device_name)
          @disk_encryption_key = args[:disk_encryption_key] if args.key?(:disk_encryption_key)
          @guest_os_features = args[:guest_os_features] if args.key?(:guest_os_features)
          @index = args[:index] if args.key?(:index)
          @initialize_params = args[:initialize_params] if args.key?(:initialize_params)
          @interface = args[:interface] if args.key?(:interface)
          @kind = args[:kind] if args.key?(:kind)
          @licenses = args[:licenses] if args.key?(:licenses)
          @mode = args[:mode] if args.key?(:mode)
          @source = args[:source] if args.key?(:source)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # [Input Only] Specifies the parameters for a new disk that will be created
      # alongside the new instance. Use initialization parameters to create boot disks
      # or local SSDs attached to the new instance.
      # This property is mutually exclusive with the source property; you can only
      # define one or the other, but not both.
      class AttachedDiskInitializeParams
        include Google::Apis::Core::Hashable
      
        # Specifies the disk name. If not specified, the default is to use the name of
        # the instance.
        # Corresponds to the JSON property `diskName`
        # @return [String]
        attr_accessor :disk_name
      
        # Specifies the size of the disk in base-2 GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Specifies the disk type to use to create the instance. If not specified, the
        # default is pd-standard, specified using the full URL. For example:
        # https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/pd-
        # standard
        # Other values include pd-ssd and local-ssd. If you define this field, you can
        # provide either the full or partial URL. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/diskTypes/
        # diskType
        # - projects/project/zones/zone/diskTypes/diskType
        # - zones/zone/diskTypes/diskType  Note that for InstanceTemplate, this is the
        # name of the disk type, not URL.
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # Labels to apply to this disk. These can be later modified by the disks.
        # setLabels method. This field is only applicable for persistent disks.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The source image to create this disk. When creating a new instance, one of
        # initializeParams.sourceImage or disks.source is required except for local SSD.
        # To create a disk with one of the public operating system images, specify the
        # image by its family name. For example, specify family/debian-8 to use the
        # latest Debian 8 image:
        # projects/debian-cloud/global/images/family/debian-8
        # Alternatively, use a specific version of a public operating system image:
        # projects/debian-cloud/global/images/debian-8-jessie-vYYYYMMDD
        # To create a disk with a custom image that you created, specify the image name
        # in the following format:
        # global/images/my-custom-image
        # You can also specify a custom image by its image family, which returns the
        # latest version of the image in that family. Replace the image name with family/
        # family-name:
        # global/images/family/my-image-family
        # If the source image is deleted later, this field will not be set.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceImageEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_image_encryption_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_name = args[:disk_name] if args.key?(:disk_name)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @disk_type = args[:disk_type] if args.key?(:disk_type)
          @labels = args[:labels] if args.key?(:labels)
          @source_image = args[:source_image] if args.key?(:source_image)
          @source_image_encryption_key = args[:source_image_encryption_key] if args.key?(:source_image_encryption_key)
        end
      end
      
      # Represents an Autoscaler resource. Autoscalers allow you to automatically
      # scale virtual machine instances in managed instance groups according to an
      # autoscaling policy that you define. For more information, read Autoscaling
      # Groups of Instances. (== resource_for beta.autoscalers ==) (== resource_for v1.
      # autoscalers ==) (== resource_for beta.regionAutoscalers ==) (== resource_for
      # v1.regionAutoscalers ==)
      class Autoscaler
        include Google::Apis::Core::Hashable
      
        # Cloud Autoscaler policy.
        # Corresponds to the JSON property `autoscalingPolicy`
        # @return [Google::Apis::ComputeV1::AutoscalingPolicy]
        attr_accessor :autoscaling_policy
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#autoscaler for autoscalers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the instance group resides (for
        # autoscalers living in regional scope).
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The status of the autoscaler configuration.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] Human-readable details about the current state of the autoscaler.
        # Read the documentation for Commonly returned status messages for examples of
        # status messages you might encounter.
        # Corresponds to the JSON property `statusDetails`
        # @return [Array<Google::Apis::ComputeV1::AutoscalerStatusDetails>]
        attr_accessor :status_details
      
        # URL of the managed instance group that this autoscaler will scale.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # [Output Only] URL of the zone where the instance group resides (for
        # autoscalers living in zonal scope).
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_policy = args[:autoscaling_policy] if args.key?(:autoscaling_policy)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @status_details = args[:status_details] if args.key?(:status_details)
          @target = args[:target] if args.key?(:target)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class AutoscalerAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of AutoscalersScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::AutoscalersScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#autoscalerAggregatedList for
        # aggregated lists of autoscalers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AutoscalerAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AutoscalerAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Autoscaler resources.
      class AutoscalerList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Autoscaler resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Autoscaler>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#autoscalerList for lists of
        # autoscalers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AutoscalerList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AutoscalerList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class AutoscalerStatusDetails
        include Google::Apis::Core::Hashable
      
        # The status message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The type of error returned.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class AutoscalersScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of autoscalers contained in this scope.
        # Corresponds to the JSON property `autoscalers`
        # @return [Array<Google::Apis::ComputeV1::Autoscaler>]
        attr_accessor :autoscalers
      
        # [Output Only] Informational warning which replaces the list of autoscalers
        # when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::AutoscalersScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscalers = args[:autoscalers] if args.key?(:autoscalers)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of autoscalers
        # when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AutoscalersScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Cloud Autoscaler policy.
      class AutoscalingPolicy
        include Google::Apis::Core::Hashable
      
        # The number of seconds that the autoscaler should wait before it starts
        # collecting information from a new instance. This prevents the autoscaler from
        # collecting information when the instance is initializing, during which the
        # collected usage would not be reliable. The default time autoscaler waits is 60
        # seconds.
        # Virtual machine initialization times might vary because of numerous factors.
        # We recommend that you test how long an instance may take to initialize. To do
        # this, create an instance and time the startup process.
        # Corresponds to the JSON property `coolDownPeriodSec`
        # @return [Fixnum]
        attr_accessor :cool_down_period_sec
      
        # CPU utilization policy.
        # Corresponds to the JSON property `cpuUtilization`
        # @return [Google::Apis::ComputeV1::AutoscalingPolicyCpuUtilization]
        attr_accessor :cpu_utilization
      
        # Configuration parameters of autoscaling based on a custom metric.
        # Corresponds to the JSON property `customMetricUtilizations`
        # @return [Array<Google::Apis::ComputeV1::AutoscalingPolicyCustomMetricUtilization>]
        attr_accessor :custom_metric_utilizations
      
        # Configuration parameters of autoscaling based on load balancing.
        # Corresponds to the JSON property `loadBalancingUtilization`
        # @return [Google::Apis::ComputeV1::AutoscalingPolicyLoadBalancingUtilization]
        attr_accessor :load_balancing_utilization
      
        # The maximum number of instances that the autoscaler can scale up to. This is
        # required when creating or updating an autoscaler. The maximum number of
        # replicas should not be lower than minimal number of replicas.
        # Corresponds to the JSON property `maxNumReplicas`
        # @return [Fixnum]
        attr_accessor :max_num_replicas
      
        # The minimum number of replicas that the autoscaler can scale down to. This
        # cannot be less than 0. If not provided, autoscaler will choose a default value
        # depending on maximum number of instances allowed.
        # Corresponds to the JSON property `minNumReplicas`
        # @return [Fixnum]
        attr_accessor :min_num_replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cool_down_period_sec = args[:cool_down_period_sec] if args.key?(:cool_down_period_sec)
          @cpu_utilization = args[:cpu_utilization] if args.key?(:cpu_utilization)
          @custom_metric_utilizations = args[:custom_metric_utilizations] if args.key?(:custom_metric_utilizations)
          @load_balancing_utilization = args[:load_balancing_utilization] if args.key?(:load_balancing_utilization)
          @max_num_replicas = args[:max_num_replicas] if args.key?(:max_num_replicas)
          @min_num_replicas = args[:min_num_replicas] if args.key?(:min_num_replicas)
        end
      end
      
      # CPU utilization policy.
      class AutoscalingPolicyCpuUtilization
        include Google::Apis::Core::Hashable
      
        # The target CPU utilization that the autoscaler should maintain. Must be a
        # float value in the range (0, 1]. If not specified, the default is 0.6.
        # If the CPU level is below the target utilization, the autoscaler scales down
        # the number of instances until it reaches the minimum number of instances you
        # specified or until the average CPU of your instances reaches the target
        # utilization.
        # If the average CPU is above the target utilization, the autoscaler scales up
        # until it reaches the maximum number of instances you specified or until the
        # average utilization reaches the target utilization.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
        end
      end
      
      # Custom utilization metric policy.
      class AutoscalingPolicyCustomMetricUtilization
        include Google::Apis::Core::Hashable
      
        # The identifier (type) of the Stackdriver Monitoring metric. The metric cannot
        # have negative values.
        # The metric must have a value type of INT64 or DOUBLE.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # The target value of the metric that autoscaler should maintain. This must be a
        # positive value. A utilization metric scales number of virtual machines
        # handling requests to increase or decrease proportionally to the metric.
        # For example, a good metric to use as a utilization_target is compute.
        # googleapis.com/instance/network/received_bytes_count. The autoscaler will work
        # to keep this value constant for each of the instances.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        # Defines how target utilization value is expressed for a Stackdriver Monitoring
        # metric. Either GAUGE, DELTA_PER_SECOND, or DELTA_PER_MINUTE. If not specified,
        # the default is GAUGE.
        # Corresponds to the JSON property `utilizationTargetType`
        # @return [String]
        attr_accessor :utilization_target_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metric = args[:metric] if args.key?(:metric)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
          @utilization_target_type = args[:utilization_target_type] if args.key?(:utilization_target_type)
        end
      end
      
      # Configuration parameters of autoscaling based on load balancing.
      class AutoscalingPolicyLoadBalancingUtilization
        include Google::Apis::Core::Hashable
      
        # Fraction of backend capacity utilization (set in HTTP(s) load balancing
        # configuration) that autoscaler should maintain. Must be a positive float value.
        # If not defined, the default is 0.8.
        # Corresponds to the JSON property `utilizationTarget`
        # @return [Float]
        attr_accessor :utilization_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_target = args[:utilization_target] if args.key?(:utilization_target)
        end
      end
      
      # Message containing information of one individual backend.
      class Backend
        include Google::Apis::Core::Hashable
      
        # Specifies the balancing mode for this backend. For global HTTP(S) or TCP/SSL
        # load balancing, the default is UTILIZATION. Valid values are UTILIZATION, RATE
        # (for HTTP(S)) and CONNECTION (for TCP/SSL).
        # For Internal Load Balancing, the default and only supported mode is CONNECTION.
        # Corresponds to the JSON property `balancingMode`
        # @return [String]
        attr_accessor :balancing_mode
      
        # A multiplier applied to the group's maximum servicing capacity (based on
        # UTILIZATION, RATE or CONNECTION). Default value is 1, which means the group
        # will serve up to 100% of its configured capacity (depending on balancingMode).
        # A setting of 0 means the group is completely drained, offering 0% of its
        # available Capacity. Valid range is [0.0,1.0].
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `capacityScaler`
        # @return [Float]
        attr_accessor :capacity_scaler
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The fully-qualified URL of a Instance Group resource. This instance group
        # defines the list of instances that serve traffic. Member virtual machine
        # instances from each instance group must live in the same zone as the instance
        # group itself. No two backends in a backend service are allowed to use same
        # Instance Group resource.
        # Note that you must specify an Instance Group resource using the fully-
        # qualified URL, rather than a partial URL.
        # When the BackendService has load balancing scheme INTERNAL, the instance group
        # must be within the same region as the BackendService.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The max number of simultaneous connections for the group. Can be used with
        # either CONNECTION or UTILIZATION balancing modes. For CONNECTION mode, either
        # maxConnections or maxConnectionsPerInstance must be set.
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `maxConnections`
        # @return [Fixnum]
        attr_accessor :max_connections
      
        # The max number of simultaneous connections that a single backend instance can
        # handle. This is used to calculate the capacity of the group. Can be used in
        # either CONNECTION or UTILIZATION balancing modes. For CONNECTION mode, either
        # maxConnections or maxConnectionsPerInstance must be set.
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `maxConnectionsPerInstance`
        # @return [Fixnum]
        attr_accessor :max_connections_per_instance
      
        # The max requests per second (RPS) of the group. Can be used with either RATE
        # or UTILIZATION balancing modes, but required if RATE mode. For RATE mode,
        # either maxRate or maxRatePerInstance must be set.
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `maxRate`
        # @return [Fixnum]
        attr_accessor :max_rate
      
        # The max requests per second (RPS) that a single backend instance can handle.
        # This is used to calculate the capacity of the group. Can be used in either
        # balancing mode. For RATE mode, either maxRate or maxRatePerInstance must be
        # set.
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `maxRatePerInstance`
        # @return [Float]
        attr_accessor :max_rate_per_instance
      
        # Used when balancingMode is UTILIZATION. This ratio defines the CPU utilization
        # target for the group. The default is 0.8. Valid range is [0.0, 1.0].
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `maxUtilization`
        # @return [Float]
        attr_accessor :max_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balancing_mode = args[:balancing_mode] if args.key?(:balancing_mode)
          @capacity_scaler = args[:capacity_scaler] if args.key?(:capacity_scaler)
          @description = args[:description] if args.key?(:description)
          @group = args[:group] if args.key?(:group)
          @max_connections = args[:max_connections] if args.key?(:max_connections)
          @max_connections_per_instance = args[:max_connections_per_instance] if args.key?(:max_connections_per_instance)
          @max_rate = args[:max_rate] if args.key?(:max_rate)
          @max_rate_per_instance = args[:max_rate_per_instance] if args.key?(:max_rate_per_instance)
          @max_utilization = args[:max_utilization] if args.key?(:max_utilization)
        end
      end
      
      # A BackendBucket resource. This resource defines a Cloud Storage bucket.
      class BackendBucket
        include Google::Apis::Core::Hashable
      
        # Cloud Storage bucket name.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If true, enable Cloud CDN for this BackendBucket.
        # Corresponds to the JSON property `enableCdn`
        # @return [Boolean]
        attr_accessor :enable_cdn
        alias_method :enable_cdn?, :enable_cdn
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @enable_cdn = args[:enable_cdn] if args.key?(:enable_cdn)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of BackendBucket resources.
      class BackendBucketList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of BackendBucket resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::BackendBucket>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::BackendBucketList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::BackendBucketList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A BackendService resource. This resource defines a group of backend virtual
      # machines and their serving capacity. (== resource_for v1.backendService ==) (==
      # resource_for beta.backendService ==)
      class BackendService
        include Google::Apis::Core::Hashable
      
        # Lifetime of cookies in seconds if session_affinity is GENERATED_COOKIE. If set
        # to 0, the cookie is non-persistent and lasts only until the end of the browser
        # session (or equivalent). The maximum allowed value for TTL is one day.
        # When the load balancing scheme is INTERNAL, this field is not used.
        # Corresponds to the JSON property `affinityCookieTtlSec`
        # @return [Fixnum]
        attr_accessor :affinity_cookie_ttl_sec
      
        # The list of backends that serve this BackendService.
        # Corresponds to the JSON property `backends`
        # @return [Array<Google::Apis::ComputeV1::Backend>]
        attr_accessor :backends
      
        # Message containing Cloud CDN configuration for a backend service.
        # Corresponds to the JSON property `cdnPolicy`
        # @return [Google::Apis::ComputeV1::BackendServiceCdnPolicy]
        attr_accessor :cdn_policy
      
        # Message containing connection draining configuration.
        # Corresponds to the JSON property `connectionDraining`
        # @return [Google::Apis::ComputeV1::ConnectionDraining]
        attr_accessor :connection_draining
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If true, enable Cloud CDN for this BackendService.
        # When the load balancing scheme is INTERNAL, this field is not used.
        # Corresponds to the JSON property `enableCDN`
        # @return [Boolean]
        attr_accessor :enable_cdn
        alias_method :enable_cdn?, :enable_cdn
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a BackendService. An up-to-date fingerprint must be provided in
        # order to update the BackendService.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of URLs to the HttpHealthCheck or HttpsHealthCheck resource for
        # health checking this BackendService. Currently at most one health check can be
        # specified, and a health check is required for Compute Engine backend services.
        # A health check must not be specified for App Engine backend and Cloud Function
        # backend.
        # For internal load balancing, a URL to a HealthCheck resource must be specified
        # instead.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # Identity-Aware Proxy
        # Corresponds to the JSON property `iap`
        # @return [Google::Apis::ComputeV1::BackendServiceIap]
        attr_accessor :iap
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#backendService for backend
        # services.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Indicates whether the backend service will be used with internal or external
        # load balancing. A backend service created for one type of load balancing
        # cannot be used with the other. Possible values are INTERNAL and EXTERNAL.
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Deprecated in favor of portName. The TCP port to connect on the backend. The
        # default value is 80.
        # This cannot be used for internal load balancing.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Name of backend port. The same name should appear in the instance groups
        # referenced by this service. Required when the load balancing scheme is
        # EXTERNAL.
        # When the load balancing scheme is INTERNAL, this field is not used.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # The protocol this BackendService uses to communicate with backends.
        # Possible values are HTTP, HTTPS, TCP, and SSL. The default is HTTP.
        # For internal load balancing, the possible values are TCP and UDP, and the
        # default is TCP.
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # [Output Only] URL of the region where the regional backend service resides.
        # This field is not applicable to global backend services. You must specify this
        # field as part of the HTTP request URL. It is not settable as a field in the
        # request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Type of session affinity to use. The default is NONE.
        # When the load balancing scheme is EXTERNAL, can be NONE, CLIENT_IP, or
        # GENERATED_COOKIE.
        # When the load balancing scheme is INTERNAL, can be NONE, CLIENT_IP,
        # CLIENT_IP_PROTO, or CLIENT_IP_PORT_PROTO.
        # When the protocol is UDP, this field is not used.
        # Corresponds to the JSON property `sessionAffinity`
        # @return [String]
        attr_accessor :session_affinity
      
        # How many seconds to wait for the backend before considering it a failed
        # request. Default is 30 seconds.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affinity_cookie_ttl_sec = args[:affinity_cookie_ttl_sec] if args.key?(:affinity_cookie_ttl_sec)
          @backends = args[:backends] if args.key?(:backends)
          @cdn_policy = args[:cdn_policy] if args.key?(:cdn_policy)
          @connection_draining = args[:connection_draining] if args.key?(:connection_draining)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @enable_cdn = args[:enable_cdn] if args.key?(:enable_cdn)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
          @iap = args[:iap] if args.key?(:iap)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @port_name = args[:port_name] if args.key?(:port_name)
          @protocol = args[:protocol] if args.key?(:protocol)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @session_affinity = args[:session_affinity] if args.key?(:session_affinity)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
        end
      end
      
      # Contains a list of BackendServicesScopedList.
      class BackendServiceAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of BackendServicesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::BackendServicesScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::BackendServiceAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::BackendServiceAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Message containing Cloud CDN configuration for a backend service.
      class BackendServiceCdnPolicy
        include Google::Apis::Core::Hashable
      
        # Message containing what to include in the cache key for a request for Cloud
        # CDN.
        # Corresponds to the JSON property `cacheKeyPolicy`
        # @return [Google::Apis::ComputeV1::CacheKeyPolicy]
        attr_accessor :cache_key_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_key_policy = args[:cache_key_policy] if args.key?(:cache_key_policy)
        end
      end
      
      # 
      class BackendServiceGroupHealth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthStatus`
        # @return [Array<Google::Apis::ComputeV1::HealthStatus>]
        attr_accessor :health_status
      
        # [Output Only] Type of resource. Always compute#backendServiceGroupHealth for
        # the health of backend services.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_status = args[:health_status] if args.key?(:health_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Identity-Aware Proxy
      class BackendServiceIap
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # 
        # Corresponds to the JSON property `oauth2ClientId`
        # @return [String]
        attr_accessor :oauth2_client_id
      
        # 
        # Corresponds to the JSON property `oauth2ClientSecret`
        # @return [String]
        attr_accessor :oauth2_client_secret
      
        # [Output Only] SHA256 hash value for the field oauth2_client_secret above.
        # Corresponds to the JSON property `oauth2ClientSecretSha256`
        # @return [String]
        attr_accessor :oauth2_client_secret_sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @oauth2_client_id = args[:oauth2_client_id] if args.key?(:oauth2_client_id)
          @oauth2_client_secret = args[:oauth2_client_secret] if args.key?(:oauth2_client_secret)
          @oauth2_client_secret_sha256 = args[:oauth2_client_secret_sha256] if args.key?(:oauth2_client_secret_sha256)
        end
      end
      
      # Contains a list of BackendService resources.
      class BackendServiceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of BackendService resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::BackendService>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#backendServiceList for lists of
        # backend services.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::BackendServiceList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::BackendServiceList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class BackendServicesScopedList
        include Google::Apis::Core::Hashable
      
        # A list of BackendServices contained in this scope.
        # Corresponds to the JSON property `backendServices`
        # @return [Array<Google::Apis::ComputeV1::BackendService>]
        attr_accessor :backend_services
      
        # Informational warning which replaces the list of backend services when the
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::BackendServicesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_services = args[:backend_services] if args.key?(:backend_services)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of backend services when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::BackendServicesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class CacheInvalidationRule
        include Google::Apis::Core::Hashable
      
        # If set, this invalidation rule will only apply to requests with a Host header
        # matching host.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Message containing what to include in the cache key for a request for Cloud
      # CDN.
      class CacheKeyPolicy
        include Google::Apis::Core::Hashable
      
        # If true, requests to different hosts will be cached separately.
        # Corresponds to the JSON property `includeHost`
        # @return [Boolean]
        attr_accessor :include_host
        alias_method :include_host?, :include_host
      
        # If true, http and https requests will be cached separately.
        # Corresponds to the JSON property `includeProtocol`
        # @return [Boolean]
        attr_accessor :include_protocol
        alias_method :include_protocol?, :include_protocol
      
        # If true, include query string parameters in the cache key according to
        # query_string_whitelist and query_string_blacklist. If neither is set, the
        # entire query string will be included. If false, the query string will be
        # excluded from the cache key entirely.
        # Corresponds to the JSON property `includeQueryString`
        # @return [Boolean]
        attr_accessor :include_query_string
        alias_method :include_query_string?, :include_query_string
      
        # Names of query string parameters to exclude in cache keys. All other
        # parameters will be included. Either specify query_string_whitelist or
        # query_string_blacklist, not both. '&' and '=' will be percent encoded and not
        # treated as delimiters.
        # Corresponds to the JSON property `queryStringBlacklist`
        # @return [Array<String>]
        attr_accessor :query_string_blacklist
      
        # Names of query string parameters to include in cache keys. All other
        # parameters will be excluded. Either specify query_string_whitelist or
        # query_string_blacklist, not both. '&' and '=' will be percent encoded and not
        # treated as delimiters.
        # Corresponds to the JSON property `queryStringWhitelist`
        # @return [Array<String>]
        attr_accessor :query_string_whitelist
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_host = args[:include_host] if args.key?(:include_host)
          @include_protocol = args[:include_protocol] if args.key?(:include_protocol)
          @include_query_string = args[:include_query_string] if args.key?(:include_query_string)
          @query_string_blacklist = args[:query_string_blacklist] if args.key?(:query_string_blacklist)
          @query_string_whitelist = args[:query_string_whitelist] if args.key?(:query_string_whitelist)
        end
      end
      
      # Represents a Commitment resource. Creating a Commitment resource means that
      # you are purchasing a committed use contract with an explicit start and end
      # time. You can create commitments based on vCPUs and memory usage and receive
      # discounted rates. For full details, read Signing Up for Committed Use
      # Discounts.
      # Committed use discounts are subject to Google Cloud Platform's Service
      # Specific Terms. By purchasing a committed use discount, you agree to these
      # terms. Committed use discounts will not renew, so you must purchase a new
      # commitment to continue receiving discounts. (== resource_for beta.commitments =
      # =) (== resource_for v1.commitments ==)
      class Commitment
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Commitment end time in RFC3339 text format.
        # Corresponds to the JSON property `endTimestamp`
        # @return [String]
        attr_accessor :end_timestamp
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#commitment for commitments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The plan for this commitment, which determines duration and discount rate. The
        # currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3
        # years).
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # [Output Only] URL of the region where this commitment may be used.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # A list of commitment amounts for particular resources. Note that VCPU and
        # MEMORY resource commitments must occur together.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ComputeV1::ResourceCommitment>]
        attr_accessor :resources
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Commitment start time in RFC3339 text format.
        # Corresponds to the JSON property `startTimestamp`
        # @return [String]
        attr_accessor :start_timestamp
      
        # [Output Only] Status of the commitment with regards to eventual expiration (
        # each commitment has an end date defined). One of the following values:
        # NOT_YET_ACTIVE, ACTIVE, EXPIRED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional, human-readable explanation of the status.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @end_timestamp = args[:end_timestamp] if args.key?(:end_timestamp)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @plan = args[:plan] if args.key?(:plan)
          @region = args[:region] if args.key?(:region)
          @resources = args[:resources] if args.key?(:resources)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_timestamp = args[:start_timestamp] if args.key?(:start_timestamp)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
        end
      end
      
      # 
      class CommitmentAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of CommitmentsScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::CommitmentsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#commitmentAggregatedList for
        # aggregated lists of commitments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::CommitmentAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::CommitmentAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Commitment resources.
      class CommitmentList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Commitment resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Commitment>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#commitmentList for lists of
        # commitments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::CommitmentList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::CommitmentList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class CommitmentsScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of commitments contained in this scope.
        # Corresponds to the JSON property `commitments`
        # @return [Array<Google::Apis::ComputeV1::Commitment>]
        attr_accessor :commitments
      
        # [Output Only] Informational warning which replaces the list of commitments
        # when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::CommitmentsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitments = args[:commitments] if args.key?(:commitments)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of commitments
        # when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::CommitmentsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Message containing connection draining configuration.
      class ConnectionDraining
        include Google::Apis::Core::Hashable
      
        # Time for which instance will be drained (not accept new connections, but still
        # work to finish started).
        # Corresponds to the JSON property `drainingTimeoutSec`
        # @return [Fixnum]
        attr_accessor :draining_timeout_sec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @draining_timeout_sec = args[:draining_timeout_sec] if args.key?(:draining_timeout_sec)
        end
      end
      
      # Represents a customer-supplied encryption key
      class CustomerEncryptionKey
        include Google::Apis::Core::Hashable
      
        # Specifies a 256-bit customer-supplied encryption key, encoded in RFC 4648
        # base64 to either encrypt or decrypt this resource.
        # Corresponds to the JSON property `rawKey`
        # @return [String]
        attr_accessor :raw_key
      
        # [Output only] The RFC 4648 base64 encoded SHA-256 hash of the customer-
        # supplied encryption key that protects this resource.
        # Corresponds to the JSON property `sha256`
        # @return [String]
        attr_accessor :sha256
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @raw_key = args[:raw_key] if args.key?(:raw_key)
          @sha256 = args[:sha256] if args.key?(:sha256)
        end
      end
      
      # 
      class CustomerEncryptionKeyProtectedDisk
        include Google::Apis::Core::Hashable
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `diskEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :disk_encryption_key
      
        # Specifies a valid partial or full URL to an existing Persistent Disk resource.
        # This field is only applicable for persistent disks.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_encryption_key = args[:disk_encryption_key] if args.key?(:disk_encryption_key)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # Deprecation status for a public resource.
      class DeprecationStatus
        include Google::Apis::Core::Hashable
      
        # An optional RFC3339 timestamp on or after which the state of this resource is
        # intended to change to DELETED. This is only informational and the status will
        # not change unless the client explicitly changes it.
        # Corresponds to the JSON property `deleted`
        # @return [String]
        attr_accessor :deleted
      
        # An optional RFC3339 timestamp on or after which the state of this resource is
        # intended to change to DEPRECATED. This is only informational and the status
        # will not change unless the client explicitly changes it.
        # Corresponds to the JSON property `deprecated`
        # @return [String]
        attr_accessor :deprecated
      
        # An optional RFC3339 timestamp on or after which the state of this resource is
        # intended to change to OBSOLETE. This is only informational and the status will
        # not change unless the client explicitly changes it.
        # Corresponds to the JSON property `obsolete`
        # @return [String]
        attr_accessor :obsolete
      
        # The URL of the suggested replacement for a deprecated resource. The suggested
        # replacement resource must be the same kind of resource as the deprecated
        # resource.
        # Corresponds to the JSON property `replacement`
        # @return [String]
        attr_accessor :replacement
      
        # The deprecation state of this resource. This can be DEPRECATED, OBSOLETE, or
        # DELETED. Operations which create a new resource using a DEPRECATED resource
        # will return successfully, but with a warning indicating the deprecated
        # resource and recommending its replacement. Operations which use OBSOLETE or
        # DELETED resources will be rejected and result in an error.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deleted = args[:deleted] if args.key?(:deleted)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @obsolete = args[:obsolete] if args.key?(:obsolete)
          @replacement = args[:replacement] if args.key?(:replacement)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A Disk resource. (== resource_for beta.disks ==) (== resource_for v1.disks ==)
      class Disk
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `diskEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :disk_encryption_key
      
        # A list of features to enable on the guest operating system. Applicable only
        # for bootable images. Read  Enabling guest operating system features to see a
        # list of available options.
        # Corresponds to the JSON property `guestOsFeatures`
        # @return [Array<Google::Apis::ComputeV1::GuestOsFeature>]
        attr_accessor :guest_os_features
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#disk for disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A fingerprint for the labels being applied to this disk, which is essentially
        # a hash of the labels set used for optimistic locking. The fingerprint is
        # initially generated by Compute Engine and changes after every request to
        # modify or update labels. You must always provide an up-to-date fingerprint
        # hash in order to update or change labels.
        # To see the latest fingerprint, make a get() request to retrieve a disk.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # Labels to apply to this disk. These can be later modified by the setLabels
        # method.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # [Output Only] Last attach timestamp in RFC3339 text format.
        # Corresponds to the JSON property `lastAttachTimestamp`
        # @return [String]
        attr_accessor :last_attach_timestamp
      
        # [Output Only] Last detach timestamp in RFC3339 text format.
        # Corresponds to the JSON property `lastDetachTimestamp`
        # @return [String]
        attr_accessor :last_detach_timestamp
      
        # Integer license codes indicating which licenses are attached to this disk.
        # Corresponds to the JSON property `licenseCodes`
        # @return [Array<Fixnum>]
        attr_accessor :license_codes
      
        # Any applicable publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Internal use only.
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # [Output Only] URL of the region where the disk resides. Only applicable for
        # regional resources. You must specify this field as part of the HTTP request
        # URL. It is not settable as a field in the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URLs of the zones where the disk should be replicated to. Only applicable for
        # regional resources.
        # Corresponds to the JSON property `replicaZones`
        # @return [Array<String>]
        attr_accessor :replica_zones
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Size of the persistent disk, specified in GB. You can specify this field when
        # creating a persistent disk using the sourceImage or sourceSnapshot parameter,
        # or specify it alone to create an empty persistent disk.
        # If you specify this field along with sourceImage or sourceSnapshot, the value
        # of sizeGb must not be less than the size of the sourceImage or the size of the
        # snapshot. Acceptable values are 1 to 65536, inclusive.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # The source image used to create this disk. If the source image is deleted,
        # this field will not be set.
        # To create a disk with one of the public operating system images, specify the
        # image by its family name. For example, specify family/debian-8 to use the
        # latest Debian 8 image:
        # projects/debian-cloud/global/images/family/debian-8
        # Alternatively, use a specific version of a public operating system image:
        # projects/debian-cloud/global/images/debian-8-jessie-vYYYYMMDD
        # To create a disk with a custom image that you created, specify the image name
        # in the following format:
        # global/images/my-custom-image
        # You can also specify a custom image by its image family, which returns the
        # latest version of the image in that family. Replace the image name with family/
        # family-name:
        # global/images/family/my-image-family
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceImageEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_image_encryption_key
      
        # [Output Only] The ID value of the image used to create this disk. This value
        # identifies the exact image that was used to create this persistent disk. For
        # example, if you created the persistent disk from an image that was later
        # deleted and recreated under the same name, the source image ID would identify
        # the exact version of the image that was used.
        # Corresponds to the JSON property `sourceImageId`
        # @return [String]
        attr_accessor :source_image_id
      
        # The source snapshot used to create this disk. You can provide this as a
        # partial or full URL to the resource. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/global/snapshots/
        # snapshot
        # - projects/project/global/snapshots/snapshot
        # - global/snapshots/snapshot
        # Corresponds to the JSON property `sourceSnapshot`
        # @return [String]
        attr_accessor :source_snapshot
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceSnapshotEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_snapshot_encryption_key
      
        # [Output Only] The unique ID of the snapshot used to create this disk. This
        # value identifies the exact snapshot that was used to create this persistent
        # disk. For example, if you created the persistent disk from a snapshot that was
        # later deleted and recreated under the same name, the source snapshot ID would
        # identify the exact version of the snapshot that was used.
        # Corresponds to the JSON property `sourceSnapshotId`
        # @return [String]
        attr_accessor :source_snapshot_id
      
        # [Output Only] The status of disk creation.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # URL of the disk type resource describing which disk type to use to create the
        # disk. Provide this when creating the disk. For example: project/zones/zone/
        # diskTypes/pd-standard or pd-ssd
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # [Output Only] Links to the users of the disk (attached instances) in form:
        # project/zones/zone/instances/instance
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        # [Output Only] URL of the zone where the disk resides. You must specify this
        # field as part of the HTTP request URL. It is not settable as a field in the
        # request body.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @disk_encryption_key = args[:disk_encryption_key] if args.key?(:disk_encryption_key)
          @guest_os_features = args[:guest_os_features] if args.key?(:guest_os_features)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
          @last_attach_timestamp = args[:last_attach_timestamp] if args.key?(:last_attach_timestamp)
          @last_detach_timestamp = args[:last_detach_timestamp] if args.key?(:last_detach_timestamp)
          @license_codes = args[:license_codes] if args.key?(:license_codes)
          @licenses = args[:licenses] if args.key?(:licenses)
          @name = args[:name] if args.key?(:name)
          @options = args[:options] if args.key?(:options)
          @region = args[:region] if args.key?(:region)
          @replica_zones = args[:replica_zones] if args.key?(:replica_zones)
          @self_link = args[:self_link] if args.key?(:self_link)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @source_image = args[:source_image] if args.key?(:source_image)
          @source_image_encryption_key = args[:source_image_encryption_key] if args.key?(:source_image_encryption_key)
          @source_image_id = args[:source_image_id] if args.key?(:source_image_id)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
          @source_snapshot_encryption_key = args[:source_snapshot_encryption_key] if args.key?(:source_snapshot_encryption_key)
          @source_snapshot_id = args[:source_snapshot_id] if args.key?(:source_snapshot_id)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @users = args[:users] if args.key?(:users)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class DiskAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of DisksScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::DisksScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskAggregatedList for
        # aggregated lists of persistent disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DiskAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A list of Disk resources.
      class DiskList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Disk resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Disk>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskList for lists of disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DiskList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class MoveDiskRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the destination zone to move the disk. This can be a full or
        # partial URL. For example, the following are all valid URLs to a zone:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone
        # - projects/project/zones/zone
        # - zones/zone
        # Corresponds to the JSON property `destinationZone`
        # @return [String]
        attr_accessor :destination_zone
      
        # The URL of the target disk to move. This can be a full or partial URL. For
        # example, the following are all valid URLs to a disk:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/disks/disk
        # - projects/project/zones/zone/disks/disk
        # - zones/zone/disks/disk
        # Corresponds to the JSON property `targetDisk`
        # @return [String]
        attr_accessor :target_disk
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_zone = args[:destination_zone] if args.key?(:destination_zone)
          @target_disk = args[:target_disk] if args.key?(:target_disk)
        end
      end
      
      # A DiskType resource. (== resource_for beta.diskTypes ==) (== resource_for v1.
      # diskTypes ==)
      class DiskType
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] Server-defined default disk size in GB.
        # Corresponds to the JSON property `defaultDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :default_disk_size_gb
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] An optional description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#diskType for disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the disk type resides. Only applicable
        # for regional resources. You must specify this field as part of the HTTP
        # request URL. It is not settable as a field in the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] An optional textual description of the valid disk size, such as "
        # 10GB-10TB".
        # Corresponds to the JSON property `validDiskSize`
        # @return [String]
        attr_accessor :valid_disk_size
      
        # [Output Only] URL of the zone where the disk type resides. You must specify
        # this field as part of the HTTP request URL. It is not settable as a field in
        # the request body.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @default_disk_size_gb = args[:default_disk_size_gb] if args.key?(:default_disk_size_gb)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @valid_disk_size = args[:valid_disk_size] if args.key?(:valid_disk_size)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class DiskTypeAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of DiskTypesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::DiskTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskTypeAggregatedList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DiskTypeAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskTypeAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of disk types.
      class DiskTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of DiskType resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::DiskType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskTypeList for disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DiskTypeList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskTypeList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class DiskTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of disk types contained in this scope.
        # Corresponds to the JSON property `diskTypes`
        # @return [Array<Google::Apis::ComputeV1::DiskType>]
        attr_accessor :disk_types
      
        # [Output Only] Informational warning which replaces the list of disk types when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DiskTypesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_types = args[:disk_types] if args.key?(:disk_types)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of disk types when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class DisksResizeRequest
        include Google::Apis::Core::Hashable
      
        # The new size of the persistent disk, which is specified in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # 
      class DisksScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of disks contained in this scope.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::Disk>]
        attr_accessor :disks
      
        # [Output Only] Informational warning which replaces the list of disks when the
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::DisksScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disks = args[:disks] if args.key?(:disks)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of disks when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DisksScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Represents a Firewall resource.
      class Firewall
        include Google::Apis::Core::Hashable
      
        # The list of ALLOW rules specified by this firewall. Each rule specifies a
        # protocol and port-range tuple that describes a permitted connection.
        # Corresponds to the JSON property `allowed`
        # @return [Array<Google::Apis::ComputeV1::Firewall::Allowed>]
        attr_accessor :allowed
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # The list of DENY rules specified by this firewall. Each rule specifies a
        # protocol and port-range tuple that describes a denied connection.
        # Corresponds to the JSON property `denied`
        # @return [Array<Google::Apis::ComputeV1::Firewall::Denied>]
        attr_accessor :denied
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If destination ranges are specified, the firewall will apply only to traffic
        # that has destination IP address in these ranges. These ranges must be
        # expressed in CIDR format. Only IPv4 is supported.
        # Corresponds to the JSON property `destinationRanges`
        # @return [Array<String>]
        attr_accessor :destination_ranges
      
        # Direction of traffic to which this firewall applies; default is INGRESS. Note:
        # For INGRESS traffic, it is NOT supported to specify destinationRanges; For
        # EGRESS traffic, it is NOT supported to specify sourceRanges OR sourceTags.
        # Corresponds to the JSON property `direction`
        # @return [String]
        attr_accessor :direction
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#firewall for firewall rules.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network resource for this firewall rule. If not specified when
        # creating a firewall rule, the default network is used:
        # global/networks/default
        # If you choose to specify this property, you can specify the network as a full
        # or partial URL. For example, the following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/myproject/global/networks/my-
        # network
        # - projects/myproject/global/networks/my-network
        # - global/networks/default
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Priority for this rule. This is an integer between 0 and 65535, both inclusive.
        # When not specified, the value assumed is 1000. Relative priorities determine
        # precedence of conflicting rules. Lower value of priority implies higher
        # precedence (eg, a rule with priority 0 has higher precedence than a rule with
        # priority 1). DENY rules take precedence over ALLOW rules having equal priority.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # If source ranges are specified, the firewall will apply only to traffic that
        # has source IP address in these ranges. These ranges must be expressed in CIDR
        # format. One or both of sourceRanges and sourceTags may be set. If both
        # properties are set, the firewall will apply to traffic that has source IP
        # address within sourceRanges OR the source IP that belongs to a tag listed in
        # the sourceTags property. The connection does not need to match both properties
        # for the firewall to apply. Only IPv4 is supported.
        # Corresponds to the JSON property `sourceRanges`
        # @return [Array<String>]
        attr_accessor :source_ranges
      
        # If source service accounts are specified, the firewall will apply only to
        # traffic originating from an instance with a service account in this list.
        # Source service accounts cannot be used to control traffic to an instance's
        # external IP address because service accounts are associated with an instance,
        # not an IP address. sourceRanges can be set at the same time as
        # sourceServiceAccounts. If both are set, the firewall will apply to traffic
        # that has source IP address within sourceRanges OR the source IP belongs to an
        # instance with service account listed in sourceServiceAccount. The connection
        # does not need to match both properties for the firewall to apply.
        # sourceServiceAccounts cannot be used at the same time as sourceTags or
        # targetTags.
        # Corresponds to the JSON property `sourceServiceAccounts`
        # @return [Array<String>]
        attr_accessor :source_service_accounts
      
        # If source tags are specified, the firewall rule applies only to traffic with
        # source IPs that match the primary network interfaces of VM instances that have
        # the tag and are in the same VPC network. Source tags cannot be used to control
        # traffic to an instance's external IP address, it only applies to traffic
        # between instances in the same virtual network. Because tags are associated
        # with instances, not IP addresses. One or both of sourceRanges and sourceTags
        # may be set. If both properties are set, the firewall will apply to traffic
        # that has source IP address within sourceRanges OR the source IP that belongs
        # to a tag listed in the sourceTags property. The connection does not need to
        # match both properties for the firewall to apply.
        # Corresponds to the JSON property `sourceTags`
        # @return [Array<String>]
        attr_accessor :source_tags
      
        # A list of service accounts indicating sets of instances located in the network
        # that may make network connections as specified in allowed[].
        # targetServiceAccounts cannot be used at the same time as targetTags or
        # sourceTags. If neither targetServiceAccounts nor targetTags are specified, the
        # firewall rule applies to all instances on the specified network.
        # Corresponds to the JSON property `targetServiceAccounts`
        # @return [Array<String>]
        attr_accessor :target_service_accounts
      
        # A list of tags that controls which instances the firewall rule applies to. If
        # targetTags are specified, then the firewall rule applies only to instances in
        # the VPC network that have one of those tags. If no targetTags are specified,
        # the firewall rule applies to all instances on the specified network.
        # Corresponds to the JSON property `targetTags`
        # @return [Array<String>]
        attr_accessor :target_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed = args[:allowed] if args.key?(:allowed)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @denied = args[:denied] if args.key?(:denied)
          @description = args[:description] if args.key?(:description)
          @destination_ranges = args[:destination_ranges] if args.key?(:destination_ranges)
          @direction = args[:direction] if args.key?(:direction)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @priority = args[:priority] if args.key?(:priority)
          @self_link = args[:self_link] if args.key?(:self_link)
          @source_ranges = args[:source_ranges] if args.key?(:source_ranges)
          @source_service_accounts = args[:source_service_accounts] if args.key?(:source_service_accounts)
          @source_tags = args[:source_tags] if args.key?(:source_tags)
          @target_service_accounts = args[:target_service_accounts] if args.key?(:target_service_accounts)
          @target_tags = args[:target_tags] if args.key?(:target_tags)
        end
        
        # 
        class Allowed
          include Google::Apis::Core::Hashable
        
          # The IP protocol to which this rule applies. The protocol type is required when
          # creating a firewall rule. This value can either be one of the following well
          # known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP
          # protocol number.
          # Corresponds to the JSON property `IPProtocol`
          # @return [String]
          attr_accessor :ip_protocol
        
          # An optional list of ports to which this rule applies. This field is only
          # applicable for UDP or TCP protocol. Each entry must be either an integer or a
          # range. If not specified, this rule applies to connections through any port.
          # Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
          # Corresponds to the JSON property `ports`
          # @return [Array<String>]
          attr_accessor :ports
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
            @ports = args[:ports] if args.key?(:ports)
          end
        end
        
        # 
        class Denied
          include Google::Apis::Core::Hashable
        
          # The IP protocol to which this rule applies. The protocol type is required when
          # creating a firewall rule. This value can either be one of the following well
          # known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP
          # protocol number.
          # Corresponds to the JSON property `IPProtocol`
          # @return [String]
          attr_accessor :ip_protocol
        
          # An optional list of ports to which this rule applies. This field is only
          # applicable for UDP or TCP protocol. Each entry must be either an integer or a
          # range. If not specified, this rule applies to connections through any port.
          # Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
          # Corresponds to the JSON property `ports`
          # @return [Array<String>]
          attr_accessor :ports
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
            @ports = args[:ports] if args.key?(:ports)
          end
        end
      end
      
      # Contains a list of firewalls.
      class FirewallList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Firewall resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Firewall>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#firewallList for lists of
        # firewalls.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::FirewallList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::FirewallList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A ForwardingRule resource. A ForwardingRule resource specifies which pool of
      # target virtual machines to forward a packet to if it matches the given [
      # IPAddress, IPProtocol, ports] tuple. (== resource_for beta.forwardingRules ==)
      # (== resource_for v1.forwardingRules ==) (== resource_for beta.
      # globalForwardingRules ==) (== resource_for v1.globalForwardingRules ==) (==
      # resource_for beta.regionForwardingRules ==) (== resource_for v1.
      # regionForwardingRules ==)
      class ForwardingRule
        include Google::Apis::Core::Hashable
      
        # The IP address that this forwarding rule is serving on behalf of.
        # Addresses are restricted based on the forwarding rule's load balancing scheme (
        # EXTERNAL or INTERNAL) and scope (global or regional).
        # When the load balancing scheme is EXTERNAL, for global forwarding rules, the
        # address must be a global IP, and for regional forwarding rules, the address
        # must live in the same region as the forwarding rule. If this field is empty,
        # an ephemeral IPv4 address from the same scope (global or regional) will be
        # assigned. A regional forwarding rule supports IPv4 only. A global forwarding
        # rule supports either IPv4 or IPv6.
        # When the load balancing scheme is INTERNAL, this can only be an RFC 1918 IP
        # address belonging to the network/subnet configured for the forwarding rule. By
        # default, if this field is empty, an ephemeral internal IP address will be
        # automatically allocated from the IP range of the subnet or network configured
        # for this forwarding rule.
        # An address can be specified either by a literal IP address or a URL reference
        # to an existing Address resource. The following examples are all valid:
        # - 100.1.2.3
        # - https://www.googleapis.com/compute/v1/projects/project/regions/region/
        # addresses/address
        # - projects/project/regions/region/addresses/address
        # - regions/region/addresses/address
        # - global/addresses/address
        # - address
        # Corresponds to the JSON property `IPAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The IP protocol to which this rule applies. Valid options are TCP, UDP, ESP,
        # AH, SCTP or ICMP.
        # When the load balancing scheme is INTERNAL, only TCP and UDP are valid.
        # Corresponds to the JSON property `IPProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # This field is not used for external load balancing.
        # For internal load balancing, this field identifies the BackendService resource
        # to receive the matched traffic.
        # Corresponds to the JSON property `backendService`
        # @return [String]
        attr_accessor :backend_service
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The IP Version that will be used by this forwarding rule. Valid options are
        # IPV4 or IPV6. This can only be specified for a global forwarding rule.
        # Corresponds to the JSON property `ipVersion`
        # @return [String]
        attr_accessor :ip_version
      
        # [Output Only] Type of the resource. Always compute#forwardingRule for
        # Forwarding Rule resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This signifies what the ForwardingRule will be used for and can only take the
        # following values: INTERNAL, EXTERNAL The value of INTERNAL means that this
        # will be used for Internal Network Load Balancing (TCP, UDP). The value of
        # EXTERNAL means that this will be used for External Load Balancing (HTTP(S) LB,
        # External TCP/UDP LB, SSL Proxy)
        # Corresponds to the JSON property `loadBalancingScheme`
        # @return [String]
        attr_accessor :load_balancing_scheme
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This field is not used for external load balancing.
        # For internal load balancing, this field identifies the network that the load
        # balanced IP should belong to for this Forwarding Rule. If this field is not
        # specified, the default network will be used.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # This field is used along with the target field for TargetHttpProxy,
        # TargetHttpsProxy, TargetSslProxy, TargetTcpProxy, TargetVpnGateway, TargetPool,
        # TargetInstance.
        # Applicable only when IPProtocol is TCP, UDP, or SCTP, only packets addressed
        # to ports in the specified range will be forwarded to target. Forwarding rules
        # with the same [IPAddress, IPProtocol] pair must have disjoint port ranges.
        # Some types of forwarding target have constraints on the acceptable ports:
        # - TargetHttpProxy: 80, 8080
        # - TargetHttpsProxy: 443
        # - TargetTcpProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688,
        # 1883, 5222
        # - TargetSslProxy: 25, 43, 110, 143, 195, 443, 465, 587, 700, 993, 995, 1688,
        # 1883, 5222
        # - TargetVpnGateway: 500, 4500
        # Corresponds to the JSON property `portRange`
        # @return [String]
        attr_accessor :port_range
      
        # This field is used along with the backend_service field for internal load
        # balancing.
        # When the load balancing scheme is INTERNAL, a single port or a comma separated
        # list of ports can be configured. Only packets addressed to these ports will be
        # forwarded to the backends configured with this forwarding rule.
        # You may specify a maximum of up to 5 ports.
        # Corresponds to the JSON property `ports`
        # @return [Array<String>]
        attr_accessor :ports
      
        # [Output Only] URL of the region where the regional forwarding rule resides.
        # This field is not applicable to global forwarding rules. You must specify this
        # field as part of the HTTP request URL. It is not settable as a field in the
        # request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # This field is not used for external load balancing.
        # For internal load balancing, this field identifies the subnetwork that the
        # load balanced IP should belong to for this Forwarding Rule.
        # If the network specified is in auto subnet mode, this field is optional.
        # However, if the network is in custom subnet mode, a subnetwork must be
        # specified.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # The URL of the target resource to receive the matched traffic. For regional
        # forwarding rules, this target must live in the same region as the forwarding
        # rule. For global forwarding rules, this target must be a global load balancing
        # resource. The forwarded traffic must be of a type appropriate to the target
        # object.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @backend_service = args[:backend_service] if args.key?(:backend_service)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @ip_version = args[:ip_version] if args.key?(:ip_version)
          @kind = args[:kind] if args.key?(:kind)
          @load_balancing_scheme = args[:load_balancing_scheme] if args.key?(:load_balancing_scheme)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @port_range = args[:port_range] if args.key?(:port_range)
          @ports = args[:ports] if args.key?(:ports)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # 
      class ForwardingRuleAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of ForwardingRulesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::ForwardingRulesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#forwardingRuleAggregatedList
        # for lists of forwarding rules.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::ForwardingRuleAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ForwardingRuleAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of ForwardingRule resources.
      class ForwardingRuleList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of ForwardingRule resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::ForwardingRule>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::ForwardingRuleList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ForwardingRuleList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class ForwardingRulesScopedList
        include Google::Apis::Core::Hashable
      
        # A list of forwarding rules contained in this scope.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<Google::Apis::ComputeV1::ForwardingRule>]
        attr_accessor :forwarding_rules
      
        # Informational warning which replaces the list of forwarding rules when the
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of forwarding rules when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class GlobalSetLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the previous set of labels for this resource, used to
        # detect conflicts. The fingerprint is initially generated by Compute Engine and
        # changes after every request to modify or update labels. You must always
        # provide an up-to-date fingerprint hash when updating or changing labels. Make
        # a get() request to the resource to get the latest fingerprint.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # A list of labels to apply for this resource. Each label key & value must
        # comply with RFC1035. Specifically, the name must be 1-63 characters long and
        # match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the
        # first character must be a lowercase letter, and all following characters must
        # be a dash, lowercase letter, or digit, except the last character, which cannot
        # be a dash. For example, "webserver-frontend": "images". A label value can also
        # be empty (e.g. "my-label": "").
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Guest OS features.
      class GuestOsFeature
        include Google::Apis::Core::Hashable
      
        # The ID of a supported feature. Read  Enabling guest operating system features
        # to see a list of available options.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class HttpHealthCheck
        include Google::Apis::Core::Hashable
      
        # The value of the host header in the HTTP health check request. If left empty (
        # default value), the IP on behalf of which this health check is performed will
        # be used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The TCP port number for the health check request. The default value is 80.
        # Valid values are 1 through 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Port name as defined in InstanceGroup#NamedPort#name. If both port and
        # port_name are defined, port takes precedence.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # Specifies the type of proxy header to append before sending data to the
        # backend, either NONE or PROXY_V1. The default is NONE.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        # The request path of the HTTP health check request. The default value is /.
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @port = args[:port] if args.key?(:port)
          @port_name = args[:port_name] if args.key?(:port_name)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
          @request_path = args[:request_path] if args.key?(:request_path)
        end
      end
      
      # 
      class HttpsHealthCheck
        include Google::Apis::Core::Hashable
      
        # The value of the host header in the HTTPS health check request. If left empty (
        # default value), the IP on behalf of which this health check is performed will
        # be used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # The TCP port number for the health check request. The default value is 443.
        # Valid values are 1 through 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Port name as defined in InstanceGroup#NamedPort#name. If both port and
        # port_name are defined, port takes precedence.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # Specifies the type of proxy header to append before sending data to the
        # backend, either NONE or PROXY_V1. The default is NONE.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        # The request path of the HTTPS health check request. The default value is /.
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host = args[:host] if args.key?(:host)
          @port = args[:port] if args.key?(:port)
          @port_name = args[:port_name] if args.key?(:port_name)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
          @request_path = args[:request_path] if args.key?(:request_path)
        end
      end
      
      # An HealthCheck resource. This resource defines a template for how individual
      # virtual machines should be checked for health, via one of the supported
      # protocols.
      class HealthCheck
        include Google::Apis::Core::Hashable
      
        # How often (in seconds) to send a health check. The default value is 5 seconds.
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # [Output Only] Creation timestamp in 3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A so-far unhealthy instance will be marked healthy after this many consecutive
        # successes. The default value is 2.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # 
        # Corresponds to the JSON property `httpHealthCheck`
        # @return [Google::Apis::ComputeV1::HttpHealthCheck]
        attr_accessor :http_health_check
      
        # 
        # Corresponds to the JSON property `httpsHealthCheck`
        # @return [Google::Apis::ComputeV1::HttpsHealthCheck]
        attr_accessor :https_health_check
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # 
        # Corresponds to the JSON property `sslHealthCheck`
        # @return [Google::Apis::ComputeV1::SslHealthCheck]
        attr_accessor :ssl_health_check
      
        # 
        # Corresponds to the JSON property `tcpHealthCheck`
        # @return [Google::Apis::ComputeV1::TcpHealthCheck]
        attr_accessor :tcp_health_check
      
        # How long (in seconds) to wait before claiming failure. The default value is 5
        # seconds. It is invalid for timeoutSec to have greater value than
        # checkIntervalSec.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # Specifies the type of the healthCheck, either TCP, SSL, HTTP or HTTPS. If not
        # specified, the default is TCP. Exactly one of the protocol-specific health
        # check field must be specified, which must match type field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A so-far healthy instance will be marked unhealthy after this many consecutive
        # failures. The default value is 2.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] if args.key?(:check_interval_sec)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @http_health_check = args[:http_health_check] if args.key?(:http_health_check)
          @https_health_check = args[:https_health_check] if args.key?(:https_health_check)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @ssl_health_check = args[:ssl_health_check] if args.key?(:ssl_health_check)
          @tcp_health_check = args[:tcp_health_check] if args.key?(:tcp_health_check)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
          @type = args[:type] if args.key?(:type)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
        end
      end
      
      # Contains a list of HealthCheck resources.
      class HealthCheckList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of HealthCheck resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::HealthCheck>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::HealthCheckList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::HealthCheckList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A full or valid partial URL to a health check. For example, the following are
      # valid URLs:
      # - https://www.googleapis.com/compute/beta/projects/project-id/global/
      # httpHealthChecks/health-check
      # - projects/project-id/global/httpHealthChecks/health-check
      # - global/httpHealthChecks/health-check
      class HealthCheckReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthCheck`
        # @return [String]
        attr_accessor :health_check
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_check = args[:health_check] if args.key?(:health_check)
        end
      end
      
      # 
      class HealthStatus
        include Google::Apis::Core::Hashable
      
        # Health state of the instance.
        # Corresponds to the JSON property `healthState`
        # @return [String]
        attr_accessor :health_state
      
        # URL of the instance resource.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The IP address represented by this resource.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The port on the instance.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_state = args[:health_state] if args.key?(:health_state)
          @instance = args[:instance] if args.key?(:instance)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # UrlMaps A host-matching rule for a URL. If matched, will use the named
      # PathMatcher to select the BackendService.
      class HostRule
        include Google::Apis::Core::Hashable
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The list of host patterns to match. They must be valid hostnames, except *
        # will match any string of ([a-z0-9-.]*). In that case, * must be the first
        # character and must be followed in the pattern by either - or ..
        # Corresponds to the JSON property `hosts`
        # @return [Array<String>]
        attr_accessor :hosts
      
        # The name of the PathMatcher to use to match the path portion of the URL if the
        # hostRule matches the URL's host portion.
        # Corresponds to the JSON property `pathMatcher`
        # @return [String]
        attr_accessor :path_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @hosts = args[:hosts] if args.key?(:hosts)
          @path_matcher = args[:path_matcher] if args.key?(:path_matcher)
        end
      end
      
      # An HttpHealthCheck resource. This resource defines a template for how
      # individual instances should be checked for health, via HTTP.
      class HttpHealthCheck
        include Google::Apis::Core::Hashable
      
        # How often (in seconds) to send a health check. The default value is 5 seconds.
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A so-far unhealthy instance will be marked healthy after this many consecutive
        # successes. The default value is 2.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # The value of the host header in the HTTP health check request. If left empty (
        # default value), the public IP on behalf of which this health check is
        # performed will be used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#httpHealthCheck for HTTP
        # health checks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The TCP port number for the HTTP health check request. The default value is 80.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The request path of the HTTP health check request. The default value is /.
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # How long (in seconds) to wait before claiming failure. The default value is 5
        # seconds. It is invalid for timeoutSec to have greater value than
        # checkIntervalSec.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # A so-far healthy instance will be marked unhealthy after this many consecutive
        # failures. The default value is 2.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] if args.key?(:check_interval_sec)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @host = args[:host] if args.key?(:host)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @request_path = args[:request_path] if args.key?(:request_path)
          @self_link = args[:self_link] if args.key?(:self_link)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
        end
      end
      
      # Contains a list of HttpHealthCheck resources.
      class HttpHealthCheckList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of HttpHealthCheck resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::HttpHealthCheck>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::HttpHealthCheckList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::HttpHealthCheckList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An HttpsHealthCheck resource. This resource defines a template for how
      # individual instances should be checked for health, via HTTPS.
      class HttpsHealthCheck
        include Google::Apis::Core::Hashable
      
        # How often (in seconds) to send a health check. The default value is 5 seconds.
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A so-far unhealthy instance will be marked healthy after this many consecutive
        # successes. The default value is 2.
        # Corresponds to the JSON property `healthyThreshold`
        # @return [Fixnum]
        attr_accessor :healthy_threshold
      
        # The value of the host header in the HTTPS health check request. If left empty (
        # default value), the public IP on behalf of which this health check is
        # performed will be used.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The TCP port number for the HTTPS health check request. The default value is
        # 443.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The request path of the HTTPS health check request. The default value is "/".
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # How long (in seconds) to wait before claiming failure. The default value is 5
        # seconds. It is invalid for timeoutSec to have a greater value than
        # checkIntervalSec.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # A so-far healthy instance will be marked unhealthy after this many consecutive
        # failures. The default value is 2.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] if args.key?(:check_interval_sec)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @healthy_threshold = args[:healthy_threshold] if args.key?(:healthy_threshold)
          @host = args[:host] if args.key?(:host)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
          @request_path = args[:request_path] if args.key?(:request_path)
          @self_link = args[:self_link] if args.key?(:self_link)
          @timeout_sec = args[:timeout_sec] if args.key?(:timeout_sec)
          @unhealthy_threshold = args[:unhealthy_threshold] if args.key?(:unhealthy_threshold)
        end
      end
      
      # Contains a list of HttpsHealthCheck resources.
      class HttpsHealthCheckList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of HttpsHealthCheck resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::HttpsHealthCheck>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::HttpsHealthCheckList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::HttpsHealthCheckList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An Image resource. (== resource_for beta.images ==) (== resource_for v1.images
      # ==)
      class Image
        include Google::Apis::Core::Hashable
      
        # Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
        # Corresponds to the JSON property `archiveSizeBytes`
        # @return [Fixnum]
        attr_accessor :archive_size_bytes
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Size of the image when restored onto a persistent disk (in GB).
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # The name of the image family to which this image belongs. You can create disks
        # by specifying an image family instead of a specific image name. The image
        # family always returns its latest image that is not deprecated. The name of the
        # image family must comply with RFC1035.
        # Corresponds to the JSON property `family`
        # @return [String]
        attr_accessor :family
      
        # A list of features to enable on the guest operating system. Applicable only
        # for bootable images. Read  Enabling guest operating system features to see a
        # list of available options.
        # Corresponds to the JSON property `guestOsFeatures`
        # @return [Array<Google::Apis::ComputeV1::GuestOsFeature>]
        attr_accessor :guest_os_features
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `imageEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :image_encryption_key
      
        # [Output Only] Type of the resource. Always compute#image for images.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A fingerprint for the labels being applied to this image, which is essentially
        # a hash of the labels used for optimistic locking. The fingerprint is initially
        # generated by Compute Engine and changes after every request to modify or
        # update labels. You must always provide an up-to-date fingerprint hash in order
        # to update or change labels.
        # To see the latest fingerprint, make a get() request to retrieve an image.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # Labels to apply to this image. These can be later modified by the setLabels
        # method.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Integer license codes indicating which licenses are attached to this image.
        # Corresponds to the JSON property `licenseCodes`
        # @return [Array<Fixnum>]
        attr_accessor :license_codes
      
        # Any applicable license URI.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The parameters of the raw disk image.
        # Corresponds to the JSON property `rawDisk`
        # @return [Google::Apis::ComputeV1::Image::RawDisk]
        attr_accessor :raw_disk
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL of the source disk used to create this image. This can be a full or valid
        # partial URL. You must provide either this property or the rawDisk.source
        # property but not both to create an image. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/disks/disk
        # - projects/project/zones/zone/disks/disk
        # - zones/zone/disks/disk
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceDiskEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_disk_encryption_key
      
        # The ID value of the disk used to create this image. This value may be used to
        # determine whether the image was taken from the current or a previous instance
        # of a given disk name.
        # Corresponds to the JSON property `sourceDiskId`
        # @return [String]
        attr_accessor :source_disk_id
      
        # URL of the source image used to create this image. This can be a full or valid
        # partial URL. You must provide exactly one of:
        # - this property, or
        # - the rawDisk.source property, or
        # - the sourceDisk property   in order to create an image.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceImageEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_image_encryption_key
      
        # [Output Only] The ID value of the image used to create this image. This value
        # may be used to determine whether the image was taken from the current or a
        # previous instance of a given image name.
        # Corresponds to the JSON property `sourceImageId`
        # @return [String]
        attr_accessor :source_image_id
      
        # URL of the source snapshot used to create this image. This can be a full or
        # valid partial URL. You must provide exactly one of:
        # - this property, or
        # - the sourceImage property, or
        # - the rawDisk.source property, or
        # - the sourceDisk property   in order to create an image.
        # Corresponds to the JSON property `sourceSnapshot`
        # @return [String]
        attr_accessor :source_snapshot
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceSnapshotEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_snapshot_encryption_key
      
        # [Output Only] The ID value of the snapshot used to create this image. This
        # value may be used to determine whether the snapshot was taken from the current
        # or a previous instance of a given snapshot name.
        # Corresponds to the JSON property `sourceSnapshotId`
        # @return [String]
        attr_accessor :source_snapshot_id
      
        # The type of the image used to create this disk. The default and only value is
        # RAW
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        # [Output Only] The status of the image. An image can be used to create other
        # resources, such as instances, only after the image has been successfully
        # created and the status is set to READY. Possible values are FAILED, PENDING,
        # or READY.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_size_bytes = args[:archive_size_bytes] if args.key?(:archive_size_bytes)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @family = args[:family] if args.key?(:family)
          @guest_os_features = args[:guest_os_features] if args.key?(:guest_os_features)
          @id = args[:id] if args.key?(:id)
          @image_encryption_key = args[:image_encryption_key] if args.key?(:image_encryption_key)
          @kind = args[:kind] if args.key?(:kind)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
          @license_codes = args[:license_codes] if args.key?(:license_codes)
          @licenses = args[:licenses] if args.key?(:licenses)
          @name = args[:name] if args.key?(:name)
          @raw_disk = args[:raw_disk] if args.key?(:raw_disk)
          @self_link = args[:self_link] if args.key?(:self_link)
          @source_disk = args[:source_disk] if args.key?(:source_disk)
          @source_disk_encryption_key = args[:source_disk_encryption_key] if args.key?(:source_disk_encryption_key)
          @source_disk_id = args[:source_disk_id] if args.key?(:source_disk_id)
          @source_image = args[:source_image] if args.key?(:source_image)
          @source_image_encryption_key = args[:source_image_encryption_key] if args.key?(:source_image_encryption_key)
          @source_image_id = args[:source_image_id] if args.key?(:source_image_id)
          @source_snapshot = args[:source_snapshot] if args.key?(:source_snapshot)
          @source_snapshot_encryption_key = args[:source_snapshot_encryption_key] if args.key?(:source_snapshot_encryption_key)
          @source_snapshot_id = args[:source_snapshot_id] if args.key?(:source_snapshot_id)
          @source_type = args[:source_type] if args.key?(:source_type)
          @status = args[:status] if args.key?(:status)
        end
        
        # The parameters of the raw disk image.
        class RawDisk
          include Google::Apis::Core::Hashable
        
          # The format used to encode and transmit the block device, which should be TAR.
          # This is just a container and transmission format and not a runtime format.
          # Provided by the client when the disk image is created.
          # Corresponds to the JSON property `containerType`
          # @return [String]
          attr_accessor :container_type
        
          # An optional SHA1 checksum of the disk image before unpackaging; provided by
          # the client when the disk image is created.
          # Corresponds to the JSON property `sha1Checksum`
          # @return [String]
          attr_accessor :sha1_checksum
        
          # The full Google Cloud Storage URL where the disk image is stored. You must
          # provide either this property or the sourceDisk property but not both.
          # Corresponds to the JSON property `source`
          # @return [String]
          attr_accessor :source
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @container_type = args[:container_type] if args.key?(:container_type)
            @sha1_checksum = args[:sha1_checksum] if args.key?(:sha1_checksum)
            @source = args[:source] if args.key?(:source)
          end
        end
      end
      
      # Contains a list of images.
      class ImageList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Image resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Image>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::ImageList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ImageList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An Instance resource. (== resource_for beta.instances ==) (== resource_for v1.
      # instances ==)
      class Instance
        include Google::Apis::Core::Hashable
      
        # Allows this instance to send and receive packets with non-matching destination
        # or source IPs. This is required if you plan to use this instance to forward
        # routes. For more information, see Enabling IP Forwarding.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # [Output Only] The CPU platform used by this instance.
        # Corresponds to the JSON property `cpuPlatform`
        # @return [String]
        attr_accessor :cpu_platform
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Whether the resource should be protected against deletion.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Array of disks associated with this instance. Persistent disks must be created
        # before you can assign them.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::AttachedDisk>]
        attr_accessor :disks
      
        # A list of the type and count of accelerator cards attached to the instance.
        # Corresponds to the JSON property `guestAccelerators`
        # @return [Array<Google::Apis::ComputeV1::AcceleratorConfig>]
        attr_accessor :guest_accelerators
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#instance for instances.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A fingerprint for this request, which is essentially a hash of the label's
        # contents and used for optimistic locking. The fingerprint is initially
        # generated by Compute Engine and changes after every request to modify or
        # update labels. You must always provide an up-to-date fingerprint hash in order
        # to update or change labels.
        # To see the latest fingerprint, make get() request to the instance.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # Labels to apply to this instance. These can be later modified by the setLabels
        # method.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Full or partial URL of the machine type resource to use for this instance, in
        # the format: zones/zone/machineTypes/machine-type. This is provided by the
        # client when the instance is created. For example, the following is a valid
        # partial url to a predefined machine type:
        # zones/us-central1-f/machineTypes/n1-standard-1
        # To create a custom machine type, provide a URL to a machine type in the
        # following format, where CPUS is 1 or an even number up to 32 (2, 4, 6, ... 24,
        # etc), and MEMORY is the total memory for this instance. Memory must be a
        # multiple of 256 MB and must be supplied in MB (e.g. 5 GB of memory is 5120 MB):
        # zones/zone/machineTypes/custom-CPUS-MEMORY
        # For example: zones/us-central1-f/machineTypes/custom-4-5120
        # For a full list of restrictions, read the Specifications for custom machine
        # types.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :metadata
      
        # Specifies a minimum CPU platform for the VM instance. Applicable values are
        # the friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell"
        # or minCpuPlatform: "Intel Sandy Bridge".
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # The name of the resource, provided by the client when initially creating the
        # resource. The resource name must be 1-63 characters long, and comply with
        # RFC1035. Specifically, the name must be 1-63 characters long and match the
        # regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first
        # character must be a lowercase letter, and all following characters must be a
        # dash, lowercase letter, or digit, except the last character, which cannot be a
        # dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An array of network configurations for this instance. These specify how
        # interfaces are configured to interact with other network services, such as
        # connecting to the internet. Multiple interfaces are supported per instance.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::ComputeV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::ComputeV1::Scheduling]
        attr_accessor :scheduling
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # A list of service accounts, with their specified scopes, authorized for this
        # instance. Only one service account per VM instance is supported.
        # Service accounts generate access tokens that can be accessed through the
        # metadata server and used to authenticate applications on the instance. See
        # Service Accounts for more information.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ComputeV1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # [Output Only] Whether a VM has been restricted for start because Compute
        # Engine has detected suspicious activity.
        # Corresponds to the JSON property `startRestricted`
        # @return [Boolean]
        attr_accessor :start_restricted
        alias_method :start_restricted?, :start_restricted
      
        # [Output Only] The status of the instance. One of the following values:
        # PROVISIONING, STAGING, RUNNING, STOPPING, STOPPED, SUSPENDING, SUSPENDED, and
        # TERMINATED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional, human-readable explanation of the status.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # A set of instance tags.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::ComputeV1::Tags]
        attr_accessor :tags
      
        # [Output Only] URL of the zone where the instance resides. You must specify
        # this field as part of the HTTP request URL. It is not settable as a field in
        # the request body.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @cpu_platform = args[:cpu_platform] if args.key?(:cpu_platform)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @description = args[:description] if args.key?(:description)
          @disks = args[:disks] if args.key?(:disks)
          @guest_accelerators = args[:guest_accelerators] if args.key?(:guest_accelerators)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @name = args[:name] if args.key?(:name)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @self_link = args[:self_link] if args.key?(:self_link)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @start_restricted = args[:start_restricted] if args.key?(:start_restricted)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @tags = args[:tags] if args.key?(:tags)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class InstanceAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstancesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstancesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceAggregatedList for
        # aggregated lists of Instance resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # InstanceGroups (== resource_for beta.instanceGroups ==) (== resource_for v1.
      # instanceGroups ==) (== resource_for beta.regionInstanceGroups ==) (==
      # resource_for v1.regionInstanceGroups ==)
      class InstanceGroup
        include Google::Apis::Core::Hashable
      
        # [Output Only] The creation timestamp for this instance group in RFC3339 text
        # format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The fingerprint of the named ports. The system uses this
        # fingerprint to detect conflicts when multiple users change the named ports
        # concurrently.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] A unique identifier for this instance group, generated by the
        # server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The resource type, which is always compute#instanceGroup for
        # instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the instance group. The name must be 1-63 characters long, and
        # comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Assigns a name to a port number. For example: `name: "http", port: 80`
        # This allows the system to reference ports by the assigned name instead of a
        # port number. Named ports can also contain multiple ports. For example: [`name:
        # "http", port: 80`,`name: "http", port: 8080`]
        # Named ports apply to all instances in this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        # The URL of the network to which all instances in the instance group belong.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] The URL of the region where the instance group is located (for
        # regional resources).
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] The URL for this instance group. The server generates this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The total number of instances in the instance group.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        # [Output Only] The URL of the subnetwork to which all instances in the instance
        # group belong.
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        # [Output Only] The URL of the zone where the instance group is located (for
        # zonal resources).
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
          @network = args[:network] if args.key?(:network)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @size = args[:size] if args.key?(:size)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class InstanceGroupAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceGroupsScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstanceGroupsScopedList>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupAggregatedList for aggregated lists of instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A list of InstanceGroup resources.
      class InstanceGroupList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceGroup resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroup>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#instanceGroupList for
        # instance group lists.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An Instance Group Manager resource. (== resource_for beta.
      # instanceGroupManagers ==) (== resource_for v1.instanceGroupManagers ==) (==
      # resource_for beta.regionInstanceGroupManagers ==) (== resource_for v1.
      # regionInstanceGroupManagers ==)
      class InstanceGroupManager
        include Google::Apis::Core::Hashable
      
        # The base instance name to use for instances in this group. The value must be 1-
        # 58 characters long. Instances are named by appending a hyphen and a random
        # four-character string to the base instance name. The base instance name must
        # comply with RFC1035.
        # Corresponds to the JSON property `baseInstanceName`
        # @return [String]
        attr_accessor :base_instance_name
      
        # [Output Only] The creation timestamp for this managed instance group in
        # RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] The list of instance actions and the number of instances in this
        # managed instance group that are scheduled for each of those actions.
        # Corresponds to the JSON property `currentActions`
        # @return [Google::Apis::ComputeV1::InstanceGroupManagerActionsSummary]
        attr_accessor :current_actions
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of this resource. This field may be used in optimistic locking. It
        # will be ignored when inserting an InstanceGroupManager. An up-to-date
        # fingerprint must be provided in order to update the InstanceGroupManager or
        # the field need to be unset.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] A unique identifier for this resource type. The server generates
        # this identifier.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The URL of the Instance Group resource.
        # Corresponds to the JSON property `instanceGroup`
        # @return [String]
        attr_accessor :instance_group
      
        # The URL of the instance template that is specified for this managed instance
        # group. The group uses this template to create all new instances in the managed
        # instance group.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        # [Output Only] The resource type, which is always compute#instanceGroupManager
        # for managed instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the managed instance group. The name must be 1-63 characters long,
        # and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Named ports configured for the Instance Groups complementary to this Instance
        # Group Manager.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        # [Output Only] The URL of the region where the managed instance group resides (
        # for regional resources).
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] The URL for this managed instance group. The server defines this
        # URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The URLs for all TargetPool resources to which instances in the instanceGroup
        # field are added. The target pools automatically apply to all of the instances
        # in the managed instance group.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        # The target number of running instances for this managed instance group.
        # Deleting or abandoning instances reduces this number. Resizing the group
        # changes this number.
        # Corresponds to the JSON property `targetSize`
        # @return [Fixnum]
        attr_accessor :target_size
      
        # [Output Only] The URL of the zone where the managed instance group is located (
        # for zonal resources).
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_instance_name = args[:base_instance_name] if args.key?(:base_instance_name)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @current_actions = args[:current_actions] if args.key?(:current_actions)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @id = args[:id] if args.key?(:id)
          @instance_group = args[:instance_group] if args.key?(:instance_group)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
          @target_size = args[:target_size] if args.key?(:target_size)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class InstanceGroupManagerActionsSummary
        include Google::Apis::Core::Hashable
      
        # [Output Only] The total number of instances in the managed instance group that
        # are scheduled to be abandoned. Abandoning an instance removes it from the
        # managed instance group without deleting it.
        # Corresponds to the JSON property `abandoning`
        # @return [Fixnum]
        attr_accessor :abandoning
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be created or are currently being created. If the group fails to
        # create any of these instances, it tries again until it creates the instance
        # successfully.
        # If you have disabled creation retries, this field will not be populated;
        # instead, the creatingWithoutRetries field will be populated.
        # Corresponds to the JSON property `creating`
        # @return [Fixnum]
        attr_accessor :creating
      
        # [Output Only] The number of instances that the managed instance group will
        # attempt to create. The group attempts to create each instance only once. If
        # the group fails to create any of these instances, it decreases the group's
        # targetSize value accordingly.
        # Corresponds to the JSON property `creatingWithoutRetries`
        # @return [Fixnum]
        attr_accessor :creating_without_retries
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be deleted or are currently being deleted.
        # Corresponds to the JSON property `deleting`
        # @return [Fixnum]
        attr_accessor :deleting
      
        # [Output Only] The number of instances in the managed instance group that are
        # running and have no scheduled actions.
        # Corresponds to the JSON property `none`
        # @return [Fixnum]
        attr_accessor :none
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be recreated or are currently being being recreated. Recreating
        # an instance deletes the existing root persistent disk and creates a new disk
        # from the image that is defined in the instance template.
        # Corresponds to the JSON property `recreating`
        # @return [Fixnum]
        attr_accessor :recreating
      
        # [Output Only] The number of instances in the managed instance group that are
        # being reconfigured with properties that do not require a restart or a recreate
        # action. For example, setting or removing target pools for the instance.
        # Corresponds to the JSON property `refreshing`
        # @return [Fixnum]
        attr_accessor :refreshing
      
        # [Output Only] The number of instances in the managed instance group that are
        # scheduled to be restarted or are currently being restarted.
        # Corresponds to the JSON property `restarting`
        # @return [Fixnum]
        attr_accessor :restarting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @abandoning = args[:abandoning] if args.key?(:abandoning)
          @creating = args[:creating] if args.key?(:creating)
          @creating_without_retries = args[:creating_without_retries] if args.key?(:creating_without_retries)
          @deleting = args[:deleting] if args.key?(:deleting)
          @none = args[:none] if args.key?(:none)
          @recreating = args[:recreating] if args.key?(:recreating)
          @refreshing = args[:refreshing] if args.key?(:refreshing)
          @restarting = args[:restarting] if args.key?(:restarting)
        end
      end
      
      # 
      class InstanceGroupManagerAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceGroupManagersScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstanceGroupManagersScopedList>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupManagerAggregatedList for an aggregated list of managed instance
        # groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupManagerAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupManagerAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # [Output Only] A list of managed instance groups.
      class InstanceGroupManagerList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceGroupManager resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroupManager>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupManagerList for a list of managed instance groups.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupManagerList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupManagerList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceGroupManagersAbandonInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URLs of one or more instances to abandon. This can be a full URL or a
        # partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupManagersDeleteInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URLs of one or more instances to delete. This can be a full URL or a
        # partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupManagersListManagedInstancesResponse
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of instances in the managed instance group.
        # Corresponds to the JSON property `managedInstances`
        # @return [Array<Google::Apis::ComputeV1::ManagedInstance>]
        attr_accessor :managed_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_instances = args[:managed_instances] if args.key?(:managed_instances)
        end
      end
      
      # 
      class InstanceGroupManagersRecreateInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URLs of one or more instances to recreate. This can be a full URL or a
        # partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupManagersScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of managed instance groups that are contained in the
        # specified project and zone.
        # Corresponds to the JSON property `instanceGroupManagers`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroupManager>]
        attr_accessor :instance_group_managers
      
        # [Output Only] The warning that replaces the list of managed instance groups
        # when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupManagersScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_group_managers = args[:instance_group_managers] if args.key?(:instance_group_managers)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] The warning that replaces the list of managed instance groups
        # when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupManagersScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceGroupManagersSetInstanceTemplateRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the instance template that is specified for this managed instance
        # group. The group uses this template to create all new instances in the managed
        # instance group.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
        end
      end
      
      # 
      class InstanceGroupManagersSetTargetPoolsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the target pools information. Use this optional property to
        # prevent conflicts when multiple users change the target pools settings
        # concurrently. Obtain the fingerprint with the instanceGroupManagers.get method.
        # Then, include the fingerprint in your request to ensure that you do not
        # overwrite changes that were applied from another concurrent request.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of target pool URLs that instances in this managed instance group
        # belong to. The managed instance group applies these target pools to all of the
        # instances in the group. Existing instances and new instances in the group all
        # receive these target pool settings.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
        end
      end
      
      # 
      class InstanceGroupsAddInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The list of instances to add to the instance group.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupsListInstances
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceWithNamedPorts resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceWithNamedPorts>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupsListInstances for the list of instances in the specified
        # instance group.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupsListInstances::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupsListInstances::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceGroupsListInstancesRequest
        include Google::Apis::Core::Hashable
      
        # A filter for the state of the instances in the instance group. Valid options
        # are ALL or RUNNING. If you do not specify this parameter the list includes all
        # instances regardless of their state.
        # Corresponds to the JSON property `instanceState`
        # @return [String]
        attr_accessor :instance_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_state = args[:instance_state] if args.key?(:instance_state)
        end
      end
      
      # 
      class InstanceGroupsRemoveInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The list of instances to remove from the instance group.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class InstanceGroupsScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The list of instance groups that are contained in this scope.
        # Corresponds to the JSON property `instanceGroups`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroup>]
        attr_accessor :instance_groups
      
        # [Output Only] An informational warning that replaces the list of instance
        # groups when the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceGroupsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_groups = args[:instance_groups] if args.key?(:instance_groups)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] An informational warning that replaces the list of instance
        # groups when the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceGroupsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceGroupsSetNamedPortsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the named ports information for this instance group. Use
        # this optional property to prevent conflicts when multiple users change the
        # named ports settings concurrently. Obtain the fingerprint with the
        # instanceGroups.get method. Then, include the fingerprint in your request to
        # ensure that you do not overwrite changes that were applied from another
        # concurrent request.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of named ports to set for this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
        end
      end
      
      # Contains a list of instances.
      class InstanceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Instance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Instance>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceList for lists of
        # Instance resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of instance referrers.
      class InstanceListReferrers
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Reference resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Reference>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceListReferrers for lists
        # of Instance referrers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceListReferrers::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceListReferrers::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class MoveInstanceRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the destination zone to move the instance. This can be a full or
        # partial URL. For example, the following are all valid URLs to a zone:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone
        # - projects/project/zones/zone
        # - zones/zone
        # Corresponds to the JSON property `destinationZone`
        # @return [String]
        attr_accessor :destination_zone
      
        # The URL of the target instance to move. This can be a full or partial URL. For
        # example, the following are all valid URLs to an instance:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
        # instance
        # - projects/project/zones/zone/instances/instance
        # - zones/zone/instances/instance
        # Corresponds to the JSON property `targetInstance`
        # @return [String]
        attr_accessor :target_instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_zone = args[:destination_zone] if args.key?(:destination_zone)
          @target_instance = args[:target_instance] if args.key?(:target_instance)
        end
      end
      
      # 
      class InstanceProperties
        include Google::Apis::Core::Hashable
      
        # Enables instances created based on this template to send packets with source
        # IP addresses other than their own and receive packets with destination IP
        # addresses other than their own. If these instances will be used as an IP
        # gateway or it will be set as the next-hop in a Route resource, specify true.
        # If unsure, leave this set to false. See the Enable IP forwarding documentation
        # for more information.
        # Corresponds to the JSON property `canIpForward`
        # @return [Boolean]
        attr_accessor :can_ip_forward
        alias_method :can_ip_forward?, :can_ip_forward
      
        # An optional text description for the instances that are created from this
        # instance template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # An array of disks that are associated with the instances that are created from
        # this template.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::AttachedDisk>]
        attr_accessor :disks
      
        # A list of guest accelerator cards' type and count to use for instances created
        # from the instance template.
        # Corresponds to the JSON property `guestAccelerators`
        # @return [Array<Google::Apis::ComputeV1::AcceleratorConfig>]
        attr_accessor :guest_accelerators
      
        # Labels to apply to instances that are created from this template.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The machine type to use for instances that are created from this template.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :metadata
      
        # Minimum cpu/platform to be used by this instance. The instance may be
        # scheduled on the specified or newer cpu/platform. Applicable values are the
        # friendly names of CPU platforms, such as minCpuPlatform: "Intel Haswell" or
        # minCpuPlatform: "Intel Sandy Bridge". For more information, read Specifying a
        # Minimum CPU Platform.
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        # An array of network access configurations for this interface.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::ComputeV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::ComputeV1::Scheduling]
        attr_accessor :scheduling
      
        # A list of service accounts with specified scopes. Access tokens for these
        # service accounts are available to the instances that are created from this
        # template. Use metadata queries to obtain the access tokens for these instances.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ComputeV1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # A set of instance tags.
        # Corresponds to the JSON property `tags`
        # @return [Google::Apis::ComputeV1::Tags]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] if args.key?(:can_ip_forward)
          @description = args[:description] if args.key?(:description)
          @disks = args[:disks] if args.key?(:disks)
          @guest_accelerators = args[:guest_accelerators] if args.key?(:guest_accelerators)
          @labels = args[:labels] if args.key?(:labels)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @metadata = args[:metadata] if args.key?(:metadata)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
          @network_interfaces = args[:network_interfaces] if args.key?(:network_interfaces)
          @scheduling = args[:scheduling] if args.key?(:scheduling)
          @service_accounts = args[:service_accounts] if args.key?(:service_accounts)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # 
      class InstanceReference
        include Google::Apis::Core::Hashable
      
        # The URL for a specific instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
        end
      end
      
      # An Instance Template resource. (== resource_for beta.instanceTemplates ==) (==
      # resource_for v1.instanceTemplates ==)
      class InstanceTemplate
        include Google::Apis::Core::Hashable
      
        # [Output Only] The creation timestamp for this instance template in RFC3339
        # text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A unique identifier for this instance template. The server
        # defines this identifier.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The resource type, which is always compute#instanceTemplate for
        # instance templates.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `properties`
        # @return [Google::Apis::ComputeV1::InstanceProperties]
        attr_accessor :properties
      
        # [Output Only] The URL for this instance template. The server defines this URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @properties = args[:properties] if args.key?(:properties)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # A list of instance templates.
      class InstanceTemplateList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceTemplate resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceTemplate>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceTemplatesListResponse for instance template lists.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstanceTemplateList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstanceTemplateList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstanceWithNamedPorts
        include Google::Apis::Core::Hashable
      
        # [Output Only] The URL of the instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # [Output Only] The named ports that belong to this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        # [Output Only] The status of the instance.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class InstancesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of instances contained in this scope.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::Instance>]
        attr_accessor :instances
      
        # [Output Only] Informational warning which replaces the list of instances when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InstancesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of instances when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstancesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class InstancesSetLabelsRequest
        include Google::Apis::Core::Hashable
      
        # Fingerprint of the previous set of labels for this resource, used to prevent
        # conflicts. Provide the latest fingerprint value when making a request to add
        # or change labels.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # 
      class InstancesSetMachineResourcesRequest
        include Google::Apis::Core::Hashable
      
        # A list of the type and count of accelerator cards attached to the instance.
        # Corresponds to the JSON property `guestAccelerators`
        # @return [Array<Google::Apis::ComputeV1::AcceleratorConfig>]
        attr_accessor :guest_accelerators
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @guest_accelerators = args[:guest_accelerators] if args.key?(:guest_accelerators)
        end
      end
      
      # 
      class InstancesSetMachineTypeRequest
        include Google::Apis::Core::Hashable
      
        # Full or partial URL of the machine type resource. See Machine Types for a full
        # list of machine types. For example: zones/us-central1-f/machineTypes/n1-
        # standard-1
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
        end
      end
      
      # 
      class InstancesSetMinCpuPlatformRequest
        include Google::Apis::Core::Hashable
      
        # Minimum cpu/platform this instance should be started at.
        # Corresponds to the JSON property `minCpuPlatform`
        # @return [String]
        attr_accessor :min_cpu_platform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_cpu_platform = args[:min_cpu_platform] if args.key?(:min_cpu_platform)
        end
      end
      
      # 
      class InstancesSetServiceAccountRequest
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The list of scopes to be made available for this service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # 
      class InstancesStartWithEncryptionKeyRequest
        include Google::Apis::Core::Hashable
      
        # Array of disks associated with this instance that are protected with a
        # customer-supplied encryption key.
        # In order to start the instance, the disk url and its corresponding key must be
        # provided.
        # If the disk is not protected with a customer-supplied encryption key it should
        # not be specified.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::CustomerEncryptionKeyProtectedDisk>]
        attr_accessor :disks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disks = args[:disks] if args.key?(:disks)
        end
      end
      
      # Represents an Interconnects resource. The Interconnects resource is a
      # dedicated connection between Google's network and your on-premises network.
      # For more information, see the  Dedicated overview page. (== resource_for v1.
      # interconnects ==) (== resource_for beta.interconnects ==)
      class Interconnect
        include Google::Apis::Core::Hashable
      
        # Administrative status of the interconnect. When this is set to true, the
        # Interconnect is functional and can carry traffic. When set to false, no
        # packets can be carried over the interconnect and no BGP routes are exchanged
        # over it. By default, the status is set to true.
        # Corresponds to the JSON property `adminEnabled`
        # @return [Boolean]
        attr_accessor :admin_enabled
        alias_method :admin_enabled?, :admin_enabled
      
        # [Output Only] A list of CircuitInfo objects, that describe the individual
        # circuits in this LAG.
        # Corresponds to the JSON property `circuitInfos`
        # @return [Array<Google::Apis::ComputeV1::InterconnectCircuitInfo>]
        attr_accessor :circuit_infos
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Customer name, to put in the Letter of Authorization as the party authorized
        # to request a crossconnect.
        # Corresponds to the JSON property `customerName`
        # @return [String]
        attr_accessor :customer_name
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A list of outages expected for this Interconnect.
        # Corresponds to the JSON property `expectedOutages`
        # @return [Array<Google::Apis::ComputeV1::InterconnectOutageNotification>]
        attr_accessor :expected_outages
      
        # [Output Only] IP address configured on the Google side of the Interconnect
        # link. This can be used only for ping tests.
        # Corresponds to the JSON property `googleIpAddress`
        # @return [String]
        attr_accessor :google_ip_address
      
        # [Output Only] Google reference ID; to be used when raising support tickets
        # with Google or otherwise to debug backend connectivity issues.
        # Corresponds to the JSON property `googleReferenceId`
        # @return [String]
        attr_accessor :google_reference_id
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] A list of the URLs of all InterconnectAttachments configured to
        # use this Interconnect.
        # Corresponds to the JSON property `interconnectAttachments`
        # @return [Array<String>]
        attr_accessor :interconnect_attachments
      
        # Type of interconnect. Note that "IT_PRIVATE" has been deprecated in favor of "
        # DEDICATED"
        # Corresponds to the JSON property `interconnectType`
        # @return [String]
        attr_accessor :interconnect_type
      
        # [Output Only] Type of the resource. Always compute#interconnect for
        # interconnects.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Type of link requested. This field indicates speed of each of the links in the
        # bundle, not the entire bundle. Only 10G per link is allowed for a dedicated
        # interconnect. Options: Ethernet_10G_LR
        # Corresponds to the JSON property `linkType`
        # @return [String]
        attr_accessor :link_type
      
        # URL of the InterconnectLocation object that represents where this connection
        # is to be provisioned.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Email address to contact the customer NOC for operations and maintenance
        # notifications regarding this Interconnect. If specified, this will be used for
        # notifications in addition to all other forms described, such as Stackdriver
        # logs alerting and Cloud Notifications.
        # Corresponds to the JSON property `nocContactEmail`
        # @return [String]
        attr_accessor :noc_contact_email
      
        # [Output Only] The current status of whether or not this Interconnect is
        # functional.
        # Corresponds to the JSON property `operationalStatus`
        # @return [String]
        attr_accessor :operational_status
      
        # [Output Only] IP address configured on the customer side of the Interconnect
        # link. The customer should configure this IP address during turnup when
        # prompted by Google NOC. This can be used only for ping tests.
        # Corresponds to the JSON property `peerIpAddress`
        # @return [String]
        attr_accessor :peer_ip_address
      
        # [Output Only] Number of links actually provisioned in this interconnect.
        # Corresponds to the JSON property `provisionedLinkCount`
        # @return [Fixnum]
        attr_accessor :provisioned_link_count
      
        # Target number of physical links in the link bundle, as requested by the
        # customer.
        # Corresponds to the JSON property `requestedLinkCount`
        # @return [Fixnum]
        attr_accessor :requested_link_count
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_enabled = args[:admin_enabled] if args.key?(:admin_enabled)
          @circuit_infos = args[:circuit_infos] if args.key?(:circuit_infos)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @customer_name = args[:customer_name] if args.key?(:customer_name)
          @description = args[:description] if args.key?(:description)
          @expected_outages = args[:expected_outages] if args.key?(:expected_outages)
          @google_ip_address = args[:google_ip_address] if args.key?(:google_ip_address)
          @google_reference_id = args[:google_reference_id] if args.key?(:google_reference_id)
          @id = args[:id] if args.key?(:id)
          @interconnect_attachments = args[:interconnect_attachments] if args.key?(:interconnect_attachments)
          @interconnect_type = args[:interconnect_type] if args.key?(:interconnect_type)
          @kind = args[:kind] if args.key?(:kind)
          @link_type = args[:link_type] if args.key?(:link_type)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @noc_contact_email = args[:noc_contact_email] if args.key?(:noc_contact_email)
          @operational_status = args[:operational_status] if args.key?(:operational_status)
          @peer_ip_address = args[:peer_ip_address] if args.key?(:peer_ip_address)
          @provisioned_link_count = args[:provisioned_link_count] if args.key?(:provisioned_link_count)
          @requested_link_count = args[:requested_link_count] if args.key?(:requested_link_count)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Represents an InterconnectAttachment (VLAN attachment) resource. For more
      # information, see  Creating VLAN Attachments. (== resource_for beta.
      # interconnectAttachments ==) (== resource_for v1.interconnectAttachments ==)
      class InterconnectAttachment
        include Google::Apis::Core::Hashable
      
        # [Output Only] IPv4 address + prefix length to be configured on Cloud Router
        # Interface for this interconnect attachment.
        # Corresponds to the JSON property `cloudRouterIpAddress`
        # @return [String]
        attr_accessor :cloud_router_ip_address
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] IPv4 address + prefix length to be configured on the customer
        # router subinterface for this interconnect attachment.
        # Corresponds to the JSON property `customerRouterIpAddress`
        # @return [String]
        attr_accessor :customer_router_ip_address
      
        # An optional description of this resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Google reference ID, to be used when raising support tickets
        # with Google or otherwise to debug backend connectivity issues.
        # Corresponds to the JSON property `googleReferenceId`
        # @return [String]
        attr_accessor :google_reference_id
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # URL of the underlying Interconnect object that this attachment's traffic will
        # traverse through.
        # Corresponds to the JSON property `interconnect`
        # @return [String]
        attr_accessor :interconnect
      
        # [Output Only] Type of the resource. Always compute#interconnectAttachment for
        # interconnect attachments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The current status of whether or not this interconnect
        # attachment is functional.
        # Corresponds to the JSON property `operationalStatus`
        # @return [String]
        attr_accessor :operational_status
      
        # Information for an interconnect attachment when this belongs to an
        # interconnect of type DEDICATED.
        # Corresponds to the JSON property `privateInterconnectInfo`
        # @return [Google::Apis::ComputeV1::InterconnectAttachmentPrivateInfo]
        attr_accessor :private_interconnect_info
      
        # [Output Only] URL of the region where the regional interconnect attachment
        # resides. You must specify this field as part of the HTTP request URL. It is
        # not settable as a field in the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # URL of the cloud router to be used for dynamic routing. This router must be in
        # the same region as this InterconnectAttachment. The InterconnectAttachment
        # will automatically connect the Interconnect to the network & region within
        # which the Cloud Router is configured.
        # Corresponds to the JSON property `router`
        # @return [String]
        attr_accessor :router
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_router_ip_address = args[:cloud_router_ip_address] if args.key?(:cloud_router_ip_address)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @customer_router_ip_address = args[:customer_router_ip_address] if args.key?(:customer_router_ip_address)
          @description = args[:description] if args.key?(:description)
          @google_reference_id = args[:google_reference_id] if args.key?(:google_reference_id)
          @id = args[:id] if args.key?(:id)
          @interconnect = args[:interconnect] if args.key?(:interconnect)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operational_status = args[:operational_status] if args.key?(:operational_status)
          @private_interconnect_info = args[:private_interconnect_info] if args.key?(:private_interconnect_info)
          @region = args[:region] if args.key?(:region)
          @router = args[:router] if args.key?(:router)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class InterconnectAttachmentAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InterconnectAttachmentsScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InterconnectAttachmentsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#
        # interconnectAttachmentAggregatedList for aggregated lists of interconnect
        # attachments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InterconnectAttachmentAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InterconnectAttachmentAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Response to the list request, and contains a list of interconnect attachments.
      class InterconnectAttachmentList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InterconnectAttachment resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InterconnectAttachment>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#interconnectAttachmentList for
        # lists of interconnect attachments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InterconnectAttachmentList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InterconnectAttachmentList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Information for an interconnect attachment when this belongs to an
      # interconnect of type DEDICATED.
      class InterconnectAttachmentPrivateInfo
        include Google::Apis::Core::Hashable
      
        # [Output Only] 802.1q encapsulation tag to be used for traffic between Google
        # and the customer, going to and from this network and region.
        # Corresponds to the JSON property `tag8021q`
        # @return [Fixnum]
        attr_accessor :tag8021q
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tag8021q = args[:tag8021q] if args.key?(:tag8021q)
        end
      end
      
      # 
      class InterconnectAttachmentsScopedList
        include Google::Apis::Core::Hashable
      
        # A list of interconnect attachments contained in this scope.
        # Corresponds to the JSON property `interconnectAttachments`
        # @return [Array<Google::Apis::ComputeV1::InterconnectAttachment>]
        attr_accessor :interconnect_attachments
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InterconnectAttachmentsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interconnect_attachments = args[:interconnect_attachments] if args.key?(:interconnect_attachments)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InterconnectAttachmentsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Describes a single physical circuit between the Customer and Google.
      # CircuitInfo objects are created by Google, so all fields are output only. Next
      # id: 4
      class InterconnectCircuitInfo
        include Google::Apis::Core::Hashable
      
        # Customer-side demarc ID for this circuit.
        # Corresponds to the JSON property `customerDemarcId`
        # @return [String]
        attr_accessor :customer_demarc_id
      
        # Google-assigned unique ID for this circuit. Assigned at circuit turn-up.
        # Corresponds to the JSON property `googleCircuitId`
        # @return [String]
        attr_accessor :google_circuit_id
      
        # Google-side demarc ID for this circuit. Assigned at circuit turn-up and
        # provided by Google to the customer in the LOA.
        # Corresponds to the JSON property `googleDemarcId`
        # @return [String]
        attr_accessor :google_demarc_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_demarc_id = args[:customer_demarc_id] if args.key?(:customer_demarc_id)
          @google_circuit_id = args[:google_circuit_id] if args.key?(:google_circuit_id)
          @google_demarc_id = args[:google_demarc_id] if args.key?(:google_demarc_id)
        end
      end
      
      # Response to the list request, and contains a list of interconnects.
      class InterconnectList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Interconnect resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Interconnect>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#interconnectList for lists of
        # interconnects.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InterconnectList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InterconnectList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Represents an InterconnectLocations resource. The InterconnectLocations
      # resource describes the locations where you can connect to Google's networks.
      # For more information, see  Colocation Facilities.
      class InterconnectLocation
        include Google::Apis::Core::Hashable
      
        # [Output Only] The postal address of the Point of Presence, each line in the
        # address is separated by a newline character.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # [Output Only] Availability zone for this location. Within a metropolitan area (
        # metro), maintenance will not be simultaneously scheduled in more than one
        # availability zone. Example: "zone1" or "zone2".
        # Corresponds to the JSON property `availabilityZone`
        # @return [String]
        attr_accessor :availability_zone
      
        # [Output Only] Metropolitan area designator that indicates which city an
        # interconnect is located. For example: "Chicago, IL", "Amsterdam, Netherlands".
        # Corresponds to the JSON property `city`
        # @return [String]
        attr_accessor :city
      
        # [Output Only] Continent for this location.
        # Corresponds to the JSON property `continent`
        # @return [String]
        attr_accessor :continent
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] An optional description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The name of the provider for this facility (e.g., EQUINIX).
        # Corresponds to the JSON property `facilityProvider`
        # @return [String]
        attr_accessor :facility_provider
      
        # [Output Only] A provider-assigned Identifier for this facility (e.g., Ashburn-
        # DC1).
        # Corresponds to the JSON property `facilityProviderFacilityId`
        # @return [String]
        attr_accessor :facility_provider_facility_id
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#interconnectLocation for
        # interconnect locations.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The peeringdb identifier for this facility (corresponding with a
        # netfac type in peeringdb).
        # Corresponds to the JSON property `peeringdbFacilityId`
        # @return [String]
        attr_accessor :peeringdb_facility_id
      
        # [Output Only] A list of InterconnectLocation.RegionInfo objects, that describe
        # parameters pertaining to the relation between this InterconnectLocation and
        # various Google Cloud regions.
        # Corresponds to the JSON property `regionInfos`
        # @return [Array<Google::Apis::ComputeV1::InterconnectLocationRegionInfo>]
        attr_accessor :region_infos
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @availability_zone = args[:availability_zone] if args.key?(:availability_zone)
          @city = args[:city] if args.key?(:city)
          @continent = args[:continent] if args.key?(:continent)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @facility_provider = args[:facility_provider] if args.key?(:facility_provider)
          @facility_provider_facility_id = args[:facility_provider_facility_id] if args.key?(:facility_provider_facility_id)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @peeringdb_facility_id = args[:peeringdb_facility_id] if args.key?(:peeringdb_facility_id)
          @region_infos = args[:region_infos] if args.key?(:region_infos)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Response to the list request, and contains a list of interconnect locations.
      class InterconnectLocationList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InterconnectLocation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InterconnectLocation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#interconnectLocationList for
        # lists of interconnect locations.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::InterconnectLocationList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InterconnectLocationList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Information about any potential InterconnectAttachments between an
      # Interconnect at a specific InterconnectLocation, and a specific Cloud Region.
      class InterconnectLocationRegionInfo
        include Google::Apis::Core::Hashable
      
        # Expected round-trip time in milliseconds, from this InterconnectLocation to a
        # VM in this region.
        # Corresponds to the JSON property `expectedRttMs`
        # @return [Fixnum]
        attr_accessor :expected_rtt_ms
      
        # Identifies the network presence of this location.
        # Corresponds to the JSON property `locationPresence`
        # @return [String]
        attr_accessor :location_presence
      
        # URL for the region of this location.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_rtt_ms = args[:expected_rtt_ms] if args.key?(:expected_rtt_ms)
          @location_presence = args[:location_presence] if args.key?(:location_presence)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Description of a planned outage on this Interconnect. Next id: 9
      class InterconnectOutageNotification
        include Google::Apis::Core::Hashable
      
        # If issue_type is IT_PARTIAL_OUTAGE, a list of the Google-side circuit IDs that
        # will be affected.
        # Corresponds to the JSON property `affectedCircuits`
        # @return [Array<String>]
        attr_accessor :affected_circuits
      
        # A description about the purpose of the outage.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Scheduled end time for the outage (milliseconds since Unix epoch).
        # Corresponds to the JSON property `endTime`
        # @return [Fixnum]
        attr_accessor :end_time
      
        # Form this outage is expected to take. Note that the "IT_" versions of this
        # enum have been deprecated in favor of the unprefixed values.
        # Corresponds to the JSON property `issueType`
        # @return [String]
        attr_accessor :issue_type
      
        # Unique identifier for this outage notification.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The party that generated this notification. Note that "NSRC_GOOGLE" has been
        # deprecated in favor of "GOOGLE"
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Scheduled start time for the outage (milliseconds since Unix epoch).
        # Corresponds to the JSON property `startTime`
        # @return [Fixnum]
        attr_accessor :start_time
      
        # State of this notification. Note that the "NS_" versions of this enum have
        # been deprecated in favor of the unprefixed values.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_circuits = args[:affected_circuits] if args.key?(:affected_circuits)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @issue_type = args[:issue_type] if args.key?(:issue_type)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A license resource.
      class License
        include Google::Apis::Core::Hashable
      
        # [Output Only] Deprecated. This field no longer reflects whether a license
        # charges a usage fee.
        # Corresponds to the JSON property `chargesUseFee`
        # @return [Boolean]
        attr_accessor :charges_use_fee
        alias_method :charges_use_fee?, :charges_use_fee
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#license for licenses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] The unique code used to attach this license to images, snapshots,
        # and disks.
        # Corresponds to the JSON property `licenseCode`
        # @return [Fixnum]
        attr_accessor :license_code
      
        # [Output Only] Name of the resource. The name is 1-63 characters long and
        # complies with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `resourceRequirements`
        # @return [Google::Apis::ComputeV1::LicenseResourceRequirements]
        attr_accessor :resource_requirements
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # If false, licenses will not be copied from the source resource when creating
        # an image from a disk, disk from snapshot, or snapshot from disk.
        # Corresponds to the JSON property `transferable`
        # @return [Boolean]
        attr_accessor :transferable
        alias_method :transferable?, :transferable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charges_use_fee = args[:charges_use_fee] if args.key?(:charges_use_fee)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @license_code = args[:license_code] if args.key?(:license_code)
          @name = args[:name] if args.key?(:name)
          @resource_requirements = args[:resource_requirements] if args.key?(:resource_requirements)
          @self_link = args[:self_link] if args.key?(:self_link)
          @transferable = args[:transferable] if args.key?(:transferable)
        end
      end
      
      # 
      class LicenseCode
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] Description of this License Code.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#licenseCode for licenses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] URL and description aliases of Licenses with the same License
        # Code.
        # Corresponds to the JSON property `licenseAlias`
        # @return [Array<Google::Apis::ComputeV1::LicenseCodeLicenseAlias>]
        attr_accessor :license_alias
      
        # [Output Only] Name of the resource. The name is 1-20 characters long and must
        # be a valid 64 bit integer.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Current state of this License Code.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # [Output Only] If true, the license will remain attached when creating images
        # or snapshots from disks. Otherwise, the license is not transferred.
        # Corresponds to the JSON property `transferable`
        # @return [Boolean]
        attr_accessor :transferable
        alias_method :transferable?, :transferable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @license_alias = args[:license_alias] if args.key?(:license_alias)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @state = args[:state] if args.key?(:state)
          @transferable = args[:transferable] if args.key?(:transferable)
        end
      end
      
      # 
      class LicenseCodeLicenseAlias
        include Google::Apis::Core::Hashable
      
        # [Output Only] Description of this License Code.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] URL of license corresponding to this License Code.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class LicenseResourceRequirements
        include Google::Apis::Core::Hashable
      
        # Minimum number of guest cpus required to use the Instance. Enforced at
        # Instance creation and Instance start.
        # Corresponds to the JSON property `minGuestCpuCount`
        # @return [Fixnum]
        attr_accessor :min_guest_cpu_count
      
        # Minimum memory required to use the Instance. Enforced at Instance creation and
        # Instance start.
        # Corresponds to the JSON property `minMemoryMb`
        # @return [Fixnum]
        attr_accessor :min_memory_mb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @min_guest_cpu_count = args[:min_guest_cpu_count] if args.key?(:min_guest_cpu_count)
          @min_memory_mb = args[:min_memory_mb] if args.key?(:min_memory_mb)
        end
      end
      
      # 
      class LicensesListResponse
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of License resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::License>]
        attr_accessor :items
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::LicensesListResponse::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::LicensesListResponse::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A Machine Type resource. (== resource_for v1.machineTypes ==) (== resource_for
      # beta.machineTypes ==)
      class MachineType
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The number of virtual CPUs that are available to the instance.
        # Corresponds to the JSON property `guestCpus`
        # @return [Fixnum]
        attr_accessor :guest_cpus
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Deprecated] This property is deprecated and will never be populated with any
        # relevant values.
        # Corresponds to the JSON property `imageSpaceGb`
        # @return [Fixnum]
        attr_accessor :image_space_gb
      
        # [Output Only] Whether this machine type has a shared CPU. See Shared-core
        # machine types for more information.
        # Corresponds to the JSON property `isSharedCpu`
        # @return [Boolean]
        attr_accessor :is_shared_cpu
        alias_method :is_shared_cpu?, :is_shared_cpu
      
        # [Output Only] The type of the resource. Always compute#machineType for machine
        # types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Maximum persistent disks allowed.
        # Corresponds to the JSON property `maximumPersistentDisks`
        # @return [Fixnum]
        attr_accessor :maximum_persistent_disks
      
        # [Output Only] Maximum total persistent disks size (GB) allowed.
        # Corresponds to the JSON property `maximumPersistentDisksSizeGb`
        # @return [Fixnum]
        attr_accessor :maximum_persistent_disks_size_gb
      
        # [Output Only] The amount of physical memory available to the instance, defined
        # in MB.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] A list of extended scratch disks assigned to the instance.
        # Corresponds to the JSON property `scratchDisks`
        # @return [Array<Google::Apis::ComputeV1::MachineType::ScratchDisk>]
        attr_accessor :scratch_disks
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The name of the zone where the machine type resides, such as us-
        # central1-a.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @guest_cpus = args[:guest_cpus] if args.key?(:guest_cpus)
          @id = args[:id] if args.key?(:id)
          @image_space_gb = args[:image_space_gb] if args.key?(:image_space_gb)
          @is_shared_cpu = args[:is_shared_cpu] if args.key?(:is_shared_cpu)
          @kind = args[:kind] if args.key?(:kind)
          @maximum_persistent_disks = args[:maximum_persistent_disks] if args.key?(:maximum_persistent_disks)
          @maximum_persistent_disks_size_gb = args[:maximum_persistent_disks_size_gb] if args.key?(:maximum_persistent_disks_size_gb)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @name = args[:name] if args.key?(:name)
          @scratch_disks = args[:scratch_disks] if args.key?(:scratch_disks)
          @self_link = args[:self_link] if args.key?(:self_link)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # 
        class ScratchDisk
          include Google::Apis::Core::Hashable
        
          # Size of the scratch disk, defined in GB.
          # Corresponds to the JSON property `diskGb`
          # @return [Fixnum]
          attr_accessor :disk_gb
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @disk_gb = args[:disk_gb] if args.key?(:disk_gb)
          end
        end
      end
      
      # 
      class MachineTypeAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of MachineTypesScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::MachineTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#machineTypeAggregatedList for
        # aggregated lists of machine types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::MachineTypeAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::MachineTypeAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of machine types.
      class MachineTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of MachineType resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::MachineType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#machineTypeList for lists of
        # machine types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::MachineTypeList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::MachineTypeList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class MachineTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of machine types contained in this scope.
        # Corresponds to the JSON property `machineTypes`
        # @return [Array<Google::Apis::ComputeV1::MachineType>]
        attr_accessor :machine_types
      
        # [Output Only] An informational warning that appears when the machine types
        # list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::MachineTypesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @machine_types = args[:machine_types] if args.key?(:machine_types)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] An informational warning that appears when the machine types
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::MachineTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Next available tag: 12
      class ManagedInstance
        include Google::Apis::Core::Hashable
      
        # [Output Only] The current action that the managed instance group has scheduled
        # for the instance. Possible values:
        # - NONE The instance is running, and the managed instance group does not have
        # any scheduled actions for this instance.
        # - CREATING The managed instance group is creating this instance. If the group
        # fails to create this instance, it will try again until it is successful.
        # - CREATING_WITHOUT_RETRIES The managed instance group is attempting to create
        # this instance only once. If the group fails to create this instance, it does
        # not try again and the group's targetSize value is decreased instead.
        # - RECREATING The managed instance group is recreating this instance.
        # - DELETING The managed instance group is permanently deleting this instance.
        # - ABANDONING The managed instance group is abandoning this instance. The
        # instance will be removed from the instance group and from any target pools
        # that are associated with this group.
        # - RESTARTING The managed instance group is restarting the instance.
        # - REFRESHING The managed instance group is applying configuration changes to
        # the instance without stopping it. For example, the group can update the target
        # pool list for an instance without stopping that instance.
        # - VERIFYING The managed instance group has created the instance and it is in
        # the process of being verified.
        # Corresponds to the JSON property `currentAction`
        # @return [String]
        attr_accessor :current_action
      
        # [Output only] The unique identifier for this resource. This field is empty
        # when instance does not exist.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The URL of the instance. The URL can exist even if the instance
        # has not yet been created.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # [Output Only] The status of the instance. This field is empty when the
        # instance does not exist.
        # Corresponds to the JSON property `instanceStatus`
        # @return [String]
        attr_accessor :instance_status
      
        # [Output Only] Information about the last attempt to create or delete the
        # instance.
        # Corresponds to the JSON property `lastAttempt`
        # @return [Google::Apis::ComputeV1::ManagedInstanceLastAttempt]
        attr_accessor :last_attempt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_action = args[:current_action] if args.key?(:current_action)
          @id = args[:id] if args.key?(:id)
          @instance = args[:instance] if args.key?(:instance)
          @instance_status = args[:instance_status] if args.key?(:instance_status)
          @last_attempt = args[:last_attempt] if args.key?(:last_attempt)
        end
      end
      
      # 
      class ManagedInstanceLastAttempt
        include Google::Apis::Core::Hashable
      
        # [Output Only] Encountered errors during the last attempt to create or delete
        # the instance.
        # Corresponds to the JSON property `errors`
        # @return [Google::Apis::ComputeV1::ManagedInstanceLastAttempt::Errors]
        attr_accessor :errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
        end
        
        # [Output Only] Encountered errors during the last attempt to create or delete
        # the instance.
        class Errors
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ComputeV1::ManagedInstanceLastAttempt::Errors::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
      end
      
      # A metadata key/value entry.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for this request, which is essentially a hash of the
        # metadata's contents and used for optimistic locking. The fingerprint is
        # initially generated by Compute Engine and changes after every request to
        # modify or update metadata. You must always provide an up-to-date fingerprint
        # hash in order to update or change metadata.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # Array of key/value pairs. The total size of all keys and values must be less
        # than 512 KB.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Metadata::Item>]
        attr_accessor :items
      
        # [Output Only] Type of the resource. Always compute#metadata for metadata.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
        
        # 
        class Item
          include Google::Apis::Core::Hashable
        
          # Key for the metadata entry. Keys must conform to the following regexp: [a-zA-
          # Z0-9-_]+, and be less than 128 bytes in length. This is reflected as part of a
          # URL in the metadata server. Additionally, to avoid ambiguity, keys must not
          # conflict with any other metadata keys for the project.
          # Corresponds to the JSON property `key`
          # @return [String]
          attr_accessor :key
        
          # Value for the metadata entry. These are free-form strings, and only have
          # meaning as interpreted by the image running in the instance. The only
          # restriction placed on values is that their size must be less than or equal to
          # 262144 bytes (256 KiB).
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @key = args[:key] if args.key?(:key)
            @value = args[:value] if args.key?(:value)
          end
        end
      end
      
      # The named port. For example: .
      class NamedPort
        include Google::Apis::Core::Hashable
      
        # The name for this named port. The name must be 1-63 characters long, and
        # comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The port number, which can be a value between 1 and 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @port = args[:port] if args.key?(:port)
        end
      end
      
      # Represents a Network resource. Read Networks and Firewalls for more
      # information. (== resource_for v1.networks ==) (== resource_for beta.networks ==
      # )
      class Network
        include Google::Apis::Core::Hashable
      
        # The range of internal addresses that are legal on this network. This range is
        # a CIDR specification, for example: 192.168.0.0/16. Provided by the client when
        # the network is created.
        # Corresponds to the JSON property `IPv4Range`
        # @return [String]
        attr_accessor :i_pv4_range
      
        # When set to true, the network is created in "auto subnet mode". When set to
        # false, the network is in "custom subnet mode".
        # In "auto subnet mode", a newly created network is assigned the default CIDR of
        # 10.128.0.0/9 and it automatically creates one subnetwork per region.
        # Corresponds to the JSON property `autoCreateSubnetworks`
        # @return [Boolean]
        attr_accessor :auto_create_subnetworks
        alias_method :auto_create_subnetworks?, :auto_create_subnetworks
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A gateway address for default routing to other networks. This value is read
        # only and is selected by the Google Compute Engine, typically as the first
        # usable address in the IPv4Range.
        # Corresponds to the JSON property `gatewayIPv4`
        # @return [String]
        attr_accessor :gateway_i_pv4
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#network for networks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] A list of network peerings for the resource.
        # Corresponds to the JSON property `peerings`
        # @return [Array<Google::Apis::ComputeV1::NetworkPeering>]
        attr_accessor :peerings
      
        # A routing configuration attached to a network resource. The message includes
        # the list of routers associated with the network, and a flag indicating the
        # type of routing behavior to enforce network-wide.
        # Corresponds to the JSON property `routingConfig`
        # @return [Google::Apis::ComputeV1::NetworkRoutingConfig]
        attr_accessor :routing_config
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Server-defined fully-qualified URLs for all subnetworks in this
        # network.
        # Corresponds to the JSON property `subnetworks`
        # @return [Array<String>]
        attr_accessor :subnetworks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @i_pv4_range = args[:i_pv4_range] if args.key?(:i_pv4_range)
          @auto_create_subnetworks = args[:auto_create_subnetworks] if args.key?(:auto_create_subnetworks)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @gateway_i_pv4 = args[:gateway_i_pv4] if args.key?(:gateway_i_pv4)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @peerings = args[:peerings] if args.key?(:peerings)
          @routing_config = args[:routing_config] if args.key?(:routing_config)
          @self_link = args[:self_link] if args.key?(:self_link)
          @subnetworks = args[:subnetworks] if args.key?(:subnetworks)
        end
      end
      
      # A network interface resource attached to an instance.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # An array of configurations for this interface. Currently, only one access
        # config, ONE_TO_ONE_NAT, is supported. If there are no accessConfigs specified,
        # then this instance will have no external internet access.
        # Corresponds to the JSON property `accessConfigs`
        # @return [Array<Google::Apis::ComputeV1::AccessConfig>]
        attr_accessor :access_configs
      
        # An array of alias IP ranges for this network interface. Can only be specified
        # for network interfaces on subnet-mode networks.
        # Corresponds to the JSON property `aliasIpRanges`
        # @return [Array<Google::Apis::ComputeV1::AliasIpRange>]
        attr_accessor :alias_ip_ranges
      
        # Fingerprint hash of contents stored in this network interface. This field will
        # be ignored when inserting an Instance or adding a NetworkInterface. An up-to-
        # date fingerprint must be provided in order to update the NetworkInterface.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] Type of the resource. Always compute#networkInterface for
        # network interfaces.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] The name of the network interface, generated by the server. For
        # network devices, these are eth0, eth1, etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network resource for this instance. When creating an instance, if
        # neither the network nor the subnetwork is specified, the default network
        # global/networks/default is used; if the network is not specified but the
        # subnetwork is specified, the network is inferred.
        # This field is optional when creating a firewall rule. If not specified when
        # creating a firewall rule, the default network global/networks/default is used.
        # If you specify this property, you can specify the network as a full or partial
        # URL. For example, the following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/global/networks/
        # network
        # - projects/project/global/networks/network
        # - global/networks/default
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # An IPv4 internal network address to assign to the instance for this network
        # interface. If not specified by the user, an unused internal IP is assigned by
        # the system.
        # Corresponds to the JSON property `networkIP`
        # @return [String]
        attr_accessor :network_ip
      
        # The URL of the Subnetwork resource for this instance. If the network resource
        # is in legacy mode, do not provide this property. If the network is in auto
        # subnet mode, providing the subnetwork is optional. If the network is in custom
        # subnet mode, then this field should be specified. If you specify this property,
        # you can specify the subnetwork as a full or partial URL. For example, the
        # following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/regions/region/
        # subnetworks/subnetwork
        # - regions/region/subnetworks/subnetwork
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_configs = args[:access_configs] if args.key?(:access_configs)
          @alias_ip_ranges = args[:alias_ip_ranges] if args.key?(:alias_ip_ranges)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_ip = args[:network_ip] if args.key?(:network_ip)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Contains a list of networks.
      class NetworkList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Network resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Network>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#networkList for lists of
        # networks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::NetworkList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::NetworkList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A network peering attached to a network resource. The message includes the
      # peering name, peer network, peering state, and a flag indicating whether
      # Google Compute Engine should automatically create routes for the peering.
      class NetworkPeering
        include Google::Apis::Core::Hashable
      
        # Whether full mesh connectivity is created and managed automatically. When it
        # is set to true, Google Compute Engine will automatically create and manage the
        # routes between two networks when the state is ACTIVE. Otherwise, user needs to
        # create routes manually to route packets to peer network.
        # Corresponds to the JSON property `autoCreateRoutes`
        # @return [Boolean]
        attr_accessor :auto_create_routes
        alias_method :auto_create_routes?, :auto_create_routes
      
        # Name of this peering. Provided by the client when the peering is created. The
        # name must comply with RFC1035. Specifically, the name must be 1-63 characters
        # long and match regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the
        # first character must be a lowercase letter, and all the following characters
        # must be a dash, lowercase letter, or digit, except the last character, which
        # cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URL of the peer network. It can be either full URL or partial URL. The
        # peer network may belong to a different project. If the partial URL does not
        # contain project, it is assumed that the peer network is in the same project as
        # the current network.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] State for the peering.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # [Output Only] Details about the current state of the peering.
        # Corresponds to the JSON property `stateDetails`
        # @return [String]
        attr_accessor :state_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_create_routes = args[:auto_create_routes] if args.key?(:auto_create_routes)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @state = args[:state] if args.key?(:state)
          @state_details = args[:state_details] if args.key?(:state_details)
        end
      end
      
      # A routing configuration attached to a network resource. The message includes
      # the list of routers associated with the network, and a flag indicating the
      # type of routing behavior to enforce network-wide.
      class NetworkRoutingConfig
        include Google::Apis::Core::Hashable
      
        # The network-wide routing mode to use. If set to REGIONAL, this network's cloud
        # routers will only advertise routes with subnetworks of this network in the
        # same region as the router. If set to GLOBAL, this network's cloud routers will
        # advertise routes with all subnetworks of this network, across regions.
        # Corresponds to the JSON property `routingMode`
        # @return [String]
        attr_accessor :routing_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @routing_mode = args[:routing_mode] if args.key?(:routing_mode)
        end
      end
      
      # 
      class NetworksAddPeeringRequest
        include Google::Apis::Core::Hashable
      
        # Whether Google Compute Engine manages the routes automatically.
        # Corresponds to the JSON property `autoCreateRoutes`
        # @return [Boolean]
        attr_accessor :auto_create_routes
        alias_method :auto_create_routes?, :auto_create_routes
      
        # Name of the peering, which should conform to RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the peer network. It can be either full URL or partial URL. The peer
        # network may belong to a different project. If the partial URL does not contain
        # project, it is assumed that the peer network is in the same project as the
        # current network.
        # Corresponds to the JSON property `peerNetwork`
        # @return [String]
        attr_accessor :peer_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_create_routes = args[:auto_create_routes] if args.key?(:auto_create_routes)
          @name = args[:name] if args.key?(:name)
          @peer_network = args[:peer_network] if args.key?(:peer_network)
        end
      end
      
      # 
      class NetworksRemovePeeringRequest
        include Google::Apis::Core::Hashable
      
        # Name of the peering, which should conform to RFC1035.
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
      
      # An Operation resource, used to manage asynchronous API requests. (==
      # resource_for v1.globalOperations ==) (== resource_for beta.globalOperations ==)
      # (== resource_for v1.regionOperations ==) (== resource_for beta.
      # regionOperations ==) (== resource_for v1.zoneOperations ==) (== resource_for
      # beta.zoneOperations ==)
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output Only] The value of `requestId` if you provided it in the request. Not
        # present otherwise.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Deprecated] This field is deprecated.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] A textual description of the operation, which is set when the
        # operation is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The time that this operation was completed. This value is in
        # RFC3339 text format.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::ComputeV1::Operation::Error]
        attr_accessor :error
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # message that was returned, such as NOT FOUND.
        # Corresponds to the JSON property `httpErrorMessage`
        # @return [String]
        attr_accessor :http_error_message
      
        # [Output Only] If the operation fails, this field contains the HTTP error
        # status code that was returned. For example, a 404 means the resource was not
        # found.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This value is in
        # RFC3339 text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always compute#operation for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] The type of operation, such as insert, update, or delete, and so
        # on.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess when the operation will be complete. This
        # number should monotonically increase as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] The URL of the region where the operation resides. Only
        # available when performing regional operations. You must specify this field as
        # part of the HTTP request URL. It is not settable as a field in the request
        # body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This
        # value is in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] The status of the operation, which can be one of the following:
        # PENDING, RUNNING, or DONE.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] The unique target ID, which identifies a specific incarnation of
        # the target resource.
        # Corresponds to the JSON property `targetId`
        # @return [Fixnum]
        attr_accessor :target_id
      
        # [Output Only] The URL of the resource that the operation modifies. For
        # operations related to creating a snapshot, this points to the persistent disk
        # that the snapshot was created from.
        # Corresponds to the JSON property `targetLink`
        # @return [String]
        attr_accessor :target_link
      
        # [Output Only] User who requested the operation, for example: user@example.com.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # [Output Only] If warning messages are generated during processing of the
        # operation, this field will be populated.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ComputeV1::Operation::Warning>]
        attr_accessor :warnings
      
        # [Output Only] The URL of the zone where the operation resides. Only available
        # when performing per-zone operations. You must specify this field as part of
        # the HTTP request URL. It is not settable as a field in the request body.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] if args.key?(:client_operation_id)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @http_error_message = args[:http_error_message] if args.key?(:http_error_message)
          @http_error_status_code = args[:http_error_status_code] if args.key?(:http_error_status_code)
          @id = args[:id] if args.key?(:id)
          @insert_time = args[:insert_time] if args.key?(:insert_time)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @progress = args[:progress] if args.key?(:progress)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target_id = args[:target_id] if args.key?(:target_id)
          @target_link = args[:target_link] if args.key?(:target_link)
          @user = args[:user] if args.key?(:user)
          @warnings = args[:warnings] if args.key?(:warnings)
          @zone = args[:zone] if args.key?(:zone)
        end
        
        # [Output Only] If errors are generated during processing of the operation, this
        # field will be populated.
        class Error
          include Google::Apis::Core::Hashable
        
          # [Output Only] The array of errors encountered while processing this operation.
          # Corresponds to the JSON property `errors`
          # @return [Array<Google::Apis::ComputeV1::Operation::Error::Error>]
          attr_accessor :errors
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @errors = args[:errors] if args.key?(:errors)
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request that caused the error. This
            # property is optional.
            # Corresponds to the JSON property `location`
            # @return [String]
            attr_accessor :location
          
            # [Output Only] An optional, human-readable error message.
            # Corresponds to the JSON property `message`
            # @return [String]
            attr_accessor :message
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @code = args[:code] if args.key?(:code)
              @location = args[:location] if args.key?(:location)
              @message = args[:message] if args.key?(:message)
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class OperationAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped operation lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::OperationsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operationAggregatedList for
        # aggregated lists of operations.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::OperationAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::OperationAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Operation resources.
      class OperationList
        include Google::Apis::Core::Hashable
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Operation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operations for Operations
        # resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::OperationList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::OperationList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class OperationsScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of operations contained in this scope.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::ComputeV1::Operation>]
        attr_accessor :operations
      
        # [Output Only] Informational warning which replaces the list of operations when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::OperationsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operations = args[:operations] if args.key?(:operations)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of operations when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::OperationsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A matcher for the path portion of the URL. The BackendService from the longest-
      # matched rule will serve the URL. If no rule was matched, the default service
      # will be used.
      class PathMatcher
        include Google::Apis::Core::Hashable
      
        # The full or partial URL to the BackendService resource. This will be used if
        # none of the pathRules defined by this PathMatcher is matched by the URL's path
        # portion. For example, the following are all valid URLs to a BackendService
        # resource:
        # - https://www.googleapis.com/compute/v1/projects/project/global/
        # backendServices/backendService
        # - compute/v1/projects/project/global/backendServices/backendService
        # - global/backendServices/backendService
        # Corresponds to the JSON property `defaultService`
        # @return [String]
        attr_accessor :default_service
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The name to which this PathMatcher is referred by the HostRule.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of path rules.
        # Corresponds to the JSON property `pathRules`
        # @return [Array<Google::Apis::ComputeV1::PathRule>]
        attr_accessor :path_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_service = args[:default_service] if args.key?(:default_service)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @path_rules = args[:path_rules] if args.key?(:path_rules)
        end
      end
      
      # A path-matching rule for a URL. If matched, will use the specified
      # BackendService to handle the traffic arriving at this URL.
      class PathRule
        include Google::Apis::Core::Hashable
      
        # The list of path patterns to match. Each must start with / and the only place
        # a * is allowed is at the end following a /. The string fed to the path matcher
        # does not include any text after the first ? or #, and those chars are not
        # allowed here.
        # Corresponds to the JSON property `paths`
        # @return [Array<String>]
        attr_accessor :paths
      
        # The URL of the BackendService resource if this rule is matched.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @paths = args[:paths] if args.key?(:paths)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # A Project resource. For an overview of projects, see  Cloud Platform Resource
      # Hierarchy. (== resource_for v1.projects ==) (== resource_for beta.projects ==)
      class Project
        include Google::Apis::Core::Hashable
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `commonInstanceMetadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :common_instance_metadata
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] Default service account used by VMs running in this project.
        # Corresponds to the JSON property `defaultServiceAccount`
        # @return [String]
        attr_accessor :default_service_account
      
        # An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Restricted features enabled for use on this project.
        # Corresponds to the JSON property `enabledFeatures`
        # @return [Array<String>]
        attr_accessor :enabled_features
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server. This is not the project ID, and is just a unique ID
        # used by Compute Engine to identify resources.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#project for projects.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The project ID. For example: my-example-project. Use the project ID to make
        # requests to Compute Engine.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Quotas assigned to this project.
        # Corresponds to the JSON property `quotas`
        # @return [Array<Google::Apis::ComputeV1::Quota>]
        attr_accessor :quotas
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The location in Cloud Storage and naming method of the daily usage report.
        # Contains bucket_name and report_name prefix.
        # Corresponds to the JSON property `usageExportLocation`
        # @return [Google::Apis::ComputeV1::UsageExportLocation]
        attr_accessor :usage_export_location
      
        # [Output Only] The role this project has in a shared VPC configuration.
        # Currently only HOST projects are differentiated.
        # Corresponds to the JSON property `xpnProjectStatus`
        # @return [String]
        attr_accessor :xpn_project_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_instance_metadata = args[:common_instance_metadata] if args.key?(:common_instance_metadata)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @default_service_account = args[:default_service_account] if args.key?(:default_service_account)
          @description = args[:description] if args.key?(:description)
          @enabled_features = args[:enabled_features] if args.key?(:enabled_features)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @quotas = args[:quotas] if args.key?(:quotas)
          @self_link = args[:self_link] if args.key?(:self_link)
          @usage_export_location = args[:usage_export_location] if args.key?(:usage_export_location)
          @xpn_project_status = args[:xpn_project_status] if args.key?(:xpn_project_status)
        end
      end
      
      # 
      class ProjectsDisableXpnResourceRequest
        include Google::Apis::Core::Hashable
      
        # Service resource (a.k.a service project) ID.
        # Corresponds to the JSON property `xpnResource`
        # @return [Google::Apis::ComputeV1::XpnResourceId]
        attr_accessor :xpn_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @xpn_resource = args[:xpn_resource] if args.key?(:xpn_resource)
        end
      end
      
      # 
      class ProjectsEnableXpnResourceRequest
        include Google::Apis::Core::Hashable
      
        # Service resource (a.k.a service project) ID.
        # Corresponds to the JSON property `xpnResource`
        # @return [Google::Apis::ComputeV1::XpnResourceId]
        attr_accessor :xpn_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @xpn_resource = args[:xpn_resource] if args.key?(:xpn_resource)
        end
      end
      
      # 
      class ProjectsGetXpnResources
        include Google::Apis::Core::Hashable
      
        # [Output Only] Type of resource. Always compute#projectsGetXpnResources for
        # lists of service resources (a.k.a service projects)
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Service resources (a.k.a service projects) attached to this project as their
        # shared VPC host.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::ComputeV1::XpnResourceId>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # 
      class ProjectsListXpnHostsRequest
        include Google::Apis::Core::Hashable
      
        # Optional organization ID managed by Cloud Resource Manager, for which to list
        # shared VPC host projects. If not specified, the organization will be inferred
        # from the project.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @organization = args[:organization] if args.key?(:organization)
        end
      end
      
      # A quotas entry.
      class Quota
        include Google::Apis::Core::Hashable
      
        # [Output Only] Quota limit for this metric.
        # Corresponds to the JSON property `limit`
        # @return [Float]
        attr_accessor :limit
      
        # [Output Only] Name of the quota metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # [Output Only] Current usage of this metric.
        # Corresponds to the JSON property `usage`
        # @return [Float]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @limit = args[:limit] if args.key?(:limit)
          @metric = args[:metric] if args.key?(:metric)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # Represents a reference to a resource.
      class Reference
        include Google::Apis::Core::Hashable
      
        # [Output Only] Type of the resource. Always compute#reference for references.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A description of the reference type with no implied semantics. Possible values
        # include:
        # - MEMBER_OF
        # Corresponds to the JSON property `referenceType`
        # @return [String]
        attr_accessor :reference_type
      
        # URL of the resource which refers to the target.
        # Corresponds to the JSON property `referrer`
        # @return [String]
        attr_accessor :referrer
      
        # URL of the resource to which this reference points.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @reference_type = args[:reference_type] if args.key?(:reference_type)
          @referrer = args[:referrer] if args.key?(:referrer)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # Region resource. (== resource_for beta.regions ==) (== resource_for v1.regions
      # ==)
      class Region
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] Textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#region for regions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Quotas assigned to this region.
        # Corresponds to the JSON property `quotas`
        # @return [Array<Google::Apis::ComputeV1::Quota>]
        attr_accessor :quotas
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Status of the region, either UP or DOWN.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] A list of zones available in this region, in the form of
        # resource URLs.
        # Corresponds to the JSON property `zones`
        # @return [Array<String>]
        attr_accessor :zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @quotas = args[:quotas] if args.key?(:quotas)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @zones = args[:zones] if args.key?(:zones)
        end
      end
      
      # Contains a list of autoscalers.
      class RegionAutoscalerList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Autoscaler resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Autoscaler>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RegionAutoscalerList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RegionAutoscalerList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RegionDiskTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of DiskType resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::DiskType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#regionDiskTypeList for region
        # disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RegionDiskTypeList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RegionDiskTypeList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RegionDisksResizeRequest
        include Google::Apis::Core::Hashable
      
        # The new size of the regional persistent disk, which is specified in GB.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
        end
      end
      
      # Contains a list of InstanceGroup resources.
      class RegionInstanceGroupList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceGroup resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroup>]
        attr_accessor :items
      
        # The resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RegionInstanceGroupList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RegionInstanceGroupList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of managed instance groups.
      class RegionInstanceGroupManagerList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceGroupManager resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceGroupManager>]
        attr_accessor :items
      
        # [Output Only] The resource type, which is always compute#
        # instanceGroupManagerList for a list of managed instance groups that exist in
        # th regional scope.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RegionInstanceGroupManagerList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RegionInstanceGroupManagerList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RegionInstanceGroupManagersAbandonInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URLs of one or more instances to abandon. This can be a full URL or a
        # partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class RegionInstanceGroupManagersDeleteInstancesRequest
        include Google::Apis::Core::Hashable
      
        # The URLs of one or more instances to delete. This can be a full URL or a
        # partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class RegionInstanceGroupManagersListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A list of managed instances.
        # Corresponds to the JSON property `managedInstances`
        # @return [Array<Google::Apis::ComputeV1::ManagedInstance>]
        attr_accessor :managed_instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_instances = args[:managed_instances] if args.key?(:managed_instances)
        end
      end
      
      # 
      class RegionInstanceGroupManagersRecreateRequest
        include Google::Apis::Core::Hashable
      
        # The URLs of one or more instances to recreate. This can be a full URL or a
        # partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class RegionInstanceGroupManagersSetTargetPoolsRequest
        include Google::Apis::Core::Hashable
      
        # Fingerprint of the target pools information, which is a hash of the contents.
        # This field is used for optimistic locking when you update the target pool
        # entries. This field is optional.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # The URL of all TargetPool resources to which instances in the instanceGroup
        # field are added. The target pools automatically apply to all of the instances
        # in the managed instance group.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<String>]
        attr_accessor :target_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
        end
      end
      
      # 
      class RegionInstanceGroupManagersSetTemplateRequest
        include Google::Apis::Core::Hashable
      
        # URL of the InstanceTemplate resource from which all new instances will be
        # created.
        # Corresponds to the JSON property `instanceTemplate`
        # @return [String]
        attr_accessor :instance_template
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_template = args[:instance_template] if args.key?(:instance_template)
        end
      end
      
      # 
      class RegionInstanceGroupsListInstances
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of InstanceWithNamedPorts resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::InstanceWithNamedPorts>]
        attr_accessor :items
      
        # The resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RegionInstanceGroupsListInstances::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RegionInstanceGroupsListInstances::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RegionInstanceGroupsListInstancesRequest
        include Google::Apis::Core::Hashable
      
        # Instances in which state should be returned. Valid options are: 'ALL', '
        # RUNNING'. By default, it lists all instances.
        # Corresponds to the JSON property `instanceState`
        # @return [String]
        attr_accessor :instance_state
      
        # Name of port user is interested in. It is optional. If it is set, only
        # information about this ports will be returned. If it is not set, all the named
        # ports will be returned. Always lists all instances.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_state = args[:instance_state] if args.key?(:instance_state)
          @port_name = args[:port_name] if args.key?(:port_name)
        end
      end
      
      # 
      class RegionInstanceGroupsSetNamedPortsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the named ports information for this instance group. Use
        # this optional property to prevent conflicts when multiple users change the
        # named ports settings concurrently. Obtain the fingerprint with the
        # instanceGroups.get method. Then, include the fingerprint in your request to
        # ensure that you do not overwrite changes that were applied from another
        # concurrent request.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of named ports to set for this instance group.
        # Corresponds to the JSON property `namedPorts`
        # @return [Array<Google::Apis::ComputeV1::NamedPort>]
        attr_accessor :named_ports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @named_ports = args[:named_ports] if args.key?(:named_ports)
        end
      end
      
      # Contains a list of region resources.
      class RegionList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Region resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Region>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#regionList for lists of regions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RegionList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RegionList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RegionSetLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the previous set of labels for this resource, used to
        # detect conflicts. The fingerprint is initially generated by Compute Engine and
        # changes after every request to modify or update labels. You must always
        # provide an up-to-date fingerprint hash in order to update or change labels.
        # Make a get() request to the resource to get the latest fingerprint.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # The labels to set for this resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # Commitment for a particular resource (a Commitment is composed of one or more
      # of these).
      class ResourceCommitment
        include Google::Apis::Core::Hashable
      
        # The amount of the resource purchased (in a type-dependent unit, such as bytes).
        # For vCPUs, this can just be an integer. For memory, this must be provided in
        # MB. Memory must be a multiple of 256 MB, with up to 6.5GB of memory per every
        # vCPU.
        # Corresponds to the JSON property `amount`
        # @return [Fixnum]
        attr_accessor :amount
      
        # Type of resource for which this commitment applies. Possible values are VCPU
        # and MEMORY
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ResourceGroupReference
        include Google::Apis::Core::Hashable
      
        # A URI referencing one of the instance groups listed in the backend service.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
        end
      end
      
      # Represents a Route resource. A route specifies how certain packets should be
      # handled by the network. Routes are associated with instances by tags and the
      # set of routes for a particular instance is called its routing table.
      # For each packet leaving an instance, the system searches that instance's
      # routing table for a single best matching route. Routes match packets by
      # destination IP address, preferring smaller or more specific ranges over larger
      # ones. If there is a tie, the system selects the route with the smallest
      # priority value. If there is still a tie, it uses the layer three and four
      # packet headers to select just one of the remaining matching routes. The packet
      # is then forwarded as specified by the nextHop field of the winning route -
      # either to another instance destination, an instance gateway, or a Google
      # Compute Engine-operated gateway.
      # Packets that do not match any route in the sending instance's routing table
      # are dropped. (== resource_for beta.routes ==) (== resource_for v1.routes ==)
      class Route
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The destination range of outgoing packets that this route applies to. Only
        # IPv4 is supported.
        # Corresponds to the JSON property `destRange`
        # @return [String]
        attr_accessor :dest_range
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of this resource. Always compute#routes for Route resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Fully-qualified URL of the network that this route applies to.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The URL to a gateway that should handle matching packets. You can only specify
        # the internet gateway using a full or partial valid URL:  projects/<project-id>/
        # global/gateways/default-internet-gateway
        # Corresponds to the JSON property `nextHopGateway`
        # @return [String]
        attr_accessor :next_hop_gateway
      
        # The URL to an instance that should handle matching packets. You can specify
        # this as a full or partial URL. For example:
        # https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
        # Corresponds to the JSON property `nextHopInstance`
        # @return [String]
        attr_accessor :next_hop_instance
      
        # The network IP address of an instance that should handle matching packets.
        # Only IPv4 is supported.
        # Corresponds to the JSON property `nextHopIp`
        # @return [String]
        attr_accessor :next_hop_ip
      
        # The URL of the local network if it should handle matching packets.
        # Corresponds to the JSON property `nextHopNetwork`
        # @return [String]
        attr_accessor :next_hop_network
      
        # [Output Only] The network peering name that should handle matching packets,
        # which should conform to RFC1035.
        # Corresponds to the JSON property `nextHopPeering`
        # @return [String]
        attr_accessor :next_hop_peering
      
        # The URL to a VpnTunnel that should handle matching packets.
        # Corresponds to the JSON property `nextHopVpnTunnel`
        # @return [String]
        attr_accessor :next_hop_vpn_tunnel
      
        # The priority of this route. Priority is used to break ties in cases where
        # there is more than one matching route of equal prefix length. In the case of
        # two routes with equal prefix length, the one with the lowest-numbered priority
        # value wins. Default value is 1000. Valid range is 0 through 65535.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # A list of instance tags to which this route applies.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # [Output Only] If potential misconfigurations are detected for this route, this
        # field will be populated with warning messages.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ComputeV1::Route::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @dest_range = args[:dest_range] if args.key?(:dest_range)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @next_hop_gateway = args[:next_hop_gateway] if args.key?(:next_hop_gateway)
          @next_hop_instance = args[:next_hop_instance] if args.key?(:next_hop_instance)
          @next_hop_ip = args[:next_hop_ip] if args.key?(:next_hop_ip)
          @next_hop_network = args[:next_hop_network] if args.key?(:next_hop_network)
          @next_hop_peering = args[:next_hop_peering] if args.key?(:next_hop_peering)
          @next_hop_vpn_tunnel = args[:next_hop_vpn_tunnel] if args.key?(:next_hop_vpn_tunnel)
          @priority = args[:priority] if args.key?(:priority)
          @self_link = args[:self_link] if args.key?(:self_link)
          @tags = args[:tags] if args.key?(:tags)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::Route::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Route resources.
      class RouteList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Route resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Route>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RouteList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RouteList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Router resource.
      class Router
        include Google::Apis::Core::Hashable
      
        # BGP information specific to this router.
        # Corresponds to the JSON property `bgp`
        # @return [Google::Apis::ComputeV1::RouterBgp]
        attr_accessor :bgp
      
        # BGP information that needs to be configured into the routing stack to
        # establish the BGP peering. It must specify peer ASN and either interface name,
        # IP, or peer IP. Please refer to RFC4273.
        # Corresponds to the JSON property `bgpPeers`
        # @return [Array<Google::Apis::ComputeV1::RouterBgpPeer>]
        attr_accessor :bgp_peers
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # Router interfaces. Each interface requires either one linked resource (e.g.
        # linkedVpnTunnel), or IP address and IP address range (e.g. ipRange), or both.
        # Corresponds to the JSON property `interfaces`
        # @return [Array<Google::Apis::ComputeV1::RouterInterface>]
        attr_accessor :interfaces
      
        # [Output Only] Type of resource. Always compute#router for routers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URI of the network to which this router belongs.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] URI of the region where the router resides. You must specify
        # this field as part of the HTTP request URL. It is not settable as a field in
        # the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bgp = args[:bgp] if args.key?(:bgp)
          @bgp_peers = args[:bgp_peers] if args.key?(:bgp_peers)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @interfaces = args[:interfaces] if args.key?(:interfaces)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Description-tagged IP ranges for the router to advertise.
      class RouterAdvertisedIpRange
        include Google::Apis::Core::Hashable
      
        # User-specified description for the IP range.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The IP range to advertise. The value must be a CIDR-formatted string.
        # Corresponds to the JSON property `range`
        # @return [String]
        attr_accessor :range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @range = args[:range] if args.key?(:range)
        end
      end
      
      # Contains a list of routers.
      class RouterAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Router resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::RoutersScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RouterAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RouterAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RouterBgp
        include Google::Apis::Core::Hashable
      
        # User-specified flag to indicate which mode to use for advertisement.
        # Corresponds to the JSON property `advertiseMode`
        # @return [String]
        attr_accessor :advertise_mode
      
        # User-specified list of prefix groups to advertise in custom mode. This field
        # can only be populated if advertise_mode is CUSTOM and is advertised to all
        # peers of the router. These groups will be advertised in addition to any
        # specified prefixes. Leave this field blank to advertise no custom groups.
        # Corresponds to the JSON property `advertisedGroups`
        # @return [Array<String>]
        attr_accessor :advertised_groups
      
        # User-specified list of individual IP ranges to advertise in custom mode. This
        # field can only be populated if advertise_mode is CUSTOM and is advertised to
        # all peers of the router. These IP ranges will be advertised in addition to any
        # specified groups. Leave this field blank to advertise no custom IP ranges.
        # Corresponds to the JSON property `advertisedIpRanges`
        # @return [Array<Google::Apis::ComputeV1::RouterAdvertisedIpRange>]
        attr_accessor :advertised_ip_ranges
      
        # Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN,
        # either 16-bit or 32-bit. The value will be fixed for this router resource. All
        # VPN tunnels that link to this router will have the same local ASN.
        # Corresponds to the JSON property `asn`
        # @return [Fixnum]
        attr_accessor :asn
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertise_mode = args[:advertise_mode] if args.key?(:advertise_mode)
          @advertised_groups = args[:advertised_groups] if args.key?(:advertised_groups)
          @advertised_ip_ranges = args[:advertised_ip_ranges] if args.key?(:advertised_ip_ranges)
          @asn = args[:asn] if args.key?(:asn)
        end
      end
      
      # 
      class RouterBgpPeer
        include Google::Apis::Core::Hashable
      
        # User-specified flag to indicate which mode to use for advertisement.
        # Corresponds to the JSON property `advertiseMode`
        # @return [String]
        attr_accessor :advertise_mode
      
        # User-specified list of prefix groups to advertise in custom mode. This field
        # can only be populated if advertise_mode is CUSTOM and overrides the list
        # defined for the router (in Bgp message). These groups will be advertised in
        # addition to any specified prefixes. Leave this field blank to advertise no
        # custom groups.
        # Corresponds to the JSON property `advertisedGroups`
        # @return [Array<String>]
        attr_accessor :advertised_groups
      
        # User-specified list of individual IP ranges to advertise in custom mode. This
        # field can only be populated if advertise_mode is CUSTOM and overrides the list
        # defined for the router (in Bgp message). These IP ranges will be advertised in
        # addition to any specified groups. Leave this field blank to advertise no
        # custom IP ranges.
        # Corresponds to the JSON property `advertisedIpRanges`
        # @return [Array<Google::Apis::ComputeV1::RouterAdvertisedIpRange>]
        attr_accessor :advertised_ip_ranges
      
        # The priority of routes advertised to this BGP peer. In the case where there is
        # more than one matching route of maximum length, the routes with lowest
        # priority value win.
        # Corresponds to the JSON property `advertisedRoutePriority`
        # @return [Fixnum]
        attr_accessor :advertised_route_priority
      
        # Name of the interface the BGP peer is associated with.
        # Corresponds to the JSON property `interfaceName`
        # @return [String]
        attr_accessor :interface_name
      
        # IP address of the interface inside Google Cloud Platform. Only IPv4 is
        # supported.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Name of this BGP peer. The name must be 1-63 characters long and comply with
        # RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Peer BGP Autonomous System Number (ASN). For VPN use case, this value can be
        # different for every tunnel.
        # Corresponds to the JSON property `peerAsn`
        # @return [Fixnum]
        attr_accessor :peer_asn
      
        # IP address of the BGP interface outside Google cloud. Only IPv4 is supported.
        # Corresponds to the JSON property `peerIpAddress`
        # @return [String]
        attr_accessor :peer_ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertise_mode = args[:advertise_mode] if args.key?(:advertise_mode)
          @advertised_groups = args[:advertised_groups] if args.key?(:advertised_groups)
          @advertised_ip_ranges = args[:advertised_ip_ranges] if args.key?(:advertised_ip_ranges)
          @advertised_route_priority = args[:advertised_route_priority] if args.key?(:advertised_route_priority)
          @interface_name = args[:interface_name] if args.key?(:interface_name)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @name = args[:name] if args.key?(:name)
          @peer_asn = args[:peer_asn] if args.key?(:peer_asn)
          @peer_ip_address = args[:peer_ip_address] if args.key?(:peer_ip_address)
        end
      end
      
      # 
      class RouterInterface
        include Google::Apis::Core::Hashable
      
        # IP address and range of the interface. The IP range must be in the RFC3927
        # link-local IP space. The value must be a CIDR-formatted string, for example:
        # 169.254.0.1/30. NOTE: Do not truncate the address as it represents the IP
        # address of the interface.
        # Corresponds to the JSON property `ipRange`
        # @return [String]
        attr_accessor :ip_range
      
        # URI of the linked interconnect attachment. It must be in the same region as
        # the router. Each interface can have at most one linked resource and it could
        # either be a VPN Tunnel or an interconnect attachment.
        # Corresponds to the JSON property `linkedInterconnectAttachment`
        # @return [String]
        attr_accessor :linked_interconnect_attachment
      
        # URI of the linked VPN tunnel. It must be in the same region as the router.
        # Each interface can have at most one linked resource and it could either be a
        # VPN Tunnel or an interconnect attachment.
        # Corresponds to the JSON property `linkedVpnTunnel`
        # @return [String]
        attr_accessor :linked_vpn_tunnel
      
        # Name of this interface entry. The name must be 1-63 characters long and comply
        # with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_range = args[:ip_range] if args.key?(:ip_range)
          @linked_interconnect_attachment = args[:linked_interconnect_attachment] if args.key?(:linked_interconnect_attachment)
          @linked_vpn_tunnel = args[:linked_vpn_tunnel] if args.key?(:linked_vpn_tunnel)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Contains a list of Router resources.
      class RouterList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Router resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Router>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#router for routers.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RouterList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RouterList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class RouterStatus
        include Google::Apis::Core::Hashable
      
        # Best routes for this router's network.
        # Corresponds to the JSON property `bestRoutes`
        # @return [Array<Google::Apis::ComputeV1::Route>]
        attr_accessor :best_routes
      
        # Best routes learned by this router.
        # Corresponds to the JSON property `bestRoutesForRouter`
        # @return [Array<Google::Apis::ComputeV1::Route>]
        attr_accessor :best_routes_for_router
      
        # 
        # Corresponds to the JSON property `bgpPeerStatus`
        # @return [Array<Google::Apis::ComputeV1::RouterStatusBgpPeerStatus>]
        attr_accessor :bgp_peer_status
      
        # URI of the network to which this router belongs.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @best_routes = args[:best_routes] if args.key?(:best_routes)
          @best_routes_for_router = args[:best_routes_for_router] if args.key?(:best_routes_for_router)
          @bgp_peer_status = args[:bgp_peer_status] if args.key?(:bgp_peer_status)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # 
      class RouterStatusBgpPeerStatus
        include Google::Apis::Core::Hashable
      
        # Routes that were advertised to the remote BGP peer
        # Corresponds to the JSON property `advertisedRoutes`
        # @return [Array<Google::Apis::ComputeV1::Route>]
        attr_accessor :advertised_routes
      
        # IP address of the local BGP interface.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # URL of the VPN tunnel that this BGP peer controls.
        # Corresponds to the JSON property `linkedVpnTunnel`
        # @return [String]
        attr_accessor :linked_vpn_tunnel
      
        # Name of this BGP peer. Unique within the Routers resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Number of routes learned from the remote BGP Peer.
        # Corresponds to the JSON property `numLearnedRoutes`
        # @return [Fixnum]
        attr_accessor :num_learned_routes
      
        # IP address of the remote BGP interface.
        # Corresponds to the JSON property `peerIpAddress`
        # @return [String]
        attr_accessor :peer_ip_address
      
        # BGP state as specified in RFC1771.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Status of the BGP peer: `UP, DOWN`
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Time this session has been up. Format: 14 years, 51 weeks, 6 days, 23 hours,
        # 59 minutes, 59 seconds
        # Corresponds to the JSON property `uptime`
        # @return [String]
        attr_accessor :uptime
      
        # Time this session has been up, in seconds. Format: 145
        # Corresponds to the JSON property `uptimeSeconds`
        # @return [String]
        attr_accessor :uptime_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertised_routes = args[:advertised_routes] if args.key?(:advertised_routes)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @linked_vpn_tunnel = args[:linked_vpn_tunnel] if args.key?(:linked_vpn_tunnel)
          @name = args[:name] if args.key?(:name)
          @num_learned_routes = args[:num_learned_routes] if args.key?(:num_learned_routes)
          @peer_ip_address = args[:peer_ip_address] if args.key?(:peer_ip_address)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
          @uptime = args[:uptime] if args.key?(:uptime)
          @uptime_seconds = args[:uptime_seconds] if args.key?(:uptime_seconds)
        end
      end
      
      # 
      class RouterStatusResponse
        include Google::Apis::Core::Hashable
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ComputeV1::RouterStatus]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # 
      class RoutersPreviewResponse
        include Google::Apis::Core::Hashable
      
        # Router resource.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ComputeV1::Router]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class RoutersScopedList
        include Google::Apis::Core::Hashable
      
        # A list of routers contained in this scope.
        # Corresponds to the JSON property `routers`
        # @return [Array<Google::Apis::ComputeV1::Router>]
        attr_accessor :routers
      
        # Informational warning which replaces the list of routers when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::RoutersScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @routers = args[:routers] if args.key?(:routers)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of routers when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::RoutersScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class SslHealthCheck
        include Google::Apis::Core::Hashable
      
        # The TCP port number for the health check request. The default value is 443.
        # Valid values are 1 through 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Port name as defined in InstanceGroup#NamedPort#name. If both port and
        # port_name are defined, port takes precedence.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # Specifies the type of proxy header to append before sending data to the
        # backend, either NONE or PROXY_V1. The default is NONE.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        # The application data to send once the SSL connection has been established (
        # default value is empty). If both request and response are empty, the
        # connection establishment alone will indicate health. The request data can only
        # be ASCII.
        # Corresponds to the JSON property `request`
        # @return [String]
        attr_accessor :request
      
        # The bytes to match against the beginning of the response data. If left empty (
        # the default value), any response will indicate health. The response data can
        # only be ASCII.
        # Corresponds to the JSON property `response`
        # @return [String]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port = args[:port] if args.key?(:port)
          @port_name = args[:port_name] if args.key?(:port_name)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
          @request = args[:request] if args.key?(:request)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Sets the scheduling options for an Instance.
      class Scheduling
        include Google::Apis::Core::Hashable
      
        # Specifies whether the instance should be automatically restarted if it is
        # terminated by Compute Engine (not terminated by a user). You can only set the
        # automatic restart option for standard instances. Preemptible instances cannot
        # be automatically restarted.
        # By default, this is set to true so an instance is automatically restarted if
        # it is terminated by Compute Engine.
        # Corresponds to the JSON property `automaticRestart`
        # @return [Boolean]
        attr_accessor :automatic_restart
        alias_method :automatic_restart?, :automatic_restart
      
        # Defines the maintenance behavior for this instance. For standard instances,
        # the default behavior is MIGRATE. For preemptible instances, the default and
        # only possible behavior is TERMINATE. For more information, see Setting
        # Instance Scheduling Options.
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # Defines whether the instance is preemptible. This can only be set during
        # instance creation, it cannot be set or changed after the instance has been
        # created.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_restart = args[:automatic_restart] if args.key?(:automatic_restart)
          @on_host_maintenance = args[:on_host_maintenance] if args.key?(:on_host_maintenance)
          @preemptible = args[:preemptible] if args.key?(:preemptible)
        end
      end
      
      # An instance's serial console output.
      class SerialPortOutput
        include Google::Apis::Core::Hashable
      
        # [Output Only] The contents of the console output.
        # Corresponds to the JSON property `contents`
        # @return [String]
        attr_accessor :contents
      
        # [Output Only] Type of the resource. Always compute#serialPortOutput for serial
        # port output.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] The position of the next byte of content from the serial console
        # output. Use this value in the next request as the start parameter.
        # Corresponds to the JSON property `next`
        # @return [Fixnum]
        attr_accessor :next
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The starting byte position of the output that was returned. This should match
        # the start parameter sent with the request. If the serial console output
        # exceeds the size of the buffer, older output will be overwritten by newer
        # content and the start values will be mismatched.
        # Corresponds to the JSON property `start`
        # @return [Fixnum]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @kind = args[:kind] if args.key?(:kind)
          @next = args[:next] if args.key?(:next)
          @self_link = args[:self_link] if args.key?(:self_link)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # A service account.
      class ServiceAccount
        include Google::Apis::Core::Hashable
      
        # Email address of the service account.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The list of scopes to be made available for this service account.
        # Corresponds to the JSON property `scopes`
        # @return [Array<String>]
        attr_accessor :scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @scopes = args[:scopes] if args.key?(:scopes)
        end
      end
      
      # A persistent disk snapshot resource. (== resource_for beta.snapshots ==) (==
      # resource_for v1.snapshots ==)
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Size of the snapshot, specified in GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#snapshot for Snapshot
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A fingerprint for the labels being applied to this snapshot, which is
        # essentially a hash of the labels set used for optimistic locking. The
        # fingerprint is initially generated by Compute Engine and changes after every
        # request to modify or update labels. You must always provide an up-to-date
        # fingerprint hash in order to update or change labels.
        # To see the latest fingerprint, make a get() request to retrieve a snapshot.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # Labels to apply to this snapshot. These can be later modified by the setLabels
        # method. Label values may be empty.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Integer license codes indicating which licenses are attached to this snapshot.
        # Corresponds to the JSON property `licenseCodes`
        # @return [Array<Fixnum>]
        attr_accessor :license_codes
      
        # [Output Only] A list of public visible licenses that apply to this snapshot.
        # This can be because the original image had licenses attached (such as a
        # Windows image).
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `snapshotEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :snapshot_encryption_key
      
        # [Output Only] The source disk used to create this snapshot.
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        # Represents a customer-supplied encryption key
        # Corresponds to the JSON property `sourceDiskEncryptionKey`
        # @return [Google::Apis::ComputeV1::CustomerEncryptionKey]
        attr_accessor :source_disk_encryption_key
      
        # [Output Only] The ID value of the disk used to create this snapshot. This
        # value may be used to determine whether the snapshot was taken from the current
        # or a previous instance of a given disk name.
        # Corresponds to the JSON property `sourceDiskId`
        # @return [String]
        attr_accessor :source_disk_id
      
        # [Output Only] The status of the snapshot. This can be CREATING, DELETING,
        # FAILED, READY, or UPLOADING.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] A size of the storage used by the snapshot. As snapshots share
        # storage, this number is expected to change with snapshot creation/deletion.
        # Corresponds to the JSON property `storageBytes`
        # @return [Fixnum]
        attr_accessor :storage_bytes
      
        # [Output Only] An indicator whether storageBytes is in a stable state or it is
        # being adjusted as a result of shared storage reallocation. This status can
        # either be UPDATING, meaning the size of the snapshot is being updated, or
        # UP_TO_DATE, meaning the size of the snapshot is up-to-date.
        # Corresponds to the JSON property `storageBytesStatus`
        # @return [String]
        attr_accessor :storage_bytes_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
          @license_codes = args[:license_codes] if args.key?(:license_codes)
          @licenses = args[:licenses] if args.key?(:licenses)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @snapshot_encryption_key = args[:snapshot_encryption_key] if args.key?(:snapshot_encryption_key)
          @source_disk = args[:source_disk] if args.key?(:source_disk)
          @source_disk_encryption_key = args[:source_disk_encryption_key] if args.key?(:source_disk_encryption_key)
          @source_disk_id = args[:source_disk_id] if args.key?(:source_disk_id)
          @status = args[:status] if args.key?(:status)
          @storage_bytes = args[:storage_bytes] if args.key?(:storage_bytes)
          @storage_bytes_status = args[:storage_bytes_status] if args.key?(:storage_bytes_status)
        end
      end
      
      # Contains a list of Snapshot resources.
      class SnapshotList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Snapshot resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Snapshot>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SnapshotList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SnapshotList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # An SslCertificate resource. This resource provides a mechanism to upload an
      # SSL key and certificate to the load balancer to serve secure connections from
      # the user. (== resource_for beta.sslCertificates ==) (== resource_for v1.
      # sslCertificates ==)
      class SslCertificate
        include Google::Apis::Core::Hashable
      
        # A local certificate file. The certificate must be in PEM format. The
        # certificate chain must be no greater than 5 certs long. The chain must include
        # at least one intermediate cert.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#sslCertificate for SSL
        # certificates.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A write-only private key in PEM format. Only insert requests will include this
        # field.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # [Output only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @private_key = args[:private_key] if args.key?(:private_key)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # Contains a list of SslCertificate resources.
      class SslCertificateList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of SslCertificate resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::SslCertificate>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SslCertificateList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SslCertificateList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class SslPoliciesList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of SslPolicy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::SslPolicy>]
        attr_accessor :items
      
        # [Output Only] Type of the resource. Always compute#sslPoliciesList for lists
        # of sslPolicies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SslPoliciesList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SslPoliciesList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class SslPoliciesListAvailableFeaturesResponse
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `features`
        # @return [Array<String>]
        attr_accessor :features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @features = args[:features] if args.key?(:features)
        end
      end
      
      # A SSL policy specifies the server-side support for SSL features. This can be
      # attached to a TargetHttpsProxy or a TargetSslProxy. This affects connections
      # between clients and the HTTPS or SSL proxy load balancer. They do not affect
      # the connection between the load balancers and the backends.
      class SslPolicy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # A list of features enabled when the selected profile is CUSTOM. The
        # - method returns the set of features that can be specified in this list. This
        # field must be empty if the profile is not CUSTOM.
        # Corresponds to the JSON property `customFeatures`
        # @return [Array<String>]
        attr_accessor :custom_features
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The list of features enabled in the SSL policy.
        # Corresponds to the JSON property `enabledFeatures`
        # @return [Array<String>]
        attr_accessor :enabled_features
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a SslPolicy. An up-to-date fingerprint must be provided in order to
        # update the SslPolicy.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output only] Type of the resource. Always compute#sslPolicyfor SSL policies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The minimum version of SSL protocol that can be used by the clients to
        # establish a connection with the load balancer. This can be one of TLS_1_0,
        # TLS_1_1, TLS_1_2.
        # Corresponds to the JSON property `minTlsVersion`
        # @return [String]
        attr_accessor :min_tls_version
      
        # Name of the resource. The name must be 1-63 characters long, and comply with
        # RFC1035. Specifically, the name must be 1-63 characters long and match the
        # regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first
        # character must be a lowercase letter, and all following characters must be a
        # dash, lowercase letter, or digit, except the last character, which cannot be a
        # dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Profile specifies the set of SSL features that can be used by the load
        # balancer when negotiating SSL with clients. This can be one of COMPATIBLE,
        # MODERN, RESTRICTED, or CUSTOM. If using CUSTOM, the set of SSL features to
        # enable must be specified in the customFeatures field.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] If potential misconfigurations are detected for this SSL policy,
        # this field will be populated with warning messages.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ComputeV1::SslPolicy::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @description = args[:description] if args.key?(:description)
          @enabled_features = args[:enabled_features] if args.key?(:enabled_features)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @min_tls_version = args[:min_tls_version] if args.key?(:min_tls_version)
          @name = args[:name] if args.key?(:name)
          @profile = args[:profile] if args.key?(:profile)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SslPolicy::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class SslPolicyReference
        include Google::Apis::Core::Hashable
      
        # URL of the SSL policy resource. Set this to empty string to clear any existing
        # SSL policy associated with the target proxy resource.
        # Corresponds to the JSON property `sslPolicy`
        # @return [String]
        attr_accessor :ssl_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssl_policy = args[:ssl_policy] if args.key?(:ssl_policy)
        end
      end
      
      # A Subnetwork resource. (== resource_for beta.subnetworks ==) (== resource_for
      # v1.subnetworks ==)
      class Subnetwork
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource. This field can be set only at resource creation time.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Whether to enable flow logging for this subnetwork.
        # Corresponds to the JSON property `enableFlowLogs`
        # @return [Boolean]
        attr_accessor :enable_flow_logs
        alias_method :enable_flow_logs?, :enable_flow_logs
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a Subnetwork. An up-to-date fingerprint must be provided in order to
        # update the Subnetwork.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # [Output Only] The gateway address for default routes to reach destination
        # addresses outside this subnetwork.
        # Corresponds to the JSON property `gatewayAddress`
        # @return [String]
        attr_accessor :gateway_address
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # The range of internal addresses that are owned by this subnetwork. Provide
        # this property when you create the subnetwork. For example, 10.0.0.0/8 or 192.
        # 168.0.0/16. Ranges must be unique and non-overlapping within a network. Only
        # IPv4 is supported. This field can be set only at resource creation time.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # [Output Only] Type of the resource. Always compute#subnetwork for Subnetwork
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the resource, provided by the client when initially creating the
        # resource. The name must be 1-63 characters long, and comply with RFC1035.
        # Specifically, the name must be 1-63 characters long and match the regular
        # expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must
        # be a lowercase letter, and all following characters must be a dash, lowercase
        # letter, or digit, except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The URL of the network to which this subnetwork belongs, provided by the
        # client when initially creating the subnetwork. Only networks that are in the
        # distributed mode can have subnetworks. This field can be set only at resource
        # creation time.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Whether the VMs in this subnet can access Google services without assigned
        # external IP addresses. This field can be both set at resource creation time
        # and updated using setPrivateIpGoogleAccess.
        # Corresponds to the JSON property `privateIpGoogleAccess`
        # @return [Boolean]
        attr_accessor :private_ip_google_access
        alias_method :private_ip_google_access?, :private_ip_google_access
      
        # URL of the region where the Subnetwork resides. This field can be set only at
        # resource creation time.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # An array of configurations for secondary IP ranges for VM instances contained
        # in this subnetwork. The primary IP of such VM must belong to the primary
        # ipCidrRange of the subnetwork. The alias IPs may belong to either primary or
        # secondary ranges.
        # Corresponds to the JSON property `secondaryIpRanges`
        # @return [Array<Google::Apis::ComputeV1::SubnetworkSecondaryRange>]
        attr_accessor :secondary_ip_ranges
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @enable_flow_logs = args[:enable_flow_logs] if args.key?(:enable_flow_logs)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @gateway_address = args[:gateway_address] if args.key?(:gateway_address)
          @id = args[:id] if args.key?(:id)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @private_ip_google_access = args[:private_ip_google_access] if args.key?(:private_ip_google_access)
          @region = args[:region] if args.key?(:region)
          @secondary_ip_ranges = args[:secondary_ip_ranges] if args.key?(:secondary_ip_ranges)
          @self_link = args[:self_link] if args.key?(:self_link)
        end
      end
      
      # 
      class SubnetworkAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of SubnetworksScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::SubnetworksScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#subnetworkAggregatedList for
        # aggregated lists of subnetworks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SubnetworkAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SubnetworkAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of Subnetwork resources.
      class SubnetworkList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Subnetwork resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Subnetwork>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#subnetworkList for lists of
        # subnetworks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SubnetworkList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SubnetworkList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Represents a secondary IP range of a subnetwork.
      class SubnetworkSecondaryRange
        include Google::Apis::Core::Hashable
      
        # The range of IP addresses belonging to this subnetwork secondary range.
        # Provide this property when you create the subnetwork. Ranges must be unique
        # and non-overlapping with all primary and secondary IP ranges within a network.
        # Only IPv4 is supported.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        # The name associated with this subnetwork secondary range, used when adding an
        # alias IP range to a VM instance. The name must be 1-63 characters long, and
        # comply with RFC1035. The name must be unique within the subnetwork.
        # Corresponds to the JSON property `rangeName`
        # @return [String]
        attr_accessor :range_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
          @range_name = args[:range_name] if args.key?(:range_name)
        end
      end
      
      # 
      class SubnetworksExpandIpCidrRangeRequest
        include Google::Apis::Core::Hashable
      
        # The IP (in CIDR format or netmask) of internal addresses that are legal on
        # this Subnetwork. This range should be disjoint from other subnetworks within
        # this network. This range can only be larger than (i.e. a superset of) the
        # range previously defined before the update.
        # Corresponds to the JSON property `ipCidrRange`
        # @return [String]
        attr_accessor :ip_cidr_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_cidr_range = args[:ip_cidr_range] if args.key?(:ip_cidr_range)
        end
      end
      
      # 
      class SubnetworksScopedList
        include Google::Apis::Core::Hashable
      
        # A list of subnetworks contained in this scope.
        # Corresponds to the JSON property `subnetworks`
        # @return [Array<Google::Apis::ComputeV1::Subnetwork>]
        attr_accessor :subnetworks
      
        # An informational warning that appears when the list of addresses is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::SubnetworksScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnetworks = args[:subnetworks] if args.key?(:subnetworks)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # An informational warning that appears when the list of addresses is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::SubnetworksScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class SubnetworksSetPrivateIpGoogleAccessRequest
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `privateIpGoogleAccess`
        # @return [Boolean]
        attr_accessor :private_ip_google_access
        alias_method :private_ip_google_access?, :private_ip_google_access
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_ip_google_access = args[:private_ip_google_access] if args.key?(:private_ip_google_access)
        end
      end
      
      # 
      class TcpHealthCheck
        include Google::Apis::Core::Hashable
      
        # The TCP port number for the health check request. The default value is 80.
        # Valid values are 1 through 65535.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Port name as defined in InstanceGroup#NamedPort#name. If both port and
        # port_name are defined, port takes precedence.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # Specifies the type of proxy header to append before sending data to the
        # backend, either NONE or PROXY_V1. The default is NONE.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        # The application data to send once the TCP connection has been established (
        # default value is empty). If both request and response are empty, the
        # connection establishment alone will indicate health. The request data can only
        # be ASCII.
        # Corresponds to the JSON property `request`
        # @return [String]
        attr_accessor :request
      
        # The bytes to match against the beginning of the response data. If left empty (
        # the default value), any response will indicate health. The response data can
        # only be ASCII.
        # Corresponds to the JSON property `response`
        # @return [String]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @port = args[:port] if args.key?(:port)
          @port_name = args[:port_name] if args.key?(:port_name)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
          @request = args[:request] if args.key?(:request)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A set of instance tags.
      class Tags
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for this request, which is essentially a hash of the
        # tags' contents and used for optimistic locking. The fingerprint is initially
        # generated by Compute Engine and changes after every request to modify or
        # update tags. You must always provide an up-to-date fingerprint hash in order
        # to update or change tags.
        # To see the latest fingerprint, make get() request to the instance.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # An array of tags. Each tag must be 1-63 characters long, and comply with
        # RFC1035.
        # Corresponds to the JSON property `items`
        # @return [Array<String>]
        attr_accessor :items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @items = args[:items] if args.key?(:items)
        end
      end
      
      # A TargetHttpProxy resource. This resource defines an HTTP proxy. (==
      # resource_for beta.targetHttpProxies ==) (== resource_for v1.targetHttpProxies =
      # =)
      class TargetHttpProxy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetHttpProxy for target HTTP
        # proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL to the UrlMap resource that defines the mapping from URL to the
        # BackendService.
        # Corresponds to the JSON property `urlMap`
        # @return [String]
        attr_accessor :url_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @url_map = args[:url_map] if args.key?(:url_map)
        end
      end
      
      # A list of TargetHttpProxy resources.
      class TargetHttpProxyList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetHttpProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetHttpProxy>]
        attr_accessor :items
      
        # Type of resource. Always compute#targetHttpProxyList for lists of target HTTP
        # proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetHttpProxyList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetHttpProxyList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetHttpsProxiesSetSslCertificatesRequest
        include Google::Apis::Core::Hashable
      
        # New set of SslCertificate resources to associate with this TargetHttpsProxy
        # resource. Currently exactly one SslCertificate resource must be specified.
        # Corresponds to the JSON property `sslCertificates`
        # @return [Array<String>]
        attr_accessor :ssl_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssl_certificates = args[:ssl_certificates] if args.key?(:ssl_certificates)
        end
      end
      
      # A TargetHttpsProxy resource. This resource defines an HTTPS proxy. (==
      # resource_for beta.targetHttpsProxies ==) (== resource_for v1.
      # targetHttpsProxies ==)
      class TargetHttpsProxy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetHttpsProxy for target
        # HTTPS proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URLs to SslCertificate resources that are used to authenticate connections
        # between users and the load balancer. Currently, exactly one SSL certificate
        # must be specified.
        # Corresponds to the JSON property `sslCertificates`
        # @return [Array<String>]
        attr_accessor :ssl_certificates
      
        # URL of SslPolicy resource that will be associated with the TargetHttpsProxy
        # resource. If not set, the TargetHttpsProxy resource will not have any SSL
        # policy configured.
        # Corresponds to the JSON property `sslPolicy`
        # @return [String]
        attr_accessor :ssl_policy
      
        # A fully-qualified or valid partial URL to the UrlMap resource that defines the
        # mapping from URL to the BackendService. For example, the following are all
        # valid URLs for specifying a URL map:
        # - https://www.googleapis.compute/v1/projects/project/global/urlMaps/url-map
        # - projects/project/global/urlMaps/url-map
        # - global/urlMaps/url-map
        # Corresponds to the JSON property `urlMap`
        # @return [String]
        attr_accessor :url_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @self_link = args[:self_link] if args.key?(:self_link)
          @ssl_certificates = args[:ssl_certificates] if args.key?(:ssl_certificates)
          @ssl_policy = args[:ssl_policy] if args.key?(:ssl_policy)
          @url_map = args[:url_map] if args.key?(:url_map)
        end
      end
      
      # Contains a list of TargetHttpsProxy resources.
      class TargetHttpsProxyList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetHttpsProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetHttpsProxy>]
        attr_accessor :items
      
        # Type of resource. Always compute#targetHttpsProxyList for lists of target
        # HTTPS proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetHttpsProxyList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetHttpsProxyList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A TargetInstance resource. This resource defines an endpoint instance that
      # terminates traffic of certain protocols. (== resource_for beta.targetInstances
      # ==) (== resource_for v1.targetInstances ==)
      class TargetInstance
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # A URL to the virtual machine instance that handles traffic for this target
        # instance. When creating a target instance, you can provide the fully-qualified
        # URL or a valid partial URL to the desired virtual machine. For example, the
        # following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/
        # instance
        # - projects/project/zones/zone/instances/instance
        # - zones/zone/instances/instance
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # [Output Only] The type of the resource. Always compute#targetInstance for
        # target instances.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NAT option controlling how IPs are NAT'ed to the instance. Currently only
        # NO_NAT (default value) is supported.
        # Corresponds to the JSON property `natPolicy`
        # @return [String]
        attr_accessor :nat_policy
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] URL of the zone where the target instance resides. You must
        # specify this field as part of the HTTP request URL. It is not settable as a
        # field in the request body.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @nat_policy = args[:nat_policy] if args.key?(:nat_policy)
          @self_link = args[:self_link] if args.key?(:self_link)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # 
      class TargetInstanceAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetInstance resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetInstancesScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetInstanceAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetInstanceAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of TargetInstance resources.
      class TargetInstanceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetInstance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetInstance>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetInstanceList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetInstanceList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetInstancesScopedList
        include Google::Apis::Core::Hashable
      
        # A list of target instances contained in this scope.
        # Corresponds to the JSON property `targetInstances`
        # @return [Array<Google::Apis::ComputeV1::TargetInstance>]
        attr_accessor :target_instances
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetInstancesScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_instances = args[:target_instances] if args.key?(:target_instances)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetInstancesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # A TargetPool resource. This resource defines a pool of instances, an
      # associated HttpHealthCheck resource, and the fallback target pool. (==
      # resource_for beta.targetPools ==) (== resource_for v1.targetPools ==)
      class TargetPool
        include Google::Apis::Core::Hashable
      
        # This field is applicable only when the containing target pool is serving a
        # forwarding rule as the primary pool, and its failoverRatio field is properly
        # set to a value between [0, 1].
        # backupPool and failoverRatio together define the fallback behavior of the
        # primary target pool: if the ratio of the healthy instances in the primary pool
        # is at or below failoverRatio, traffic arriving at the load-balanced IP will be
        # directed to the backup pool.
        # In case where failoverRatio and backupPool are not set, or all the instances
        # in the backup pool are unhealthy, the traffic will be directed back to the
        # primary pool in the "force" mode, where traffic will be spread to the healthy
        # instances with the best effort, or to all instances when no instance is
        # healthy.
        # Corresponds to the JSON property `backupPool`
        # @return [String]
        attr_accessor :backup_pool
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This field is applicable only when the containing target pool is serving a
        # forwarding rule as the primary pool (i.e., not as a backup pool to some other
        # target pool). The value of the field must be in [0, 1].
        # If set, backupPool must also be set. They together define the fallback
        # behavior of the primary target pool: if the ratio of the healthy instances in
        # the primary pool is at or below this number, traffic arriving at the load-
        # balanced IP will be directed to the backup pool.
        # In case where failoverRatio is not set or all the instances in the backup pool
        # are unhealthy, the traffic will be directed back to the primary pool in the "
        # force" mode, where traffic will be spread to the healthy instances with the
        # best effort, or to all instances when no instance is healthy.
        # Corresponds to the JSON property `failoverRatio`
        # @return [Float]
        attr_accessor :failover_ratio
      
        # The URL of the HttpHealthCheck resource. A member instance in this pool is
        # considered healthy if and only if the health checks pass. An empty list means
        # all member instances will be considered healthy at all times. Only
        # HttpHealthChecks are supported. Only one health check may be specified.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # A list of resource URLs to the virtual machine instances serving this pool.
        # They must live in zones contained in the same region as this pool.
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        # [Output Only] Type of the resource. Always compute#targetPool for target pools.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the target pool resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Sesssion affinity option, must be one of the following values:
        # NONE: Connections from the same client IP may go to any instance in the pool.
        # CLIENT_IP: Connections from the same client IP will go to the same instance in
        # the pool while that instance remains healthy.
        # CLIENT_IP_PROTO: Connections from the same client IP with the same IP protocol
        # will go to the same instance in the pool while that instance remains healthy.
        # Corresponds to the JSON property `sessionAffinity`
        # @return [String]
        attr_accessor :session_affinity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_pool = args[:backup_pool] if args.key?(:backup_pool)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @failover_ratio = args[:failover_ratio] if args.key?(:failover_ratio)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
          @id = args[:id] if args.key?(:id)
          @instances = args[:instances] if args.key?(:instances)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @session_affinity = args[:session_affinity] if args.key?(:session_affinity)
        end
      end
      
      # 
      class TargetPoolAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetPool resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetPoolsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetPoolAggregatedList for
        # aggregated lists of target pools.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetPoolAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetPoolAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetPoolInstanceHealth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthStatus`
        # @return [Array<Google::Apis::ComputeV1::HealthStatus>]
        attr_accessor :health_status
      
        # [Output Only] Type of resource. Always compute#targetPoolInstanceHealth when
        # checking the health of an instance.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_status = args[:health_status] if args.key?(:health_status)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Contains a list of TargetPool resources.
      class TargetPoolList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetPool resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetPool>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetPoolList for lists of
        # target pools.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetPoolList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetPoolList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class AddTargetPoolsHealthCheckRequest
        include Google::Apis::Core::Hashable
      
        # The HttpHealthCheck to add to the target pool.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<Google::Apis::ComputeV1::HealthCheckReference>]
        attr_accessor :health_checks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
        end
      end
      
      # 
      class AddTargetPoolsInstanceRequest
        include Google::Apis::Core::Hashable
      
        # A full or partial URL to an instance to add to this target pool. This can be a
        # full or partial URL. For example, the following are valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project-id/zones/zone/
        # instances/instance-name
        # - projects/project-id/zones/zone/instances/instance-name
        # - zones/zone/instances/instance-name
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class RemoveTargetPoolsHealthCheckRequest
        include Google::Apis::Core::Hashable
      
        # Health check URL to be removed. This can be a full or valid partial URL. For
        # example, the following are valid URLs:
        # - https://www.googleapis.com/compute/beta/projects/project/global/
        # httpHealthChecks/health-check
        # - projects/project/global/httpHealthChecks/health-check
        # - global/httpHealthChecks/health-check
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<Google::Apis::ComputeV1::HealthCheckReference>]
        attr_accessor :health_checks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checks = args[:health_checks] if args.key?(:health_checks)
        end
      end
      
      # 
      class RemoveTargetPoolsInstanceRequest
        include Google::Apis::Core::Hashable
      
        # URLs of the instances to be removed from target pool.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
        end
      end
      
      # 
      class TargetPoolsScopedList
        include Google::Apis::Core::Hashable
      
        # A list of target pools contained in this scope.
        # Corresponds to the JSON property `targetPools`
        # @return [Array<Google::Apis::ComputeV1::TargetPool>]
        attr_accessor :target_pools
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetPoolsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_pools = args[:target_pools] if args.key?(:target_pools)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetPoolsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target = args[:target] if args.key?(:target)
        end
      end
      
      # 
      class TargetSslProxiesSetBackendServiceRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the new BackendService resource for the targetSslProxy.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class TargetSslProxiesSetProxyHeaderRequest
        include Google::Apis::Core::Hashable
      
        # The new type of proxy header to append before sending data to the backend.
        # NONE or PROXY_V1 are allowed.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
        end
      end
      
      # 
      class TargetSslProxiesSetSslCertificatesRequest
        include Google::Apis::Core::Hashable
      
        # New set of URLs to SslCertificate resources to associate with this
        # TargetSslProxy. Currently exactly one ssl certificate must be specified.
        # Corresponds to the JSON property `sslCertificates`
        # @return [Array<String>]
        attr_accessor :ssl_certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssl_certificates = args[:ssl_certificates] if args.key?(:ssl_certificates)
        end
      end
      
      # A TargetSslProxy resource. This resource defines an SSL proxy. (==
      # resource_for beta.targetSslProxies ==) (== resource_for v1.targetSslProxies ==)
      class TargetSslProxy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#targetSslProxy for target
        # SSL proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the type of proxy header to append before sending data to the
        # backend, either NONE or PROXY_V1. The default is NONE.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL to the BackendService resource.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # URLs to SslCertificate resources that are used to authenticate connections to
        # Backends. Currently exactly one SSL certificate must be specified.
        # Corresponds to the JSON property `sslCertificates`
        # @return [Array<String>]
        attr_accessor :ssl_certificates
      
        # URL of SslPolicy resource that will be associated with the TargetSslProxy
        # resource. If not set, the TargetSslProxy resource will not have any SSL policy
        # configured.
        # Corresponds to the JSON property `sslPolicy`
        # @return [String]
        attr_accessor :ssl_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
          @self_link = args[:self_link] if args.key?(:self_link)
          @service = args[:service] if args.key?(:service)
          @ssl_certificates = args[:ssl_certificates] if args.key?(:ssl_certificates)
          @ssl_policy = args[:ssl_policy] if args.key?(:ssl_policy)
        end
      end
      
      # Contains a list of TargetSslProxy resources.
      class TargetSslProxyList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetSslProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetSslProxy>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetSslProxyList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetSslProxyList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetTcpProxiesSetBackendServiceRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the new BackendService resource for the targetTcpProxy.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # 
      class TargetTcpProxiesSetProxyHeaderRequest
        include Google::Apis::Core::Hashable
      
        # The new type of proxy header to append before sending data to the backend.
        # NONE or PROXY_V1 are allowed.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
        end
      end
      
      # A TargetTcpProxy resource. This resource defines a TCP proxy. (== resource_for
      # beta.targetTcpProxies ==) (== resource_for v1.targetTcpProxies ==)
      class TargetTcpProxy
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#targetTcpProxy for target
        # TCP proxies.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies the type of proxy header to append before sending data to the
        # backend, either NONE or PROXY_V1. The default is NONE.
        # Corresponds to the JSON property `proxyHeader`
        # @return [String]
        attr_accessor :proxy_header
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL to the BackendService resource.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @proxy_header = args[:proxy_header] if args.key?(:proxy_header)
          @self_link = args[:self_link] if args.key?(:self_link)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Contains a list of TargetTcpProxy resources.
      class TargetTcpProxyList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetTcpProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetTcpProxy>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetTcpProxyList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetTcpProxyList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Represents a Target VPN gateway resource. (== resource_for beta.
      # targetVpnGateways ==) (== resource_for v1.targetVpnGateways ==)
      class TargetVpnGateway
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A list of URLs to the ForwardingRule resources. ForwardingRules
        # are created using compute.forwardingRules.insert and associated to a VPN
        # gateway.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<String>]
        attr_accessor :forwarding_rules
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network to which this VPN gateway is attached. Provided by the
        # client when the VPN gateway is created.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] URL of the region where the target VPN gateway resides. You must
        # specify this field as part of the HTTP request URL. It is not settable as a
        # field in the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The status of the VPN gateway.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] A list of URLs to VpnTunnel resources. VpnTunnels are created
        # using compute.vpntunnels.insert method and associated to a VPN gateway.
        # Corresponds to the JSON property `tunnels`
        # @return [Array<String>]
        attr_accessor :tunnels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @forwarding_rules = args[:forwarding_rules] if args.key?(:forwarding_rules)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
          @tunnels = args[:tunnels] if args.key?(:tunnels)
        end
      end
      
      # 
      class TargetVpnGatewayAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetVpnGateway resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetVpnGatewaysScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetVpnGatewayAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of TargetVpnGateway resources.
      class TargetVpnGatewayList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetVpnGateway resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetVpnGateway>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetVpnGatewayList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetVpnGatewayList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TargetVpnGatewaysScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A list of target vpn gateways contained in this scope.
        # Corresponds to the JSON property `targetVpnGateways`
        # @return [Array<Google::Apis::ComputeV1::TargetVpnGateway>]
        attr_accessor :target_vpn_gateways
      
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_vpn_gateways = args[:target_vpn_gateways] if args.key?(:target_vpn_gateways)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class TestFailure
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `actualService`
        # @return [String]
        attr_accessor :actual_service
      
        # 
        # Corresponds to the JSON property `expectedService`
        # @return [String]
        attr_accessor :expected_service
      
        # 
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # 
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actual_service = args[:actual_service] if args.key?(:actual_service)
          @expected_service = args[:expected_service] if args.key?(:expected_service)
          @host = args[:host] if args.key?(:host)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # 
      class TestPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the 'resource'. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # 
      class TestPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # A UrlMap resource. This resource defines the mapping from URL to the
      # BackendService resource, based on the "longest-match" of the URL's host and
      # path.
      class UrlMap
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # The URL of the BackendService resource if none of the hostRules match.
        # Corresponds to the JSON property `defaultService`
        # @return [String]
        attr_accessor :default_service
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a UrlMap. An up-to-date fingerprint must be provided in order to
        # update the UrlMap.
        # Corresponds to the JSON property `fingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of HostRules to use against the URL.
        # Corresponds to the JSON property `hostRules`
        # @return [Array<Google::Apis::ComputeV1::HostRule>]
        attr_accessor :host_rules
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#urlMaps for url maps.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of named PathMatchers to use against the URL.
        # Corresponds to the JSON property `pathMatchers`
        # @return [Array<Google::Apis::ComputeV1::PathMatcher>]
        attr_accessor :path_matchers
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The list of expected URL mapping tests. Request to update this UrlMap will
        # succeed only if all of the test cases pass. You can specify a maximum of 100
        # tests per UrlMap.
        # Corresponds to the JSON property `tests`
        # @return [Array<Google::Apis::ComputeV1::UrlMapTest>]
        attr_accessor :tests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @default_service = args[:default_service] if args.key?(:default_service)
          @description = args[:description] if args.key?(:description)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @host_rules = args[:host_rules] if args.key?(:host_rules)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @path_matchers = args[:path_matchers] if args.key?(:path_matchers)
          @self_link = args[:self_link] if args.key?(:self_link)
          @tests = args[:tests] if args.key?(:tests)
        end
      end
      
      # Contains a list of UrlMap resources.
      class UrlMapList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of UrlMap resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::UrlMap>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::UrlMapList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::UrlMapList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class UrlMapReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `urlMap`
        # @return [String]
        attr_accessor :url_map
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_map = args[:url_map] if args.key?(:url_map)
        end
      end
      
      # Message for the expected URL mappings.
      class UrlMapTest
        include Google::Apis::Core::Hashable
      
        # Description of this test case.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Host portion of the URL.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Path portion of the URL.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Expected BackendService resource the given URL should be mapped to.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @host = args[:host] if args.key?(:host)
          @path = args[:path] if args.key?(:path)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Message representing the validation result for a UrlMap.
      class UrlMapValidationResult
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `loadErrors`
        # @return [Array<String>]
        attr_accessor :load_errors
      
        # Whether the given UrlMap can be successfully loaded. If false, 'loadErrors'
        # indicates the reasons.
        # Corresponds to the JSON property `loadSucceeded`
        # @return [Boolean]
        attr_accessor :load_succeeded
        alias_method :load_succeeded?, :load_succeeded
      
        # 
        # Corresponds to the JSON property `testFailures`
        # @return [Array<Google::Apis::ComputeV1::TestFailure>]
        attr_accessor :test_failures
      
        # If successfully loaded, this field indicates whether the test passed. If false,
        # 'testFailures's indicate the reason of failure.
        # Corresponds to the JSON property `testPassed`
        # @return [Boolean]
        attr_accessor :test_passed
        alias_method :test_passed?, :test_passed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @load_errors = args[:load_errors] if args.key?(:load_errors)
          @load_succeeded = args[:load_succeeded] if args.key?(:load_succeeded)
          @test_failures = args[:test_failures] if args.key?(:test_failures)
          @test_passed = args[:test_passed] if args.key?(:test_passed)
        end
      end
      
      # 
      class ValidateUrlMapsRequest
        include Google::Apis::Core::Hashable
      
        # A UrlMap resource. This resource defines the mapping from URL to the
        # BackendService resource, based on the "longest-match" of the URL's host and
        # path.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ComputeV1::UrlMap]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # 
      class ValidateUrlMapsResponse
        include Google::Apis::Core::Hashable
      
        # Message representing the validation result for a UrlMap.
        # Corresponds to the JSON property `result`
        # @return [Google::Apis::ComputeV1::UrlMapValidationResult]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result = args[:result] if args.key?(:result)
        end
      end
      
      # The location in Cloud Storage and naming method of the daily usage report.
      # Contains bucket_name and report_name prefix.
      class UsageExportLocation
        include Google::Apis::Core::Hashable
      
        # The name of an existing bucket in Cloud Storage where the usage report object
        # is stored. The Google Service Account is granted write access to this bucket.
        # This can either be the bucket name by itself, such as example-bucket, or the
        # bucket name with gs:// or https://storage.googleapis.com/ in front of it, such
        # as gs://example-bucket.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # An optional prefix for the name of the usage report object stored in
        # bucketName. If not supplied, defaults to usage. The report is stored as a CSV
        # file named report_name_prefix_gce_YYYYMMDD.csv where YYYYMMDD is the day of
        # the usage according to Pacific Time. If you supply a prefix, it should conform
        # to Cloud Storage object naming conventions.
        # Corresponds to the JSON property `reportNamePrefix`
        # @return [String]
        attr_accessor :report_name_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @report_name_prefix = args[:report_name_prefix] if args.key?(:report_name_prefix)
        end
      end
      
      # VPN tunnel resource. (== resource_for beta.vpnTunnels ==) (== resource_for v1.
      # vpnTunnels ==)
      class VpnTunnel
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional description of this resource. Provide this property when you
        # create the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Detailed status message for the VPN tunnel.
        # Corresponds to the JSON property `detailedStatus`
        # @return [String]
        attr_accessor :detailed_status
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # IKE protocol version to use when establishing the VPN tunnel with peer VPN
        # gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
        # Corresponds to the JSON property `ikeVersion`
        # @return [Fixnum]
        attr_accessor :ike_version
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Local traffic selector to use when establishing the VPN tunnel with peer VPN
        # gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/
        # 16. The ranges should be disjoint. Only IPv4 is supported.
        # Corresponds to the JSON property `localTrafficSelector`
        # @return [Array<String>]
        attr_accessor :local_traffic_selector
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression `[a-z]([-a-
        # z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IP address of the peer VPN gateway. Only IPv4 is supported.
        # Corresponds to the JSON property `peerIp`
        # @return [String]
        attr_accessor :peer_ip
      
        # [Output Only] URL of the region where the VPN tunnel resides. You must specify
        # this field as part of the HTTP request URL. It is not settable as a field in
        # the request body.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Remote traffic selectors to use when establishing the VPN tunnel with peer VPN
        # gateway. The value should be a CIDR formatted string, for example: 192.168.0.0/
        # 16. The ranges should be disjoint. Only IPv4 is supported.
        # Corresponds to the JSON property `remoteTrafficSelector`
        # @return [Array<String>]
        attr_accessor :remote_traffic_selector
      
        # URL of router resource to be used for dynamic routing.
        # Corresponds to the JSON property `router`
        # @return [String]
        attr_accessor :router
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Shared secret used to set the secure session between the Cloud VPN gateway and
        # the peer VPN gateway.
        # Corresponds to the JSON property `sharedSecret`
        # @return [String]
        attr_accessor :shared_secret
      
        # Hash of the shared secret.
        # Corresponds to the JSON property `sharedSecretHash`
        # @return [String]
        attr_accessor :shared_secret_hash
      
        # [Output Only] The status of the VPN tunnel.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # URL of the Target VPN gateway with which this VPN tunnel is associated.
        # Provided by the client when the VPN tunnel is created.
        # Corresponds to the JSON property `targetVpnGateway`
        # @return [String]
        attr_accessor :target_vpn_gateway
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @description = args[:description] if args.key?(:description)
          @detailed_status = args[:detailed_status] if args.key?(:detailed_status)
          @id = args[:id] if args.key?(:id)
          @ike_version = args[:ike_version] if args.key?(:ike_version)
          @kind = args[:kind] if args.key?(:kind)
          @local_traffic_selector = args[:local_traffic_selector] if args.key?(:local_traffic_selector)
          @name = args[:name] if args.key?(:name)
          @peer_ip = args[:peer_ip] if args.key?(:peer_ip)
          @region = args[:region] if args.key?(:region)
          @remote_traffic_selector = args[:remote_traffic_selector] if args.key?(:remote_traffic_selector)
          @router = args[:router] if args.key?(:router)
          @self_link = args[:self_link] if args.key?(:self_link)
          @shared_secret = args[:shared_secret] if args.key?(:shared_secret)
          @shared_secret_hash = args[:shared_secret_hash] if args.key?(:shared_secret_hash)
          @status = args[:status] if args.key?(:status)
          @target_vpn_gateway = args[:target_vpn_gateway] if args.key?(:target_vpn_gateway)
        end
      end
      
      # 
      class VpnTunnelAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of VpnTunnelsScopedList resources.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::VpnTunnelsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::VpnTunnelAggregatedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::VpnTunnelAggregatedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Contains a list of VpnTunnel resources.
      class VpnTunnelList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of VpnTunnel resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::VpnTunnel>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::VpnTunnelList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::VpnTunnelList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class VpnTunnelsScopedList
        include Google::Apis::Core::Hashable
      
        # A list of vpn tunnels contained in this scope.
        # Corresponds to the JSON property `vpnTunnels`
        # @return [Array<Google::Apis::ComputeV1::VpnTunnel>]
        attr_accessor :vpn_tunnels
      
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vpn_tunnels = args[:vpn_tunnels] if args.key?(:vpn_tunnels)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class XpnHostList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of shared VPC host project URLs.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Project>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#xpnHostList for lists of shared
        # VPC hosts.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::XpnHostList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::XpnHostList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # Service resource (a.k.a service project) ID.
      class XpnResourceId
        include Google::Apis::Core::Hashable
      
        # The ID of the service resource. In the case of projects, this field matches
        # the project ID (e.g., my-project), not the project number (e.g., 12345678).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The type of the service resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Zone resource. (== resource_for beta.zones ==) (== resource_for v1.zones ==)
      class Zone
        include Google::Apis::Core::Hashable
      
        # [Output Only] Available cpu/platform selections for the zone.
        # Corresponds to the JSON property `availableCpuPlatforms`
        # @return [Array<String>]
        attr_accessor :available_cpu_platforms
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] Textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] The unique identifier for the resource. This identifier is
        # defined by the server.
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#zone for zones.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Full URL reference to the region which hosts the zone.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Status of the zone, either UP or DOWN.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_cpu_platforms = args[:available_cpu_platforms] if args.key?(:available_cpu_platforms)
          @creation_timestamp = args[:creation_timestamp] if args.key?(:creation_timestamp)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @region = args[:region] if args.key?(:region)
          @self_link = args[:self_link] if args.key?(:self_link)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Contains a list of zone resources.
      class ZoneList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of Zone resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Zone>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] This token allows you to get the next page of results for list
        # requests. If the number of results is larger than maxResults, use the
        # nextPageToken as a value for the query parameter pageToken in the next list
        # request. Subsequent list requests will have their own nextPageToken to
        # continue paging through the results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] Informational warning message.
        # Corresponds to the JSON property `warning`
        # @return [Google::Apis::ComputeV1::ZoneList::Warning]
        attr_accessor :warning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @self_link = args[:self_link] if args.key?(:self_link)
          @warning = args[:warning] if args.key?(:warning)
        end
        
        # [Output Only] Informational warning message.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] A warning code, if applicable. For example, Compute Engine
          # returns NO_RESULTS_ON_PAGE if there are no results in the response.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata about this warning in key: value format. For example:
          # "data": [ ` "key": "scope", "value": "zones/us-east1-d" `
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ZoneList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] A human-readable description of the warning code.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] if args.key?(:code)
            @data = args[:data] if args.key?(:data)
            @message = args[:message] if args.key?(:message)
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key that provides more detail on the warning being returned.
            # For example, for warnings where there are no results in a list request for a
            # particular zone, this key might be scope and the key value might be the zone
            # name. Other examples might be a key indicating a deprecated resource and a
            # suggested replacement, or a warning about invalid network settings (for
            # example, if an instance attempts to perform IP forwarding but is not enabled
            # for IP forwarding).
            # Corresponds to the JSON property `key`
            # @return [String]
            attr_accessor :key
          
            # [Output Only] A warning data value corresponding to the key.
            # Corresponds to the JSON property `value`
            # @return [String]
            attr_accessor :value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @key = args[:key] if args.key?(:key)
              @value = args[:value] if args.key?(:value)
            end
          end
        end
      end
      
      # 
      class ZoneSetLabelsRequest
        include Google::Apis::Core::Hashable
      
        # The fingerprint of the previous set of labels for this resource, used to
        # detect conflicts. The fingerprint is initially generated by Compute Engine and
        # changes after every request to modify or update labels. You must always
        # provide an up-to-date fingerprint hash in order to update or change labels.
        # Make a get() request to the resource to get the latest fingerprint.
        # Corresponds to the JSON property `labelFingerprint`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :label_fingerprint
      
        # The labels to set for this resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label_fingerprint = args[:label_fingerprint] if args.key?(:label_fingerprint)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
    end
  end
end
