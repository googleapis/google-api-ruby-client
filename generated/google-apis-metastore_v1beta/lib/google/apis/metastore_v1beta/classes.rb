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
    module MetastoreV1beta
      
      # Request message for DataprocMetastore.AlterMetadataResourceLocation.
      class AlterMetadataResourceLocationRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new location URI for the metadata resource.
        # Corresponds to the JSON property `locationUri`
        # @return [String]
        attr_accessor :location_uri
      
        # Required. The relative metadata resource name in the following format.
        # databases/`database_id` or databases/`database_id`/tables/`table_id` or
        # databases/`database_id`/tables/`table_id`/partitions/`partition_id`
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_uri = args[:location_uri] if args.key?(:location_uri)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Response message for DataprocMetastore.AlterMetadataResourceLocation.
      class AlterMetadataResourceLocationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for DataprocMetastore.AlterTableProperties.
      class AlterTablePropertiesRequest
        include Google::Apis::Core::Hashable
      
        # A map that describes the desired values to mutate. If update_mask is empty,
        # the properties will not update. Otherwise, the properties only alters the
        # value whose associated paths exist in the update mask
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Required. The name of the table containing the properties you're altering in
        # the following format.databases/`database_id`/tables/`table_id`
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        # A field mask that specifies the metadata table properties that are overwritten
        # by the update. Fields specified in the update_mask are relative to the
        # resource (not to the full request). A field is overwritten if it is in the
        # mask.For example, given the target properties: properties ` a: 1 b: 2 ` And an
        # update properties: properties ` a: 2 b: 3 c: 4 ` then if the field mask is:
        # paths: "properties.b", "properties.c"then the result will be: properties ` a:
        # 1 b: 3 c: 4 `
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @table_name = args[:table_name] if args.key?(:table_name)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs.If there
      # are AuditConfigs for both allServices and a specific service, the union of the
      # two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted.Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::MetastoreV1beta::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example,
        # storage.googleapis.com, cloudsql.googleapis.com. allServices is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Represents the autoscaling configuration of a metastore service.
      class AutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Whether or not autoscaling is enabled for this service.
        # Corresponds to the JSON property `autoscalingEnabled`
        # @return [Boolean]
        attr_accessor :autoscaling_enabled
        alias_method :autoscaling_enabled?, :autoscaling_enabled
      
        # Output only. The scaling factor of a service with autoscaling enabled.
        # Corresponds to the JSON property `autoscalingFactor`
        # @return [Float]
        attr_accessor :autoscaling_factor
      
        # Represents the autoscaling limit configuration of a metastore service.
        # Corresponds to the JSON property `limitConfig`
        # @return [Google::Apis::MetastoreV1beta::LimitConfig]
        attr_accessor :limit_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_enabled = args[:autoscaling_enabled] if args.key?(:autoscaling_enabled)
          @autoscaling_factor = args[:autoscaling_factor] if args.key?(:autoscaling_factor)
          @limit_config = args[:limit_config] if args.key?(:limit_config)
        end
      end
      
      # Configuration information for the auxiliary service versions.
      class AuxiliaryVersionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A mapping of Hive metastore configuration key-value pairs to apply
        # to the auxiliary Hive metastore (configured in hive-site.xml) in addition to
        # the primary version's overrides. If keys are present in both the auxiliary
        # version's overrides and the primary version's overrides, the value from the
        # auxiliary version's overrides takes precedence.
        # Corresponds to the JSON property `configOverrides`
        # @return [Hash<String,String>]
        attr_accessor :config_overrides
      
        # Network configuration for the Dataproc Metastore service.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::MetastoreV1beta::NetworkConfig]
        attr_accessor :network_config
      
        # Optional. The Hive metastore version of the auxiliary service. It must be less
        # than the primary Hive metastore service's version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_overrides = args[:config_overrides] if args.key?(:config_overrides)
          @network_config = args[:network_config] if args.key?(:network_config)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Represents a backend metastore for the federation.
      class BackendMetastore
        include Google::Apis::Core::Hashable
      
        # The type of the backend metastore.
        # Corresponds to the JSON property `metastoreType`
        # @return [String]
        attr_accessor :metastore_type
      
        # The relative resource name of the metastore that is being federated. The
        # formats of the relative resource names for the currently supported metastores
        # are listed below: BigQuery projects/`project_id` Dataproc Metastore projects/`
        # project_id`/locations/`location`/services/`service_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metastore_type = args[:metastore_type] if args.key?(:metastore_type)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The details of a backup resource.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the backup was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The description of the backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time when the backup finished creating.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Immutable. Identifier. The relative resource name of the backup, in the
        # following form:projects/`project_number`/locations/`location_id`/services/`
        # service_id`/backups/`backup_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Services that are restoring from the backup.
        # Corresponds to the JSON property `restoringServices`
        # @return [Array<String>]
        attr_accessor :restoring_services
      
        # A managed metastore service that serves metadata queries.
        # Corresponds to the JSON property `serviceRevision`
        # @return [Google::Apis::MetastoreV1beta::Service]
        attr_accessor :service_revision
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @restoring_services = args[:restoring_services] if args.key?(:restoring_services)
          @service_revision = args[:service_revision] if args.key?(:service_revision)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Associates members, or principals, with a role.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec.Example (Comparison): title: "
        # Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::MetastoreV1beta::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource.
        # members can have the following values: allUsers: A special identifier that
        # represents anyone who is on the internet; with or without a Google account.
        # allAuthenticatedUsers: A special identifier that represents anyone who is
        # authenticated with a Google account or a service account. Does not include
        # identities that come from external identity providers (IdPs) through identity
        # federation. user:`emailid`: An email address that represents a specific Google
        # account. For example, alice@example.com . serviceAccount:`emailid`: An email
        # address that represents a Google service account. For example, my-other-app@
        # appspot.gserviceaccount.com. serviceAccount:`projectid`.svc.id.goog[`namespace`
        # /`kubernetes-sa`]: An identifier for a Kubernetes service account (https://
        # cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
        # For example, my-project.svc.id.goog[my-namespace/my-kubernetes-sa]. group:`
        # emailid`: An email address that represents a Google group. For example, admins@
        # example.com. domain:`domain`: The G Suite domain (primary) that represents all
        # the users of that domain. For example, google.com or example.com. principal://
        # iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value`: A single identity in a workforce identity pool.
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id`: All workforce identities in a group. principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value`: All workforce identities with a specific
        # attribute value. principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*: All identities in a workforce identity pool.
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value`: A single
        # identity in a workload identity pool. principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id`: A workload identity pool group. principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value`:
        # All identities in a workload identity pool with a certain attribute.
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*: All identities in a workload identity pool.
        # deleted:user:`emailid`?uid=`uniqueid`: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example,
        # alice@example.com?uid=123456789012345678901. If the user is recovered, this
        # value reverts to user:`emailid` and the recovered user retains the role in the
        # binding. deleted:serviceAccount:`emailid`?uid=`uniqueid`: An email address (
        # plus unique identifier) representing a service account that has been recently
        # deleted. For example, my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901. If the service account is undeleted, this value reverts
        # to serviceAccount:`emailid` and the undeleted service account retains the role
        # in the binding. deleted:group:`emailid`?uid=`uniqueid`: An email address (plus
        # unique identifier) representing a Google group that has been recently deleted.
        # For example, admins@example.com?uid=123456789012345678901. If the group is
        # recovered, this value reverts to group:`emailid` and the recovered group
        # retains the role in the binding. deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/`pool_id`/subject/`subject_attribute_value`:
        # Deleted single identity in a workforce identity pool. For example, deleted:
        # principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/
        # subject/my-subject-attribute-value.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of members, or principals. For example,
        # roles/viewer, roles/editor, or roles/owner.For an overview of the IAM roles
        # and permissions, see the IAM documentation (https://cloud.google.com/iam/docs/
        # roles-overview). For a list of the available pre-defined roles, see here (
        # https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Request message for DataprocMetastore.CancelMigration.
      class CancelMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for DataprocMetastore.CancelMigration.
      class CancelMigrationResponse
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the migration execution, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # migrationExecutions/`migration_execution_id`.
        # Corresponds to the JSON property `migrationExecution`
        # @return [String]
        attr_accessor :migration_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration information to start the Change Data Capture (CDC) streams from
      # customer database to backend database of Dataproc Metastore.
      class CdcConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The bucket to write the intermediate stream event data in. The
        # bucket name must be without any prefix like "gs://". See the bucket naming
        # requirements (https://cloud.google.com/storage/docs/buckets#naming). This
        # field is optional. If not set, the Artifacts Cloud Storage bucket will be used.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Required. Input only. The password for the user that Datastream service should
        # use for the MySQL connection. This field is not returned on request.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Required. The URL of the subnetwork resource to create the VM instance hosting
        # the reverse proxy in. More context in https://cloud.google.com/datastream/docs/
        # private-connectivity#reverse-csql-proxy The subnetwork should reside in the
        # network provided in the request that Datastream will peer to and should be in
        # the same region as Datastream, in the following format. projects/`project_id`/
        # regions/`region_id`/subnetworks/`subnetwork_id`
        # Corresponds to the JSON property `reverseProxySubnet`
        # @return [String]
        attr_accessor :reverse_proxy_subnet
      
        # Optional. The root path inside the Cloud Storage bucket. The stream event data
        # will be written to this path. The default value is /migration.
        # Corresponds to the JSON property `rootPath`
        # @return [String]
        attr_accessor :root_path
      
        # Required. A /29 CIDR IP range for peering with datastream.
        # Corresponds to the JSON property `subnetIpRange`
        # @return [String]
        attr_accessor :subnet_ip_range
      
        # Required. The username that the Datastream service should use for the MySQL
        # connection.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        # Required. Fully qualified name of the Cloud SQL instance's VPC network or the
        # shared VPC network that Datastream will peer to, in the following format:
        # projects/`project_id`/locations/global/networks/`network_id`. More context in
        # https://cloud.google.com/datastream/docs/network-connectivity-options#
        # privateconnectivity
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @password = args[:password] if args.key?(:password)
          @reverse_proxy_subnet = args[:reverse_proxy_subnet] if args.key?(:reverse_proxy_subnet)
          @root_path = args[:root_path] if args.key?(:root_path)
          @subnet_ip_range = args[:subnet_ip_range] if args.key?(:subnet_ip_range)
          @username = args[:username] if args.key?(:username)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # Configuration information to establish customer database connection before the
      # cutover phase of migration
      class CloudSqlConnectionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The hive database name.
        # Corresponds to the JSON property `hiveDatabaseName`
        # @return [String]
        attr_accessor :hive_database_name
      
        # Required. Cloud SQL database connection name (project_id:region:instance_name)
        # Corresponds to the JSON property `instanceConnectionName`
        # @return [String]
        attr_accessor :instance_connection_name
      
        # Required. The private IP address of the Cloud SQL instance.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Required. The relative resource name of the subnetwork to be used for Private
        # Service Connect. Note that this cannot be a regular subnet and is used only
        # for NAT. (https://cloud.google.com/vpc/docs/about-vpc-hosted-services#psc-
        # subnets) This subnet is used to publish the SOCKS5 proxy service. The subnet
        # size must be at least /29 and it should reside in a network through which the
        # Cloud SQL instance is accessible. The resource name should be in the format,
        # projects/`project_id`/regions/`region_id`/subnetworks/`subnetwork_id`
        # Corresponds to the JSON property `natSubnet`
        # @return [String]
        attr_accessor :nat_subnet
      
        # Required. Input only. The password for the user that Dataproc Metastore
        # service will be using to connect to the database. This field is not returned
        # on request.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Required. The network port of the database.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Required. The relative resource name of the subnetwork to deploy the SOCKS5
        # proxy service in. The subnetwork should reside in a network through which the
        # Cloud SQL instance is accessible. The resource name should be in the format,
        # projects/`project_id`/regions/`region_id`/subnetworks/`subnetwork_id`
        # Corresponds to the JSON property `proxySubnet`
        # @return [String]
        attr_accessor :proxy_subnet
      
        # Required. The username that Dataproc Metastore service will use to connect to
        # the database.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hive_database_name = args[:hive_database_name] if args.key?(:hive_database_name)
          @instance_connection_name = args[:instance_connection_name] if args.key?(:instance_connection_name)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @nat_subnet = args[:nat_subnet] if args.key?(:nat_subnet)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @proxy_subnet = args[:proxy_subnet] if args.key?(:proxy_subnet)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Configuration information for migrating from self-managed hive metastore on
      # Google Cloud using Cloud SQL as the backend database to Dataproc Metastore.
      class CloudSqlMigrationConfig
        include Google::Apis::Core::Hashable
      
        # Configuration information to start the Change Data Capture (CDC) streams from
        # customer database to backend database of Dataproc Metastore.
        # Corresponds to the JSON property `cdcConfig`
        # @return [Google::Apis::MetastoreV1beta::CdcConfig]
        attr_accessor :cdc_config
      
        # Configuration information to establish customer database connection before the
        # cutover phase of migration
        # Corresponds to the JSON property `cloudSqlConnectionConfig`
        # @return [Google::Apis::MetastoreV1beta::CloudSqlConnectionConfig]
        attr_accessor :cloud_sql_connection_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cdc_config = args[:cdc_config] if args.key?(:cdc_config)
          @cloud_sql_connection_config = args[:cloud_sql_connection_config] if args.key?(:cloud_sql_connection_config)
        end
      end
      
      # Request message for DataprocMetastore.CompleteMigration.
      class CompleteMigrationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for DataprocMetastore.CompleteMigration.
      class CompleteMigrationResponse
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the migration execution, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # migrationExecutions/`migration_execution_id`.
        # Corresponds to the JSON property `migrationExecution`
        # @return [String]
        attr_accessor :migration_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
        end
      end
      
      # Contains information of the customer's network configurations.
      class Consumer
        include Google::Apis::Core::Hashable
      
        # Output only. The location of the endpoint URI. Format: projects/`project`/
        # locations/`location`.
        # Corresponds to the JSON property `endpointLocation`
        # @return [String]
        attr_accessor :endpoint_location
      
        # Output only. The URI of the endpoint used to access the metastore service.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # Immutable. The subnetwork of the customer project from which an IP address is
        # reserved and used as the Dataproc Metastore service's endpoint. It is
        # accessible to hosts in the subnet and to all hosts in a subnet in the same
        # region and same network. There must be at least one IP address available in
        # the subnet's primary range. The subnet is specified in the following form:
        # projects/`project_number`/regions/`region_id`/subnetworks/`subnetwork_id`
        # Corresponds to the JSON property `subnetwork`
        # @return [String]
        attr_accessor :subnetwork
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_location = args[:endpoint_location] if args.key?(:endpoint_location)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @subnetwork = args[:subnetwork] if args.key?(:subnetwork)
        end
      end
      
      # Custom configuration used to specify regions that the metastore service runs
      # in. Currently only supported in the us multi-region.
      class CustomRegionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The list of read-only regions where the metastore service runs in.
        # These regions should be part (or subset) of the multi-region.
        # Corresponds to the JSON property `readOnlyRegions`
        # @return [Array<String>]
        attr_accessor :read_only_regions
      
        # Required. The list of read-write regions where the metastore service runs in.
        # These regions should be part (or subset) of the multi-region.
        # Corresponds to the JSON property `readWriteRegions`
        # @return [Array<String>]
        attr_accessor :read_write_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read_only_regions = args[:read_only_regions] if args.key?(:read_only_regions)
          @read_write_regions = args[:read_write_regions] if args.key?(:read_write_regions)
        end
      end
      
      # Metadata about a custom region. This is only populated if the region is a
      # custom region. For single/multi regions, it will be empty.
      class CustomRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The read-only regions for this custom region.
        # Corresponds to the JSON property `optionalReadOnlyRegions`
        # @return [Array<String>]
        attr_accessor :optional_read_only_regions
      
        # The read-write regions for this custom region.
        # Corresponds to the JSON property `requiredReadWriteRegions`
        # @return [Array<String>]
        attr_accessor :required_read_write_regions
      
        # The Spanner witness region for this custom region.
        # Corresponds to the JSON property `witnessRegion`
        # @return [String]
        attr_accessor :witness_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optional_read_only_regions = args[:optional_read_only_regions] if args.key?(:optional_read_only_regions)
          @required_read_write_regions = args[:required_read_write_regions] if args.key?(:required_read_write_regions)
          @witness_region = args[:witness_region] if args.key?(:witness_region)
        end
      end
      
      # Specifies how metastore metadata should be integrated with the Data Catalog
      # service.
      class DataCatalogConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether the metastore metadata should be synced to Data
        # Catalog. The default value is to disable syncing metastore metadata to Data
        # Catalog.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # A specification of the location of and metadata about a database dump from a
      # relational database management system.
      class DatabaseDump
        include Google::Apis::Core::Hashable
      
        # The type of the database.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # Optional. A Cloud Storage object or folder URI that specifies the source from
        # which to import metadata. It must begin with gs://.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Optional. The name of the source database.
        # Corresponds to the JSON property `sourceDatabase`
        # @return [String]
        attr_accessor :source_database
      
        # Optional. The type of the database dump. If unspecified, defaults to MYSQL.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_type = args[:database_type] if args.key?(:database_type)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @source_database = args[:source_database] if args.key?(:source_database)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Specifies how metastore metadata should be integrated with the Dataplex
      # service.
      class DataplexConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A reference to the Lake resources that this metastore service is
        # attached to. The key is the lake resource name. Example: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`.
        # Corresponds to the JSON property `lakeResources`
        # @return [Hash<String,Google::Apis::MetastoreV1beta::Lake>]
        attr_accessor :lake_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lake_resources = args[:lake_resources] if args.key?(:lake_resources)
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
      
      # Encryption settings for the service.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The fully qualified customer provided Cloud KMS key name to use for
        # customer data encryption, in the following format:projects/`project_number`/
        # locations/`location_id`/keyRings/`key_ring_id`/cryptoKeys/`crypto_key_id`.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. The list of fully qualified customer provided Cloud KMS key names
        # for the multi-regional service. Each key must be in the following format:
        # projects/`project_number`/locations/`location_id`/keyRings/`key_ring_id`/
        # cryptoKeys/`crypto_key_id`.
        # Corresponds to the JSON property `kmsKeys`
        # @return [Array<String>]
        attr_accessor :kms_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @kms_keys = args[:kms_keys] if args.key?(:kms_keys)
        end
      end
      
      # Error details in public error message for DataprocMetastore.QueryMetadata.
      class ErrorDetails
        include Google::Apis::Core::Hashable
      
        # Additional structured details about this error.Keys define the failure items.
        # Value describes the exception or details of the item.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # Request message for DataprocMetastore.ExportMetadata.
      class ExportMetadataRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The type of the database dump. If unspecified, defaults to MYSQL.
        # Corresponds to the JSON property `databaseDumpType`
        # @return [String]
        attr_accessor :database_dump_type
      
        # A Cloud Storage URI of a folder, in the format gs:///. A sub-folder containing
        # exported files will be created below it.
        # Corresponds to the JSON property `destinationGcsFolder`
        # @return [String]
        attr_accessor :destination_gcs_folder
      
        # Optional. A request ID. Specify a unique request ID to allow the server to
        # ignore the request if it has completed. The server will ignore subsequent
        # requests that provide a duplicate request ID for at least 60 minutes after the
        # first request.For example, if an initial request times out, followed by
        # another request with the same request ID, the server ignores the second
        # request to prevent the creation of duplicate commitments.The request ID must
        # be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        # Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_dump_type = args[:database_dump_type] if args.key?(:database_dump_type)
          @destination_gcs_folder = args[:destination_gcs_folder] if args.key?(:destination_gcs_folder)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec.Example (Comparison): title: "
      # Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # Represents a federation of multiple backend metastores.
      class Federation
        include Google::Apis::Core::Hashable
      
        # A map from BackendMetastore rank to BackendMetastores from which the
        # federation service serves metadata at query time. The map key represents the
        # order in which BackendMetastores should be evaluated to resolve database names
        # at query time and should be greater than or equal to zero. A BackendMetastore
        # with a lower number will be evaluated before a BackendMetastore with a higher
        # number.
        # Corresponds to the JSON property `backendMetastores`
        # @return [Hash<String,Google::Apis::MetastoreV1beta::BackendMetastore>]
        attr_accessor :backend_metastores
      
        # Output only. The time when the metastore federation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The federation endpoint.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # User-defined labels for the metastore federation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. The relative resource name of the federation, of the form: projects/
        # `project_number`/locations/`location_id`/federations/`federation_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the federation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of the metastore
        # federation, if available.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: "123/environment": "production", "123/costCenter": "
        # marketing"
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # Output only. The globally unique resource identifier of the metastore
        # federation.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the metastore federation was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Immutable. The Apache Hive metastore version of the federation. All backend
        # metastore versions must be compatible with the federation version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backend_metastores = args[:backend_metastores] if args.key?(:backend_metastores)
          @create_time = args[:create_time] if args.key?(:create_time)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @tags = args[:tags] if args.key?(:tags)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Specifies configuration information specific to running Hive metastore
      # software as the metastore service.
      class HiveMetastoreConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A mapping of Hive metastore version to the auxiliary version
        # configuration. When specified, a secondary Hive metastore service is created
        # along with the primary service. All auxiliary versions must be less than the
        # service's primary version. The key is the auxiliary service name and it must
        # match the regular expression a-z?. This means that the first character must be
        # a lowercase letter, and all the following characters must be hyphens,
        # lowercase letters, or digits, except the last character, which cannot be a
        # hyphen.
        # Corresponds to the JSON property `auxiliaryVersions`
        # @return [Hash<String,Google::Apis::MetastoreV1beta::AuxiliaryVersionConfig>]
        attr_accessor :auxiliary_versions
      
        # Optional. A mapping of Hive metastore configuration key-value pairs to apply
        # to the Hive metastore (configured in hive-site.xml). The mappings override
        # system defaults (some keys cannot be overridden). These overrides are also
        # applied to auxiliary versions and can be further customized in the auxiliary
        # version's AuxiliaryVersionConfig.
        # Corresponds to the JSON property `configOverrides`
        # @return [Hash<String,String>]
        attr_accessor :config_overrides
      
        # Optional. The protocol to use for the metastore service endpoint. If
        # unspecified, defaults to THRIFT.
        # Corresponds to the JSON property `endpointProtocol`
        # @return [String]
        attr_accessor :endpoint_protocol
      
        # Configuration information for a Kerberos principal.
        # Corresponds to the JSON property `kerberosConfig`
        # @return [Google::Apis::MetastoreV1beta::KerberosConfig]
        attr_accessor :kerberos_config
      
        # Immutable. The Hive metastore schema version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_versions = args[:auxiliary_versions] if args.key?(:auxiliary_versions)
          @config_overrides = args[:config_overrides] if args.key?(:config_overrides)
          @endpoint_protocol = args[:endpoint_protocol] if args.key?(:endpoint_protocol)
          @kerberos_config = args[:kerberos_config] if args.key?(:kerberos_config)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A specification of a supported version of the Hive Metastore software.
      class HiveMetastoreVersion
        include Google::Apis::Core::Hashable
      
        # Whether version will be chosen by the server if a metastore service is created
        # with a HiveMetastoreConfig that omits the version.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # The semantic version of the Hive Metastore software.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_default = args[:is_default] if args.key?(:is_default)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Configuration information for a Kerberos principal.
      class KerberosConfig
        include Google::Apis::Core::Hashable
      
        # A securely stored value.
        # Corresponds to the JSON property `keytab`
        # @return [Google::Apis::MetastoreV1beta::Secret]
        attr_accessor :keytab
      
        # Optional. A Cloud Storage URI that specifies the path to a krb5.conf file. It
        # is of the form gs://`bucket_name`/path/to/krb5.conf, although the file does
        # not need to be named krb5.conf explicitly.
        # Corresponds to the JSON property `krb5ConfigGcsUri`
        # @return [String]
        attr_accessor :krb5_config_gcs_uri
      
        # Optional. A Kerberos principal that exists in the both the keytab the KDC to
        # authenticate as. A typical principal is of the form primary/instance@REALM,
        # but there is no exact format.
        # Corresponds to the JSON property `principal`
        # @return [String]
        attr_accessor :principal
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keytab = args[:keytab] if args.key?(:keytab)
          @krb5_config_gcs_uri = args[:krb5_config_gcs_uri] if args.key?(:krb5_config_gcs_uri)
          @principal = args[:principal] if args.key?(:principal)
        end
      end
      
      # Represents a Lake resource
      class Lake
        include Google::Apis::Core::Hashable
      
        # The Lake resource name. Example: projects/`project_number`/locations/`
        # location_id`/lakes/`lake_id`
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
      
      # The details of the latest scheduled backup.
      class LatestBackup
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of an in-progress scheduled backup. Empty if no backup is
        # in progress.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # Output only. The duration of the backup completion.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Output only. The time when the backup was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents the autoscaling limit configuration of a metastore service.
      class LimitConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The highest scaling factor that the service should be autoscaled to.
        # Corresponds to the JSON property `maxScalingFactor`
        # @return [Float]
        attr_accessor :max_scaling_factor
      
        # Optional. The lowest scaling factor that the service should be autoscaled to.
        # Corresponds to the JSON property `minScalingFactor`
        # @return [Float]
        attr_accessor :min_scaling_factor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_scaling_factor = args[:max_scaling_factor] if args.key?(:max_scaling_factor)
          @min_scaling_factor = args[:min_scaling_factor] if args.key?(:min_scaling_factor)
        end
      end
      
      # Response message for DataprocMetastore.ListBackups.
      class ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The backups of the specified service.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::MetastoreV1beta::Backup>]
        attr_accessor :backups
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListFederations
      class ListFederationsResponse
        include Google::Apis::Core::Hashable
      
        # The services in the specified location.
        # Corresponds to the JSON property `federations`
        # @return [Array<Google::Apis::MetastoreV1beta::Federation>]
        attr_accessor :federations
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @federations = args[:federations] if args.key?(:federations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MetastoreV1beta::Location>]
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
      
      # Response message for DataprocMetastore.ListMetadataImports.
      class ListMetadataImportsResponse
        include Google::Apis::Core::Hashable
      
        # The imports in the specified service.
        # Corresponds to the JSON property `metadataImports`
        # @return [Array<Google::Apis::MetastoreV1beta::MetadataImport>]
        attr_accessor :metadata_imports
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @metadata_imports = args[:metadata_imports] if args.key?(:metadata_imports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for DataprocMetastore.ListMigrationExecutions.
      class ListMigrationExecutionsResponse
        include Google::Apis::Core::Hashable
      
        # The migration executions on the specified service.
        # Corresponds to the JSON property `migrationExecutions`
        # @return [Array<Google::Apis::MetastoreV1beta::MigrationExecution>]
        attr_accessor :migration_executions
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @migration_executions = args[:migration_executions] if args.key?(:migration_executions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
        # @return [Array<Google::Apis::MetastoreV1beta::Operation>]
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
      
      # Response message for DataprocMetastore.ListServices.
      class ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The services in the specified location.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::MetastoreV1beta::Service>]
        attr_accessor :services
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
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
      
        # The canonical id for this location. For example: "us-east1".
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: "projects/example-project/locations/us-east1"
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
      
      # Metadata about the service in a location.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Possible configurations supported if the current region is a custom region.
        # Corresponds to the JSON property `customRegionMetadata`
        # @return [Array<Google::Apis::MetastoreV1beta::CustomRegionMetadata>]
        attr_accessor :custom_region_metadata
      
        # The metadata for the multi-region that includes the constituent regions. The
        # metadata is only populated if the region is multi-region. For single region or
        # custom dual region, it will be empty.
        # Corresponds to the JSON property `multiRegionMetadata`
        # @return [Google::Apis::MetastoreV1beta::MultiRegionMetadata]
        attr_accessor :multi_region_metadata
      
        # The versions of Hive Metastore that can be used when creating a new metastore
        # service in this location. The server guarantees that exactly one
        # HiveMetastoreVersion in the list will set is_default.
        # Corresponds to the JSON property `supportedHiveMetastoreVersions`
        # @return [Array<Google::Apis::MetastoreV1beta::HiveMetastoreVersion>]
        attr_accessor :supported_hive_metastore_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_region_metadata = args[:custom_region_metadata] if args.key?(:custom_region_metadata)
          @multi_region_metadata = args[:multi_region_metadata] if args.key?(:multi_region_metadata)
          @supported_hive_metastore_versions = args[:supported_hive_metastore_versions] if args.key?(:supported_hive_metastore_versions)
        end
      end
      
      # Maintenance window. This specifies when Dataproc Metastore may perform system
      # maintenance operation to the service.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # Optional. The day of week, when the window starts.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Optional. The hour of day (0-23) when the window starts.
        # Corresponds to the JSON property `hourOfDay`
        # @return [Fixnum]
        attr_accessor :hour_of_day
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @hour_of_day = args[:hour_of_day] if args.key?(:hour_of_day)
        end
      end
      
      # This is proto2's version of MessageSet.DEPRECATED: DO NOT USE FOR NEW FIELDS.
      # If you are using editions or proto2, please make your own extendable messages
      # for your use case. If you are using proto3, please use Any instead.MessageSet
      # was the implementation of extensions for proto1. When proto2 was introduced,
      # extensions were implemented as a first-class feature. This schema for
      # MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing
      # messages from proto1 to proto2.This schema has been open-sourced only to
      # facilitate the migration of Google products with MessageSet-bearing messages
      # to open-source environments.
      class MessageSet
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The details of a metadata export operation.
      class MetadataExport
        include Google::Apis::Core::Hashable
      
        # Output only. The type of the database dump.
        # Corresponds to the JSON property `databaseDumpType`
        # @return [String]
        attr_accessor :database_dump_type
      
        # Output only. A Cloud Storage URI of a folder that metadata are exported to, in
        # the form of gs:////, where is automatically generated.
        # Corresponds to the JSON property `destinationGcsUri`
        # @return [String]
        attr_accessor :destination_gcs_uri
      
        # Output only. The time when the export ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The time when the export started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the export.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_dump_type = args[:database_dump_type] if args.key?(:database_dump_type)
          @destination_gcs_uri = args[:destination_gcs_uri] if args.key?(:destination_gcs_uri)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A metastore resource that imports metadata.
      class MetadataImport
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the metadata import was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A specification of the location of and metadata about a database dump from a
        # relational database management system.
        # Corresponds to the JSON property `databaseDump`
        # @return [Google::Apis::MetastoreV1beta::DatabaseDump]
        attr_accessor :database_dump
      
        # Optional. The description of the metadata import.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time when the metadata import finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Immutable. Identifier. The relative resource name of the metadata import, of
        # the form:projects/`project_number`/locations/`location_id`/services/`
        # service_id`/metadataImports/`metadata_import_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the metadata import.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the metadata import was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_dump = args[:database_dump] if args.key?(:database_dump)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Specifies how metastore metadata should be integrated with external services.
      class MetadataIntegration
        include Google::Apis::Core::Hashable
      
        # Specifies how metastore metadata should be integrated with the Data Catalog
        # service.
        # Corresponds to the JSON property `dataCatalogConfig`
        # @return [Google::Apis::MetastoreV1beta::DataCatalogConfig]
        attr_accessor :data_catalog_config
      
        # Specifies how metastore metadata should be integrated with the Dataplex
        # service.
        # Corresponds to the JSON property `dataplexConfig`
        # @return [Google::Apis::MetastoreV1beta::DataplexConfig]
        attr_accessor :dataplex_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_catalog_config = args[:data_catalog_config] if args.key?(:data_catalog_config)
          @dataplex_config = args[:dataplex_config] if args.key?(:dataplex_config)
        end
      end
      
      # The metadata management activities of the metastore service.
      class MetadataManagementActivity
        include Google::Apis::Core::Hashable
      
        # Output only. The latest metadata exports of the metastore service.
        # Corresponds to the JSON property `metadataExports`
        # @return [Array<Google::Apis::MetastoreV1beta::MetadataExport>]
        attr_accessor :metadata_exports
      
        # Output only. The latest restores of the metastore service.
        # Corresponds to the JSON property `restores`
        # @return [Array<Google::Apis::MetastoreV1beta::Restore>]
        attr_accessor :restores
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_exports = args[:metadata_exports] if args.key?(:metadata_exports)
          @restores = args[:restores] if args.key?(:restores)
        end
      end
      
      # The details of a migration execution resource.
      class MigrationExecution
        include Google::Apis::Core::Hashable
      
        # Configuration information for migrating from self-managed hive metastore on
        # Google Cloud using Cloud SQL as the backend database to Dataproc Metastore.
        # Corresponds to the JSON property `cloudSqlMigrationConfig`
        # @return [Google::Apis::MetastoreV1beta::CloudSqlMigrationConfig]
        attr_accessor :cloud_sql_migration_config
      
        # Output only. The time when the migration execution was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time when the migration execution finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The relative resource name of the migration execution, in the
        # following form: projects/`project_number`/locations/`location_id`/services/`
        # service_id`/migrationExecutions/`migration_execution_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current phase of the migration execution.
        # Corresponds to the JSON property `phase`
        # @return [String]
        attr_accessor :phase
      
        # Output only. The current state of the migration execution.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of the migration
        # execution.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_migration_config = args[:cloud_sql_migration_config] if args.key?(:cloud_sql_migration_config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @phase = args[:phase] if args.key?(:phase)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
        end
      end
      
      # Request message for DataprocMetastore.MoveTableToDatabase.
      class MoveTableToDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the database where the table resides.
        # Corresponds to the JSON property `dbName`
        # @return [String]
        attr_accessor :db_name
      
        # Required. The name of the database where the table should be moved.
        # Corresponds to the JSON property `destinationDbName`
        # @return [String]
        attr_accessor :destination_db_name
      
        # Required. The name of the table to be moved.
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_name = args[:db_name] if args.key?(:db_name)
          @destination_db_name = args[:destination_db_name] if args.key?(:destination_db_name)
          @table_name = args[:table_name] if args.key?(:table_name)
        end
      end
      
      # Response message for DataprocMetastore.MoveTableToDatabase.
      class MoveTableToDatabaseResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The multi-region config for the Dataproc Metastore service.
      class MultiRegionConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The list of root CA certificates that a gRPC client uses to
        # connect to a multi-regional Dataproc Metastore service.
        # Corresponds to the JSON property `certificates`
        # @return [Array<Google::Apis::MetastoreV1beta::RootCaCertificate>]
        attr_accessor :certificates
      
        # Custom configuration used to specify regions that the metastore service runs
        # in. Currently only supported in the us multi-region.
        # Corresponds to the JSON property `customRegionConfig`
        # @return [Google::Apis::MetastoreV1beta::CustomRegionConfig]
        attr_accessor :custom_region_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificates = args[:certificates] if args.key?(:certificates)
          @custom_region_config = args[:custom_region_config] if args.key?(:custom_region_config)
        end
      end
      
      # The metadata for the multi-region that includes the constituent regions. The
      # metadata is only populated if the region is multi-region. For single region or
      # custom dual region, it will be empty.
      class MultiRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The regions constituting the multi-region.
        # Corresponds to the JSON property `constituentRegions`
        # @return [Array<String>]
        attr_accessor :constituent_regions
      
        # The continent for this multi-region.
        # Corresponds to the JSON property `continent`
        # @return [String]
        attr_accessor :continent
      
        # The Spanner witness region for this multi-region.
        # Corresponds to the JSON property `witnessRegion`
        # @return [String]
        attr_accessor :witness_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constituent_regions = args[:constituent_regions] if args.key?(:constituent_regions)
          @continent = args[:continent] if args.key?(:continent)
          @witness_region = args[:witness_region] if args.key?(:witness_region)
        end
      end
      
      # Network configuration for the Dataproc Metastore service.
      class NetworkConfig
        include Google::Apis::Core::Hashable
      
        # Immutable. The consumer-side network configuration for the Dataproc Metastore
        # instance.
        # Corresponds to the JSON property `consumers`
        # @return [Array<Google::Apis::MetastoreV1beta::Consumer>]
        attr_accessor :consumers
      
        # Optional. Enables custom routes to be imported and exported for the Dataproc
        # Metastore service's peered VPC network.
        # Corresponds to the JSON property `customRoutesEnabled`
        # @return [Boolean]
        attr_accessor :custom_routes_enabled
        alias_method :custom_routes_enabled?, :custom_routes_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consumers = args[:consumers] if args.key?(:consumers)
          @custom_routes_enabled = args[:custom_routes_enabled] if args.key?(:custom_routes_enabled)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is false, it means the operation is still in progress. If true,
        # the operation is completed, and either error or response is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::MetastoreV1beta::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the name should be
        # a resource name ending with operations/`unique_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as Delete, the response is google.protobuf.
        # Empty. If the original method is standard Get/Create/Update, the response
        # should be the resource. For other methods, the response should have the type
        # XxxResponse, where Xxx is the original method name. For example, if the
        # original method name is TakeSnapshot(), the inferred response type is
        # TakeSnapshotResponse.
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
      
      # Represents the metadata of a long-running operation.
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
      
        # Output only. Identifies whether the caller has requested cancellation of the
        # operation. Operations that have successfully been cancelled have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.A Policy is a collection of bindings. A
      # binding binds one or more members, or principals, to a single role. Principals
      # can be user accounts, service accounts, Google groups, and domains (such as G
      # Suite). A role is a named list of permissions; each role can be an IAM
      # predefined role or a user-created custom role.For some types of Google Cloud
      # resources, a binding can also specify a condition, which is a logical
      # expression that allows access to a resource only if the expression evaluates
      # to true. A condition can add constraints based on attributes of the request,
      # the resource, or both. To learn which resources support conditions in their
      # IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/
      # conditions/resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` YAML example: bindings: - members:
      # - user:mike@example.com - group:admins@example.com - domain:google.com -
      # serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
      # description of IAM and its features, see the IAM documentation (https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::MetastoreV1beta::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of members, or principals, with a role. Optionally, may
        # specify a condition that determines how and when the bindings are applied.
        # Each of the bindings must contain at least one principal.The bindings in a
        # Policy can refer to up to 1,500 principals; up to 250 of these principals can
        # be Google groups. Each occurrence of a principal counts towards these limits.
        # For example, if the bindings grant 50 different roles to user:alice@example.
        # com, and not to any other principal, then you can add another 1,450 principals
        # to the bindings in the Policy.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::MetastoreV1beta::Binding>]
        attr_accessor :bindings
      
        # etag is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the etag in the read-modify-write cycle to
        # perform policy updates in order to avoid race conditions: An etag is returned
        # in the response to getIamPolicy, and systems are expected to put that etag in
        # the request to setIamPolicy to ensure that their change will be applied to the
        # same version of the policy.Important: If you use IAM Conditions, you must
        # include the etag field whenever you call setIamPolicy. If you omit this field,
        # then IAM allows you to overwrite a version 3 policy with a version 1 policy,
        # and all of the conditions in the version 3 policy are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that
        # specify an invalid value are rejected.Any operation that affects conditional
        # role bindings must specify version 3. This requirement applies to the
        # following operations: Getting a policy that includes a conditional role
        # binding Adding a conditional role binding to a policy Changing a conditional
        # role binding in a policy Removing any role binding, with or without a
        # condition, from a policy that includes conditionsImportant: If you use IAM
        # Conditions, you must include the etag field whenever you call setIamPolicy. If
        # you omit this field, then IAM allows you to overwrite a version 3 policy with
        # a version 1 policy, and all of the conditions in the version 3 policy are lost.
        # If a policy does not include any conditions, operations on that policy may
        # specify any valid version or leave the field unset.To learn which resources
        # support conditions in their IAM policies, see the IAM documentation (https://
        # cloud.google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for DataprocMetastore.QueryMetadata.
      class QueryMetadataRequest
        include Google::Apis::Core::Hashable
      
        # Required. A read-only SQL query to execute against the metadata database. The
        # query cannot change or mutate the data.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Response message for DataprocMetastore.QueryMetadata.
      class QueryMetadataResponse
        include Google::Apis::Core::Hashable
      
        # The manifest URI is link to a JSON instance in Cloud Storage. This instance
        # manifests immediately along with QueryMetadataResponse. The content of the URI
        # is not retriable until the long-running operation query against the metadata
        # finishes.
        # Corresponds to the JSON property `resultManifestUri`
        # @return [String]
        attr_accessor :result_manifest_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_manifest_uri = args[:result_manifest_uri] if args.key?(:result_manifest_uri)
        end
      end
      
      # Request message for DataprocMetastore.RemoveIamPolicy.
      class RemoveIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Removes IAM policy attached to database or table asynchronously when
        # it is set. The default is false.
        # Corresponds to the JSON property `asynchronous`
        # @return [Boolean]
        attr_accessor :asynchronous
        alias_method :asynchronous?, :asynchronous
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asynchronous = args[:asynchronous] if args.key?(:asynchronous)
        end
      end
      
      # Response message for DataprocMetastore.RemoveIamPolicy.
      class RemoveIamPolicyResponse
        include Google::Apis::Core::Hashable
      
        # True if the policy is successfully removed.
        # Corresponds to the JSON property `success`
        # @return [Boolean]
        attr_accessor :success
        alias_method :success?, :success
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @success = args[:success] if args.key?(:success)
        end
      end
      
      # The details of a metadata restore operation.
      class Restore
        include Google::Apis::Core::Hashable
      
        # Output only. The relative resource name of the metastore service backup to
        # restore from, in the following form:projects/`project_id`/locations/`
        # location_id`/services/`service_id`/backups/`backup_id`.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Optional. A Cloud Storage URI specifying where the backup artifacts are stored,
        # in the format gs:///.
        # Corresponds to the JSON property `backupLocation`
        # @return [String]
        attr_accessor :backup_location
      
        # Output only. The restore details containing the revision of the service to be
        # restored to, in format of JSON.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Output only. The time when the restore ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. The time when the restore started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the restore.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The type of restore.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @backup_location = args[:backup_location] if args.key?(:backup_location)
          @details = args[:details] if args.key?(:details)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request message for DataprocMetastore.RestoreService.
      class RestoreServiceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The relative resource name of the metastore service backup to
        # restore from, in the following form:projects/`project_id`/locations/`
        # location_id`/services/`service_id`/backups/`backup_id`. Mutually exclusive
        # with backup_location, and exactly one of the two must be set.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Optional. A Cloud Storage URI specifying the location of the backup artifacts,
        # namely - backup avro files under "avro/", backup_metastore.json and service.
        # json, in the following form:gs://. Mutually exclusive with backup, and exactly
        # one of the two must be set.
        # Corresponds to the JSON property `backupLocation`
        # @return [String]
        attr_accessor :backup_location
      
        # Optional. A request ID. Specify a unique request ID to allow the server to
        # ignore the request if it has completed. The server will ignore subsequent
        # requests that provide a duplicate request ID for at least 60 minutes after the
        # first request.For example, if an initial request times out, followed by
        # another request with the same request ID, the server ignores the second
        # request to prevent the creation of duplicate commitments.The request ID must
        # be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        # Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. The type of restore. If unspecified, defaults to METADATA_ONLY.
        # Corresponds to the JSON property `restoreType`
        # @return [String]
        attr_accessor :restore_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @backup_location = args[:backup_location] if args.key?(:backup_location)
          @request_id = args[:request_id] if args.key?(:request_id)
          @restore_type = args[:restore_type] if args.key?(:restore_type)
        end
      end
      
      # A gRPC client must install all root CA certificates to connect to a multi-
      # regional Dataproc Metastore service and achieve failover.
      class RootCaCertificate
        include Google::Apis::Core::Hashable
      
        # The root CA certificate in PEM format. The maximum length is 65536 bytes.
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # The certificate expiration time in timestamp format.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @certificate = args[:certificate] if args.key?(:certificate)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
        end
      end
      
      # Represents the scaling configuration of a metastore service.
      class ScalingConfig
        include Google::Apis::Core::Hashable
      
        # Represents the autoscaling configuration of a metastore service.
        # Corresponds to the JSON property `autoscalingConfig`
        # @return [Google::Apis::MetastoreV1beta::AutoscalingConfig]
        attr_accessor :autoscaling_config
      
        # An enum of readable instance sizes, with each instance size mapping to a float
        # value (e.g. InstanceSize.EXTRA_SMALL = scaling_factor(0.1))
        # Corresponds to the JSON property `instanceSize`
        # @return [String]
        attr_accessor :instance_size
      
        # Scaling factor, increments of 0.1 for values less than 1.0, and increments of
        # 1.0 for values greater than 1.0.
        # Corresponds to the JSON property `scalingFactor`
        # @return [Float]
        attr_accessor :scaling_factor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_config = args[:autoscaling_config] if args.key?(:autoscaling_config)
          @instance_size = args[:instance_size] if args.key?(:instance_size)
          @scaling_factor = args[:scaling_factor] if args.key?(:scaling_factor)
        end
      end
      
      # This specifies the configuration of scheduled backup.
      class ScheduledBackup
        include Google::Apis::Core::Hashable
      
        # Optional. A Cloud Storage URI of a folder, in the format gs:///. A sub-folder
        # containing backup files will be stored below it.
        # Corresponds to the JSON property `backupLocation`
        # @return [String]
        attr_accessor :backup_location
      
        # Optional. The scheduled interval in Cron format, see https://en.wikipedia.org/
        # wiki/Cron The default is empty: scheduled backup is not enabled. Must be
        # specified to enable scheduled backups.
        # Corresponds to the JSON property `cronSchedule`
        # @return [String]
        attr_accessor :cron_schedule
      
        # Optional. Defines whether the scheduled backup is enabled. The default value
        # is false.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The details of the latest scheduled backup.
        # Corresponds to the JSON property `latestBackup`
        # @return [Google::Apis::MetastoreV1beta::LatestBackup]
        attr_accessor :latest_backup
      
        # Output only. The time when the next backups execution is scheduled to start.
        # Corresponds to the JSON property `nextScheduledTime`
        # @return [String]
        attr_accessor :next_scheduled_time
      
        # Optional. Specifies the time zone to be used when interpreting cron_schedule.
        # Must be a time zone name from the time zone database (https://en.wikipedia.org/
        # wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/
        # Abidjan. If left unspecified, the default is UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_location = args[:backup_location] if args.key?(:backup_location)
          @cron_schedule = args[:cron_schedule] if args.key?(:cron_schedule)
          @enabled = args[:enabled] if args.key?(:enabled)
          @latest_backup = args[:latest_backup] if args.key?(:latest_backup)
          @next_scheduled_time = args[:next_scheduled_time] if args.key?(:next_scheduled_time)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # A securely stored value.
      class Secret
        include Google::Apis::Core::Hashable
      
        # Optional. The relative resource name of a Secret Manager secret version, in
        # the following form:projects/`project_number`/secrets/`secret_id`/versions/`
        # version_id`.
        # Corresponds to the JSON property `cloudSecret`
        # @return [String]
        attr_accessor :cloud_secret
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_secret = args[:cloud_secret] if args.key?(:cloud_secret)
        end
      end
      
      # A managed metastore service that serves metadata queries.
      class Service
        include Google::Apis::Core::Hashable
      
        # Output only. A Cloud Storage URI (starting with gs://) that specifies where
        # artifacts related to the metastore service are stored.
        # Corresponds to the JSON property `artifactGcsUri`
        # @return [String]
        attr_accessor :artifact_gcs_uri
      
        # Output only. The time when the metastore service was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. The database type that the Metastore service stores its data.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # Optional. Indicates if the dataproc metastore should be protected against
        # accidental deletions.
        # Corresponds to the JSON property `deletionProtection`
        # @return [Boolean]
        attr_accessor :deletion_protection
        alias_method :deletion_protection?, :deletion_protection
      
        # Encryption settings for the service.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::MetastoreV1beta::EncryptionConfig]
        attr_accessor :encryption_config
      
        # Output only. The URI of the endpoint used to access the metastore service.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # Specifies configuration information specific to running Hive metastore
        # software as the metastore service.
        # Corresponds to the JSON property `hiveMetastoreConfig`
        # @return [Google::Apis::MetastoreV1beta::HiveMetastoreConfig]
        attr_accessor :hive_metastore_config
      
        # User-defined labels for the metastore service.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Maintenance window. This specifies when Dataproc Metastore may perform system
        # maintenance operation to the service.
        # Corresponds to the JSON property `maintenanceWindow`
        # @return [Google::Apis::MetastoreV1beta::MaintenanceWindow]
        attr_accessor :maintenance_window
      
        # Specifies how metastore metadata should be integrated with external services.
        # Corresponds to the JSON property `metadataIntegration`
        # @return [Google::Apis::MetastoreV1beta::MetadataIntegration]
        attr_accessor :metadata_integration
      
        # The metadata management activities of the metastore service.
        # Corresponds to the JSON property `metadataManagementActivity`
        # @return [Google::Apis::MetastoreV1beta::MetadataManagementActivity]
        attr_accessor :metadata_management_activity
      
        # The multi-region config for the Dataproc Metastore service.
        # Corresponds to the JSON property `multiRegionConfig`
        # @return [Google::Apis::MetastoreV1beta::MultiRegionConfig]
        attr_accessor :multi_region_config
      
        # Immutable. Identifier. The relative resource name of the metastore service, in
        # the following format:projects/`project_number`/locations/`location_id`/
        # services/`service_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The relative resource name of the VPC network on which the instance
        # can be accessed. It is specified in the following form:projects/`
        # project_number`/global/networks/`network_id`.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Network configuration for the Dataproc Metastore service.
        # Corresponds to the JSON property `networkConfig`
        # @return [Google::Apis::MetastoreV1beta::NetworkConfig]
        attr_accessor :network_config
      
        # Optional. The TCP port at which the metastore service is reached. Default:
        # 9083.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Immutable. The release channel of the service. If unspecified, defaults to
        # STABLE.
        # Corresponds to the JSON property `releaseChannel`
        # @return [String]
        attr_accessor :release_channel
      
        # Represents the scaling configuration of a metastore service.
        # Corresponds to the JSON property `scalingConfig`
        # @return [Google::Apis::MetastoreV1beta::ScalingConfig]
        attr_accessor :scaling_config
      
        # This specifies the configuration of scheduled backup.
        # Corresponds to the JSON property `scheduledBackup`
        # @return [Google::Apis::MetastoreV1beta::ScheduledBackup]
        attr_accessor :scheduled_backup
      
        # Output only. The current state of the metastore service.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of the metastore
        # service, if available.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Optional. Input only. Immutable. Tag keys/values directly bound to this
        # resource. For example: "123/environment": "production", "123/costCenter": "
        # marketing"
        # Corresponds to the JSON property `tags`
        # @return [Hash<String,String>]
        attr_accessor :tags
      
        # Telemetry Configuration for the Dataproc Metastore service.
        # Corresponds to the JSON property `telemetryConfig`
        # @return [Google::Apis::MetastoreV1beta::TelemetryConfig]
        attr_accessor :telemetry_config
      
        # Optional. The tier of the service.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # Output only. The globally unique resource identifier of the metastore service.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the metastore service was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @artifact_gcs_uri = args[:artifact_gcs_uri] if args.key?(:artifact_gcs_uri)
          @create_time = args[:create_time] if args.key?(:create_time)
          @database_type = args[:database_type] if args.key?(:database_type)
          @deletion_protection = args[:deletion_protection] if args.key?(:deletion_protection)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @hive_metastore_config = args[:hive_metastore_config] if args.key?(:hive_metastore_config)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @metadata_integration = args[:metadata_integration] if args.key?(:metadata_integration)
          @metadata_management_activity = args[:metadata_management_activity] if args.key?(:metadata_management_activity)
          @multi_region_config = args[:multi_region_config] if args.key?(:multi_region_config)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @network_config = args[:network_config] if args.key?(:network_config)
          @port = args[:port] if args.key?(:port)
          @release_channel = args[:release_channel] if args.key?(:release_channel)
          @scaling_config = args[:scaling_config] if args.key?(:scaling_config)
          @scheduled_backup = args[:scheduled_backup] if args.key?(:scheduled_backup)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @tags = args[:tags] if args.key?(:tags)
          @telemetry_config = args[:telemetry_config] if args.key?(:telemetry_config)
          @tier = args[:tier] if args.key?(:tier)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for SetIamPolicy method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources.A Policy is a collection of bindings. A
        # binding binds one or more members, or principals, to a single role. Principals
        # can be user accounts, service accounts, Google groups, and domains (such as G
        # Suite). A role is a named list of permissions; each role can be an IAM
        # predefined role or a user-created custom role.For some types of Google Cloud
        # resources, a binding can also specify a condition, which is a logical
        # expression that allows access to a resource only if the expression evaluates
        # to true. A condition can add constraints based on attributes of the request,
        # the resource, or both. To learn which resources support conditions in their
        # IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/
        # conditions/resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` YAML example: bindings: - members:
        # - user:mike@example.com - group:admins@example.com - domain:google.com -
        # serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
        # description of IAM and its features, see the IAM documentation (https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::MetastoreV1beta::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used:paths: "bindings, etag"
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for DataprocMetastore.StartMigration.
      class StartMigrationRequest
        include Google::Apis::Core::Hashable
      
        # The details of a migration execution resource.
        # Corresponds to the JSON property `migrationExecution`
        # @return [Google::Apis::MetastoreV1beta::MigrationExecution]
        attr_accessor :migration_execution
      
        # Optional. A request ID. Specify a unique request ID to allow the server to
        # ignore the request if it has completed. The server will ignore subsequent
        # requests that provide a duplicate request ID for at least 60 minutes after the
        # first request.For example, if an initial request times out, followed by
        # another request with the same request ID, the server ignores the second
        # request to prevent the creation of duplicate commitments.The request ID must
        # be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        # Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
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
      
      # Wire-format for a Status object
      class StatusProto
        include Google::Apis::Core::Hashable
      
        # copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional
        # int32 canonical_code = 6;
        # Corresponds to the JSON property `canonicalCode`
        # @return [Fixnum]
        attr_accessor :canonical_code
      
        # Numeric code drawn from the space specified below. Often, this is the
        # canonical error space, and code is drawn from google3/util/task/codes.proto
        # copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional
        # int32 code = 1;
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # Detail message copybara:strip_begin(b/383363683) copybara:
        # strip_end_and_replace optional string message = 3;
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # This is proto2's version of MessageSet.DEPRECATED: DO NOT USE FOR NEW FIELDS.
        # If you are using editions or proto2, please make your own extendable messages
        # for your use case. If you are using proto3, please use Any instead.MessageSet
        # was the implementation of extensions for proto1. When proto2 was introduced,
        # extensions were implemented as a first-class feature. This schema for
        # MessageSet was meant to be a "bridge" solution to migrate MessageSet-bearing
        # messages from proto1 to proto2.This schema has been open-sourced only to
        # facilitate the migration of Google products with MessageSet-bearing messages
        # to open-source environments.
        # Corresponds to the JSON property `messageSet`
        # @return [Google::Apis::MetastoreV1beta::MessageSet]
        attr_accessor :message_set
      
        # copybara:strip_begin(b/383363683) Space to which this status belongs copybara:
        # strip_end_and_replace optional string space = 2; // Space to which this status
        # belongs
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_code = args[:canonical_code] if args.key?(:canonical_code)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @message_set = args[:message_set] if args.key?(:message_set)
          @space = args[:space] if args.key?(:space)
        end
      end
      
      # Telemetry Configuration for the Dataproc Metastore service.
      class TelemetryConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The output format of the Dataproc Metastore service's logs.
        # Corresponds to the JSON property `logFormat`
        # @return [String]
        attr_accessor :log_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_format = args[:log_format] if args.key?(:log_format)
        end
      end
      
      # Request message for TestIamPermissions method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the resource. Permissions with wildcards (
        # such as * or storage.*) are not allowed. For more information see IAM Overview
        # (https://cloud.google.com/iam/docs/overview#permissions).
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
      
      # Response message for TestIamPermissions method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of TestPermissionsRequest.permissions that the caller is allowed.
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
    end
  end
end
