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
      
      # An access configuration attached to an instance's network interface.
      class AccessConfig
        include Google::Apis::Core::Hashable
      
        # [Output Only] Type of the resource. Always compute#accessConfig for access
        # configs.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this access configuration.
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
      
        # The type of configuration. The default and only option is ONE_TO_ONE_NAT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @nat_ip = args[:nat_ip] unless args[:nat_ip].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A reserved address resource.
      class Address
        include Google::Apis::Core::Hashable
      
        # The static external IP address represented by this resource.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#address for addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] URL of the region where the regional address resides. This field
        # is not applicable to global addresses.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The status of the address, which can be either IN_USE or
        # RESERVED. An address that is RESERVED is currently reserved and available to
        # use. An IN_USE address is currently being used by another resource and is not
        # available.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] The URLs of the resources that are using this address.
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] unless args[:address].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @status = args[:status] unless args[:status].nil?
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # 
      class AddressAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped address lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::AddressesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#addressAggregatedList for
        # aggregated lists of addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of address resources.
      class AddressList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Address resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Address>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#addressList for lists of
        # addresses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class AddressesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of addresses contained in this scope.
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
          @addresses = args[:addresses] unless args[:addresses].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::AddressesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
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
        # tree of a Linux operating system running within the instance. This name can be
        # used to reference the device for mounting, resizing, and so on, from within
        # the instance.
        # If not specified, the server chooses a default device name to apply to this
        # disk, in the form persistent-disks-x, where x is a number assigned by Google
        # Compute Engine. This field is only applicable for persistent disks.
        # Corresponds to the JSON property `deviceName`
        # @return [String]
        attr_accessor :device_name
      
        # Assigns a zero-based index to this disk, where 0 is reserved for the boot disk.
        # For example, if you have many disks attached to an instance, each disk would
        # have a unique index number. If not specified, the server will choose an
        # appropriate value.
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
      
        # 
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
        # This field is only applicable for persistent disks.
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
          @auto_delete = args[:auto_delete] unless args[:auto_delete].nil?
          @boot = args[:boot] unless args[:boot].nil?
          @device_name = args[:device_name] unless args[:device_name].nil?
          @index = args[:index] unless args[:index].nil?
          @initialize_params = args[:initialize_params] unless args[:initialize_params].nil?
          @interface = args[:interface] unless args[:interface].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @licenses = args[:licenses] unless args[:licenses].nil?
          @mode = args[:mode] unless args[:mode].nil?
          @source = args[:source] unless args[:source].nil?
          @type = args[:type] unless args[:type].nil?
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
        # @return [String]
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
        # - zones/zone/diskTypes/diskType
        # Corresponds to the JSON property `diskType`
        # @return [String]
        attr_accessor :disk_type
      
        # A source image used to create the disk. You can provide a private (custom)
        # image, and Compute Engine will use the corresponding image from your project.
        # For example:
        # global/images/my-private-image
        # Or you can provide an image from a publicly-available project. For example, to
        # use a Debian image from the debian-cloud project, make sure to include the
        # project in the URL:
        # projects/debian-cloud/global/images/debian-7-wheezy-vYYYYMMDD
        # where vYYYYMMDD is the image version. The fully-qualified URL will also work
        # in both cases.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_name = args[:disk_name] unless args[:disk_name].nil?
          @disk_size_gb = args[:disk_size_gb] unless args[:disk_size_gb].nil?
          @disk_type = args[:disk_type] unless args[:disk_type].nil?
          @source_image = args[:source_image] unless args[:source_image].nil?
        end
      end
      
      # Message containing information of one individual backend.
      class Backend
        include Google::Apis::Core::Hashable
      
        # The balancing mode of this backend, default is UTILIZATION.
        # Corresponds to the JSON property `balancingMode`
        # @return [String]
        attr_accessor :balancing_mode
      
        # The multiplier (a value between 0.0 and 1.0) of the max capacity (CPU or RPS,
        # depending on 'balancingMode') the group should serve up to. 0 means the group
        # is totally drained. Default value is 1. Valid range is [0.0, 1.0].
        # Corresponds to the JSON property `capacityScaler`
        # @return [Float]
        attr_accessor :capacity_scaler
      
        # An optional textual description of the resource, which is provided by the
        # client when the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # URL of a zonal Cloud Resource View resource. This resource view defines the
        # list of instances that serve traffic. Member virtual machine instances from
        # each resource view must live in the same zone as the resource view itself. No
        # two backends in a backend service are allowed to use same Resource View
        # resource.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # The max RPS of the group. Can be used with either balancing mode, but required
        # if RATE mode. For RATE mode, either maxRate or maxRatePerInstance must be set.
        # Corresponds to the JSON property `maxRate`
        # @return [Fixnum]
        attr_accessor :max_rate
      
        # The max RPS that a single backed instance can handle. This is used to
        # calculate the capacity of the group. Can be used in either balancing mode. For
        # RATE mode, either maxRate or maxRatePerInstance must be set.
        # Corresponds to the JSON property `maxRatePerInstance`
        # @return [Float]
        attr_accessor :max_rate_per_instance
      
        # Used when 'balancingMode' is UTILIZATION. This ratio defines the CPU
        # utilization target for the group. The default is 0.8. Valid range is [0, 1].
        # Corresponds to the JSON property `maxUtilization`
        # @return [Float]
        attr_accessor :max_utilization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @balancing_mode = args[:balancing_mode] unless args[:balancing_mode].nil?
          @capacity_scaler = args[:capacity_scaler] unless args[:capacity_scaler].nil?
          @description = args[:description] unless args[:description].nil?
          @group = args[:group] unless args[:group].nil?
          @max_rate = args[:max_rate] unless args[:max_rate].nil?
          @max_rate_per_instance = args[:max_rate_per_instance] unless args[:max_rate_per_instance].nil?
          @max_utilization = args[:max_utilization] unless args[:max_utilization].nil?
        end
      end
      
      # A BackendService resource. This resource defines a group of backend VMs
      # together with their serving capacity.
      # If you add field foo, you probably need to also add: com.google.cloud.cluster.
      # manager.api.BackendServiceResource: foo com.google.cloud.cluster.manager.
      # networking.entities: BackendService, BackendServiceEntity: getFoo, setFoo:
      # Converters/mappers will need to be updated: com.google.cloud.cluster.manager.
      # networking.services.backendservice.BackendServiceResourceConverter: toResource,
      # updateEntity: copy foo com.google.cloud.cluster.mixer.protomappers.
      # BackendServiceMappers.ResourceMapper: ResourceMapper: add a new map call
      # Tests to update: com.google.cloud.cluster.manager.networking.services.
      # backendservice.BackendServiceResourceConverterTest com.google.cloud.cluster.
      # mixer.protomappers.BackendServiceMappersTest.testResourceMapping
      class BackendService
        include Google::Apis::Core::Hashable
      
        # The list of backends that serve this BackendService.
        # Corresponds to the JSON property `backends`
        # @return [Array<Google::Apis::ComputeV1::Backend>]
        attr_accessor :backends
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a BackendService. An up-to-date fingerprint must be provided in
        # order to update the BackendService.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of URLs to the HttpHealthCheck resource for health checking this
        # BackendService. Currently at most one health check can be specified, and a
        # health check is required.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Deprecated in favor of port_name. The TCP port to connect on the backend. The
        # default value is 80.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Name of backend port. The same name should appear in the resource views
        # referenced by this service. Required.
        # Corresponds to the JSON property `portName`
        # @return [String]
        attr_accessor :port_name
      
        # 
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
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
          @backends = args[:backends] unless args[:backends].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @health_checks = args[:health_checks] unless args[:health_checks].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @port = args[:port] unless args[:port].nil?
          @port_name = args[:port_name] unless args[:port_name].nil?
          @protocol = args[:protocol] unless args[:protocol].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @timeout_sec = args[:timeout_sec] unless args[:timeout_sec].nil?
        end
      end
      
      # 
      class BackendServiceGroupHealth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthStatus`
        # @return [Array<Google::Apis::ComputeV1::HealthStatus>]
        attr_accessor :health_status
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_status = args[:health_status] unless args[:health_status].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains a list of BackendService resources.
      class BackendServiceList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of BackendService resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::BackendService>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Deprecation status for a public resource.
      class DeprecationStatus
        include Google::Apis::Core::Hashable
      
        # An optional RFC3339 timestamp on or after which the deprecation state of this
        # resource will be changed to DELETED.
        # Corresponds to the JSON property `deleted`
        # @return [String]
        attr_accessor :deleted
      
        # An optional RFC3339 timestamp on or after which the deprecation state of this
        # resource will be changed to DEPRECATED.
        # Corresponds to the JSON property `deprecated`
        # @return [String]
        attr_accessor :deprecated
      
        # An optional RFC3339 timestamp on or after which the deprecation state of this
        # resource will be changed to OBSOLETE.
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
          @deleted = args[:deleted] unless args[:deleted].nil?
          @deprecated = args[:deprecated] unless args[:deprecated].nil?
          @obsolete = args[:obsolete] unless args[:obsolete].nil?
          @replacement = args[:replacement] unless args[:replacement].nil?
          @state = args[:state] unless args[:state].nil?
        end
      end
      
      # A Disk resource.
      class Disk
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#disk for disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Last attach timestamp in RFC3339 text format.
        # Corresponds to the JSON property `lastAttachTimestamp`
        # @return [String]
        attr_accessor :last_attach_timestamp
      
        # [Output Only] Last detach timestamp in RFC3339 text format.
        # Corresponds to the JSON property `lastDetachTimestamp`
        # @return [String]
        attr_accessor :last_detach_timestamp
      
        # Any applicable publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Internal use only.
        # Corresponds to the JSON property `options`
        # @return [String]
        attr_accessor :options
      
        # [Output Only] Server-defined fully-qualified URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Size of the persistent disk, specified in GB. You can specify this field when
        # creating a persistent disk using the sourceImage or sourceSnapshot parameter,
        # or specify it alone to create an empty persistent disk.
        # If you specify this field along with sourceImage or sourceSnapshot, the value
        # of sizeGb must not be less than the size of the sourceImage or the size of the
        # snapshot.
        # Corresponds to the JSON property `sizeGb`
        # @return [String]
        attr_accessor :size_gb
      
        # The source image used to create this disk. If the source image is deleted from
        # the system, this field will not be set, even if an image with the same name
        # has been re-created.
        # When creating a disk, you can provide a private (custom) image using the
        # following input, and Compute Engine will use the corresponding image from your
        # project. For example:
        # global/images/my-private-image
        # Or you can provide an image from a publicly-available project. For example, to
        # use a Debian image from the debian-cloud project, make sure to include the
        # project in the URL:
        # projects/debian-cloud/global/images/debian-7-wheezy-vYYYYMMDD
        # where vYYYYMMDD is the image version. The fully-qualified URL will also work
        # in both cases.
        # Corresponds to the JSON property `sourceImage`
        # @return [String]
        attr_accessor :source_image
      
        # The ID value of the image used to create this disk. This value identifies the
        # exact image that was used to create this persistent disk. For example, if you
        # created the persistent disk from an image that was later deleted and recreated
        # under the same name, the source image ID would identify the exact version of
        # the image that was used.
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
      
        # [Output Only] The unique ID of the snapshot used to create this disk. This
        # value identifies the exact snapshot that was used to create this persistent
        # disk. For example, if you created the persistent disk from a snapshot that was
        # later deleted and recreated under the same name, the source snapshot ID would
        # identify the exact version of the snapshot that was used.
        # Corresponds to the JSON property `sourceSnapshotId`
        # @return [String]
        attr_accessor :source_snapshot_id
      
        # [Output Only] The status of disk creation. Applicable statuses includes:
        # CREATING, FAILED, READY, RESTORING.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # URL of the disk type resource describing which disk type to use to create the
        # disk; provided by the client when the disk is created.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Links to the users of the disk (attached instances) in form: project/zones/
        # zone/instances/instance
        # Corresponds to the JSON property `users`
        # @return [Array<String>]
        attr_accessor :users
      
        # [Output Only] URL of the zone where the disk resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @last_attach_timestamp = args[:last_attach_timestamp] unless args[:last_attach_timestamp].nil?
          @last_detach_timestamp = args[:last_detach_timestamp] unless args[:last_detach_timestamp].nil?
          @licenses = args[:licenses] unless args[:licenses].nil?
          @name = args[:name] unless args[:name].nil?
          @options = args[:options] unless args[:options].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @size_gb = args[:size_gb] unless args[:size_gb].nil?
          @source_image = args[:source_image] unless args[:source_image].nil?
          @source_image_id = args[:source_image_id] unless args[:source_image_id].nil?
          @source_snapshot = args[:source_snapshot] unless args[:source_snapshot].nil?
          @source_snapshot_id = args[:source_snapshot_id] unless args[:source_snapshot_id].nil?
          @status = args[:status] unless args[:status].nil?
          @type = args[:type] unless args[:type].nil?
          @users = args[:users] unless args[:users].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end
      
      # 
      class DiskAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped disk lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::DisksScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskAggregatedList for
        # aggregated lists of persistent disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A list of Disk resources.
      class DiskList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of persistent disks.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Disk>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskList for lists of disks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class MoveDiskRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the destination zone to move the disk to. This can be a full or
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
          @destination_zone = args[:destination_zone] unless args[:destination_zone].nil?
          @target_disk = args[:target_disk] unless args[:target_disk].nil?
        end
      end
      
      # A disk type resource.
      class DiskType
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] Server defined default disk size in GB.
        # Corresponds to the JSON property `defaultDiskSizeGb`
        # @return [String]
        attr_accessor :default_disk_size_gb
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # [Output Only] An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#diskType for disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] An optional textual description of the valid disk size, such as "
        # 10GB-10TB".
        # Corresponds to the JSON property `validDiskSize`
        # @return [String]
        attr_accessor :valid_disk_size
      
        # [Output Only] URL of the zone where the disk type resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @default_disk_size_gb = args[:default_disk_size_gb] unless args[:default_disk_size_gb].nil?
          @deprecated = args[:deprecated] unless args[:deprecated].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @valid_disk_size = args[:valid_disk_size] unless args[:valid_disk_size].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end
      
      # 
      class DiskTypeAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped disk type lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::DiskTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskTypeAggregatedList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of disk type resources.
      class DiskTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Disk Type resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::DiskType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#diskTypeList for disk types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class DiskTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of disk types contained in this scope.
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
          @disk_types = args[:disk_types] unless args[:disk_types].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] Informational warning which replaces the list of disk types when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DiskTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # 
      class DisksScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of disks contained in this scope.
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
          @disks = args[:disks] unless args[:disks].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] Informational warning which replaces the list of disks when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::DisksScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # A Firewall resource.
      class Firewall
        include Google::Apis::Core::Hashable
      
        # The list of rules specified by this firewall. Each rule specifies a protocol
        # and port-range tuple that describes a permitted connection.
        # Corresponds to the JSON property `allowed`
        # @return [Array<Google::Apis::ComputeV1::Firewall::Allowed>]
        attr_accessor :allowed
      
        # [Output Only] Creation timestamp in RFC3339text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Ony] Type of the resource. Always compute#firewall for firewall rules.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network resource for this firewall rule. This field is required for
        # creating an instance but optional when creating a firewall rule. If not
        # specified when creating a firewall rule, the default network is used:
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
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The IP address blocks that this rule applies to, expressed in CIDR format. One
        # or both of sourceRanges and sourceTags may be set.
        # If both properties are set, an inbound connection is allowed if the range or
        # the tag of the source matches the sourceRanges OR matches the sourceTags
        # property; the connection does not need to match both properties.
        # Corresponds to the JSON property `sourceRanges`
        # @return [Array<String>]
        attr_accessor :source_ranges
      
        # A list of instance tags which this rule applies to. One or both of
        # sourceRanges and sourceTags may be set.
        # If both properties are set, an inbound connection is allowed if the range or
        # the tag of the source matches the sourceRanges OR matches the sourceTags
        # property; the connection does not need to match both properties.
        # Corresponds to the JSON property `sourceTags`
        # @return [Array<String>]
        attr_accessor :source_tags
      
        # A list of instance tags indicating sets of instances located on network which
        # may make network connections as specified in allowed[]. If no targetTags are
        # specified, the firewall rule applies to all instances on the specified network.
        # Corresponds to the JSON property `targetTags`
        # @return [Array<String>]
        attr_accessor :target_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed = args[:allowed] unless args[:allowed].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @network = args[:network] unless args[:network].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @source_ranges = args[:source_ranges] unless args[:source_ranges].nil?
          @source_tags = args[:source_tags] unless args[:source_tags].nil?
          @target_tags = args[:target_tags] unless args[:target_tags].nil?
        end
        
        # 
        class Allowed
          include Google::Apis::Core::Hashable
        
          # The IP protocol that is allowed for this rule. The protocol type is required
          # when creating a firewall. This value can either be one of the following well
          # known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol
          # number.
          # Corresponds to the JSON property `IPProtocol`
          # @return [String]
          attr_accessor :ip_protocol
        
          # An optional list of ports which are allowed. This field is only applicable for
          # UDP or TCP protocol. Each entry must be either an integer or a range. If not
          # specified, connections through any port are allowed
          # Example inputs include: ["22"], ["80","443"], and ["12345-12349"].
          # Corresponds to the JSON property `ports`
          # @return [Array<String>]
          attr_accessor :ports
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ip_protocol = args[:ip_protocol] unless args[:ip_protocol].nil?
            @ports = args[:ports] unless args[:ports].nil?
          end
        end
      end
      
      # Contains a list of Firewall resources.
      class FirewallList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Firewall resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Firewall>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#firewallList for lists of
        # firewalls.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A ForwardingRule resource. A ForwardingRule resource specifies which pool of
      # target VMs to forward a packet to if it matches the given [IPAddress,
      # IPProtocol, portRange] tuple.
      class ForwardingRule
        include Google::Apis::Core::Hashable
      
        # Value of the reserved IP address that this forwarding rule is serving on
        # behalf of. For global forwarding rules, the address must be a global IP; for
        # regional forwarding rules, the address must live in the same region as the
        # forwarding rule. If left empty (default value), an ephemeral IP from the same
        # scope (global or regional) will be assigned.
        # Corresponds to the JSON property `IPAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The IP protocol to which this rule applies, valid options are 'TCP', 'UDP', '
        # ESP', 'AH' or 'SCTP'.
        # Corresponds to the JSON property `IPProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Applicable only when 'IPProtocol' is 'TCP', 'UDP' or 'SCTP', only packets
        # addressed to ports in the specified range will be forwarded to 'target'. If '
        # portRange' is left empty (default value), all ports are forwarded. Forwarding
        # rules with the same [IPAddress, IPProtocol] pair must have disjoint port
        # ranges.
        # Corresponds to the JSON property `portRange`
        # @return [String]
        attr_accessor :port_range
      
        # URL of the region where the regional forwarding rule resides (output only).
        # This field is not applicable to global forwarding rules.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The URL of the target resource to receive the matched traffic. For regional
        # forwarding rules, this target must live in the same region as the forwarding
        # rule. For global forwarding rules, this target must be a global
        # TargetHttpProxy resource.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] unless args[:ip_address].nil?
          @ip_protocol = args[:ip_protocol] unless args[:ip_protocol].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @port_range = args[:port_range] unless args[:port_range].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @target = args[:target] unless args[:target].nil?
        end
      end
      
      # 
      class ForwardingRuleAggregatedList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped forwarding rule lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::ForwardingRulesScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of ForwardingRule resources.
      class ForwardingRuleList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class ForwardingRulesScopedList
        include Google::Apis::Core::Hashable
      
        # List of forwarding rules contained in this scope.
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
          @forwarding_rules = args[:forwarding_rules] unless args[:forwarding_rules].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # Informational warning which replaces the list of forwarding rules when the
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::ForwardingRulesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # 
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
          @health_check = args[:health_check] unless args[:health_check].nil?
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
          @health_state = args[:health_state] unless args[:health_state].nil?
          @instance = args[:instance] unless args[:instance].nil?
          @ip_address = args[:ip_address] unless args[:ip_address].nil?
          @port = args[:port] unless args[:port].nil?
        end
      end
      
      # A host-matching rule for a URL. If matched, will use the named PathMatcher to
      # select the BackendService.
      class HostRule
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The list of host patterns to match. They must be valid hostnames except that
        # they may start with *. or *-. The * acts like a glob and will match any string
        # of atoms (separated by .s and -s) to the left.
        # Corresponds to the JSON property `hosts`
        # @return [Array<String>]
        attr_accessor :hosts
      
        # The name of the PathMatcher to match the path portion of the URL, if the this
        # HostRule matches the URL's host portion.
        # Corresponds to the JSON property `pathMatcher`
        # @return [String]
        attr_accessor :path_matcher
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] unless args[:description].nil?
          @hosts = args[:hosts] unless args[:hosts].nil?
          @path_matcher = args[:path_matcher] unless args[:path_matcher].nil?
        end
      end
      
      # An HttpHealthCheck resource. This resource defines a template for how
      # individual VMs should be checked for health, via HTTP.
      class HttpHealthCheck
        include Google::Apis::Core::Hashable
      
        # How often (in seconds) to send a health check. The default value is 5 seconds.
        # Corresponds to the JSON property `checkIntervalSec`
        # @return [Fixnum]
        attr_accessor :check_interval_sec
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A so-far unhealthy VM will be marked healthy after this many consecutive
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
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The TCP port number for the HTTP health check request. The default value is 80.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # The request path of the HTTP health check request. The default value is "/".
        # Corresponds to the JSON property `requestPath`
        # @return [String]
        attr_accessor :request_path
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # How long (in seconds) to wait before claiming failure. The default value is 5
        # seconds. It is invalid for timeoutSec to have greater value than
        # checkIntervalSec.
        # Corresponds to the JSON property `timeoutSec`
        # @return [Fixnum]
        attr_accessor :timeout_sec
      
        # A so-far healthy VM will be marked unhealthy after this many consecutive
        # failures. The default value is 2.
        # Corresponds to the JSON property `unhealthyThreshold`
        # @return [Fixnum]
        attr_accessor :unhealthy_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @check_interval_sec = args[:check_interval_sec] unless args[:check_interval_sec].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @healthy_threshold = args[:healthy_threshold] unless args[:healthy_threshold].nil?
          @host = args[:host] unless args[:host].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @port = args[:port] unless args[:port].nil?
          @request_path = args[:request_path] unless args[:request_path].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @timeout_sec = args[:timeout_sec] unless args[:timeout_sec].nil?
          @unhealthy_threshold = args[:unhealthy_threshold] unless args[:unhealthy_threshold].nil?
        end
      end
      
      # Contains a list of HttpHealthCheck resources.
      class HttpHealthCheckList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # An Image resource.
      class Image
        include Google::Apis::Core::Hashable
      
        # Size of the image tar.gz archive stored in Google Cloud Storage (in bytes).
        # Corresponds to the JSON property `archiveSizeBytes`
        # @return [String]
        attr_accessor :archive_size_bytes
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # Deprecation status for a public resource.
        # Corresponds to the JSON property `deprecated`
        # @return [Google::Apis::ComputeV1::DeprecationStatus]
        attr_accessor :deprecated
      
        # Textual description of the resource; provided by the client when the resource
        # is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Size of the image when restored onto a persistent disk (in GB).
        # Corresponds to the JSON property `diskSizeGb`
        # @return [String]
        attr_accessor :disk_size_gb
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#image for images.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Any applicable publicly visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The parameters of the raw disk image.
        # Corresponds to the JSON property `rawDisk`
        # @return [Google::Apis::ComputeV1::Image::RawDisk]
        attr_accessor :raw_disk
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL of the The source disk used to create this image. This can be a full or
        # valid partial URL. You must provide either this property or the rawDisk.source
        # property but not both to create an image. For example, the following are valid
        # values:
        # - https://www.googleapis.com/compute/v1/projects/project/zones/zone/disk/disk
        # - projects/project/zones/zone/disk/disk
        # - zones/zone/disks/disk
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        # The ID value of the disk used to create this image. This value may be used to
        # determine whether the image was taken from the current or a previous instance
        # of a given disk name.
        # Corresponds to the JSON property `sourceDiskId`
        # @return [String]
        attr_accessor :source_disk_id
      
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
          @archive_size_bytes = args[:archive_size_bytes] unless args[:archive_size_bytes].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @deprecated = args[:deprecated] unless args[:deprecated].nil?
          @description = args[:description] unless args[:description].nil?
          @disk_size_gb = args[:disk_size_gb] unless args[:disk_size_gb].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @licenses = args[:licenses] unless args[:licenses].nil?
          @name = args[:name] unless args[:name].nil?
          @raw_disk = args[:raw_disk] unless args[:raw_disk].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @source_disk = args[:source_disk] unless args[:source_disk].nil?
          @source_disk_id = args[:source_disk_id] unless args[:source_disk_id].nil?
          @source_type = args[:source_type] unless args[:source_type].nil?
          @status = args[:status] unless args[:status].nil?
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
            @container_type = args[:container_type] unless args[:container_type].nil?
            @sha1_checksum = args[:sha1_checksum] unless args[:sha1_checksum].nil?
            @source = args[:source] unless args[:source].nil?
          end
        end
      end
      
      # Contains a list of Image resources.
      class ImageList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # An Instance resource.
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
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Array of disks associated with this instance. Persistent disks must be created
        # before you can assign them.
        # Corresponds to the JSON property `disks`
        # @return [Array<Google::Apis::ComputeV1::AttachedDisk>]
        attr_accessor :disks
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#instance for instances.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Full or partial URL of the machine type resource to use for this instance.
        # This is provided by the client when the instance is created. For example, the
        # following is a valid partial url:
        # zones/zone/machineTypes/machine-type
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :metadata
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An array of configurations for this interface. This specifies how this
        # interface is configured to interact with other network services, such as
        # connecting to the internet.
        # Corresponds to the JSON property `networkInterfaces`
        # @return [Array<Google::Apis::ComputeV1::NetworkInterface>]
        attr_accessor :network_interfaces
      
        # Sets the scheduling options for an Instance.
        # Corresponds to the JSON property `scheduling`
        # @return [Google::Apis::ComputeV1::Scheduling]
        attr_accessor :scheduling
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # A list of service accounts, with their specified scopes, authorized for this
        # instance. Service accounts generate access tokens that can be accessed through
        # the metadata server and used to authenticate applications on the instance. See
        # Authenticating from Google Compute Engine for more information.
        # Corresponds to the JSON property `serviceAccounts`
        # @return [Array<Google::Apis::ComputeV1::ServiceAccount>]
        attr_accessor :service_accounts
      
        # [Output Only] The status of the instance. One of the following values:
        # PROVISIONING, STAGING, RUNNING, STOPPING, and TERMINATED.
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
      
        # [Output Only] URL of the zone where the instance resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_ip_forward = args[:can_ip_forward] unless args[:can_ip_forward].nil?
          @cpu_platform = args[:cpu_platform] unless args[:cpu_platform].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @disks = args[:disks] unless args[:disks].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @machine_type = args[:machine_type] unless args[:machine_type].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @name = args[:name] unless args[:name].nil?
          @network_interfaces = args[:network_interfaces] unless args[:network_interfaces].nil?
          @scheduling = args[:scheduling] unless args[:scheduling].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @service_accounts = args[:service_accounts] unless args[:service_accounts].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end
      
      # 
      class InstanceAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped instance lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::InstancesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceAggregatedList for
        # aggregated lists of Instance resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of instance resources.
      class InstanceList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Instance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Instance>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#instanceList for lists of
        # Instance resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class MoveInstanceRequest
        include Google::Apis::Core::Hashable
      
        # The URL of the destination zone to move the instance to. This can be a full or
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
          @destination_zone = args[:destination_zone] unless args[:destination_zone].nil?
          @target_instance = args[:target_instance] unless args[:target_instance].nil?
        end
      end
      
      # 
      class InstanceProperties
        include Google::Apis::Core::Hashable
      
        # A boolean that specifies if instances created from this template can send
        # packets with source IP addresses other than their own or receive packets with
        # destination IP addresses other than their own. If you use these instances as
        # an IP gateway or as the next-hop in a Route resource, specify true. Otherwise,
        # specify false.
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
      
        # The machine type to use for instances that are created from this template.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # A metadata key/value entry.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::ComputeV1::Metadata]
        attr_accessor :metadata
      
        # An array of network access configurations for this interface. This specifies
        # how this interface is configured to interact with other network services, such
        # as connecting to the internet. Currently, ONE_TO_ONE_NAT is the only supported
        # access configuration. If you do not specify any access configurations, the
        # instances that are created from this template will have no external internet
        # access.
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
          @can_ip_forward = args[:can_ip_forward] unless args[:can_ip_forward].nil?
          @description = args[:description] unless args[:description].nil?
          @disks = args[:disks] unless args[:disks].nil?
          @machine_type = args[:machine_type] unless args[:machine_type].nil?
          @metadata = args[:metadata] unless args[:metadata].nil?
          @network_interfaces = args[:network_interfaces] unless args[:network_interfaces].nil?
          @scheduling = args[:scheduling] unless args[:scheduling].nil?
          @service_accounts = args[:service_accounts] unless args[:service_accounts].nil?
          @tags = args[:tags] unless args[:tags].nil?
        end
      end
      
      # 
      class InstanceReference
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] unless args[:instance].nil?
        end
      end
      
      # An Instance Template resource.
      class InstanceTemplate
        include Google::Apis::Core::Hashable
      
        # [Output Only] The creation timestamp for this instance template in RFC3339
        # text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional text description for the instance template.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A unique identifier for this instance template. The server
        # defines this identifier.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The resource type, which is always compute#instanceTemplate for
        # instance templates.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the instance template. The name must be 1-63 characters long, and
        # comply with RFC1035.
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
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @properties = args[:properties] unless args[:properties].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A list of instance templates.
      class InstanceTemplateList
        include Google::Apis::Core::Hashable
      
        # [Output Only] A unique identifier for this instance template. The server
        # defines this identifier.
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
      
        # [Output Only] A token that is used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] The URL for this instance template list. The server defines this
        # URL.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class InstancesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of instances contained in this scope.
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
          @instances = args[:instances] unless args[:instances].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] Informational warning which replaces the list of instances when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::InstancesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # A license resource.
      class License
        include Google::Apis::Core::Hashable
      
        # If true, the customer will be charged license fee for running software that
        # contains this license on an instance.
        # Corresponds to the JSON property `chargesUseFee`
        # @return [Boolean]
        attr_accessor :charges_use_fee
        alias_method :charges_use_fee?, :charges_use_fee
      
        # [Output Only] Type of resource. Always compute#license for licenses.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. The name must be 1-63 characters long, and comply with
        # RCF1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @charges_use_fee = args[:charges_use_fee] unless args[:charges_use_fee].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A Machine Type resource.
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
      
        # [Output Only] The tumber of CPUs exposed to the instance.
        # Corresponds to the JSON property `guestCpus`
        # @return [Fixnum]
        attr_accessor :guest_cpus
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Deprecated] This property is deprecated and will never be populated with any
        # relevant values.
        # Corresponds to the JSON property `imageSpaceGb`
        # @return [Fixnum]
        attr_accessor :image_space_gb
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Maximum persistent disks allowed.
        # Corresponds to the JSON property `maximumPersistentDisks`
        # @return [Fixnum]
        attr_accessor :maximum_persistent_disks
      
        # [Output Only] Maximum total persistent disks size (GB) allowed.
        # Corresponds to the JSON property `maximumPersistentDisksSizeGb`
        # @return [String]
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
      
        # [Output Only] List of extended scratch disks assigned to the instance.
        # Corresponds to the JSON property `scratchDisks`
        # @return [Array<Google::Apis::ComputeV1::MachineType::ScratchDisk>]
        attr_accessor :scratch_disks
      
        # [Output Only] Server defined URL for the resource.
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
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @deprecated = args[:deprecated] unless args[:deprecated].nil?
          @description = args[:description] unless args[:description].nil?
          @guest_cpus = args[:guest_cpus] unless args[:guest_cpus].nil?
          @id = args[:id] unless args[:id].nil?
          @image_space_gb = args[:image_space_gb] unless args[:image_space_gb].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @maximum_persistent_disks = args[:maximum_persistent_disks] unless args[:maximum_persistent_disks].nil?
          @maximum_persistent_disks_size_gb = args[:maximum_persistent_disks_size_gb] unless args[:maximum_persistent_disks_size_gb].nil?
          @memory_mb = args[:memory_mb] unless args[:memory_mb].nil?
          @name = args[:name] unless args[:name].nil?
          @scratch_disks = args[:scratch_disks] unless args[:scratch_disks].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @zone = args[:zone] unless args[:zone].nil?
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
            @disk_gb = args[:disk_gb] unless args[:disk_gb].nil?
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
      
        # [Output Only] A map of scoped machine type lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::MachineTypesScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#machineTypeAggregatedList for
        # aggregated lists of machine types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of Machine Type resources.
      class MachineTypeList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Machine Type resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::MachineType>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#machineTypeList for lists of
        # machine types.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class MachineTypesScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of machine types contained in this scope.
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
          @machine_types = args[:machine_types] unless args[:machine_types].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] An informational warning that appears when the machine types
        # list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::MachineTypesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
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
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
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
          # 32768 bytes.
          # Corresponds to the JSON property `value`
          # @return [String]
          attr_accessor :value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @key = args[:key] unless args[:key].nil?
            @value = args[:value] unless args[:value].nil?
          end
        end
      end
      
      # A network resource.
      class Network
        include Google::Apis::Core::Hashable
      
        # The range of internal addresses that are legal on this network. This range is
        # a CIDR specification, for example: 192.168.0.0/16. Provided by the client when
        # the network is created.
        # Corresponds to the JSON property `IPv4Range`
        # @return [String]
        attr_accessor :i_pv4_range
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A gateway address for default routing to other networks. This value is read
        # only and is selected by the Google Compute Engine, typically as the first
        # usable address in the IPv4Range.
        # Corresponds to the JSON property `gatewayIPv4`
        # @return [String]
        attr_accessor :gateway_i_pv4
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#network for networks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035. Specifically, the
        # name must be 1-63 characters long and match the regular expression [a-z]([-a-
        # z0-9]*[a-z0-9])? which means the first character must be a lowercase letter,
        # and all following characters must be a dash, lowercase letter, or digit,
        # except the last character, which cannot be a dash.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @i_pv4_range = args[:i_pv4_range] unless args[:i_pv4_range].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @gateway_i_pv4 = args[:gateway_i_pv4] unless args[:gateway_i_pv4].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A network interface resource attached to an instance.
      class NetworkInterface
        include Google::Apis::Core::Hashable
      
        # An array of configurations for this interface. Currently, <codeONE_TO_ONE_NAT
        # is the only access config supported. If there are no accessConfigs specified,
        # then this instance will have no external internet access.
        # Corresponds to the JSON property `accessConfigs`
        # @return [Array<Google::Apis::ComputeV1::AccessConfig>]
        attr_accessor :access_configs
      
        # [Output Only] The name of the network interface, generated by the server. For
        # network devices, these are eth0, eth1, etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network resource for this instance. This is required for creating
        # an instance but optional when creating a firewall rule. If not specified when
        # creating a firewall rule, the default network is used:
        # global/networks/default
        # If you specify this property, you can specify the network as a full or partial
        # URL. For example, the following are all valid URLs:
        # - https://www.googleapis.com/compute/v1/projects/project/global/networks/
        # network
        # - projects/project/global/networks/network
        # - global/networks/default
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] An optional IPV4 internal network address assigned to the
        # instance for this network interface.
        # Corresponds to the JSON property `networkIP`
        # @return [String]
        attr_accessor :network_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_configs = args[:access_configs] unless args[:access_configs].nil?
          @name = args[:name] unless args[:name].nil?
          @network = args[:network] unless args[:network].nil?
          @network_ip = args[:network_ip] unless args[:network_ip].nil?
        end
      end
      
      # Contains a list of Network resources.
      class NetworkList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Network resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Network>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#networkList for lists of
        # networks.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource .
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # An operation resource, used to manage asynchronous API requests.
      class Operation
        include Google::Apis::Core::Hashable
      
        # [Output Only] An optional identifier specified by the client when the mutation
        # was initiated. Must be unique for all operation resources in the project.
        # Corresponds to the JSON property `clientOperationId`
        # @return [String]
        attr_accessor :client_operation_id
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # [Output Only] The time that this operation was completed. This is in RFC3339
        # text format.
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
        # message that was returned, such as 404.
        # Corresponds to the JSON property `httpErrorStatusCode`
        # @return [Fixnum]
        attr_accessor :http_error_status_code
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The time that this operation was requested. This is in RFC3339
        # text format.
        # Corresponds to the JSON property `insertTime`
        # @return [String]
        attr_accessor :insert_time
      
        # [Output Only] Type of the resource. Always compute#Operation for Operation
        # resources.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Type of the operation, such as insert, update, and delete.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # [Output Only] An optional progress indicator that ranges from 0 to 100. There
        # is no requirement that this be linear or support any granularity of operations.
        # This should not be used to guess at when the operation will be complete. This
        # number should monotonically increase as the operation progresses.
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # [Output Only] URL of the region where the operation resides. Only applicable
        # for regional resources.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # [Output Only] The time that this operation was started by the server. This is
        # in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # [Output Only] Status of the operation. Can be one of the following: PENDING,
        # RUNNING, or DONE.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # [Output Only] An optional textual description of the current status of the
        # operation.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # [Output Only] Unique target ID which identifies a particular incarnation of
        # the target.
        # Corresponds to the JSON property `targetId`
        # @return [String]
        attr_accessor :target_id
      
        # [Output Only] URL of the resource the operation is mutating.
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
      
        # [Output Only] URL of the zone where the operation resides.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_operation_id = args[:client_operation_id] unless args[:client_operation_id].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @error = args[:error] unless args[:error].nil?
          @http_error_message = args[:http_error_message] unless args[:http_error_message].nil?
          @http_error_status_code = args[:http_error_status_code] unless args[:http_error_status_code].nil?
          @id = args[:id] unless args[:id].nil?
          @insert_time = args[:insert_time] unless args[:insert_time].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @operation_type = args[:operation_type] unless args[:operation_type].nil?
          @progress = args[:progress] unless args[:progress].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @status = args[:status] unless args[:status].nil?
          @status_message = args[:status_message] unless args[:status_message].nil?
          @target_id = args[:target_id] unless args[:target_id].nil?
          @target_link = args[:target_link] unless args[:target_link].nil?
          @user = args[:user] unless args[:user].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
          @zone = args[:zone] unless args[:zone].nil?
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
            @errors = args[:errors] unless args[:errors].nil?
          end
          
          # 
          class Error
            include Google::Apis::Core::Hashable
          
            # [Output Only] The error type identifier for this error.
            # Corresponds to the JSON property `code`
            # @return [String]
            attr_accessor :code
          
            # [Output Only] Indicates the field in the request which caused the error. This
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
              @code = args[:code] unless args[:code].nil?
              @location = args[:location] unless args[:location].nil?
              @message = args[:message] unless args[:message].nil?
            end
          end
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::Operation::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # 
      class OperationAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
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
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of operation resources.
      class OperationList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] The operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Operation>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#operations for Operations
        # resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncate.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class OperationsScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of operations contained in this scope.
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
          @operations = args[:operations] unless args[:operations].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] Informational warning which replaces the list of operations when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::OperationsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # A matcher for the path portion of the URL. The BackendService from the longest-
      # matched rule will serve the URL. If no rule was matched, the default_service
      # will be used.
      class PathMatcher
        include Google::Apis::Core::Hashable
      
        # The URL to the BackendService resource. This will be used if none of the '
        # pathRules' defined by this PathMatcher is met by the URL's path portion.
        # Corresponds to the JSON property `defaultService`
        # @return [String]
        attr_accessor :default_service
      
        # 
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
          @default_service = args[:default_service] unless args[:default_service].nil?
          @description = args[:description] unless args[:description].nil?
          @name = args[:name] unless args[:name].nil?
          @path_rules = args[:path_rules] unless args[:path_rules].nil?
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
          @paths = args[:paths] unless args[:paths].nil?
          @service = args[:service] unless args[:service].nil?
        end
      end
      
      # A Project resource. Projects can only be created in the Google Developers
      # Console. Unless marked otherwise, values can only be modified in the console.
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
      
        # An optional textual description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always compute#project for projects.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Quotas assigned to this project.
        # Corresponds to the JSON property `quotas`
        # @return [Array<Google::Apis::ComputeV1::Quota>]
        attr_accessor :quotas
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The location in Cloud Storage and naming method of the daily usage report.
        # Contains bucket_name and report_name prefix.
        # Corresponds to the JSON property `usageExportLocation`
        # @return [Google::Apis::ComputeV1::UsageExportLocation]
        attr_accessor :usage_export_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_instance_metadata = args[:common_instance_metadata] unless args[:common_instance_metadata].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @quotas = args[:quotas] unless args[:quotas].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @usage_export_location = args[:usage_export_location] unless args[:usage_export_location].nil?
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
          @limit = args[:limit] unless args[:limit].nil?
          @metric = args[:metric] unless args[:metric].nil?
          @usage = args[:usage] unless args[:usage].nil?
        end
      end
      
      # Region resource.
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
      
        # [Output Only] Unique identifier for the resource; defined by the server .
        # Corresponds to the JSON property `id`
        # @return [String]
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
      
        # [Output Only] Server defined URL for the resource.
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
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @deprecated = args[:deprecated] unless args[:deprecated].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @quotas = args[:quotas] unless args[:quotas].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @status = args[:status] unless args[:status].nil?
          @zones = args[:zones] unless args[:zones].nil?
        end
      end
      
      # Contains a list of region resources.
      class RegionList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Region resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Region>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#regionList for lists of regions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class ResourceGroupReference
        include Google::Apis::Core::Hashable
      
        # A URI referencing one of the resource views listed in the backend service.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] unless args[:group].nil?
        end
      end
      
      # The route resource. A Route is a rule that specifies how certain packets
      # should be handled by the virtual network. Routes are associated with VMs by
      # tag and the set of Routes for a particular VM is called its routing table. For
      # each packet leaving a VM, the system searches that VM's routing table for a
      # single best matching Route. Routes match packets by destination IP address,
      # preferring smaller or more specific ranges over larger ones. If there is a tie,
      # the system selects the Route with the smallest priority value. If there is
      # still a tie, it uses the layer three and four packet headers to select just
      # one of the remaining matching Routes. The packet is then forwarded as
      # specified by the next_hop field of the winning Route -- either to another VM
      # destination, a VM gateway or a GCE operated gateway. Packets that do not match
      # any Route in the sending VM's routing table will be dropped.
      class Route
        include Google::Apis::Core::Hashable
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Which packets does this route apply to?
        # Corresponds to the JSON property `destRange`
        # @return [String]
        attr_accessor :dest_range
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network to which this route is applied; provided by the client when
        # the route is created.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The URL to a gateway that should handle matching packets.
        # Corresponds to the JSON property `nextHopGateway`
        # @return [String]
        attr_accessor :next_hop_gateway
      
        # The URL to an instance that should handle matching packets.
        # Corresponds to the JSON property `nextHopInstance`
        # @return [String]
        attr_accessor :next_hop_instance
      
        # The network IP address of an instance that should handle matching packets.
        # Corresponds to the JSON property `nextHopIp`
        # @return [String]
        attr_accessor :next_hop_ip
      
        # The URL of the local network if it should handle matching packets.
        # Corresponds to the JSON property `nextHopNetwork`
        # @return [String]
        attr_accessor :next_hop_network
      
        # The URL to a VpnTunnel that should handle matching packets.
        # Corresponds to the JSON property `nextHopVpnTunnel`
        # @return [String]
        attr_accessor :next_hop_vpn_tunnel
      
        # Breaks ties between Routes of equal specificity. Routes with smaller values
        # win when tied with routes with larger values. Default value is 1000. A valid
        # range is between 0 and 65535.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # A list of instance tags to which this route applies.
        # Corresponds to the JSON property `tags`
        # @return [Array<String>]
        attr_accessor :tags
      
        # If potential misconfigurations are detected for this route, this field will be
        # populated with warning messages.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::ComputeV1::Route::Warning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @dest_range = args[:dest_range] unless args[:dest_range].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @network = args[:network] unless args[:network].nil?
          @next_hop_gateway = args[:next_hop_gateway] unless args[:next_hop_gateway].nil?
          @next_hop_instance = args[:next_hop_instance] unless args[:next_hop_instance].nil?
          @next_hop_ip = args[:next_hop_ip] unless args[:next_hop_ip].nil?
          @next_hop_network = args[:next_hop_network] unless args[:next_hop_network].nil?
          @next_hop_vpn_tunnel = args[:next_hop_vpn_tunnel] unless args[:next_hop_vpn_tunnel].nil?
          @priority = args[:priority] unless args[:priority].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @tags = args[:tags] unless args[:tags].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
        
        # 
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::Route::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # Contains a list of route resources.
      class RouteList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Sets the scheduling options for an Instance.
      class Scheduling
        include Google::Apis::Core::Hashable
      
        # Specifies whether the instance should be automatically restarted if it is
        # terminated by Compute Engine (not terminated by a user).
        # Corresponds to the JSON property `automaticRestart`
        # @return [Boolean]
        attr_accessor :automatic_restart
        alias_method :automatic_restart?, :automatic_restart
      
        # Defines the maintenance behavior for this instance. The default behavior is
        # MIGRATE. For more information, see Setting maintenance behavior.
        # Corresponds to the JSON property `onHostMaintenance`
        # @return [String]
        attr_accessor :on_host_maintenance
      
        # Whether the Instance is preemptible.
        # Corresponds to the JSON property `preemptible`
        # @return [Boolean]
        attr_accessor :preemptible
        alias_method :preemptible?, :preemptible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_restart = args[:automatic_restart] unless args[:automatic_restart].nil?
          @on_host_maintenance = args[:on_host_maintenance] unless args[:on_host_maintenance].nil?
          @preemptible = args[:preemptible] unless args[:preemptible].nil?
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
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] unless args[:contents].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
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
          @email = args[:email] unless args[:email].nil?
          @scopes = args[:scopes] unless args[:scopes].nil?
        end
      end
      
      # A persistent disk snapshot resource.
      class Snapshot
        include Google::Apis::Core::Hashable
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Size of the persistent disk snapshot, specified in GB (output only).
        # Corresponds to the JSON property `diskSizeGb`
        # @return [String]
        attr_accessor :disk_size_gb
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Public visible licenses.
        # Corresponds to the JSON property `licenses`
        # @return [Array<String>]
        attr_accessor :licenses
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The source disk used to create this snapshot.
        # Corresponds to the JSON property `sourceDisk`
        # @return [String]
        attr_accessor :source_disk
      
        # The 'id' value of the disk used to create this snapshot. This value may be
        # used to determine whether the snapshot was taken from the current or a
        # previous instance of a given disk name.
        # Corresponds to the JSON property `sourceDiskId`
        # @return [String]
        attr_accessor :source_disk_id
      
        # The status of the persistent disk snapshot (output only).
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A size of the the storage used by the snapshot. As snapshots share storage
        # this number is expected to change with snapshot creation/deletion.
        # Corresponds to the JSON property `storageBytes`
        # @return [String]
        attr_accessor :storage_bytes
      
        # An indicator whether storageBytes is in a stable state, or it is being
        # adjusted as a result of shared storage reallocation.
        # Corresponds to the JSON property `storageBytesStatus`
        # @return [String]
        attr_accessor :storage_bytes_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @disk_size_gb = args[:disk_size_gb] unless args[:disk_size_gb].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @licenses = args[:licenses] unless args[:licenses].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @source_disk = args[:source_disk] unless args[:source_disk].nil?
          @source_disk_id = args[:source_disk_id] unless args[:source_disk_id].nil?
          @status = args[:status] unless args[:status].nil?
          @storage_bytes = args[:storage_bytes] unless args[:storage_bytes].nil?
          @storage_bytes_status = args[:storage_bytes_status] unless args[:storage_bytes_status].nil?
        end
      end
      
      # Contains a list of persistent disk snapshot resources.
      class SnapshotList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A set of instance tags.
      class Tags
        include Google::Apis::Core::Hashable
      
        # Specifies a fingerprint for this request, which is essentially a hash of the
        # metadata's contents and used for optimistic locking. The fingerprint is
        # initially generated by Compute Engine and changes after every request to
        # modify or update metadata. You must always provide an up-to-date fingerprint
        # hash in order to update or change metadata.
        # To see the latest fingerprint, make get() request to the instance.
        # Corresponds to the JSON property `fingerprint`
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
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @items = args[:items] unless args[:items].nil?
        end
      end
      
      # A TargetHttpProxy resource. This resource defines an HTTP proxy.
      class TargetHttpProxy
        include Google::Apis::Core::Hashable
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Server defined URL for the resource (output only).
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
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @url_map = args[:url_map] unless args[:url_map].nil?
        end
      end
      
      # Contains a list of TargetHttpProxy resources.
      class TargetHttpProxyList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetHttpProxy resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetHttpProxy>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A TargetInstance resource. This resource defines an endpoint VM that
      # terminates traffic of certain protocols.
      class TargetInstance
        include Google::Apis::Core::Hashable
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The URL to the instance that terminates the relevant traffic.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # NAT option controlling how IPs are NAT'ed to the VM. Currently only NO_NAT (
        # default value) is supported.
        # Corresponds to the JSON property `natPolicy`
        # @return [String]
        attr_accessor :nat_policy
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # URL of the zone where the target instance resides (output only).
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @instance = args[:instance] unless args[:instance].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @nat_policy = args[:nat_policy] unless args[:nat_policy].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @zone = args[:zone] unless args[:zone].nil?
        end
      end
      
      # 
      class TargetInstanceAggregatedList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped target instance lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetInstancesScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of TargetInstance resources.
      class TargetInstanceList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class TargetInstancesScopedList
        include Google::Apis::Core::Hashable
      
        # List of target instances contained in this scope.
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
          @target_instances = args[:target_instances] unless args[:target_instances].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetInstancesScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # A TargetPool resource. This resource defines a pool of VMs, associated
      # HttpHealthCheck resources, and the fallback TargetPool.
      class TargetPool
        include Google::Apis::Core::Hashable
      
        # This field is applicable only when the containing target pool is serving a
        # forwarding rule as the primary pool, and its 'failoverRatio' field is properly
        # set to a value between [0, 1].
        # 'backupPool' and 'failoverRatio' together define the fallback behavior of the
        # primary target pool: if the ratio of the healthy VMs in the primary pool is at
        # or below 'failoverRatio', traffic arriving at the load-balanced IP will be
        # directed to the backup pool.
        # In case where 'failoverRatio' and 'backupPool' are not set, or all the VMs in
        # the backup pool are unhealthy, the traffic will be directed back to the
        # primary pool in the "force" mode, where traffic will be spread to the healthy
        # VMs with the best effort, or to all VMs when no VM is healthy.
        # Corresponds to the JSON property `backupPool`
        # @return [String]
        attr_accessor :backup_pool
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # This field is applicable only when the containing target pool is serving a
        # forwarding rule as the primary pool (i.e., not as a backup pool to some other
        # target pool). The value of the field must be in [0, 1].
        # If set, 'backupPool' must also be set. They together define the fallback
        # behavior of the primary target pool: if the ratio of the healthy VMs in the
        # primary pool is at or below this number, traffic arriving at the load-balanced
        # IP will be directed to the backup pool.
        # In case where 'failoverRatio' is not set or all the VMs in the backup pool are
        # unhealthy, the traffic will be directed back to the primary pool in the "force"
        # mode, where traffic will be spread to the healthy VMs with the best effort,
        # or to all VMs when no VM is healthy.
        # Corresponds to the JSON property `failoverRatio`
        # @return [Float]
        attr_accessor :failover_ratio
      
        # A list of URLs to the HttpHealthCheck resource. A member VM in this pool is
        # considered healthy if and only if all specified health checks pass. An empty
        # list means all member VMs will be considered healthy at all times.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<String>]
        attr_accessor :health_checks
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of resource URLs to the member VMs serving this pool. They must live in
        # zones contained in the same region as this pool.
        # Corresponds to the JSON property `instances`
        # @return [Array<String>]
        attr_accessor :instances
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the region where the target pool resides (output only).
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Sesssion affinity option, must be one of the following values: 'NONE':
        # Connections from the same client IP may go to any VM in the pool; 'CLIENT_IP':
        # Connections from the same client IP will go to the same VM in the pool while
        # that VM remains healthy. 'CLIENT_IP_PROTO': Connections from the same client
        # IP with the same IP protocol will go to the same VM in the pool while that VM
        # remains healthy.
        # Corresponds to the JSON property `sessionAffinity`
        # @return [String]
        attr_accessor :session_affinity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_pool = args[:backup_pool] unless args[:backup_pool].nil?
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @failover_ratio = args[:failover_ratio] unless args[:failover_ratio].nil?
          @health_checks = args[:health_checks] unless args[:health_checks].nil?
          @id = args[:id] unless args[:id].nil?
          @instances = args[:instances] unless args[:instances].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @session_affinity = args[:session_affinity] unless args[:session_affinity].nil?
        end
      end
      
      # 
      class TargetPoolAggregatedList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped target pool lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetPoolsScopedList>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class TargetPoolInstanceHealth
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `healthStatus`
        # @return [Array<Google::Apis::ComputeV1::HealthStatus>]
        attr_accessor :health_status
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_status = args[:health_status] unless args[:health_status].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Contains a list of TargetPool resources.
      class TargetPoolList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A list of TargetPool resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetPool>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class AddTargetPoolsHealthCheckRequest
        include Google::Apis::Core::Hashable
      
        # Health check URLs to be added to targetPool.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<Google::Apis::ComputeV1::HealthCheckReference>]
        attr_accessor :health_checks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checks = args[:health_checks] unless args[:health_checks].nil?
        end
      end
      
      # 
      class AddTargetPoolsInstanceRequest
        include Google::Apis::Core::Hashable
      
        # URLs of the instances to be added to targetPool.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] unless args[:instances].nil?
        end
      end
      
      # 
      class RemoveTargetPoolsHealthCheckRequest
        include Google::Apis::Core::Hashable
      
        # Health check URLs to be removed from targetPool.
        # Corresponds to the JSON property `healthChecks`
        # @return [Array<Google::Apis::ComputeV1::HealthCheckReference>]
        attr_accessor :health_checks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checks = args[:health_checks] unless args[:health_checks].nil?
        end
      end
      
      # 
      class RemoveTargetPoolsInstanceRequest
        include Google::Apis::Core::Hashable
      
        # URLs of the instances to be removed from targetPool.
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::ComputeV1::InstanceReference>]
        attr_accessor :instances
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] unless args[:instances].nil?
        end
      end
      
      # 
      class TargetPoolsScopedList
        include Google::Apis::Core::Hashable
      
        # List of target pools contained in this scope.
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
          @target_pools = args[:target_pools] unless args[:target_pools].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetPoolsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
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
          @target = args[:target] unless args[:target].nil?
        end
      end
      
      # 
      class TargetVpnGateway
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource. Provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] A list of URLs to the ForwardingRule resources. ForwardingRules
        # are created using compute.forwardingRules.insert and associated to a VPN
        # gateway.
        # Corresponds to the JSON property `forwardingRules`
        # @return [Array<String>]
        attr_accessor :forwarding_rules
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # URL of the network to which this VPN gateway is attached. Provided by the
        # client when the VPN gateway is created.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # [Output Only] URL of the region where the target VPN gateway resides.
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
        # using compute.vpntunnels.insert and associated to a VPN gateway.
        # Corresponds to the JSON property `tunnels`
        # @return [Array<String>]
        attr_accessor :tunnels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @forwarding_rules = args[:forwarding_rules] unless args[:forwarding_rules].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @network = args[:network] unless args[:network].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @status = args[:status] unless args[:status].nil?
          @tunnels = args[:tunnels] unless args[:tunnels].nil?
        end
      end
      
      # 
      class TargetVpnGatewayAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A map of scoped target vpn gateway lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::TargetVpnGatewaysScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of TargetVpnGateway resources.
      class TargetVpnGatewayList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of TargetVpnGateway resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::TargetVpnGateway>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#targetVpnGateway for target VPN
        # gateways.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class TargetVpnGatewaysScopedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] List of target vpn gateways contained in this scope.
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
          @target_vpn_gateways = args[:target_vpn_gateways] unless args[:target_vpn_gateways].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # [Output Only] Informational warning which replaces the list of addresses when
        # the list is empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::TargetVpnGatewaysScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
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
          @actual_service = args[:actual_service] unless args[:actual_service].nil?
          @expected_service = args[:expected_service] unless args[:expected_service].nil?
          @host = args[:host] unless args[:host].nil?
          @path = args[:path] unless args[:path].nil?
        end
      end
      
      # A UrlMap resource. This resource defines the mapping from URL to the
      # BackendService resource, based on the "longest-match" of the URL's host and
      # path.
      class UrlMap
        include Google::Apis::Core::Hashable
      
        # Creation timestamp in RFC3339 text format (output only).
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # The URL of the BackendService resource if none of the hostRules match.
        # Corresponds to the JSON property `defaultService`
        # @return [String]
        attr_accessor :default_service
      
        # An optional textual description of the resource; provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Fingerprint of this resource. A hash of the contents stored in this object.
        # This field is used in optimistic locking. This field will be ignored when
        # inserting a UrlMap. An up-to-date fingerprint must be provided in order to
        # update the UrlMap.
        # Corresponds to the JSON property `fingerprint`
        # @return [String]
        attr_accessor :fingerprint
      
        # The list of HostRules to use against the URL.
        # Corresponds to the JSON property `hostRules`
        # @return [Array<Google::Apis::ComputeV1::HostRule>]
        attr_accessor :host_rules
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Type of the resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource; provided by the client when the resource is created. The
        # name must be 1-63 characters long, and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The list of named PathMatchers to use against the URL.
        # Corresponds to the JSON property `pathMatchers`
        # @return [Array<Google::Apis::ComputeV1::PathMatcher>]
        attr_accessor :path_matchers
      
        # Server defined URL for the resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The list of expected URL mappings. Request to update this UrlMap will succeed
        # only all of the test cases pass.
        # Corresponds to the JSON property `tests`
        # @return [Array<Google::Apis::ComputeV1::UrlMapTest>]
        attr_accessor :tests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @default_service = args[:default_service] unless args[:default_service].nil?
          @description = args[:description] unless args[:description].nil?
          @fingerprint = args[:fingerprint] unless args[:fingerprint].nil?
          @host_rules = args[:host_rules] unless args[:host_rules].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @path_matchers = args[:path_matchers] unless args[:path_matchers].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @tests = args[:tests] unless args[:tests].nil?
        end
      end
      
      # Contains a list of UrlMap resources.
      class UrlMapList
        include Google::Apis::Core::Hashable
      
        # Unique identifier for the resource; defined by the server (output only).
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
      
        # A token used to continue a truncated list request (output only).
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
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
          @url_map = args[:url_map] unless args[:url_map].nil?
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
          @description = args[:description] unless args[:description].nil?
          @host = args[:host] unless args[:host].nil?
          @path = args[:path] unless args[:path].nil?
          @service = args[:service] unless args[:service].nil?
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
          @load_errors = args[:load_errors] unless args[:load_errors].nil?
          @load_succeeded = args[:load_succeeded] unless args[:load_succeeded].nil?
          @test_failures = args[:test_failures] unless args[:test_failures].nil?
          @test_passed = args[:test_passed] unless args[:test_passed].nil?
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
          @resource = args[:resource] unless args[:resource].nil?
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
          @result = args[:result] unless args[:result].nil?
        end
      end
      
      # The location in Cloud Storage and naming method of the daily usage report.
      # Contains bucket_name and report_name prefix.
      class UsageExportLocation
        include Google::Apis::Core::Hashable
      
        # The name of an existing bucket in Cloud Storage where the usage report object
        # is stored. The Google Service Account is granted write access to this bucket.
        # This is just the bucket name, with no gs:// or https://storage.googleapis.com/
        # in front of it.
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
          @bucket_name = args[:bucket_name] unless args[:bucket_name].nil?
          @report_name_prefix = args[:report_name_prefix] unless args[:report_name_prefix].nil?
        end
      end
      
      # 
      class VpnTunnel
        include Google::Apis::Core::Hashable
      
        # [Output Only] Creation timestamp in RFC3339 text format.
        # Corresponds to the JSON property `creationTimestamp`
        # @return [String]
        attr_accessor :creation_timestamp
      
        # An optional textual description of the resource. Provided by the client when
        # the resource is created.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # [Output Only] Detailed status message for the VPN tunnel.
        # Corresponds to the JSON property `detailedStatus`
        # @return [String]
        attr_accessor :detailed_status
      
        # [Output Only] Unique identifier for the resource. Defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # IKE networks to use when establishing the VPN tunnel with peer VPN gateway.
        # The value should be a CIDR formatted string, for example: 192.168.0.0/16. The
        # ranges should be disjoint.
        # Corresponds to the JSON property `ikeNetworks`
        # @return [Array<String>]
        attr_accessor :ike_networks
      
        # IKE protocol version to use when establishing the VPN tunnel with peer VPN
        # gateway. Acceptable IKE versions are 1 or 2. Default version is 2.
        # Corresponds to the JSON property `ikeVersion`
        # @return [Fixnum]
        attr_accessor :ike_version
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the resource. Provided by the client when the resource is created. The
        # name must be 1-63 characters long and comply with RFC1035.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IP address of the peer VPN gateway.
        # Corresponds to the JSON property `peerIp`
        # @return [String]
        attr_accessor :peer_ip
      
        # [Output Only] URL of the region where the VPN tunnel resides.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Shared secret used to set the secure session between the GCE VPN gateway and
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
      
        # URL of the VPN gateway to which this VPN tunnel is associated. Provided by the
        # client when the VPN tunnel is created.
        # Corresponds to the JSON property `targetVpnGateway`
        # @return [String]
        attr_accessor :target_vpn_gateway
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @description = args[:description] unless args[:description].nil?
          @detailed_status = args[:detailed_status] unless args[:detailed_status].nil?
          @id = args[:id] unless args[:id].nil?
          @ike_networks = args[:ike_networks] unless args[:ike_networks].nil?
          @ike_version = args[:ike_version] unless args[:ike_version].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @peer_ip = args[:peer_ip] unless args[:peer_ip].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @shared_secret = args[:shared_secret] unless args[:shared_secret].nil?
          @shared_secret_hash = args[:shared_secret_hash] unless args[:shared_secret_hash].nil?
          @status = args[:status] unless args[:status].nil?
          @target_vpn_gateway = args[:target_vpn_gateway] unless args[:target_vpn_gateway].nil?
        end
      end
      
      # 
      class VpnTunnelAggregatedList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A map of scoped vpn tunnel lists.
        # Corresponds to the JSON property `items`
        # @return [Hash<String,Google::Apis::ComputeV1::VpnTunnelsScopedList>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server defined URL for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # Contains a list of VpnTunnel resources.
      class VpnTunnelList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of VpnTunnel resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::VpnTunnel>]
        attr_accessor :items
      
        # [Output Only] Type of resource. Always compute#vpnTunnel for VPN tunnels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # [Output Only] Server-defined URL for the resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # 
      class VpnTunnelsScopedList
        include Google::Apis::Core::Hashable
      
        # List of vpn tunnels contained in this scope.
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
          @vpn_tunnels = args[:vpn_tunnels] unless args[:vpn_tunnels].nil?
          @warning = args[:warning] unless args[:warning].nil?
        end
        
        # Informational warning which replaces the list of addresses when the list is
        # empty.
        class Warning
          include Google::Apis::Core::Hashable
        
          # [Output Only] The warning type identifier for this warning.
          # Corresponds to the JSON property `code`
          # @return [String]
          attr_accessor :code
        
          # [Output Only] Metadata for this warning in key: value format.
          # Corresponds to the JSON property `data`
          # @return [Array<Google::Apis::ComputeV1::VpnTunnelsScopedList::Warning::Datum>]
          attr_accessor :data
        
          # [Output Only] Optional human-readable details for this warning.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @code = args[:code] unless args[:code].nil?
            @data = args[:data] unless args[:data].nil?
            @message = args[:message] unless args[:message].nil?
          end
          
          # 
          class Datum
            include Google::Apis::Core::Hashable
          
            # [Output Only] A key for the warning data.
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
              @key = args[:key] unless args[:key].nil?
              @value = args[:value] unless args[:value].nil?
            end
          end
        end
      end
      
      # A Zone resource.
      class Zone
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
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] Type of the resource. Always kind#zone for zones.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] Any scheduled maintenance windows for this zone. When the zone
        # is in a maintenance window, all resources which reside in the zone will be
        # unavailable. For more information, see Maintenance Windows
        # Corresponds to the JSON property `maintenanceWindows`
        # @return [Array<Google::Apis::ComputeV1::Zone::MaintenanceWindow>]
        attr_accessor :maintenance_windows
      
        # [Output Only] Name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # [Output Only] Full URL reference to the region which hosts the zone.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # [Output Only] Server defined URL for the resource.
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
          @creation_timestamp = args[:creation_timestamp] unless args[:creation_timestamp].nil?
          @deprecated = args[:deprecated] unless args[:deprecated].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @maintenance_windows = args[:maintenance_windows] unless args[:maintenance_windows].nil?
          @name = args[:name] unless args[:name].nil?
          @region = args[:region] unless args[:region].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @status = args[:status] unless args[:status].nil?
        end
        
        # 
        class MaintenanceWindow
          include Google::Apis::Core::Hashable
        
          # [Output Only] Starting time of the maintenance window, in RFC3339 format.
          # Corresponds to the JSON property `beginTime`
          # @return [String]
          attr_accessor :begin_time
        
          # [Output Only] Textual description of the maintenance window.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # [Output Only] Ending time of the maintenance window, in RFC3339 format.
          # Corresponds to the JSON property `endTime`
          # @return [String]
          attr_accessor :end_time
        
          # [Output Only] Name of the maintenance window.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @begin_time = args[:begin_time] unless args[:begin_time].nil?
            @description = args[:description] unless args[:description].nil?
            @end_time = args[:end_time] unless args[:end_time].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
      end
      
      # Contains a list of zone resources.
      class ZoneList
        include Google::Apis::Core::Hashable
      
        # [Output Only] Unique identifier for the resource; defined by the server.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # [Output Only] A list of Zone resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::ComputeV1::Zone>]
        attr_accessor :items
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # [Output Only] A token used to continue a truncated list request.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Server defined URL for this resource (output only).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
    end
  end
end
