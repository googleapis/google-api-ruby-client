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
    module RedisV1beta1
      
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
      
      # Request for Export.
      class ExportInstanceRequest
        include Google::Apis::Core::Hashable
      
        # The output content
        # Corresponds to the JSON property `outputConfig`
        # @return [Google::Apis::RedisV1beta1::OutputConfig]
        attr_accessor :output_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_config = args[:output_config] if args.key?(:output_config)
        end
      end
      
      # Request for Failover.
      class FailoverInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Available data protection modes that the user can choose. If it's
        # unspecified, data protection mode will be LIMITED_DATA_LOSS by default.
        # Corresponds to the JSON property `dataProtectionMode`
        # @return [String]
        attr_accessor :data_protection_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_protection_mode = args[:data_protection_mode] if args.key?(:data_protection_mode)
        end
      end
      
      # The Cloud Storage location for the output content
      class GcsDestination
        include Google::Apis::Core::Hashable
      
        # Required. Data destination URI (e.g. 'gs://my_bucket/my_object'). Existing
        # files will be overwritten.
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
      
      # The Cloud Storage location for the input content
      class GcsSource
        include Google::Apis::Core::Hashable
      
        # Required. Source data URI. (e.g. 'gs://my_bucket/my_object').
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
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudCommonOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # This location metadata represents additional configuration options for a given
      # location where a Redis instance may be created. All fields are output only. It
      # is returned as content of the `google.cloud.location.Location.metadata` field.
      class GoogleCloudRedisV1beta1LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The set of available zones in the location. The map is keyed by
        # the lowercase ID of each zone, as defined by GCE. These keys can be specified
        # in `location_id` or `alternative_location_id` fields when creating a Redis
        # instance.
        # Corresponds to the JSON property `availableZones`
        # @return [Hash<String,Google::Apis::RedisV1beta1::GoogleCloudRedisV1beta1ZoneMetadata>]
        attr_accessor :available_zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @available_zones = args[:available_zones] if args.key?(:available_zones)
        end
      end
      
      # Defines specific information for a particular zone. Currently empty and
      # reserved for future use only.
      class GoogleCloudRedisV1beta1ZoneMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request for Import.
      class ImportInstanceRequest
        include Google::Apis::Core::Hashable
      
        # The input content
        # Corresponds to the JSON property `inputConfig`
        # @return [Google::Apis::RedisV1beta1::InputConfig]
        attr_accessor :input_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @input_config = args[:input_config] if args.key?(:input_config)
        end
      end
      
      # The input content
      class InputConfig
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage location for the input content
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RedisV1beta1::GcsSource]
        attr_accessor :gcs_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
        end
      end
      
      # A Memorystore for Redis instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Optional. If specified, at least one node will be provisioned in this zone in
        # addition to the zone specified in location_id. Only applicable to standard
        # tier. If provided, it must be a different zone from the one provided in [
        # location_id]. Additional nodes beyond the first 2 will be placed in zones
        # selected by the service.
        # Corresponds to the JSON property `alternativeLocationId`
        # @return [String]
        attr_accessor :alternative_location_id
      
        # Optional. Indicates whether OSS Redis AUTH is enabled for the instance. If set
        # to "true" AUTH is enabled on the instance. Default value is "false" meaning
        # AUTH is disabled.
        # Corresponds to the JSON property `authEnabled`
        # @return [Boolean]
        attr_accessor :auth_enabled
        alias_method :auth_enabled?, :auth_enabled
      
        # Optional. The full name of the Google Compute Engine [network](https://cloud.
        # google.com/vpc/docs/vpc) to which the instance is connected. If left
        # unspecified, the `default` network will be used.
        # Corresponds to the JSON property `authorizedNetwork`
        # @return [String]
        attr_accessor :authorized_network
      
        # Optional. The available maintenance versions that an instance could update to.
        # Corresponds to the JSON property `availableMaintenanceVersions`
        # @return [Array<String>]
        attr_accessor :available_maintenance_versions
      
        # Optional. The network connect mode of the Redis instance. If not provided, the
        # connect mode defaults to DIRECT_PEERING.
        # Corresponds to the JSON property `connectMode`
        # @return [String]
        attr_accessor :connect_mode
      
        # Output only. The time the instance was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The current zone where the Redis primary node is located. In
        # basic tier, this will always be the same as [location_id]. In standard tier,
        # this can be the zone of any node in the instance.
        # Corresponds to the JSON property `currentLocationId`
        # @return [String]
        attr_accessor :current_location_id
      
        # Optional. The KMS key reference that the customer provides when trying to
        # create the instance.
        # Corresponds to the JSON property `customerManagedKey`
        # @return [String]
        attr_accessor :customer_managed_key
      
        # An arbitrary and optional user-provided name for the instance.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Hostname or IP address of the exposed Redis endpoint used by
        # clients to connect to the service.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Resource labels to represent user provided metadata
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The zone where the instance will be provisioned. If not provided,
        # the service will choose a zone from the specified region for the instance. For
        # standard tier, additional nodes will be added across multiple zones for
        # protection against zonal failures. If specified, at least one node will be
        # provisioned in this zone.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Maintenance policy for an instance.
        # Corresponds to the JSON property `maintenancePolicy`
        # @return [Google::Apis::RedisV1beta1::MaintenancePolicy]
        attr_accessor :maintenance_policy
      
        # Upcoming maintenance schedule. If no maintenance is scheduled, fields are not
        # populated.
        # Corresponds to the JSON property `maintenanceSchedule`
        # @return [Google::Apis::RedisV1beta1::MaintenanceSchedule]
        attr_accessor :maintenance_schedule
      
        # Optional. The self service update maintenance version. The version is date
        # based such as "20210712_00_00".
        # Corresponds to the JSON property `maintenanceVersion`
        # @return [String]
        attr_accessor :maintenance_version
      
        # Required. Redis memory size in GiB.
        # Corresponds to the JSON property `memorySizeGb`
        # @return [Fixnum]
        attr_accessor :memory_size_gb
      
        # Required. Unique name of the resource in this scope including project and
        # location using the form: `projects/`project_id`/locations/`location_id`/
        # instances/`instance_id`` Note: Redis instances are managed and addressed at
        # regional level so location_id here refers to a GCP region; however, users may
        # choose which specific zone (or collection of zones for cross-zone instances)
        # an instance should be provisioned in. Refer to location_id and
        # alternative_location_id fields for more details.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Info per node.
        # Corresponds to the JSON property `nodes`
        # @return [Array<Google::Apis::RedisV1beta1::NodeInfo>]
        attr_accessor :nodes
      
        # Configuration of the persistence functionality.
        # Corresponds to the JSON property `persistenceConfig`
        # @return [Google::Apis::RedisV1beta1::PersistenceConfig]
        attr_accessor :persistence_config
      
        # Output only. Cloud IAM identity used by import / export operations to transfer
        # data to/from Cloud Storage. Format is "serviceAccount:". The value may change
        # over time for a given instance so should be checked before each import/export
        # operation.
        # Corresponds to the JSON property `persistenceIamIdentity`
        # @return [String]
        attr_accessor :persistence_iam_identity
      
        # Output only. The port number of the exposed Redis endpoint.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Output only. Hostname or IP address of the exposed readonly Redis endpoint.
        # Standard tier only. Targets all healthy replica nodes in instance. Replication
        # is asynchronous and replica nodes will exhibit some lag behind the primary.
        # Write requests must target 'host'.
        # Corresponds to the JSON property `readEndpoint`
        # @return [String]
        attr_accessor :read_endpoint
      
        # Output only. The port number of the exposed readonly redis endpoint. Standard
        # tier only. Write requests should target 'port'.
        # Corresponds to the JSON property `readEndpointPort`
        # @return [Fixnum]
        attr_accessor :read_endpoint_port
      
        # Optional. Read replicas mode for the instance. Defaults to
        # READ_REPLICAS_DISABLED.
        # Corresponds to the JSON property `readReplicasMode`
        # @return [String]
        attr_accessor :read_replicas_mode
      
        # Optional. Redis configuration parameters, according to http://redis.io/topics/
        # config. Currently, the only supported parameters are: Redis version 3.2 and
        # newer: * maxmemory-policy * notify-keyspace-events Redis version 4.0 and newer:
        # * activedefrag * lfu-decay-time * lfu-log-factor * maxmemory-gb Redis version
        # 5.0 and newer: * stream-node-max-bytes * stream-node-max-entries
        # Corresponds to the JSON property `redisConfigs`
        # @return [Hash<String,String>]
        attr_accessor :redis_configs
      
        # Optional. The version of Redis software. If not provided, latest supported
        # version will be used. Currently, the supported values are: * `REDIS_3_2` for
        # Redis 3.2 compatibility * `REDIS_4_0` for Redis 4.0 compatibility (default) * `
        # REDIS_5_0` for Redis 5.0 compatibility * `REDIS_6_X` for Redis 6.x
        # compatibility
        # Corresponds to the JSON property `redisVersion`
        # @return [String]
        attr_accessor :redis_version
      
        # Optional. The number of replica nodes. The valid range for the Standard Tier
        # with read replicas enabled is [1-5] and defaults to 2. If read replicas are
        # not enabled for a Standard Tier instance, the only valid value is 1 and the
        # default is 1. The valid value for basic tier is 0 and the default is also 0.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Optional. For DIRECT_PEERING mode, the CIDR range of internal addresses that
        # are reserved for this instance. Range must be unique and non-overlapping with
        # existing subnets in an authorized network. For PRIVATE_SERVICE_ACCESS mode,
        # the name of one allocated IP address ranges associated with this private
        # service access connection. If not provided, the service will choose an unused /
        # 29 block, for example, 10.0.0.0/29 or 192.168.0.0/29. For
        # READ_REPLICAS_ENABLED the default block size is /28.
        # Corresponds to the JSON property `reservedIpRange`
        # @return [String]
        attr_accessor :reserved_ip_range
      
        # Optional. Additional IP range for node placement. Required when enabling read
        # replicas on an existing instance. For DIRECT_PEERING mode value must be a CIDR
        # range of size /28, or "auto". For PRIVATE_SERVICE_ACCESS mode value must be
        # the name of an allocated address range associated with the private service
        # access connection, or "auto".
        # Corresponds to the JSON property `secondaryIpRange`
        # @return [String]
        attr_accessor :secondary_ip_range
      
        # Output only. List of server CA certificates for the instance.
        # Corresponds to the JSON property `serverCaCerts`
        # @return [Array<Google::Apis::RedisV1beta1::TlsCertificate>]
        attr_accessor :server_ca_certs
      
        # Output only. The current state of this instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current status of this instance,
        # if available.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Optional. reasons that causes instance in "SUSPENDED" state.
        # Corresponds to the JSON property `suspensionReasons`
        # @return [Array<String>]
        attr_accessor :suspension_reasons
      
        # Required. The service tier of the instance.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Optional. The TLS mode of the Redis instance. If not provided, TLS is disabled
        # for the instance.
        # Corresponds to the JSON property `transitEncryptionMode`
        # @return [String]
        attr_accessor :transit_encryption_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_location_id = args[:alternative_location_id] if args.key?(:alternative_location_id)
          @auth_enabled = args[:auth_enabled] if args.key?(:auth_enabled)
          @authorized_network = args[:authorized_network] if args.key?(:authorized_network)
          @available_maintenance_versions = args[:available_maintenance_versions] if args.key?(:available_maintenance_versions)
          @connect_mode = args[:connect_mode] if args.key?(:connect_mode)
          @create_time = args[:create_time] if args.key?(:create_time)
          @current_location_id = args[:current_location_id] if args.key?(:current_location_id)
          @customer_managed_key = args[:customer_managed_key] if args.key?(:customer_managed_key)
          @display_name = args[:display_name] if args.key?(:display_name)
          @host = args[:host] if args.key?(:host)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @maintenance_policy = args[:maintenance_policy] if args.key?(:maintenance_policy)
          @maintenance_schedule = args[:maintenance_schedule] if args.key?(:maintenance_schedule)
          @maintenance_version = args[:maintenance_version] if args.key?(:maintenance_version)
          @memory_size_gb = args[:memory_size_gb] if args.key?(:memory_size_gb)
          @name = args[:name] if args.key?(:name)
          @nodes = args[:nodes] if args.key?(:nodes)
          @persistence_config = args[:persistence_config] if args.key?(:persistence_config)
          @persistence_iam_identity = args[:persistence_iam_identity] if args.key?(:persistence_iam_identity)
          @port = args[:port] if args.key?(:port)
          @read_endpoint = args[:read_endpoint] if args.key?(:read_endpoint)
          @read_endpoint_port = args[:read_endpoint_port] if args.key?(:read_endpoint_port)
          @read_replicas_mode = args[:read_replicas_mode] if args.key?(:read_replicas_mode)
          @redis_configs = args[:redis_configs] if args.key?(:redis_configs)
          @redis_version = args[:redis_version] if args.key?(:redis_version)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @reserved_ip_range = args[:reserved_ip_range] if args.key?(:reserved_ip_range)
          @secondary_ip_range = args[:secondary_ip_range] if args.key?(:secondary_ip_range)
          @server_ca_certs = args[:server_ca_certs] if args.key?(:server_ca_certs)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @suspension_reasons = args[:suspension_reasons] if args.key?(:suspension_reasons)
          @tier = args[:tier] if args.key?(:tier)
          @transit_encryption_mode = args[:transit_encryption_mode] if args.key?(:transit_encryption_mode)
        end
      end
      
      # Instance AUTH string details.
      class InstanceAuthString
        include Google::Apis::Core::Hashable
      
        # AUTH string set on the instance.
        # Corresponds to the JSON property `authString`
        # @return [String]
        attr_accessor :auth_string
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_string = args[:auth_string] if args.key?(:auth_string)
        end
      end
      
      # Response for ListInstances.
      class ListInstancesResponse
        include Google::Apis::Core::Hashable
      
        # A list of Redis instances in the project in the specified location, or across
        # all locations. If the `location_id` in the parent field of the request is "-",
        # all regions available to the project are queried, and the results aggregated.
        # If in such an aggregated query a location is unavailable, a placeholder Redis
        # entry is included in the response with the `name` field set to a value of the
        # form `projects/`project_id`/locations/`location_id`/instances/`- and the `
        # status` field set to ERROR and `status_message` field set to "location not
        # available for ListInstances".
        # Corresponds to the JSON property `instances`
        # @return [Array<Google::Apis::RedisV1beta1::Instance>]
        attr_accessor :instances
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instances = args[:instances] if args.key?(:instances)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::RedisV1beta1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::RedisV1beta1::Operation>]
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
      
      # A resource that represents Google Cloud Platform location.
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
      
        # Resource ID for the region. For example: "us-east1".
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Output only. The set of available zones in the location. The map is keyed by
        # the lowercase ID of each zone, as defined by Compute Engine. These keys can be
        # specified in `location_id` or `alternative_location_id` fields when creating a
        # Redis instance.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Full resource name for the region. For example: "projects/example-project/
        # locations/us-east1".
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
      
      # Maintenance policy for an instance.
      class MaintenancePolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the policy was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of what this policy is for. Create/Update methods return
        # INVALID_ARGUMENT if the length is greater than 512.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time when the policy was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Maintenance window that is applied to resources covered by this
        # policy. Minimum 1. For the current version, the maximum number of
        # weekly_window is expected to be one.
        # Corresponds to the JSON property `weeklyMaintenanceWindow`
        # @return [Array<Google::Apis::RedisV1beta1::WeeklyMaintenanceWindow>]
        attr_accessor :weekly_maintenance_window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @update_time = args[:update_time] if args.key?(:update_time)
          @weekly_maintenance_window = args[:weekly_maintenance_window] if args.key?(:weekly_maintenance_window)
        end
      end
      
      # Upcoming maintenance schedule. If no maintenance is scheduled, fields are not
      # populated.
      class MaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # If the scheduled maintenance can be rescheduled, default is true.
        # Corresponds to the JSON property `canReschedule`
        # @return [Boolean]
        attr_accessor :can_reschedule
        alias_method :can_reschedule?, :can_reschedule
      
        # Output only. The end time of any upcoming scheduled maintenance for this
        # instance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The deadline that the maintenance schedule start time can not go
        # beyond, including reschedule.
        # Corresponds to the JSON property `scheduleDeadlineTime`
        # @return [String]
        attr_accessor :schedule_deadline_time
      
        # Output only. The start time of any upcoming scheduled maintenance for this
        # instance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @can_reschedule = args[:can_reschedule] if args.key?(:can_reschedule)
          @end_time = args[:end_time] if args.key?(:end_time)
          @schedule_deadline_time = args[:schedule_deadline_time] if args.key?(:schedule_deadline_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Node specific properties.
      class NodeInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Node identifying string. e.g. 'node-0', 'node-1'
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Location of the node.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
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
        # @return [Google::Apis::RedisV1beta1::Status]
        attr_accessor :error
      
        # ` `createTime`: The time the operation was created. `endTime`: The time the
        # operation finished running. `target`: Server-defined resource path for the
        # target of the operation. `verb`: Name of the verb executed by the operation. `
        # statusDetail`: Human-readable status of the operation, if any. `
        # cancelRequested`: Identifies whether the user has requested cancellation of
        # the operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`. `apiVersion`: API version used to start the operation. `
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
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
      
      # The output content
      class OutputConfig
        include Google::Apis::Core::Hashable
      
        # The Cloud Storage location for the output content
        # Corresponds to the JSON property `gcsDestination`
        # @return [Google::Apis::RedisV1beta1::GcsDestination]
        attr_accessor :gcs_destination
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_destination = args[:gcs_destination] if args.key?(:gcs_destination)
        end
      end
      
      # Configuration of the persistence functionality.
      class PersistenceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Controls whether Persistence features are enabled. If not provided,
        # the existing value will be used.
        # Corresponds to the JSON property `persistenceMode`
        # @return [String]
        attr_accessor :persistence_mode
      
        # Output only. The next time that a snapshot attempt is scheduled to occur.
        # Corresponds to the JSON property `rdbNextSnapshotTime`
        # @return [String]
        attr_accessor :rdb_next_snapshot_time
      
        # Optional. Period between RDB snapshots. Snapshots will be attempted every
        # period starting from the provided snapshot start time. For example, a start
        # time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until
        # 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and
        # 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used
        # as default.
        # Corresponds to the JSON property `rdbSnapshotPeriod`
        # @return [String]
        attr_accessor :rdb_snapshot_period
      
        # Optional. Date and time that the first snapshot was/will be attempted, and to
        # which future snapshots will be aligned. If not provided, the current time will
        # be used.
        # Corresponds to the JSON property `rdbSnapshotStartTime`
        # @return [String]
        attr_accessor :rdb_snapshot_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @persistence_mode = args[:persistence_mode] if args.key?(:persistence_mode)
          @rdb_next_snapshot_time = args[:rdb_next_snapshot_time] if args.key?(:rdb_next_snapshot_time)
          @rdb_snapshot_period = args[:rdb_snapshot_period] if args.key?(:rdb_snapshot_period)
          @rdb_snapshot_start_time = args[:rdb_snapshot_start_time] if args.key?(:rdb_snapshot_start_time)
        end
      end
      
      # Operation metadata returned by the CLH during resource state reconciliation.
      class ReconciliationOperationMetadata
        include Google::Apis::Core::Hashable
      
        # DEPRECATED. Use exclusive_action instead.
        # Corresponds to the JSON property `deleteResource`
        # @return [Boolean]
        attr_accessor :delete_resource
        alias_method :delete_resource?, :delete_resource
      
        # Excluisive action returned by the CLH.
        # Corresponds to the JSON property `exclusiveAction`
        # @return [String]
        attr_accessor :exclusive_action
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delete_resource = args[:delete_resource] if args.key?(:delete_resource)
          @exclusive_action = args[:exclusive_action] if args.key?(:exclusive_action)
        end
      end
      
      # Request for RescheduleMaintenance.
      class RescheduleMaintenanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. If reschedule type is SPECIFIC_TIME, must set up schedule_time as
        # well.
        # Corresponds to the JSON property `rescheduleType`
        # @return [String]
        attr_accessor :reschedule_type
      
        # Optional. Timestamp when the maintenance shall be rescheduled to if
        # reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example `2012-11-15T16:
        # 19:00.094Z`.
        # Corresponds to the JSON property `scheduleTime`
        # @return [String]
        attr_accessor :schedule_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reschedule_type = args[:reschedule_type] if args.key?(:reschedule_type)
          @schedule_time = args[:schedule_time] if args.key?(:schedule_time)
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # TlsCertificate Resource
      class TlsCertificate
        include Google::Apis::Core::Hashable
      
        # PEM representation.
        # Corresponds to the JSON property `cert`
        # @return [String]
        attr_accessor :cert
      
        # Output only. The time when the certificate was created in [RFC 3339](https://
        # tools.ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the certificate expires in [RFC 3339](https://tools.
        # ietf.org/html/rfc3339) format, for example `2020-05-18T00:00:00.094Z`.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Serial number, as extracted from the certificate.
        # Corresponds to the JSON property `serialNumber`
        # @return [String]
        attr_accessor :serial_number
      
        # Sha1 Fingerprint of the certificate.
        # Corresponds to the JSON property `sha1Fingerprint`
        # @return [String]
        attr_accessor :sha1_fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert = args[:cert] if args.key?(:cert)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @serial_number = args[:serial_number] if args.key?(:serial_number)
          @sha1_fingerprint = args[:sha1_fingerprint] if args.key?(:sha1_fingerprint)
        end
      end
      
      # Request for UpgradeInstance.
      class UpgradeInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. Specifies the target version of Redis software to upgrade to.
        # Corresponds to the JSON property `redisVersion`
        # @return [String]
        attr_accessor :redis_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @redis_version = args[:redis_version] if args.key?(:redis_version)
        end
      end
      
      # Time window in which disruptive maintenance updates occur. Non-disruptive
      # updates can occur inside or outside this window.
      class WeeklyMaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Required. The day of week that maintenance updates occur.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Output only. Duration of the maintenance window. The current window is fixed
        # at 1 hour.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::RedisV1beta1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
    end
  end
end
