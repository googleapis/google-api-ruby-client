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
      
      # Configuration of the AOF based persistence.
      class AofConfig
        include Google::Apis::Core::Hashable
      
        # Optional. fsync configuration.
        # Corresponds to the JSON property `appendFsync`
        # @return [String]
        attr_accessor :append_fsync
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @append_fsync = args[:append_fsync] if args.key?(:append_fsync)
        end
      end
      
      # The automated backup config for a cluster.
      class AutomatedBackupConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The automated backup mode. If the mode is disabled, the other fields
        # will be ignored.
        # Corresponds to the JSON property `automatedBackupMode`
        # @return [String]
        attr_accessor :automated_backup_mode
      
        # This schedule allows the backup to be triggered at a fixed frequency (
        # currently only daily is supported).
        # Corresponds to the JSON property `fixedFrequencySchedule`
        # @return [Google::Apis::RedisV1beta1::FixedFrequencySchedule]
        attr_accessor :fixed_frequency_schedule
      
        # Optional. How long to keep automated backups before the backups are deleted.
        # The value should be between 1 day and 365 days. If not specified, the default
        # value is 35 days.
        # Corresponds to the JSON property `retention`
        # @return [String]
        attr_accessor :retention
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_backup_mode = args[:automated_backup_mode] if args.key?(:automated_backup_mode)
          @fixed_frequency_schedule = args[:fixed_frequency_schedule] if args.key?(:fixed_frequency_schedule)
          @retention = args[:retention] if args.key?(:retention)
        end
      end
      
      # Configuration for availability of database instance
      class AvailabilityConfiguration
        include Google::Apis::Core::Hashable
      
        # Checks for existence of (multi-cluster) routing configuration that allows
        # automatic failover to a different zone/region in case of an outage. Applicable
        # to Bigtable resources.
        # Corresponds to the JSON property `automaticFailoverRoutingConfigured`
        # @return [Boolean]
        attr_accessor :automatic_failover_routing_configured
        alias_method :automatic_failover_routing_configured?, :automatic_failover_routing_configured
      
        # Availability type. Potential values: * `ZONAL`: The instance serves data from
        # only one zone. Outages in that zone affect data accessibility. * `REGIONAL`:
        # The instance can serve data from more than one zone in a region (it is highly
        # available).
        # Corresponds to the JSON property `availabilityType`
        # @return [String]
        attr_accessor :availability_type
      
        # Checks for resources that are configured to have redundancy, and ongoing
        # replication across regions
        # Corresponds to the JSON property `crossRegionReplicaConfigured`
        # @return [Boolean]
        attr_accessor :cross_region_replica_configured
        alias_method :cross_region_replica_configured?, :cross_region_replica_configured
      
        # 
        # Corresponds to the JSON property `externalReplicaConfigured`
        # @return [Boolean]
        attr_accessor :external_replica_configured
        alias_method :external_replica_configured?, :external_replica_configured
      
        # 
        # Corresponds to the JSON property `promotableReplicaConfigured`
        # @return [Boolean]
        attr_accessor :promotable_replica_configured
        alias_method :promotable_replica_configured?, :promotable_replica_configured
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic_failover_routing_configured = args[:automatic_failover_routing_configured] if args.key?(:automatic_failover_routing_configured)
          @availability_type = args[:availability_type] if args.key?(:availability_type)
          @cross_region_replica_configured = args[:cross_region_replica_configured] if args.key?(:cross_region_replica_configured)
          @external_replica_configured = args[:external_replica_configured] if args.key?(:external_replica_configured)
          @promotable_replica_configured = args[:promotable_replica_configured] if args.key?(:promotable_replica_configured)
        end
      end
      
      # Backup of a cluster.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. List of backup files of the backup.
        # Corresponds to the JSON property `backupFiles`
        # @return [Array<Google::Apis::RedisV1beta1::BackupFile>]
        attr_accessor :backup_files
      
        # Output only. Type of the backup.
        # Corresponds to the JSON property `backupType`
        # @return [String]
        attr_accessor :backup_type
      
        # Output only. Cluster resource path of this backup.
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. Cluster uid of this backup.
        # Corresponds to the JSON property `clusterUid`
        # @return [String]
        attr_accessor :cluster_uid
      
        # Output only. The time when the backup was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # EncryptionInfo describes the encryption information of a cluster or a backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::RedisV1beta1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Output only. redis-7.2, valkey-7.5
        # Corresponds to the JSON property `engineVersion`
        # @return [String]
        attr_accessor :engine_version
      
        # Output only. The time when the backup will expire.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Identifier. Full resource path of the backup. the last part of the name is the
        # backup id with the following format: [YYYYMMDDHHMMSS]_[Shorted Cluster UID] OR
        # customer specified while backup cluster. Example: 20240515123000_1234
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Node type of the cluster.
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        # Output only. Number of replicas for the cluster.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Output only. Number of shards for the cluster.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Output only. State of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Total size of the backup in bytes.
        # Corresponds to the JSON property `totalSizeBytes`
        # @return [Fixnum]
        attr_accessor :total_size_bytes
      
        # Output only. System assigned unique identifier of the backup.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_files = args[:backup_files] if args.key?(:backup_files)
          @backup_type = args[:backup_type] if args.key?(:backup_type)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_uid = args[:cluster_uid] if args.key?(:cluster_uid)
          @create_time = args[:create_time] if args.key?(:create_time)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @engine_version = args[:engine_version] if args.key?(:engine_version)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @node_type = args[:node_type] if args.key?(:node_type)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @state = args[:state] if args.key?(:state)
          @total_size_bytes = args[:total_size_bytes] if args.key?(:total_size_bytes)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Request for [BackupCluster].
      class BackupClusterRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The id of the backup to be created. If not specified, the default
        # value ([YYYYMMDDHHMMSS]_[Shortened Cluster UID] is used.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # Optional. TTL for the backup to expire. Value range is 1 day to 100 years. If
        # not specified, the default value is 100 years.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @ttl = args[:ttl] if args.key?(:ttl)
        end
      end
      
      # BackupCollection of a cluster.
      class BackupCollection
        include Google::Apis::Core::Hashable
      
        # Output only. The full resource path of the cluster the backup collection
        # belongs to. Example: projects/`project`/locations/`location`/clusters/`cluster`
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. The cluster uid of the backup collection.
        # Corresponds to the JSON property `clusterUid`
        # @return [String]
        attr_accessor :cluster_uid
      
        # Output only. The time when the backup collection was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The KMS key used to encrypt the backups under this backup
        # collection.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Output only. The last time a backup was created in the backup collection.
        # Corresponds to the JSON property `lastBackupTime`
        # @return [String]
        attr_accessor :last_backup_time
      
        # Identifier. Full resource path of the backup collection.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Total number of backups in the backup collection.
        # Corresponds to the JSON property `totalBackupCount`
        # @return [Fixnum]
        attr_accessor :total_backup_count
      
        # Output only. Total size of all backups in the backup collection.
        # Corresponds to the JSON property `totalBackupSizeBytes`
        # @return [Fixnum]
        attr_accessor :total_backup_size_bytes
      
        # Output only. System assigned unique identifier of the backup collection.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_uid = args[:cluster_uid] if args.key?(:cluster_uid)
          @create_time = args[:create_time] if args.key?(:create_time)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @last_backup_time = args[:last_backup_time] if args.key?(:last_backup_time)
          @name = args[:name] if args.key?(:name)
          @total_backup_count = args[:total_backup_count] if args.key?(:total_backup_count)
          @total_backup_size_bytes = args[:total_backup_size_bytes] if args.key?(:total_backup_size_bytes)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Configuration for automatic backups
      class BackupConfiguration
        include Google::Apis::Core::Hashable
      
        # Whether customer visible automated backups are enabled on the instance.
        # Corresponds to the JSON property `automatedBackupEnabled`
        # @return [Boolean]
        attr_accessor :automated_backup_enabled
        alias_method :automated_backup_enabled?, :automated_backup_enabled
      
        # Backup retention settings.
        # Corresponds to the JSON property `backupRetentionSettings`
        # @return [Google::Apis::RedisV1beta1::RetentionSettings]
        attr_accessor :backup_retention_settings
      
        # Whether point-in-time recovery is enabled. This is optional field, if the
        # database service does not have this feature or metadata is not available in
        # control plane, this can be omitted.
        # Corresponds to the JSON property `pointInTimeRecoveryEnabled`
        # @return [Boolean]
        attr_accessor :point_in_time_recovery_enabled
        alias_method :point_in_time_recovery_enabled?, :point_in_time_recovery_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automated_backup_enabled = args[:automated_backup_enabled] if args.key?(:automated_backup_enabled)
          @backup_retention_settings = args[:backup_retention_settings] if args.key?(:backup_retention_settings)
          @point_in_time_recovery_enabled = args[:point_in_time_recovery_enabled] if args.key?(:point_in_time_recovery_enabled)
        end
      end
      
      # BackupDRConfiguration to capture the backup and disaster recovery details of
      # database resource.
      class BackupDrConfiguration
        include Google::Apis::Core::Hashable
      
        # Indicates if the resource is managed by BackupDR.
        # Corresponds to the JSON property `backupdrManaged`
        # @return [Boolean]
        attr_accessor :backupdr_managed
        alias_method :backupdr_managed?, :backupdr_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backupdr_managed = args[:backupdr_managed] if args.key?(:backupdr_managed)
        end
      end
      
      # BackupDRMetadata contains information about the backup and disaster recovery
      # metadata of a database resource.
      class BackupDrMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for automatic backups
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Google::Apis::RedisV1beta1::BackupConfiguration]
        attr_accessor :backup_configuration
      
        # A backup run.
        # Corresponds to the JSON property `backupRun`
        # @return [Google::Apis::RedisV1beta1::BackupRun]
        attr_accessor :backup_run
      
        # BackupDRConfiguration to capture the backup and disaster recovery details of
        # database resource.
        # Corresponds to the JSON property `backupdrConfiguration`
        # @return [Google::Apis::RedisV1beta1::BackupDrConfiguration]
        attr_accessor :backupdr_configuration
      
        # Required. Full resource name of this instance.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Required. Last time backup configuration was refreshed.
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :resource_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @backup_run = args[:backup_run] if args.key?(:backup_run)
          @backupdr_configuration = args[:backupdr_configuration] if args.key?(:backupdr_configuration)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
        end
      end
      
      # Backup is consisted of multiple backup files.
      class BackupFile
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the backup file was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. e.g: .rdb
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Output only. Size of the backup file in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @file_name = args[:file_name] if args.key?(:file_name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
      
      # A backup run.
      class BackupRun
        include Google::Apis::Core::Hashable
      
        # The time the backup operation completed. REQUIRED
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # An error that occurred during a backup creation operation.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::RedisV1beta1::OperationError]
        attr_accessor :error
      
        # The time the backup operation started. REQUIRED
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of this run. REQUIRED
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class CertChain
        include Google::Apis::Core::Hashable
      
        # The certificates that form the CA chain, from leaf to root order.
        # Corresponds to the JSON property `certificates`
        # @return [Array<String>]
        attr_accessor :certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
        end
      end
      
      # Redis cluster certificate authority
      class CertificateAuthority
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `managedServerCa`
        # @return [Google::Apis::RedisV1beta1::ManagedCertificateAuthority]
        attr_accessor :managed_server_ca
      
        # Identifier. Unique name of the resource in this scope including project,
        # location and cluster using the form: `projects/`project`/locations/`location`/
        # clusters/`cluster`/certificateAuthority`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_server_ca = args[:managed_server_ca] if args.key?(:managed_server_ca)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A cluster instance.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. Deprecated, do not use.
        # Corresponds to the JSON property `allowFewerZonesDeployment`
        # @return [Boolean]
        attr_accessor :allow_fewer_zones_deployment
        alias_method :allow_fewer_zones_deployment?, :allow_fewer_zones_deployment
      
        # Optional. If true, cluster endpoints that are created and registered by
        # customers can be deleted asynchronously. That is, such a cluster endpoint can
        # be de-registered before the forwarding rules in the cluster endpoint are
        # deleted.
        # Corresponds to the JSON property `asyncClusterEndpointsDeletionEnabled`
        # @return [Boolean]
        attr_accessor :async_cluster_endpoints_deletion_enabled
        alias_method :async_cluster_endpoints_deletion_enabled?, :async_cluster_endpoints_deletion_enabled
      
        # Optional. The authorization mode of the Redis cluster. If not provided, auth
        # feature is disabled for the cluster.
        # Corresponds to the JSON property `authorizationMode`
        # @return [String]
        attr_accessor :authorization_mode
      
        # The automated backup config for a cluster.
        # Corresponds to the JSON property `automatedBackupConfig`
        # @return [Google::Apis::RedisV1beta1::AutomatedBackupConfig]
        attr_accessor :automated_backup_config
      
        # Output only. This field is used to determine the available maintenance
        # versions for the self service update.
        # Corresponds to the JSON property `availableMaintenanceVersions`
        # @return [Array<String>]
        attr_accessor :available_maintenance_versions
      
        # Optional. Output only. The backup collection full resource name. Example:
        # projects/`project`/locations/`location`/backupCollections/`collection`
        # Corresponds to the JSON property `backupCollection`
        # @return [String]
        attr_accessor :backup_collection
      
        # Optional. A list of cluster endpoints.
        # Corresponds to the JSON property `clusterEndpoints`
        # @return [Array<Google::Apis::RedisV1beta1::ClusterEndpoint>]
        attr_accessor :cluster_endpoints
      
        # Output only. The timestamp associated with the cluster creation request.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Cross cluster replication config.
        # Corresponds to the JSON property `crossClusterReplicationConfig`
        # @return [Google::Apis::RedisV1beta1::CrossClusterReplicationConfig]
        attr_accessor :cross_cluster_replication_config
      
        # Optional. The delete operation will fail when the value is set to true.
        # Corresponds to the JSON property `deletionProtectionEnabled`
        # @return [Boolean]
        attr_accessor :deletion_protection_enabled
        alias_method :deletion_protection_enabled?, :deletion_protection_enabled
      
        # Output only. Endpoints created on each given network, for Redis clients to
        # connect to the cluster. Currently only one discovery endpoint is supported.
        # Corresponds to the JSON property `discoveryEndpoints`
        # @return [Array<Google::Apis::RedisV1beta1::DiscoveryEndpoint>]
        attr_accessor :discovery_endpoints
      
        # Output only. This field represents the actual maintenance version of the
        # cluster.
        # Corresponds to the JSON property `effectiveMaintenanceVersion`
        # @return [String]
        attr_accessor :effective_maintenance_version
      
        # EncryptionInfo describes the encryption information of a cluster or a backup.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::RedisV1beta1::EncryptionInfo]
        attr_accessor :encryption_info
      
        # Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be
        # the same region as the clusters.
        # Corresponds to the JSON property `gcsSource`
        # @return [Google::Apis::RedisV1beta1::GcsBackupSource]
        attr_accessor :gcs_source
      
        # Optional. The KMS key used to encrypt the at-rest data of the cluster.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. Labels to represent user-provided metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Maintenance policy per cluster.
        # Corresponds to the JSON property `maintenancePolicy`
        # @return [Google::Apis::RedisV1beta1::ClusterMaintenancePolicy]
        attr_accessor :maintenance_policy
      
        # Upcoming maintenance schedule.
        # Corresponds to the JSON property `maintenanceSchedule`
        # @return [Google::Apis::RedisV1beta1::ClusterMaintenanceSchedule]
        attr_accessor :maintenance_schedule
      
        # Optional. This field can be used to trigger self service update to indicate
        # the desired maintenance version. The input to this field can be determined by
        # the available_maintenance_versions field.
        # Corresponds to the JSON property `maintenanceVersion`
        # @return [String]
        attr_accessor :maintenance_version
      
        # Backups that generated and managed by memorystore.
        # Corresponds to the JSON property `managedBackupSource`
        # @return [Google::Apis::RedisV1beta1::ManagedBackupSource]
        attr_accessor :managed_backup_source
      
        # Required. Identifier. Unique name of the resource in this scope including
        # project and location using the form: `projects/`project_id`/locations/`
        # location_id`/clusters/`cluster_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The type of a redis node in the cluster. NodeType determines the
        # underlying machine-type of a redis node.
        # Corresponds to the JSON property `nodeType`
        # @return [String]
        attr_accessor :node_type
      
        # Optional. Input only. Ondemand maintenance for the cluster. This field can be
        # used to trigger ondemand critical update on the cluster.
        # Corresponds to the JSON property `ondemandMaintenance`
        # @return [Boolean]
        attr_accessor :ondemand_maintenance
        alias_method :ondemand_maintenance?, :ondemand_maintenance
      
        # Configuration of the persistence functionality.
        # Corresponds to the JSON property `persistenceConfig`
        # @return [Google::Apis::RedisV1beta1::ClusterPersistenceConfig]
        attr_accessor :persistence_config
      
        # Output only. Precise value of redis memory size in GB for the entire cluster.
        # Corresponds to the JSON property `preciseSizeGb`
        # @return [Float]
        attr_accessor :precise_size_gb
      
        # Optional. Each PscConfig configures the consumer network where IPs will be
        # designated to the cluster for client access through Private Service Connect
        # Automation. Currently, only one PscConfig is supported.
        # Corresponds to the JSON property `pscConfigs`
        # @return [Array<Google::Apis::RedisV1beta1::PscConfig>]
        attr_accessor :psc_configs
      
        # Output only. The list of PSC connections that are auto-created through service
        # connectivity automation.
        # Corresponds to the JSON property `pscConnections`
        # @return [Array<Google::Apis::RedisV1beta1::PscConnection>]
        attr_accessor :psc_connections
      
        # Output only. Service attachment details to configure Psc connections
        # Corresponds to the JSON property `pscServiceAttachments`
        # @return [Array<Google::Apis::RedisV1beta1::PscServiceAttachment>]
        attr_accessor :psc_service_attachments
      
        # Optional. Key/Value pairs of customer overrides for mutable Redis Configs
        # Corresponds to the JSON property `redisConfigs`
        # @return [Hash<String,String>]
        attr_accessor :redis_configs
      
        # Optional. The number of replica nodes per shard.
        # Corresponds to the JSON property `replicaCount`
        # @return [Fixnum]
        attr_accessor :replica_count
      
        # Optional. Input only. Rotate the server certificates.
        # Corresponds to the JSON property `rotateServerCertificate`
        # @return [Boolean]
        attr_accessor :rotate_server_certificate
        alias_method :rotate_server_certificate?, :rotate_server_certificate
      
        # Optional. Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Optional. Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
        # Optional. Server CA mode for the cluster.
        # Corresponds to the JSON property `serverCaMode`
        # @return [String]
        attr_accessor :server_ca_mode
      
        # Optional. Customer-managed CA pool for the cluster. Only applicable for BYOCA
        # i.e. if server_ca_mode is SERVER_CA_MODE_CUSTOMER_MANAGED_CAS_CA. Format: "
        # projects/`project`/locations/`region`/caPools/`ca_pool`".
        # Corresponds to the JSON property `serverCaPool`
        # @return [String]
        attr_accessor :server_ca_pool
      
        # Optional. Number of shards for the Redis cluster.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Optional. Input only. Simulate a maintenance event.
        # Corresponds to the JSON property `simulateMaintenanceEvent`
        # @return [Boolean]
        attr_accessor :simulate_maintenance_event
        alias_method :simulate_maintenance_event?, :simulate_maintenance_event
      
        # Output only. Redis memory size in GB for the entire cluster rounded up to the
        # next integer.
        # Corresponds to the JSON property `sizeGb`
        # @return [Fixnum]
        attr_accessor :size_gb
      
        # Output only. The current state of this cluster. Can be CREATING, READY,
        # UPDATING, DELETING and SUSPENDED
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Represents additional information about the state of the cluster.
        # Corresponds to the JSON property `stateInfo`
        # @return [Google::Apis::RedisV1beta1::StateInfo]
        attr_accessor :state_info
      
        # Optional. The in-transit encryption for the Redis cluster. If not provided,
        # encryption is disabled for the cluster.
        # Corresponds to the JSON property `transitEncryptionMode`
        # @return [String]
        attr_accessor :transit_encryption_mode
      
        # Output only. System assigned, unique identifier for the cluster.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Zone distribution config for allocation of cluster resources.
        # Corresponds to the JSON property `zoneDistributionConfig`
        # @return [Google::Apis::RedisV1beta1::ZoneDistributionConfig]
        attr_accessor :zone_distribution_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_fewer_zones_deployment = args[:allow_fewer_zones_deployment] if args.key?(:allow_fewer_zones_deployment)
          @async_cluster_endpoints_deletion_enabled = args[:async_cluster_endpoints_deletion_enabled] if args.key?(:async_cluster_endpoints_deletion_enabled)
          @authorization_mode = args[:authorization_mode] if args.key?(:authorization_mode)
          @automated_backup_config = args[:automated_backup_config] if args.key?(:automated_backup_config)
          @available_maintenance_versions = args[:available_maintenance_versions] if args.key?(:available_maintenance_versions)
          @backup_collection = args[:backup_collection] if args.key?(:backup_collection)
          @cluster_endpoints = args[:cluster_endpoints] if args.key?(:cluster_endpoints)
          @create_time = args[:create_time] if args.key?(:create_time)
          @cross_cluster_replication_config = args[:cross_cluster_replication_config] if args.key?(:cross_cluster_replication_config)
          @deletion_protection_enabled = args[:deletion_protection_enabled] if args.key?(:deletion_protection_enabled)
          @discovery_endpoints = args[:discovery_endpoints] if args.key?(:discovery_endpoints)
          @effective_maintenance_version = args[:effective_maintenance_version] if args.key?(:effective_maintenance_version)
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
          @gcs_source = args[:gcs_source] if args.key?(:gcs_source)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_policy = args[:maintenance_policy] if args.key?(:maintenance_policy)
          @maintenance_schedule = args[:maintenance_schedule] if args.key?(:maintenance_schedule)
          @maintenance_version = args[:maintenance_version] if args.key?(:maintenance_version)
          @managed_backup_source = args[:managed_backup_source] if args.key?(:managed_backup_source)
          @name = args[:name] if args.key?(:name)
          @node_type = args[:node_type] if args.key?(:node_type)
          @ondemand_maintenance = args[:ondemand_maintenance] if args.key?(:ondemand_maintenance)
          @persistence_config = args[:persistence_config] if args.key?(:persistence_config)
          @precise_size_gb = args[:precise_size_gb] if args.key?(:precise_size_gb)
          @psc_configs = args[:psc_configs] if args.key?(:psc_configs)
          @psc_connections = args[:psc_connections] if args.key?(:psc_connections)
          @psc_service_attachments = args[:psc_service_attachments] if args.key?(:psc_service_attachments)
          @redis_configs = args[:redis_configs] if args.key?(:redis_configs)
          @replica_count = args[:replica_count] if args.key?(:replica_count)
          @rotate_server_certificate = args[:rotate_server_certificate] if args.key?(:rotate_server_certificate)
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @server_ca_mode = args[:server_ca_mode] if args.key?(:server_ca_mode)
          @server_ca_pool = args[:server_ca_pool] if args.key?(:server_ca_pool)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @simulate_maintenance_event = args[:simulate_maintenance_event] if args.key?(:simulate_maintenance_event)
          @size_gb = args[:size_gb] if args.key?(:size_gb)
          @state = args[:state] if args.key?(:state)
          @state_info = args[:state_info] if args.key?(:state_info)
          @transit_encryption_mode = args[:transit_encryption_mode] if args.key?(:transit_encryption_mode)
          @uid = args[:uid] if args.key?(:uid)
          @zone_distribution_config = args[:zone_distribution_config] if args.key?(:zone_distribution_config)
        end
      end
      
      # ClusterEndpoint consists of PSC connections that are created as a group in
      # each VPC network for accessing the cluster. In each group, there shall be one
      # connection for each service attachment in the cluster.
      class ClusterEndpoint
        include Google::Apis::Core::Hashable
      
        # Required. A group of PSC connections. They are created in the same VPC network,
        # one for each service attachment in the cluster.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::RedisV1beta1::ConnectionDetail>]
        attr_accessor :connections
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
        end
      end
      
      # Maintenance policy per cluster.
      class ClusterMaintenancePolicy
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the policy was created i.e. Maintenance Window or
        # Deny Period was assigned.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the policy was updated i.e. Maintenance Window or
        # Deny Period was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Maintenance window that is applied to resources covered by this
        # policy. Minimum 1. For the current version, the maximum number of
        # weekly_maintenance_window is expected to be one.
        # Corresponds to the JSON property `weeklyMaintenanceWindow`
        # @return [Array<Google::Apis::RedisV1beta1::ClusterWeeklyMaintenanceWindow>]
        attr_accessor :weekly_maintenance_window
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @update_time = args[:update_time] if args.key?(:update_time)
          @weekly_maintenance_window = args[:weekly_maintenance_window] if args.key?(:weekly_maintenance_window)
        end
      end
      
      # Upcoming maintenance schedule.
      class ClusterMaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # Output only. The end time of any upcoming scheduled maintenance for this
        # instance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
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
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Configuration of the persistence functionality.
      class ClusterPersistenceConfig
        include Google::Apis::Core::Hashable
      
        # Configuration of the AOF based persistence.
        # Corresponds to the JSON property `aofConfig`
        # @return [Google::Apis::RedisV1beta1::AofConfig]
        attr_accessor :aof_config
      
        # Optional. The mode of persistence.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Configuration of the RDB based persistence.
        # Corresponds to the JSON property `rdbConfig`
        # @return [Google::Apis::RedisV1beta1::RdbConfig]
        attr_accessor :rdb_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aof_config = args[:aof_config] if args.key?(:aof_config)
          @mode = args[:mode] if args.key?(:mode)
          @rdb_config = args[:rdb_config] if args.key?(:rdb_config)
        end
      end
      
      # Time window specified for weekly operations.
      class ClusterWeeklyMaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Optional. Allows to define schedule that runs specified day of the week.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
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
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Contains compliance information about a security standard indicating unmet
      # recommendations.
      class Compliance
        include Google::Apis::Core::Hashable
      
        # Industry-wide compliance standards or benchmarks, such as CIS, PCI, and OWASP.
        # Corresponds to the JSON property `standard`
        # @return [String]
        attr_accessor :standard
      
        # Version of the standard or benchmark, for example, 1.1
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @standard = args[:standard] if args.key?(:standard)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Config based signal data. This is used to send signals to Condor which are
      # based on the DB level configurations. These will be used to send signals for
      # self managed databases.
      class ConfigBasedSignalData
        include Google::Apis::Core::Hashable
      
        # Required. Full Resource name of the source resource.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Required. Last time signal was refreshed
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :resource_id
      
        # Signal data for boolean signals.
        # Corresponds to the JSON property `signalBoolValue`
        # @return [Boolean]
        attr_accessor :signal_bool_value
        alias_method :signal_bool_value?, :signal_bool_value
      
        # Required. Signal type of the signal
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @signal_bool_value = args[:signal_bool_value] if args.key?(:signal_bool_value)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Detailed information of each PSC connection.
      class ConnectionDetail
        include Google::Apis::Core::Hashable
      
        # Details of consumer resources in a PSC connection that is created through
        # Service Connectivity Automation.
        # Corresponds to the JSON property `pscAutoConnection`
        # @return [Google::Apis::RedisV1beta1::PscAutoConnection]
        attr_accessor :psc_auto_connection
      
        # Details of consumer resources in a PSC connection.
        # Corresponds to the JSON property `pscConnection`
        # @return [Google::Apis::RedisV1beta1::PscConnection]
        attr_accessor :psc_connection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @psc_auto_connection = args[:psc_auto_connection] if args.key?(:psc_auto_connection)
          @psc_connection = args[:psc_connection] if args.key?(:psc_connection)
        end
      end
      
      # Cross cluster replication config.
      class CrossClusterReplicationConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The role of the cluster in cross cluster replication.
        # Corresponds to the JSON property `clusterRole`
        # @return [String]
        attr_accessor :cluster_role
      
        # An output only view of all the member clusters participating in the cross
        # cluster replication.
        # Corresponds to the JSON property `membership`
        # @return [Google::Apis::RedisV1beta1::Membership]
        attr_accessor :membership
      
        # Details of the remote cluster associated with this cluster in a cross cluster
        # replication setup.
        # Corresponds to the JSON property `primaryCluster`
        # @return [Google::Apis::RedisV1beta1::RemoteCluster]
        attr_accessor :primary_cluster
      
        # List of secondary clusters that are replicating from this primary cluster.
        # This field is only set for a primary cluster.
        # Corresponds to the JSON property `secondaryClusters`
        # @return [Array<Google::Apis::RedisV1beta1::RemoteCluster>]
        attr_accessor :secondary_clusters
      
        # Output only. The last time cross cluster replication config was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_role = args[:cluster_role] if args.key?(:cluster_role)
          @membership = args[:membership] if args.key?(:membership)
          @primary_cluster = args[:primary_cluster] if args.key?(:primary_cluster)
          @secondary_clusters = args[:secondary_clusters] if args.key?(:secondary_clusters)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Any custom metadata associated with the resource. e.g. A spanner instance can
      # have multiple databases with its own unique metadata. Information for these
      # individual databases can be captured in custom metadata data
      class CustomMetadataData
        include Google::Apis::Core::Hashable
      
        # Metadata for individual internal resources in an instance. e.g. spanner
        # instance can have multiple databases with unique configuration.
        # Corresponds to the JSON property `internalResourceMetadata`
        # @return [Array<Google::Apis::RedisV1beta1::InternalResourceMetadata>]
        attr_accessor :internal_resource_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_resource_metadata = args[:internal_resource_metadata] if args.key?(:internal_resource_metadata)
        end
      end
      
      # DatabaseResourceFeed is the top level proto to be used to ingest different
      # database resource level events into Condor platform. Next ID: 13
      class DatabaseResourceFeed
        include Google::Apis::Core::Hashable
      
        # BackupDRMetadata contains information about the backup and disaster recovery
        # metadata of a database resource.
        # Corresponds to the JSON property `backupdrMetadata`
        # @return [Google::Apis::RedisV1beta1::BackupDrMetadata]
        attr_accessor :backupdr_metadata
      
        # Config based signal data. This is used to send signals to Condor which are
        # based on the DB level configurations. These will be used to send signals for
        # self managed databases.
        # Corresponds to the JSON property `configBasedSignalData`
        # @return [Google::Apis::RedisV1beta1::ConfigBasedSignalData]
        attr_accessor :config_based_signal_data
      
        # Database resource signal data. This is used to send signals to Condor which
        # are based on the DB/Instance/Fleet level configurations. These will be used to
        # send signals for all inventory types. Next ID: 7
        # Corresponds to the JSON property `databaseResourceSignalData`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceSignalData]
        attr_accessor :database_resource_signal_data
      
        # Required. Timestamp when feed is generated.
        # Corresponds to the JSON property `feedTimestamp`
        # @return [String]
        attr_accessor :feed_timestamp
      
        # Required. Type feed to be ingested into condor
        # Corresponds to the JSON property `feedType`
        # @return [String]
        attr_accessor :feed_type
      
        # 
        # Corresponds to the JSON property `observabilityMetricData`
        # @return [Google::Apis::RedisV1beta1::ObservabilityMetricData]
        attr_accessor :observability_metric_data
      
        # Common model for database resource recommendation signal data.
        # Corresponds to the JSON property `recommendationSignalData`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceRecommendationSignalData]
        attr_accessor :recommendation_signal_data
      
        # Common model for database resource health signal data.
        # Corresponds to the JSON property `resourceHealthSignalData`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceHealthSignalData]
        attr_accessor :resource_health_signal_data
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :resource_id
      
        # Common model for database resource instance metadata. Next ID: 31
        # Corresponds to the JSON property `resourceMetadata`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceMetadata]
        attr_accessor :resource_metadata
      
        # Optional. If true, the feed won't be ingested by DB Center. This indicates
        # that the feed is intentionally skipped. For example, BackupDR feeds are only
        # needed for resources integrated with DB Center (e.g., CloudSQL, AlloyDB).
        # Feeds for non-integrated resources (e.g., Compute Engine, Persistent Disk) can
        # be skipped.
        # Corresponds to the JSON property `skipIngestion`
        # @return [Boolean]
        attr_accessor :skip_ingestion
        alias_method :skip_ingestion?, :skip_ingestion
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backupdr_metadata = args[:backupdr_metadata] if args.key?(:backupdr_metadata)
          @config_based_signal_data = args[:config_based_signal_data] if args.key?(:config_based_signal_data)
          @database_resource_signal_data = args[:database_resource_signal_data] if args.key?(:database_resource_signal_data)
          @feed_timestamp = args[:feed_timestamp] if args.key?(:feed_timestamp)
          @feed_type = args[:feed_type] if args.key?(:feed_type)
          @observability_metric_data = args[:observability_metric_data] if args.key?(:observability_metric_data)
          @recommendation_signal_data = args[:recommendation_signal_data] if args.key?(:recommendation_signal_data)
          @resource_health_signal_data = args[:resource_health_signal_data] if args.key?(:resource_health_signal_data)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_metadata = args[:resource_metadata] if args.key?(:resource_metadata)
          @skip_ingestion = args[:skip_ingestion] if args.key?(:skip_ingestion)
        end
      end
      
      # Common model for database resource health signal data.
      class DatabaseResourceHealthSignalData
        include Google::Apis::Core::Hashable
      
        # Any other additional metadata
        # Corresponds to the JSON property `additionalMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :additional_metadata
      
        # Industry standards associated with this signal; if this signal is an issue,
        # that could be a violation of the associated industry standard(s). For example,
        # AUTO_BACKUP_DISABLED signal is associated with CIS GCP 1.1, CIS GCP 1.2, CIS
        # GCP 1.3, NIST 800-53 and ISO-27001 compliance standards. If a database
        # resource does not have automated backup enable, it will violate these
        # following industry standards.
        # Corresponds to the JSON property `compliance`
        # @return [Array<Google::Apis::RedisV1beta1::Compliance>]
        attr_accessor :compliance
      
        # Description associated with signal
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The last time at which the event described by this signal took place
        # Corresponds to the JSON property `eventTime`
        # @return [String]
        attr_accessor :event_time
      
        # The external-uri of the signal, using which more information about this signal
        # can be obtained. In GCP, this will take user to SCC page to get more details
        # about signals.
        # Corresponds to the JSON property `externalUri`
        # @return [String]
        attr_accessor :external_uri
      
        # This is used to identify the location of the resource. Example: "us-central1"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Required. The name of the signal, ex: PUBLIC_SQL_INSTANCE,
        # SQL_LOG_ERROR_VERBOSITY etc.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Closest parent container of this resource. In GCP, 'container' refers to a
        # Cloud Resource Manager project. It must be resource name of a Cloud Resource
        # Manager project with the format of "provider//", such as "projects/123". For
        # GCP provided resources, number should be project number.
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # Required. Database resource name associated with the signal. Resource name to
        # follow CAIS resource_name format as noted here go/condor-common-datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Required. The class of the signal, such as if it's a THREAT or VULNERABILITY.
        # Corresponds to the JSON property `signalClass`
        # @return [String]
        attr_accessor :signal_class
      
        # Required. Unique identifier for the signal. This is an unique id which would
        # be mainatined by partner to identify a signal.
        # Corresponds to the JSON property `signalId`
        # @return [String]
        attr_accessor :signal_id
      
        # The severity of the signal, such as if it's a HIGH or LOW severity.
        # Corresponds to the JSON property `signalSeverity`
        # @return [String]
        attr_accessor :signal_severity
      
        # Required. Type of signal, for example, `AVAILABLE_IN_MULTIPLE_ZONES`, `
        # LOGGING_MOST_ERRORS`, etc.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_metadata = args[:additional_metadata] if args.key?(:additional_metadata)
          @compliance = args[:compliance] if args.key?(:compliance)
          @description = args[:description] if args.key?(:description)
          @event_time = args[:event_time] if args.key?(:event_time)
          @external_uri = args[:external_uri] if args.key?(:external_uri)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @signal_class = args[:signal_class] if args.key?(:signal_class)
          @signal_id = args[:signal_id] if args.key?(:signal_id)
          @signal_severity = args[:signal_severity] if args.key?(:signal_severity)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # DatabaseResourceId will serve as primary key for any resource ingestion event.
      class DatabaseResourceId
        include Google::Apis::Core::Hashable
      
        # Required. Cloud provider name. Ex: GCP/AWS/Azure/OnPrem/SelfManaged
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # Optional. Needs to be used only when the provider is PROVIDER_OTHER.
        # Corresponds to the JSON property `providerDescription`
        # @return [String]
        attr_accessor :provider_description
      
        # Required. The type of resource this ID is identifying. Ex go/keep-sorted start
        # alloydb.googleapis.com/Cluster, alloydb.googleapis.com/Instance, bigtableadmin.
        # googleapis.com/Cluster, bigtableadmin.googleapis.com/Instance compute.
        # googleapis.com/Instance firestore.googleapis.com/Database, redis.googleapis.
        # com/Instance, redis.googleapis.com/Cluster, oracledatabase.googleapis.com/
        # CloudExadataInfrastructure oracledatabase.googleapis.com/CloudVmCluster
        # oracledatabase.googleapis.com/AutonomousDatabase spanner.googleapis.com/
        # Instance, spanner.googleapis.com/Database, sqladmin.googleapis.com/Instance,
        # go/keep-sorted end REQUIRED Please refer go/condor-common-datamodel
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Required. A service-local token that distinguishes this resource from other
        # resources within the same service.
        # Corresponds to the JSON property `uniqueId`
        # @return [String]
        attr_accessor :unique_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @provider = args[:provider] if args.key?(:provider)
          @provider_description = args[:provider_description] if args.key?(:provider_description)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @unique_id = args[:unique_id] if args.key?(:unique_id)
        end
      end
      
      # Common model for database resource instance metadata. Next ID: 31
      class DatabaseResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for availability of database instance
        # Corresponds to the JSON property `availabilityConfiguration`
        # @return [Google::Apis::RedisV1beta1::AvailabilityConfiguration]
        attr_accessor :availability_configuration
      
        # Configuration for automatic backups
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Google::Apis::RedisV1beta1::BackupConfiguration]
        attr_accessor :backup_configuration
      
        # A backup run.
        # Corresponds to the JSON property `backupRun`
        # @return [Google::Apis::RedisV1beta1::BackupRun]
        attr_accessor :backup_run
      
        # BackupDRConfiguration to capture the backup and disaster recovery details of
        # database resource.
        # Corresponds to the JSON property `backupdrConfiguration`
        # @return [Google::Apis::RedisV1beta1::BackupDrConfiguration]
        attr_accessor :backupdr_configuration
      
        # The creation time of the resource, i.e. the time when resource is created and
        # recorded in partner service.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Current state of the instance.
        # Corresponds to the JSON property `currentState`
        # @return [String]
        attr_accessor :current_state
      
        # Any custom metadata associated with the resource. e.g. A spanner instance can
        # have multiple databases with its own unique metadata. Information for these
        # individual databases can be captured in custom metadata data
        # Corresponds to the JSON property `customMetadata`
        # @return [Google::Apis::RedisV1beta1::CustomMetadataData]
        attr_accessor :custom_metadata
      
        # Optional. Edition represents whether the instance is ENTERPRISE or
        # ENTERPRISE_PLUS. This information is core to Cloud SQL only and is used to
        # identify the edition of the instance.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # Entitlements associated with the resource
        # Corresponds to the JSON property `entitlements`
        # @return [Array<Google::Apis::RedisV1beta1::Entitlement>]
        attr_accessor :entitlements
      
        # The state that the instance is expected to be in. For example, an instance
        # state can transition to UNHEALTHY due to wrong patch update, while the
        # expected state will remain at the HEALTHY.
        # Corresponds to the JSON property `expectedState`
        # @return [String]
        attr_accessor :expected_state
      
        # GCBDR Configuration for the resource.
        # Corresponds to the JSON property `gcbdrConfiguration`
        # @return [Google::Apis::RedisV1beta1::GcbdrConfiguration]
        attr_accessor :gcbdr_configuration
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `id`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :id
      
        # The type of the instance. Specified at creation time.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # Optional. Whether deletion protection is enabled for this resource.
        # Corresponds to the JSON property `isDeletionProtectionEnabled`
        # @return [Boolean]
        attr_accessor :is_deletion_protection_enabled
        alias_method :is_deletion_protection_enabled?, :is_deletion_protection_enabled
      
        # The resource location. REQUIRED
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # MachineConfiguration describes the configuration of a machine specific to
        # Database Resource.
        # Corresponds to the JSON property `machineConfiguration`
        # @return [Google::Apis::RedisV1beta1::MachineConfiguration]
        attr_accessor :machine_configuration
      
        # MaintenanceInfo to capture the maintenance details of database resource.
        # Corresponds to the JSON property `maintenanceInfo`
        # @return [Google::Apis::RedisV1beta1::ResourceMaintenanceInfo]
        attr_accessor :maintenance_info
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `primaryResourceId`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :primary_resource_id
      
        # Primary resource location. REQUIRED if the immediate parent exists when first
        # time resource is getting ingested, otherwise optional.
        # Corresponds to the JSON property `primaryResourceLocation`
        # @return [String]
        attr_accessor :primary_resource_location
      
        # Product specification for Condor resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::RedisV1beta1::Product]
        attr_accessor :product
      
        # Closest parent Cloud Resource Manager container of this resource. It must be
        # resource name of a Cloud Resource Manager project with the format of "/", such
        # as "projects/123". For GCP provided resources, number should be project number.
        # Corresponds to the JSON property `resourceContainer`
        # @return [String]
        attr_accessor :resource_container
      
        # Optional. List of resource flags for the database resource.
        # Corresponds to the JSON property `resourceFlags`
        # @return [Array<Google::Apis::RedisV1beta1::ResourceFlags>]
        attr_accessor :resource_flags
      
        # Required. Different from DatabaseResourceId.unique_id, a resource name can be
        # reused over time. That is, after a resource named "ABC" is deleted, the name "
        # ABC" can be used to to create a new resource within the same source. Resource
        # name to follow CAIS resource_name format as noted here go/condor-common-
        # datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Optional. Suspension reason for the resource.
        # Corresponds to the JSON property `suspensionReason`
        # @return [String]
        attr_accessor :suspension_reason
      
        # Message type for storing tags. Tags provide a way to create annotations for
        # resources, and in some cases conditionally allow or deny policies based on
        # whether a resource has a specific tag.
        # Corresponds to the JSON property `tagsSet`
        # @return [Google::Apis::RedisV1beta1::Tags]
        attr_accessor :tags_set
      
        # The time at which the resource was updated and recorded at partner service.
        # Corresponds to the JSON property `updationTime`
        # @return [String]
        attr_accessor :updation_time
      
        # Message type for storing user labels. User labels are used to tag App Engine
        # resources, allowing users to search for resources matching a set of labels and
        # to aggregate usage data by labels.
        # Corresponds to the JSON property `userLabelSet`
        # @return [Google::Apis::RedisV1beta1::UserLabels]
        attr_accessor :user_label_set
      
        # The resource zone. This is only applicable for zonal resources and will be
        # empty for regional and multi-regional resources.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availability_configuration = args[:availability_configuration] if args.key?(:availability_configuration)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @backup_run = args[:backup_run] if args.key?(:backup_run)
          @backupdr_configuration = args[:backupdr_configuration] if args.key?(:backupdr_configuration)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @current_state = args[:current_state] if args.key?(:current_state)
          @custom_metadata = args[:custom_metadata] if args.key?(:custom_metadata)
          @edition = args[:edition] if args.key?(:edition)
          @entitlements = args[:entitlements] if args.key?(:entitlements)
          @expected_state = args[:expected_state] if args.key?(:expected_state)
          @gcbdr_configuration = args[:gcbdr_configuration] if args.key?(:gcbdr_configuration)
          @id = args[:id] if args.key?(:id)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @is_deletion_protection_enabled = args[:is_deletion_protection_enabled] if args.key?(:is_deletion_protection_enabled)
          @location = args[:location] if args.key?(:location)
          @machine_configuration = args[:machine_configuration] if args.key?(:machine_configuration)
          @maintenance_info = args[:maintenance_info] if args.key?(:maintenance_info)
          @primary_resource_id = args[:primary_resource_id] if args.key?(:primary_resource_id)
          @primary_resource_location = args[:primary_resource_location] if args.key?(:primary_resource_location)
          @product = args[:product] if args.key?(:product)
          @resource_container = args[:resource_container] if args.key?(:resource_container)
          @resource_flags = args[:resource_flags] if args.key?(:resource_flags)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @suspension_reason = args[:suspension_reason] if args.key?(:suspension_reason)
          @tags_set = args[:tags_set] if args.key?(:tags_set)
          @updation_time = args[:updation_time] if args.key?(:updation_time)
          @user_label_set = args[:user_label_set] if args.key?(:user_label_set)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Common model for database resource recommendation signal data.
      class DatabaseResourceRecommendationSignalData
        include Google::Apis::Core::Hashable
      
        # Optional. Any other additional metadata specific to recommendation
        # Corresponds to the JSON property `additionalMetadata`
        # @return [Hash<String,Object>]
        attr_accessor :additional_metadata
      
        # Required. last time recommendationw as refreshed
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # Required. Recommendation state
        # Corresponds to the JSON property `recommendationState`
        # @return [String]
        attr_accessor :recommendation_state
      
        # Required. Name of recommendation. Examples: organizations/1234/locations/us-
        # central1/recommenders/google.cloudsql.instance.PerformanceRecommender/
        # recommendations/9876
        # Corresponds to the JSON property `recommender`
        # @return [String]
        attr_accessor :recommender
      
        # Required. ID of recommender. Examples: "google.cloudsql.instance.
        # PerformanceRecommender"
        # Corresponds to the JSON property `recommenderId`
        # @return [String]
        attr_accessor :recommender_id
      
        # Required. Contains an identifier for a subtype of recommendations produced for
        # the same recommender. Subtype is a function of content and impact, meaning a
        # new subtype might be added when significant changes to `content` or `
        # primary_impact.category` are introduced. See the Recommenders section to see a
        # list of subtypes for a given Recommender. Examples: For recommender = "google.
        # cloudsql.instance.PerformanceRecommender", recommender_subtype can be "
        # MYSQL_HIGH_NUMBER_OF_OPEN_TABLES_BEST_PRACTICE"/"
        # POSTGRES_HIGH_TRANSACTION_ID_UTILIZATION_BEST_PRACTICE"
        # Corresponds to the JSON property `recommenderSubtype`
        # @return [String]
        attr_accessor :recommender_subtype
      
        # Required. Database resource name associated with the signal. Resource name to
        # follow CAIS resource_name format as noted here go/condor-common-datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Required. Type of signal, for example, `SIGNAL_TYPE_IDLE`, `
        # SIGNAL_TYPE_HIGH_NUMBER_OF_TABLES`, etc.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_metadata = args[:additional_metadata] if args.key?(:additional_metadata)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @recommendation_state = args[:recommendation_state] if args.key?(:recommendation_state)
          @recommender = args[:recommender] if args.key?(:recommender)
          @recommender_id = args[:recommender_id] if args.key?(:recommender_id)
          @recommender_subtype = args[:recommender_subtype] if args.key?(:recommender_subtype)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Database resource signal data. This is used to send signals to Condor which
      # are based on the DB/Instance/Fleet level configurations. These will be used to
      # send signals for all inventory types. Next ID: 7
      class DatabaseResourceSignalData
        include Google::Apis::Core::Hashable
      
        # Required. Full Resource name of the source resource.
        # Corresponds to the JSON property `fullResourceName`
        # @return [String]
        attr_accessor :full_resource_name
      
        # Required. Last time signal was refreshed
        # Corresponds to the JSON property `lastRefreshTime`
        # @return [String]
        attr_accessor :last_refresh_time
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :resource_id
      
        # Signal data for boolean signals.
        # Corresponds to the JSON property `signalBoolValue`
        # @return [Boolean]
        attr_accessor :signal_bool_value
        alias_method :signal_bool_value?, :signal_bool_value
      
        # Required. Output only. Signal state of the signal
        # Corresponds to the JSON property `signalState`
        # @return [String]
        attr_accessor :signal_state
      
        # Required. Signal type of the signal
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @full_resource_name = args[:full_resource_name] if args.key?(:full_resource_name)
          @last_refresh_time = args[:last_refresh_time] if args.key?(:last_refresh_time)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @signal_bool_value = args[:signal_bool_value] if args.key?(:signal_bool_value)
          @signal_state = args[:signal_state] if args.key?(:signal_state)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Endpoints on each network, for Redis clients to connect to the cluster.
      class DiscoveryEndpoint
        include Google::Apis::Core::Hashable
      
        # Output only. Address of the exposed Redis endpoint used by clients to connect
        # to the service. The address could be either IP or hostname.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Output only. The port number of the exposed Redis endpoint.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Output only. Customer configuration for where the endpoint is created and
        # accessed from.
        # Corresponds to the JSON property `pscConfig`
        # @return [Google::Apis::RedisV1beta1::PscConfig]
        attr_accessor :psc_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @port = args[:port] if args.key?(:port)
          @psc_config = args[:psc_config] if args.key?(:psc_config)
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
      
      # EncryptionInfo describes the encryption information of a cluster or a backup.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Type of encryption.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Output only. The state of the primary version of the KMS key perceived by the
        # system. This field is not populated in backups.
        # Corresponds to the JSON property `kmsKeyPrimaryState`
        # @return [String]
        attr_accessor :kms_key_primary_state
      
        # Output only. KMS key versions that are being used to protect the data at-rest.
        # Corresponds to the JSON property `kmsKeyVersions`
        # @return [Array<String>]
        attr_accessor :kms_key_versions
      
        # Output only. The most recent time when the encryption info was updated.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_primary_state = args[:kms_key_primary_state] if args.key?(:kms_key_primary_state)
          @kms_key_versions = args[:kms_key_versions] if args.key?(:kms_key_versions)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
        end
      end
      
      # Proto representing the access that a user has to a specific feature/service.
      # NextId: 3.
      class Entitlement
        include Google::Apis::Core::Hashable
      
        # The current state of user's accessibility to a feature/benefit.
        # Corresponds to the JSON property `entitlementState`
        # @return [String]
        attr_accessor :entitlement_state
      
        # An enum that represents the type of this entitlement.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entitlement_state = args[:entitlement_state] if args.key?(:entitlement_state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request for [ExportBackup].
      class ExportBackupRequest
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage bucket, like "my-bucket".
        # Corresponds to the JSON property `gcsBucket`
        # @return [String]
        attr_accessor :gcs_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_bucket = args[:gcs_bucket] if args.key?(:gcs_bucket)
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
      
      # This schedule allows the backup to be triggered at a fixed frequency (
      # currently only daily is supported).
      class FixedFrequencySchedule
        include Google::Apis::Core::Hashable
      
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
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # GCBDR Configuration for the resource.
      class GcbdrConfiguration
        include Google::Apis::Core::Hashable
      
        # Whether the resource is managed by GCBDR.
        # Corresponds to the JSON property `gcbdrManaged`
        # @return [Boolean]
        attr_accessor :gcbdr_managed
        alias_method :gcbdr_managed?, :gcbdr_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcbdr_managed = args[:gcbdr_managed] if args.key?(:gcbdr_managed)
        end
      end
      
      # Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be
      # the same region as the clusters.
      class GcsBackupSource
        include Google::Apis::Core::Hashable
      
        # Optional. URIs of the Cloud Storage objects to import. Example: gs://bucket1/
        # object1, gs://bucket2/folder2/object2
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uris = args[:uris] if args.key?(:uris)
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
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
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
        # compatibility * `REDIS_7_0` for Redis 7.0 compatibility
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
      
        # Optional. Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzi`
        # @return [Boolean]
        attr_accessor :satisfies_pzi
        alias_method :satisfies_pzi?, :satisfies_pzi
      
        # Optional. Output only. Reserved for future use.
        # Corresponds to the JSON property `satisfiesPzs`
        # @return [Boolean]
        attr_accessor :satisfies_pzs
        alias_method :satisfies_pzs?, :satisfies_pzs
      
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
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: "123/environment": "production", "123/costCenter": "
        # marketing"
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
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
          @satisfies_pzi = args[:satisfies_pzi] if args.key?(:satisfies_pzi)
          @satisfies_pzs = args[:satisfies_pzs] if args.key?(:satisfies_pzs)
          @secondary_ip_range = args[:secondary_ip_range] if args.key?(:secondary_ip_range)
          @server_ca_certs = args[:server_ca_certs] if args.key?(:server_ca_certs)
          @state = args[:state] if args.key?(:state)
          @status_message = args[:status_message] if args.key?(:status_message)
          @suspension_reasons = args[:suspension_reasons] if args.key?(:suspension_reasons)
          @tags = args[:tags] if args.key?(:tags)
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
      
      # Metadata for individual internal resources in an instance. e.g. spanner
      # instance can have multiple databases with unique configuration settings.
      # Similarly bigtable can have multiple clusters within same bigtable instance.
      class InternalResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Configuration for automatic backups
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Google::Apis::RedisV1beta1::BackupConfiguration]
        attr_accessor :backup_configuration
      
        # A backup run.
        # Corresponds to the JSON property `backupRun`
        # @return [Google::Apis::RedisV1beta1::BackupRun]
        attr_accessor :backup_run
      
        # Whether deletion protection is enabled for this internal resource.
        # Corresponds to the JSON property `isDeletionProtectionEnabled`
        # @return [Boolean]
        attr_accessor :is_deletion_protection_enabled
        alias_method :is_deletion_protection_enabled?, :is_deletion_protection_enabled
      
        # Product specification for Condor resources.
        # Corresponds to the JSON property `product`
        # @return [Google::Apis::RedisV1beta1::Product]
        attr_accessor :product
      
        # DatabaseResourceId will serve as primary key for any resource ingestion event.
        # Corresponds to the JSON property `resourceId`
        # @return [Google::Apis::RedisV1beta1::DatabaseResourceId]
        attr_accessor :resource_id
      
        # Required. internal resource name for spanner this will be database name e.g."
        # spanner.googleapis.com/projects/123/abc/instances/inst1/databases/db1"
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @backup_run = args[:backup_run] if args.key?(:backup_run)
          @is_deletion_protection_enabled = args[:is_deletion_protection_enabled] if args.key?(:is_deletion_protection_enabled)
          @product = args[:product] if args.key?(:product)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Response for [ListBackupCollections].
      class ListBackupCollectionsResponse
        include Google::Apis::Core::Hashable
      
        # A list of backupCollections in the project. If the `location_id` in the parent
        # field of the request is "-", all regions available to the project are queried,
        # and the results aggregated. If in such an aggregated query a location is
        # unavailable, a placeholder backupCollection entry is included in the response
        # with the `name` field set to a value of the form `projects/`project_id`/
        # locations/`location_id`/backupCollections/`- and the `status` field set to
        # ERROR and `status_message` field set to "location not available for
        # ListBackupCollections".
        # Corresponds to the JSON property `backupCollections`
        # @return [Array<Google::Apis::RedisV1beta1::BackupCollection>]
        attr_accessor :backup_collections
      
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
          @backup_collections = args[:backup_collections] if args.key?(:backup_collections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for [ListBackups].
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # A list of backups in the project.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::RedisV1beta1::Backup>]
        attr_accessor :backups
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Backups that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for ListClusters.
      class ListClustersResponse
        include Google::Apis::Core::Hashable
      
        # A list of Redis clusters in the project in the specified location, or across
        # all locations. If the `location_id` in the parent field of the request is "-",
        # all regions available to the project are queried, and the results aggregated.
        # If in such an aggregated query a location is unavailable, a placeholder Redis
        # entry is included in the response with the `name` field set to a value of the
        # form `projects/`project_id`/locations/`location_id`/clusters/`- and the `
        # status` field set to ERROR and `status_message` field set to "location not
        # available for ListClusters".
        # Corresponds to the JSON property `clusters`
        # @return [Array<Google::Apis::RedisV1beta1::Cluster>]
        attr_accessor :clusters
      
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
          @clusters = args[:clusters] if args.key?(:clusters)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # MachineConfiguration describes the configuration of a machine specific to
      # Database Resource.
      class MachineConfiguration
        include Google::Apis::Core::Hashable
      
        # Optional. Baseline slots for BigQuery Reservations. Baseline slots are in
        # increments of 50.
        # Corresponds to the JSON property `baselineSlots`
        # @return [Fixnum]
        attr_accessor :baseline_slots
      
        # The number of CPUs. Deprecated. Use vcpu_count instead. TODO(b/342344482) add
        # proto validations again after bug fix.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        # Optional. Max slots for BigQuery Reservations. Max slots are in increments of
        # 50.
        # Corresponds to the JSON property `maxReservationSlots`
        # @return [Fixnum]
        attr_accessor :max_reservation_slots
      
        # Memory size in bytes. TODO(b/342344482) add proto validations again after bug
        # fix.
        # Corresponds to the JSON property `memorySizeInBytes`
        # @return [Fixnum]
        attr_accessor :memory_size_in_bytes
      
        # Optional. Number of shards (if applicable).
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Optional. The number of vCPUs. TODO(b/342344482) add proto validations again
        # after bug fix.
        # Corresponds to the JSON property `vcpuCount`
        # @return [Float]
        attr_accessor :vcpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline_slots = args[:baseline_slots] if args.key?(:baseline_slots)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
          @max_reservation_slots = args[:max_reservation_slots] if args.key?(:max_reservation_slots)
          @memory_size_in_bytes = args[:memory_size_in_bytes] if args.key?(:memory_size_in_bytes)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @vcpu_count = args[:vcpu_count] if args.key?(:vcpu_count)
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
      
      # Backups that generated and managed by memorystore.
      class ManagedBackupSource
        include Google::Apis::Core::Hashable
      
        # Optional. Example: //redis.googleapis.com/projects/`project`/locations/`
        # location`/backupCollections/`collection`/backups/`backup` A shorter version (
        # without the prefix) of the backup name is also supported, like projects/`
        # project`/locations/`location`/backupCollections/`collection`/backups/`
        # backup_id` In this case, it assumes the backup is under redis.googleapis.com.
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
      
      # 
      class ManagedCertificateAuthority
        include Google::Apis::Core::Hashable
      
        # The PEM encoded CA certificate chains for redis managed server authentication
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::RedisV1beta1::CertChain>]
        attr_accessor :ca_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certs = args[:ca_certs] if args.key?(:ca_certs)
        end
      end
      
      # An output only view of all the member clusters participating in the cross
      # cluster replication.
      class Membership
        include Google::Apis::Core::Hashable
      
        # Details of the remote cluster associated with this cluster in a cross cluster
        # replication setup.
        # Corresponds to the JSON property `primaryCluster`
        # @return [Google::Apis::RedisV1beta1::RemoteCluster]
        attr_accessor :primary_cluster
      
        # Output only. The list of secondary clusters replicating from the primary
        # cluster.
        # Corresponds to the JSON property `secondaryClusters`
        # @return [Array<Google::Apis::RedisV1beta1::RemoteCluster>]
        attr_accessor :secondary_clusters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary_cluster = args[:primary_cluster] if args.key?(:primary_cluster)
          @secondary_clusters = args[:secondary_clusters] if args.key?(:secondary_clusters)
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
      
      # 
      class ObservabilityMetricData
        include Google::Apis::Core::Hashable
      
        # Required. Type of aggregation performed on the metric.
        # Corresponds to the JSON property `aggregationType`
        # @return [String]
        attr_accessor :aggregation_type
      
        # Required. Type of metric like CPU, Memory, etc.
        # Corresponds to the JSON property `metricType`
        # @return [String]
        attr_accessor :metric_type
      
        # Required. The time the metric value was observed.
        # Corresponds to the JSON property `observationTime`
        # @return [String]
        attr_accessor :observation_time
      
        # Required. Database resource name associated with the signal. Resource name to
        # follow CAIS resource_name format as noted here go/condor-common-datamodel
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # TypedValue represents the value of a metric type. It can either be a double,
        # an int64, a string or a bool.
        # Corresponds to the JSON property `value`
        # @return [Google::Apis::RedisV1beta1::TypedValue]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_type = args[:aggregation_type] if args.key?(:aggregation_type)
          @metric_type = args[:metric_type] if args.key?(:metric_type)
          @observation_time = args[:observation_time] if args.key?(:observation_time)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @value = args[:value] if args.key?(:value)
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
      
      # An error that occurred during a backup creation operation.
      class OperationError
        include Google::Apis::Core::Hashable
      
        # Identifies the specific error that occurred. REQUIRED
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # 
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        # Additional information about the error encountered. REQUIRED
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @error_type = args[:error_type] if args.key?(:error_type)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Pre-defined metadata fields.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
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
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
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
      
      # Product specification for Condor resources.
      class Product
        include Google::Apis::Core::Hashable
      
        # The specific engine that the underlying database is running.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Minor version of the underlying database engine. Example values: For MySQL, it
        # could be "8.0.32", "5.7.32" etc.. For Postgres, it could be "14.3", "15.3" etc.
        # .
        # Corresponds to the JSON property `minorVersion`
        # @return [String]
        attr_accessor :minor_version
      
        # Type of specific database product. It could be CloudSQL, AlloyDB etc..
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Version of the underlying database engine. Example values: For MySQL, it could
        # be "8.0", "5.7" etc.. For Postgres, it could be "14", "15" etc..
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
          @minor_version = args[:minor_version] if args.key?(:minor_version)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Details of consumer resources in a PSC connection that is created through
      # Service Connectivity Automation.
      class PscAutoConnection
        include Google::Apis::Core::Hashable
      
        # Output only. The IP allocated on the consumer network for the PSC forwarding
        # rule.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Output only. Type of the PSC connection.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Output only. The URI of the consumer side forwarding rule. Example: projects/`
        # projectNumOrId`/regions/us-east1/forwardingRules/`resourceId`.
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # Required. The consumer network where the IP address resides, in the form of
        # projects/`project_id`/global/networks/`network_id`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Required. The consumer project_id where the forwarding rule is created from.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Output only. The PSC connection id of the forwarding rule connected to the
        # service attachment.
        # Corresponds to the JSON property `pscConnectionId`
        # @return [String]
        attr_accessor :psc_connection_id
      
        # Output only. The status of the PSC connection. Please note that this value is
        # updated periodically. Please use Private Service Connect APIs for the latest
        # status.
        # Corresponds to the JSON property `pscConnectionStatus`
        # @return [String]
        attr_accessor :psc_connection_status
      
        # Output only. The service attachment which is the target of the PSC connection,
        # in the form of projects/`project-id`/regions/`region`/serviceAttachments/`
        # service-attachment-id`.
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @network = args[:network] if args.key?(:network)
          @project_id = args[:project_id] if args.key?(:project_id)
          @psc_connection_id = args[:psc_connection_id] if args.key?(:psc_connection_id)
          @psc_connection_status = args[:psc_connection_status] if args.key?(:psc_connection_status)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # 
      class PscConfig
        include Google::Apis::Core::Hashable
      
        # Required. The network where the IP address of the discovery endpoint will be
        # reserved, in the form of projects/`network_project`/global/networks/`
        # network_id`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Details of consumer resources in a PSC connection.
      class PscConnection
        include Google::Apis::Core::Hashable
      
        # Required. The IP allocated on the consumer network for the PSC forwarding rule.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Output only. Type of the PSC connection.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Required. The URI of the consumer side forwarding rule. Example: projects/`
        # projectNumOrId`/regions/us-east1/forwardingRules/`resourceId`.
        # Corresponds to the JSON property `forwardingRule`
        # @return [String]
        attr_accessor :forwarding_rule
      
        # Required. The consumer network where the IP address resides, in the form of
        # projects/`project_id`/global/networks/`network_id`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Output only. port will only be set for Primary/Reader or Discovery endpoint.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Optional. Project ID of the consumer project where the forwarding rule is
        # created in.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Required. The PSC connection id of the forwarding rule connected to the
        # service attachment.
        # Corresponds to the JSON property `pscConnectionId`
        # @return [String]
        attr_accessor :psc_connection_id
      
        # Output only. The status of the PSC connection. Please note that this value is
        # updated periodically. To get the latest status of a PSC connection, follow
        # https://cloud.google.com/vpc/docs/configure-private-service-connect-services#
        # endpoint-details.
        # Corresponds to the JSON property `pscConnectionStatus`
        # @return [String]
        attr_accessor :psc_connection_status
      
        # Required. The service attachment which is the target of the PSC connection, in
        # the form of projects/`project-id`/regions/`region`/serviceAttachments/`service-
        # attachment-id`.
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @forwarding_rule = args[:forwarding_rule] if args.key?(:forwarding_rule)
          @network = args[:network] if args.key?(:network)
          @port = args[:port] if args.key?(:port)
          @project_id = args[:project_id] if args.key?(:project_id)
          @psc_connection_id = args[:psc_connection_id] if args.key?(:psc_connection_id)
          @psc_connection_status = args[:psc_connection_status] if args.key?(:psc_connection_status)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # Configuration of a service attachment of the cluster, for creating PSC
      # connections.
      class PscServiceAttachment
        include Google::Apis::Core::Hashable
      
        # Output only. Type of a PSC connection targeting this service attachment.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # Output only. Service attachment URI which your self-created PscConnection
        # should use as target
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # Configuration of the RDB based persistence.
      class RdbConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Period between RDB snapshots.
        # Corresponds to the JSON property `rdbSnapshotPeriod`
        # @return [String]
        attr_accessor :rdb_snapshot_period
      
        # Optional. The time that the first snapshot was/will be attempted, and to which
        # future snapshots will be aligned. If not provided, the current time will be
        # used.
        # Corresponds to the JSON property `rdbSnapshotStartTime`
        # @return [String]
        attr_accessor :rdb_snapshot_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # The certificates that form the CA chain, from leaf to root order.
      class RegionalCertChain
        include Google::Apis::Core::Hashable
      
        # The certificates that form the CA chain, from leaf to root order.
        # Corresponds to the JSON property `certificates`
        # @return [Array<String>]
        attr_accessor :certificates
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
        end
      end
      
      # CA certificate chains for redis managed server authentication.
      class RegionalManagedCertificateAuthority
        include Google::Apis::Core::Hashable
      
        # The PEM encoded CA certificate chains for redis managed server authentication
        # Corresponds to the JSON property `caCerts`
        # @return [Array<Google::Apis::RedisV1beta1::RegionalCertChain>]
        attr_accessor :ca_certs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certs = args[:ca_certs] if args.key?(:ca_certs)
        end
      end
      
      # Details of the remote cluster associated with this cluster in a cross cluster
      # replication setup.
      class RemoteCluster
        include Google::Apis::Core::Hashable
      
        # Output only. The full resource path of the remote cluster in the format:
        # projects//locations//clusters/
        # Corresponds to the JSON property `cluster`
        # @return [String]
        attr_accessor :cluster
      
        # Output only. The unique identifier of the remote cluster.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Request for rescheduling a cluster maintenance.
      class RescheduleClusterMaintenanceRequest
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
      
      # Message type for storing resource flags.
      class ResourceFlags
        include Google::Apis::Core::Hashable
      
        # Optional. Key of the resource flag.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Optional. Value of the resource flag.
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
      
      # Deny maintenance period for the database resource. It specifies the time range
      # during which the maintenance cannot start. This is configured by the customer.
      class ResourceMaintenanceDenySchedule
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::RedisV1beta1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::RedisV1beta1::Date]
        attr_accessor :start_date
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::RedisV1beta1::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # MaintenanceInfo to capture the maintenance details of database resource.
      class ResourceMaintenanceInfo
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `currentVersionReleaseDate`
        # @return [Google::Apis::RedisV1beta1::Date]
        attr_accessor :current_version_release_date
      
        # Optional. List of Deny maintenance period for the database resource.
        # Corresponds to the JSON property `denyMaintenanceSchedules`
        # @return [Array<Google::Apis::RedisV1beta1::ResourceMaintenanceDenySchedule>]
        attr_accessor :deny_maintenance_schedules
      
        # Optional. Whether the instance is in stopped state. This information is
        # temporarily being captured in maintenanceInfo, till STOPPED state is supported
        # by DB Center.
        # Corresponds to the JSON property `isInstanceStopped`
        # @return [Boolean]
        attr_accessor :is_instance_stopped
        alias_method :is_instance_stopped?, :is_instance_stopped
      
        # Maintenance window for the database resource. It specifies preferred time and
        # day of the week and phase in some cases, when the maintenance can start. This
        # is configured by the customer.
        # Corresponds to the JSON property `maintenanceSchedule`
        # @return [Google::Apis::RedisV1beta1::ResourceMaintenanceSchedule]
        attr_accessor :maintenance_schedule
      
        # Output only. Current state of maintenance on the database resource.
        # Corresponds to the JSON property `maintenanceState`
        # @return [String]
        attr_accessor :maintenance_state
      
        # Optional. Current Maintenance version of the database resource. Example: "
        # MYSQL_8_0_41.R20250531.01_15"
        # Corresponds to the JSON property `maintenanceVersion`
        # @return [String]
        attr_accessor :maintenance_version
      
        # Upcoming maintenance for the database resource. This is generated by SLM once
        # the upcoming maintenance schedule is published.
        # Corresponds to the JSON property `upcomingMaintenance`
        # @return [Google::Apis::RedisV1beta1::UpcomingMaintenance]
        attr_accessor :upcoming_maintenance
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_version_release_date = args[:current_version_release_date] if args.key?(:current_version_release_date)
          @deny_maintenance_schedules = args[:deny_maintenance_schedules] if args.key?(:deny_maintenance_schedules)
          @is_instance_stopped = args[:is_instance_stopped] if args.key?(:is_instance_stopped)
          @maintenance_schedule = args[:maintenance_schedule] if args.key?(:maintenance_schedule)
          @maintenance_state = args[:maintenance_state] if args.key?(:maintenance_state)
          @maintenance_version = args[:maintenance_version] if args.key?(:maintenance_version)
          @upcoming_maintenance = args[:upcoming_maintenance] if args.key?(:upcoming_maintenance)
        end
      end
      
      # Maintenance window for the database resource. It specifies preferred time and
      # day of the week and phase in some cases, when the maintenance can start. This
      # is configured by the customer.
      class ResourceMaintenanceSchedule
        include Google::Apis::Core::Hashable
      
        # Optional. Preferred day of the week for maintenance, e.g. MONDAY, TUESDAY, etc.
        # Corresponds to the JSON property `day`
        # @return [String]
        attr_accessor :day
      
        # Optional. Phase of the maintenance window. This is to capture order of
        # maintenance. For example, for Cloud SQL resources, this can be used to capture
        # if the maintenance window is in Week1, Week2, Week5, etc. Non production
        # resources are usually part of early phase. For more details, refer to Cloud
        # SQL resources - https://cloud.google.com/sql/docs/mysql/maintenance
        # Corresponds to the JSON property `phase`
        # @return [String]
        attr_accessor :phase
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `time`
        # @return [Google::Apis::RedisV1beta1::TimeOfDay]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @phase = args[:phase] if args.key?(:phase)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # 
      class RetentionSettings
        include Google::Apis::Core::Hashable
      
        # Duration based retention period i.e. 172800 seconds (2 days)
        # Corresponds to the JSON property `durationBasedRetention`
        # @return [String]
        attr_accessor :duration_based_retention
      
        # 
        # Corresponds to the JSON property `quantityBasedRetention`
        # @return [Fixnum]
        attr_accessor :quantity_based_retention
      
        # The unit that 'retained_backups' represents.
        # Corresponds to the JSON property `retentionUnit`
        # @return [String]
        attr_accessor :retention_unit
      
        # 
        # Corresponds to the JSON property `timeBasedRetention`
        # @return [String]
        attr_accessor :time_based_retention
      
        # Timestamp based retention period i.e. 2024-05-01T00:00:00Z
        # Corresponds to the JSON property `timestampBasedRetentionTime`
        # @return [String]
        attr_accessor :timestamp_based_retention_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_based_retention = args[:duration_based_retention] if args.key?(:duration_based_retention)
          @quantity_based_retention = args[:quantity_based_retention] if args.key?(:quantity_based_retention)
          @retention_unit = args[:retention_unit] if args.key?(:retention_unit)
          @time_based_retention = args[:time_based_retention] if args.key?(:time_based_retention)
          @timestamp_based_retention_time = args[:timestamp_based_retention_time] if args.key?(:timestamp_based_retention_time)
        end
      end
      
      # Shared regional certificate authority
      class SharedRegionalCertificateAuthority
        include Google::Apis::Core::Hashable
      
        # CA certificate chains for redis managed server authentication.
        # Corresponds to the JSON property `managedServerCa`
        # @return [Google::Apis::RedisV1beta1::RegionalManagedCertificateAuthority]
        attr_accessor :managed_server_ca
      
        # Identifier. Unique name of the resource in this scope including project and
        # location using the form: `projects/`project`/locations/`location`/
        # sharedRegionalCertificateAuthority`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_server_ca = args[:managed_server_ca] if args.key?(:managed_server_ca)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Represents additional information about the state of the cluster.
      class StateInfo
        include Google::Apis::Core::Hashable
      
        # Represents information about an updating cluster.
        # Corresponds to the JSON property `updateInfo`
        # @return [Google::Apis::RedisV1beta1::UpdateInfo]
        attr_accessor :update_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_info = args[:update_info] if args.key?(:update_info)
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
      
      # Message type for storing tags. Tags provide a way to create annotations for
      # resources, and in some cases conditionally allow or deny policies based on
      # whether a resource has a specific tag.
      class Tags
        include Google::Apis::Core::Hashable
      
        # The Tag key/value mappings.
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
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
      
      # TypedValue represents the value of a metric type. It can either be a double,
      # an int64, a string or a bool.
      class TypedValue
        include Google::Apis::Core::Hashable
      
        # For boolean value
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # For double value
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # For integer value
        # Corresponds to the JSON property `int64Value`
        # @return [Fixnum]
        attr_accessor :int64_value
      
        # For string value
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int64_value = args[:int64_value] if args.key?(:int64_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # Upcoming maintenance for the database resource. This is generated by SLM once
      # the upcoming maintenance schedule is published.
      class UpcomingMaintenance
        include Google::Apis::Core::Hashable
      
        # Optional. The end time of the upcoming maintenance.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Optional. The start time of the upcoming maintenance.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Represents information about an updating cluster.
      class UpdateInfo
        include Google::Apis::Core::Hashable
      
        # Target node type for redis cluster.
        # Corresponds to the JSON property `targetNodeType`
        # @return [String]
        attr_accessor :target_node_type
      
        # Target number of replica nodes per shard.
        # Corresponds to the JSON property `targetReplicaCount`
        # @return [Fixnum]
        attr_accessor :target_replica_count
      
        # Target number of shards for redis cluster
        # Corresponds to the JSON property `targetShardCount`
        # @return [Fixnum]
        attr_accessor :target_shard_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_node_type = args[:target_node_type] if args.key?(:target_node_type)
          @target_replica_count = args[:target_replica_count] if args.key?(:target_replica_count)
          @target_shard_count = args[:target_shard_count] if args.key?(:target_shard_count)
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
      
      # Message type for storing user labels. User labels are used to tag App Engine
      # resources, allowing users to search for resources matching a set of labels and
      # to aggregate usage data by labels.
      class UserLabels
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
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
      
      # Zone distribution config for allocation of cluster resources.
      class ZoneDistributionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The mode of zone distribution. Defaults to MULTI_ZONE, when not
        # specified.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. When SINGLE ZONE distribution is selected, zone field would be used
        # to allocate all resources in that zone. This is not applicable to MULTI_ZONE,
        # and would be ignored for MULTI_ZONE clusters.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
    end
  end
end
