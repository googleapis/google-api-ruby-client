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
    module DatamigrationV1
      
      # Specifies required connection parameters, and the parameters required to
      # create an AlloyDB destination cluster.
      class AlloyDbConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Required. The AlloyDB cluster ID that this connection profile is associated
        # with.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Settings for creating an AlloyDB cluster.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::DatamigrationV1::AlloyDbSettings]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Settings for creating an AlloyDB cluster.
      class AlloyDbSettings
        include Google::Apis::Core::Hashable
      
        # The username/password for a database user. Used for specifying initial users
        # at cluster creation time.
        # Corresponds to the JSON property `initialUser`
        # @return [Google::Apis::DatamigrationV1::UserPassword]
        attr_accessor :initial_user
      
        # Labels for the AlloyDB cluster created by DMS. An object containing a list of '
        # key', 'value' pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Settings for the cluster's primary instance
        # Corresponds to the JSON property `primaryInstanceSettings`
        # @return [Google::Apis::DatamigrationV1::PrimaryInstanceSettings]
        attr_accessor :primary_instance_settings
      
        # Required. The resource link for the VPC network in which cluster resources are
        # created and from which they are accessible via Private IP. The network must
        # belong to the same project as the cluster. It is specified in the form: "
        # projects/`project_number`/global/networks/`network_id`". This is required to
        # create a cluster.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [String]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @initial_user = args[:initial_user] if args.key?(:initial_user)
          @labels = args[:labels] if args.key?(:labels)
          @primary_instance_settings = args[:primary_instance_settings] if args.key?(:primary_instance_settings)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # Request message for 'ApplyConversionWorkspace' request.
      class ApplyConversionWorkspaceRequest
        include Google::Apis::Core::Hashable
      
        # Fully qualified (Uri) name of the destination connection profile.
        # Corresponds to the JSON property `connectionProfile`
        # @return [String]
        attr_accessor :connection_profile
      
        # Filter which entities to apply. Leaving this field empty will apply all of the
        # entities. Supports Google AIP 160 based filtering.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_profile = args[:connection_profile] if args.key?(:connection_profile)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::DatamigrationV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
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
      
      # Execution log of a background job.
      class BackgroundJobLogEntry
        include Google::Apis::Core::Hashable
      
        # Job completion comment, such as how many entities were seeded, how many
        # warnings were found during conversion and similar information.
        # Corresponds to the JSON property `completionComment`
        # @return [String]
        attr_accessor :completion_comment
      
        # Job completion state, i.e. the final state after the job completed.
        # Corresponds to the JSON property `completionState`
        # @return [String]
        attr_accessor :completion_state
      
        # The timestamp when the background job was finished.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # The background job log entry id
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Details regarding an Import Rules background job
        # Corresponds to the JSON property `importRulesJobDetails`
        # @return [Google::Apis::DatamigrationV1::ImportRulesJobDetails]
        attr_accessor :import_rules_job_details
      
        # The type of job that was executed.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        # Whether the client requested the conversion workspace to be committed after a
        # successful completion of the job.
        # Corresponds to the JSON property `requestAutocommit`
        # @return [Boolean]
        attr_accessor :request_autocommit
        alias_method :request_autocommit?, :request_autocommit
      
        # Details regarding a Seed background job
        # Corresponds to the JSON property `seedJobDetails`
        # @return [Google::Apis::DatamigrationV1::SeedJobDetails]
        attr_accessor :seed_job_details
      
        # The timestamp when the background job was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_comment = args[:completion_comment] if args.key?(:completion_comment)
          @completion_state = args[:completion_state] if args.key?(:completion_state)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @id = args[:id] if args.key?(:id)
          @import_rules_job_details = args[:import_rules_job_details] if args.key?(:import_rules_job_details)
          @job_type = args[:job_type] if args.key?(:job_type)
          @request_autocommit = args[:request_autocommit] if args.key?(:request_autocommit)
          @seed_job_details = args[:seed_job_details] if args.key?(:seed_job_details)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
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
        # @return [Google::Apis::DatamigrationV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # Specifies required connection parameters, and, optionally, the parameters
      # required to create a Cloud SQL destination database instance.
      class CloudSqlConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Output only. The Cloud SQL database instance's additional (outgoing) public IP.
        # Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple
        # zones / highly available).
        # Corresponds to the JSON property `additionalPublicIp`
        # @return [String]
        attr_accessor :additional_public_ip
      
        # Output only. The Cloud SQL instance ID that this connection profile is
        # associated with.
        # Corresponds to the JSON property `cloudSqlId`
        # @return [String]
        attr_accessor :cloud_sql_id
      
        # Output only. The Cloud SQL database instance's private IP.
        # Corresponds to the JSON property `privateIp`
        # @return [String]
        attr_accessor :private_ip
      
        # Output only. The Cloud SQL database instance's public IP.
        # Corresponds to the JSON property `publicIp`
        # @return [String]
        attr_accessor :public_ip
      
        # Settings for creating a Cloud SQL database instance.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::DatamigrationV1::CloudSqlSettings]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_public_ip = args[:additional_public_ip] if args.key?(:additional_public_ip)
          @cloud_sql_id = args[:cloud_sql_id] if args.key?(:cloud_sql_id)
          @private_ip = args[:private_ip] if args.key?(:private_ip)
          @public_ip = args[:public_ip] if args.key?(:public_ip)
          @settings = args[:settings] if args.key?(:settings)
        end
      end
      
      # Settings for creating a Cloud SQL database instance.
      class CloudSqlSettings
        include Google::Apis::Core::Hashable
      
        # The activation policy specifies when the instance is activated; it is
        # applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS':
        # The instance is on, and remains so even in the absence of connection requests.
        # `NEVER`: The instance is off; it is not activated, even if a connection
        # request arrives.
        # Corresponds to the JSON property `activationPolicy`
        # @return [String]
        attr_accessor :activation_policy
      
        # [default: ON] If you enable this setting, Cloud SQL checks your available
        # storage every 30 seconds. If the available storage falls below a threshold
        # size, Cloud SQL automatically adds additional storage capacity. If the
        # available storage repeatedly falls below the threshold size, Cloud SQL
        # continues to add storage until it reaches the maximum of 30 TB.
        # Corresponds to the JSON property `autoStorageIncrease`
        # @return [Boolean]
        attr_accessor :auto_storage_increase
        alias_method :auto_storage_increase?, :auto_storage_increase
      
        # Optional. Availability type. Potential values: * `ZONAL`: The instance serves
        # data from only one zone. Outages in that zone affect data availability. * `
        # REGIONAL`: The instance can serve data from more than one zone in a region (it
        # is highly available).
        # Corresponds to the JSON property `availabilityType`
        # @return [String]
        attr_accessor :availability_type
      
        # The KMS key name used for the csql instance.
        # Corresponds to the JSON property `cmekKeyName`
        # @return [String]
        attr_accessor :cmek_key_name
      
        # The Cloud SQL default instance level collation.
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # The storage capacity available to the database, in GB. The minimum (and
        # default) size is 10GB.
        # Corresponds to the JSON property `dataDiskSizeGb`
        # @return [Fixnum]
        attr_accessor :data_disk_size_gb
      
        # The type of storage: `PD_SSD` (default) or `PD_HDD`.
        # Corresponds to the JSON property `dataDiskType`
        # @return [String]
        attr_accessor :data_disk_type
      
        # The database flags passed to the Cloud SQL instance at startup. An object
        # containing a list of "key": value pairs. Example: ` "name": "wrench", "mass": "
        # 1.3kg", "count": "3" `.
        # Corresponds to the JSON property `databaseFlags`
        # @return [Hash<String,String>]
        attr_accessor :database_flags
      
        # The database engine type and version.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # IP Management configuration.
        # Corresponds to the JSON property `ipConfig`
        # @return [Google::Apis::DatamigrationV1::SqlIpConfig]
        attr_accessor :ip_config
      
        # Input only. Initial root password.
        # Corresponds to the JSON property `rootPassword`
        # @return [String]
        attr_accessor :root_password
      
        # Output only. Indicates If this connection profile root password is stored.
        # Corresponds to the JSON property `rootPasswordSet`
        # @return [Boolean]
        attr_accessor :root_password_set
        alias_method :root_password_set?, :root_password_set
      
        # Optional. The Google Cloud Platform zone where the failover Cloud SQL database
        # instance is located. Used when the Cloud SQL database availability type is
        # REGIONAL (i.e. multiple zones / highly available).
        # Corresponds to the JSON property `secondaryZone`
        # @return [String]
        attr_accessor :secondary_zone
      
        # The Database Migration Service source connection profile ID, in the format: `
        # projects/my_project_name/locations/us-central1/connectionProfiles/
        # connection_profile_ID`
        # Corresponds to the JSON property `sourceId`
        # @return [String]
        attr_accessor :source_id
      
        # The maximum size to which storage capacity can be automatically increased. The
        # default value is 0, which specifies that there is no limit.
        # Corresponds to the JSON property `storageAutoResizeLimit`
        # @return [Fixnum]
        attr_accessor :storage_auto_resize_limit
      
        # The tier (or machine type) for this instance, for example: `db-n1-standard-1` (
        # MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more
        # information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/
        # docs/mysql/instance-settings).
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        # The resource labels for a Cloud SQL instance to use to annotate any related
        # underlying resources such as Compute Engine VMs. An object containing a list
        # of "key": "value" pairs. Example: `` "name": "wrench", "mass": "18kg", "count":
        # "3" ``.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        # The Google Cloud Platform zone where your Cloud SQL database instance is
        # located.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_policy = args[:activation_policy] if args.key?(:activation_policy)
          @auto_storage_increase = args[:auto_storage_increase] if args.key?(:auto_storage_increase)
          @availability_type = args[:availability_type] if args.key?(:availability_type)
          @cmek_key_name = args[:cmek_key_name] if args.key?(:cmek_key_name)
          @collation = args[:collation] if args.key?(:collation)
          @data_disk_size_gb = args[:data_disk_size_gb] if args.key?(:data_disk_size_gb)
          @data_disk_type = args[:data_disk_type] if args.key?(:data_disk_type)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @database_version = args[:database_version] if args.key?(:database_version)
          @ip_config = args[:ip_config] if args.key?(:ip_config)
          @root_password = args[:root_password] if args.key?(:root_password)
          @root_password_set = args[:root_password_set] if args.key?(:root_password_set)
          @secondary_zone = args[:secondary_zone] if args.key?(:secondary_zone)
          @source_id = args[:source_id] if args.key?(:source_id)
          @storage_auto_resize_limit = args[:storage_auto_resize_limit] if args.key?(:storage_auto_resize_limit)
          @tier = args[:tier] if args.key?(:tier)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Column is not used as an independent entity, it is retrieved as part of a
      # Table entity.
      class ColumnEntity
        include Google::Apis::Core::Hashable
      
        # Is the column of array type
        # Corresponds to the JSON property `array`
        # @return [Boolean]
        attr_accessor :array
        alias_method :array?, :array
      
        # If the column is array, of which length
        # Corresponds to the JSON property `arrayLength`
        # @return [Fixnum]
        attr_accessor :array_length
      
        # Is the column auto-generated/identity
        # Corresponds to the JSON property `autoGenerated`
        # @return [Boolean]
        attr_accessor :auto_generated
        alias_method :auto_generated?, :auto_generated
      
        # Charset override - instead of table level charset
        # Corresponds to the JSON property `charset`
        # @return [String]
        attr_accessor :charset
      
        # Collation override - instead of table level collation
        # Corresponds to the JSON property `collation`
        # @return [String]
        attr_accessor :collation
      
        # Comment associated with the column
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # Column data type
        # Corresponds to the JSON property `dataType`
        # @return [String]
        attr_accessor :data_type
      
        # Default value of the column
        # Corresponds to the JSON property `defaultValue`
        # @return [String]
        attr_accessor :default_value
      
        # Column fractional second precision - used for timestamp based datatypes
        # Corresponds to the JSON property `fractionalSecondsPrecision`
        # @return [Fixnum]
        attr_accessor :fractional_seconds_precision
      
        # Column length - e.g. varchar (50)
        # Corresponds to the JSON property `length`
        # @return [Fixnum]
        attr_accessor :length
      
        # Column name
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Is the column nullable
        # Corresponds to the JSON property `nullable`
        # @return [Boolean]
        attr_accessor :nullable
        alias_method :nullable?, :nullable
      
        # Column order in the table
        # Corresponds to the JSON property `ordinalPosition`
        # @return [Fixnum]
        attr_accessor :ordinal_position
      
        # Column precision - when relevant
        # Corresponds to the JSON property `precision`
        # @return [Fixnum]
        attr_accessor :precision
      
        # Column scale - when relevant
        # Corresponds to the JSON property `scale`
        # @return [Fixnum]
        attr_accessor :scale
      
        # Specifies the list of values allowed in the column. List is empty if set
        # values is not required
        # Corresponds to the JSON property `setValues`
        # @return [Array<String>]
        attr_accessor :set_values
      
        # Is the column a UDT
        # Corresponds to the JSON property `udt`
        # @return [Boolean]
        attr_accessor :udt
        alias_method :udt?, :udt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @array = args[:array] if args.key?(:array)
          @array_length = args[:array_length] if args.key?(:array_length)
          @auto_generated = args[:auto_generated] if args.key?(:auto_generated)
          @charset = args[:charset] if args.key?(:charset)
          @collation = args[:collation] if args.key?(:collation)
          @comment = args[:comment] if args.key?(:comment)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @data_type = args[:data_type] if args.key?(:data_type)
          @default_value = args[:default_value] if args.key?(:default_value)
          @fractional_seconds_precision = args[:fractional_seconds_precision] if args.key?(:fractional_seconds_precision)
          @length = args[:length] if args.key?(:length)
          @name = args[:name] if args.key?(:name)
          @nullable = args[:nullable] if args.key?(:nullable)
          @ordinal_position = args[:ordinal_position] if args.key?(:ordinal_position)
          @precision = args[:precision] if args.key?(:precision)
          @scale = args[:scale] if args.key?(:scale)
          @set_values = args[:set_values] if args.key?(:set_values)
          @udt = args[:udt] if args.key?(:udt)
        end
      end
      
      # Request message for 'CommitConversionWorkspace' request.
      class CommitConversionWorkspaceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Optional name of the commit.
        # Corresponds to the JSON property `commitName`
        # @return [String]
        attr_accessor :commit_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_name = args[:commit_name] if args.key?(:commit_name)
        end
      end
      
      # A connection profile definition.
      class ConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Specifies required connection parameters, and the parameters required to
        # create an AlloyDB destination cluster.
        # Corresponds to the JSON property `alloydb`
        # @return [Google::Apis::DatamigrationV1::AlloyDbConnectionProfile]
        attr_accessor :alloydb
      
        # Specifies required connection parameters, and, optionally, the parameters
        # required to create a Cloud SQL destination database instance.
        # Corresponds to the JSON property `cloudsql`
        # @return [Google::Apis::DatamigrationV1::CloudSqlConnectionProfile]
        attr_accessor :cloudsql
      
        # Output only. The timestamp when the resource was created. A timestamp in
        # RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:
        # 23.045123456Z".
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The connection profile display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DatamigrationV1::Status]
        attr_accessor :error
      
        # The resource labels for connection profile to use to annotate any related
        # underlying resources such as Compute Engine VMs. An object containing a list
        # of "key": "value" pairs. Example: `` "name": "wrench", "mass": "1.3kg", "count"
        # : "3" ``.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specifies connection parameters required specifically for MySQL databases.
        # Corresponds to the JSON property `mysql`
        # @return [Google::Apis::DatamigrationV1::MySqlConnectionProfile]
        attr_accessor :mysql
      
        # The name of this connection profile resource in the form of projects/`project`/
        # locations/`location`/connectionProfiles/`connectionProfile`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Specifies connection parameters required specifically for Oracle databases.
        # Corresponds to the JSON property `oracle`
        # @return [Google::Apis::DatamigrationV1::OracleConnectionProfile]
        attr_accessor :oracle
      
        # Specifies connection parameters required specifically for PostgreSQL databases.
        # Corresponds to the JSON property `postgresql`
        # @return [Google::Apis::DatamigrationV1::PostgreSqlConnectionProfile]
        attr_accessor :postgresql
      
        # The database provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        # The current connection profile state (e.g. DRAFT, READY, or FAILED).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the resource was last updated. A timestamp in
        # RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:
        # 23.045123456Z".
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alloydb = args[:alloydb] if args.key?(:alloydb)
          @cloudsql = args[:cloudsql] if args.key?(:cloudsql)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @mysql = args[:mysql] if args.key?(:mysql)
          @name = args[:name] if args.key?(:name)
          @oracle = args[:oracle] if args.key?(:oracle)
          @postgresql = args[:postgresql] if args.key?(:postgresql)
          @provider = args[:provider] if args.key?(:provider)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Constraint is not used as an independent entity, it is retrieved as part of
      # another entity such as Table or View.
      class ConstraintEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The name of the table constraint
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Reference Columns which may be associated with the constraint. eg: if the
        # constraint is a FOREIGN_KEY, this represents the list of full names of
        # referenced columns by the foreign key.
        # Corresponds to the JSON property `referenceColumns`
        # @return [Array<String>]
        attr_accessor :reference_columns
      
        # Reference table which may be associated with the constraint. eg: if the
        # constraint is a FOREIGN_KEY, this represents the list of full name of the
        # referenced table by the foreign key.
        # Corresponds to the JSON property `referenceTable`
        # @return [String]
        attr_accessor :reference_table
      
        # Table columns used as part of the Constraint for e.g. primary key constraint
        # should list the columns which constitutes the key
        # Corresponds to the JSON property `tableColumns`
        # @return [Array<String>]
        attr_accessor :table_columns
      
        # Table which is associated with the constraint. In case the constraint is
        # defined on a table, this field is left empty as this information is stored in
        # parent_name. However, if constraint is defined on a view, this field stores
        # the table name on which the view is defined.
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        # Type of constraint - e.g. unique, primary key, foreign key (currently only
        # primary key is supported)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @name = args[:name] if args.key?(:name)
          @reference_columns = args[:reference_columns] if args.key?(:reference_columns)
          @reference_table = args[:reference_table] if args.key?(:reference_table)
          @table_columns = args[:table_columns] if args.key?(:table_columns)
          @table_name = args[:table_name] if args.key?(:table_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The main conversion workspace resource entity.
      class ConversionWorkspace
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the workspace resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The type and version of a source or destination DB.
        # Corresponds to the JSON property `destination`
        # @return [Google::Apis::DatamigrationV1::DatabaseEngineInfo]
        attr_accessor :destination
      
        # The display name for the workspace
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A generic list of settings for the workspace. The settings are database pair
        # dependant and can indicate default behavior for the mapping rules engine or
        # turn on or off specific features. Such examples can be:
        # convert_foreign_key_to_interleave=true, skip_triggers=false,
        # ignore_non_table_synonyms=true
        # Corresponds to the JSON property `globalSettings`
        # @return [Hash<String,String>]
        attr_accessor :global_settings
      
        # Output only. Whether the workspace has uncommitted changes (changes which were
        # made after the workspace was committed)
        # Corresponds to the JSON property `hasUncommittedChanges`
        # @return [Boolean]
        attr_accessor :has_uncommitted_changes
        alias_method :has_uncommitted_changes?, :has_uncommitted_changes
      
        # Output only. The latest commit id
        # Corresponds to the JSON property `latestCommitId`
        # @return [String]
        attr_accessor :latest_commit_id
      
        # Output only. The timestamp when the workspace was committed.
        # Corresponds to the JSON property `latestCommitTime`
        # @return [String]
        attr_accessor :latest_commit_time
      
        # Full name of the workspace resource, in the form of: projects/`project`/
        # locations/`location`/conversionWorkspaces/`conversion_workspace`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type and version of a source or destination DB.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::DatamigrationV1::DatabaseEngineInfo]
        attr_accessor :source
      
        # Output only. The timestamp when the workspace resource was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination = args[:destination] if args.key?(:destination)
          @display_name = args[:display_name] if args.key?(:display_name)
          @global_settings = args[:global_settings] if args.key?(:global_settings)
          @has_uncommitted_changes = args[:has_uncommitted_changes] if args.key?(:has_uncommitted_changes)
          @latest_commit_id = args[:latest_commit_id] if args.key?(:latest_commit_id)
          @latest_commit_time = args[:latest_commit_time] if args.key?(:latest_commit_time)
          @name = args[:name] if args.key?(:name)
          @source = args[:source] if args.key?(:source)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A conversion workspace's version.
      class ConversionWorkspaceInfo
        include Google::Apis::Core::Hashable
      
        # The commit ID of the conversion workspace.
        # Corresponds to the JSON property `commitId`
        # @return [String]
        attr_accessor :commit_id
      
        # The resource name (URI) of the conversion workspace.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commit_id = args[:commit_id] if args.key?(:commit_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for 'ConvertConversionWorkspace' request.
      class ConvertConversionWorkspaceRequest
        include Google::Apis::Core::Hashable
      
        # Should the conversion workspace be committed automatically after the
        # conversion.
        # Corresponds to the JSON property `autoCommit`
        # @return [Boolean]
        attr_accessor :auto_commit
        alias_method :auto_commit?, :auto_commit
      
        # Filter the entities to convert. Leaving this field empty will convert all of
        # the entities. Supports Google AIP-160 style filtering.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_commit = args[:auto_commit] if args.key?(:auto_commit)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # The type and version of a source or destination DB.
      class DatabaseEngineInfo
        include Google::Apis::Core::Hashable
      
        # Required. Engine Type.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # Required. Engine named version, for e.g. 12.c.1
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The base entity type for all the database related entities The message
      # contains the entity name, the name of its parent, its type and the specific
      # details per its type
      class DatabaseEntity
        include Google::Apis::Core::Hashable
      
        # Function's parent is a schema.
        # Corresponds to the JSON property `databaseFunction`
        # @return [Google::Apis::DatamigrationV1::FunctionEntity]
        attr_accessor :database_function
      
        # Package's parent is a schema.
        # Corresponds to the JSON property `databasePackage`
        # @return [Google::Apis::DatamigrationV1::PackageEntity]
        attr_accessor :database_package
      
        # The type of the database entity (table, view, index, ...).
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        # Details about entity mappings. For source tree entities, this holds the draft
        # entities which were generated by the mapping rules. For draft tree entities,
        # this holds the source entities which were converted to form the draft entity.
        # Destination entities will have no mapping details.
        # Corresponds to the JSON property `mappings`
        # @return [Array<Google::Apis::DatamigrationV1::EntityMapping>]
        attr_accessor :mappings
      
        # The full name of the parent entity (e.g. schema name).
        # Corresponds to the JSON property `parentEntity`
        # @return [String]
        attr_accessor :parent_entity
      
        # Schema typically has no parent entity, but can have a parent entity
        # DatabaseInstance (for database engines which supports it). For some database
        # engines the term schema and user can be used interchangeably when they refer
        # to a namespace or a collection of other database entities. Can store
        # additional information which is schema specific.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DatamigrationV1::SchemaEntity]
        attr_accessor :schema
      
        # Sequence's parent is a schema.
        # Corresponds to the JSON property `sequence`
        # @return [Google::Apis::DatamigrationV1::SequenceEntity]
        attr_accessor :sequence
      
        # The short name (e.g. table name) of the entity.
        # Corresponds to the JSON property `shortName`
        # @return [String]
        attr_accessor :short_name
      
        # Stored procedure's parent is a schema.
        # Corresponds to the JSON property `storedProcedure`
        # @return [Google::Apis::DatamigrationV1::StoredProcedureEntity]
        attr_accessor :stored_procedure
      
        # Synonym's parent is a schema.
        # Corresponds to the JSON property `synonym`
        # @return [Google::Apis::DatamigrationV1::SynonymEntity]
        attr_accessor :synonym
      
        # Table's parent is a schema.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DatamigrationV1::TableEntity]
        attr_accessor :table
      
        # The type of tree the entity belongs to.
        # Corresponds to the JSON property `tree`
        # @return [String]
        attr_accessor :tree
      
        # View's parent is a schema.
        # Corresponds to the JSON property `view`
        # @return [Google::Apis::DatamigrationV1::ViewEntity]
        attr_accessor :view
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_function = args[:database_function] if args.key?(:database_function)
          @database_package = args[:database_package] if args.key?(:database_package)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
          @mappings = args[:mappings] if args.key?(:mappings)
          @parent_entity = args[:parent_entity] if args.key?(:parent_entity)
          @schema = args[:schema] if args.key?(:schema)
          @sequence = args[:sequence] if args.key?(:sequence)
          @short_name = args[:short_name] if args.key?(:short_name)
          @stored_procedure = args[:stored_procedure] if args.key?(:stored_procedure)
          @synonym = args[:synonym] if args.key?(:synonym)
          @table = args[:table] if args.key?(:table)
          @tree = args[:tree] if args.key?(:tree)
          @view = args[:view] if args.key?(:view)
        end
      end
      
      # A message defining the database engine and provider.
      class DatabaseType
        include Google::Apis::Core::Hashable
      
        # The database engine.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # The database provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
          @provider = args[:provider] if args.key?(:provider)
        end
      end
      
      # Response message for 'DescribeConversionWorkspaceRevisions' request.
      class DescribeConversionWorkspaceRevisionsResponse
        include Google::Apis::Core::Hashable
      
        # The list of conversion workspace revisions.
        # Corresponds to the JSON property `revisions`
        # @return [Array<Google::Apis::DatamigrationV1::ConversionWorkspace>]
        attr_accessor :revisions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revisions = args[:revisions] if args.key?(:revisions)
        end
      end
      
      # Response message for 'DescribeDatabaseEntities' request.
      class DescribeDatabaseEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # The list of database entities for the conversion workspace.
        # Corresponds to the JSON property `databaseEntities`
        # @return [Array<Google::Apis::DatamigrationV1::DatabaseEntity>]
        attr_accessor :database_entities
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_entities = args[:database_entities] if args.key?(:database_entities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Dump flag definition.
      class DumpFlag
        include Google::Apis::Core::Hashable
      
        # The name of the flag
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the flag.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Dump flags definition.
      class DumpFlags
        include Google::Apis::Core::Hashable
      
        # The flags for the initial dump.
        # Corresponds to the JSON property `dumpFlags`
        # @return [Array<Google::Apis::DatamigrationV1::DumpFlag>]
        attr_accessor :dump_flags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dump_flags = args[:dump_flags] if args.key?(:dump_flags)
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
      
      # Details of the mappings of a database entity.
      class EntityMapping
        include Google::Apis::Core::Hashable
      
        # Target entity full name. The draft entity can also include a column, index or
        # constraint using the same naming notation schema.table.column
        # Corresponds to the JSON property `draftEntity`
        # @return [String]
        attr_accessor :draft_entity
      
        # Entity mapping log entries. Multiple rules can be effective and contribute
        # changes to a converted entity such as, a rule can handle the entity name,
        # another rule can handle an entity type. In addition, rules which did not
        # change the entity are also logged along the with the reason preventing them to
        # do so.
        # Corresponds to the JSON property `mappingLog`
        # @return [Array<Google::Apis::DatamigrationV1::EntityMappingLogEntry>]
        attr_accessor :mapping_log
      
        # Source entity full name. The source entity can also be a column, index or
        # constraint using the same naming notation schema.table.column
        # Corresponds to the JSON property `sourceEntity`
        # @return [String]
        attr_accessor :source_entity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @draft_entity = args[:draft_entity] if args.key?(:draft_entity)
          @mapping_log = args[:mapping_log] if args.key?(:mapping_log)
          @source_entity = args[:source_entity] if args.key?(:source_entity)
        end
      end
      
      # A single record of a rule which was used for a mapping.
      class EntityMappingLogEntry
        include Google::Apis::Core::Hashable
      
        # Comment.
        # Corresponds to the JSON property `mappingComment`
        # @return [String]
        attr_accessor :mapping_comment
      
        # Which rule caused it.
        # Corresponds to the JSON property `ruleId`
        # @return [String]
        attr_accessor :rule_id
      
        # Rule revision id
        # Corresponds to the JSON property `ruleRevisionId`
        # @return [String]
        attr_accessor :rule_revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mapping_comment = args[:mapping_comment] if args.key?(:mapping_comment)
          @rule_id = args[:rule_id] if args.key?(:rule_id)
          @rule_revision_id = args[:rule_revision_id] if args.key?(:rule_revision_id)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
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
      
      # Forward SSH Tunnel connectivity.
      class ForwardSshTunnelConnectivity
        include Google::Apis::Core::Hashable
      
        # Required. Hostname for the SSH tunnel.
        # Corresponds to the JSON property `hostname`
        # @return [String]
        attr_accessor :hostname
      
        # Input only. SSH password.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Port for the SSH tunnel, default value is 22.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Input only. SSH private key.
        # Corresponds to the JSON property `privateKey`
        # @return [String]
        attr_accessor :private_key
      
        # Required. Username for the SSH tunnel.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hostname = args[:hostname] if args.key?(:hostname)
          @password = args[:password] if args.key?(:password)
          @port = args[:port] if args.key?(:port)
          @private_key = args[:private_key] if args.key?(:private_key)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Function's parent is a schema.
      class FunctionEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The SQL code which creates the function
        # Corresponds to the JSON property `sqlCode`
        # @return [String]
        attr_accessor :sql_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @sql_code = args[:sql_code] if args.key?(:sql_code)
        end
      end
      
      # Request message for 'GenerateSshScript' request.
      class GenerateSshScriptRequest
        include Google::Apis::Core::Hashable
      
        # Required. Bastion VM Instance name to use or to create.
        # Corresponds to the JSON property `vm`
        # @return [String]
        attr_accessor :vm
      
        # VM creation configuration message
        # Corresponds to the JSON property `vmCreationConfig`
        # @return [Google::Apis::DatamigrationV1::VmCreationConfig]
        attr_accessor :vm_creation_config
      
        # The port that will be open on the bastion host
        # Corresponds to the JSON property `vmPort`
        # @return [Fixnum]
        attr_accessor :vm_port
      
        # VM selection configuration message
        # Corresponds to the JSON property `vmSelectionConfig`
        # @return [Google::Apis::DatamigrationV1::VmSelectionConfig]
        attr_accessor :vm_selection_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vm = args[:vm] if args.key?(:vm)
          @vm_creation_config = args[:vm_creation_config] if args.key?(:vm_creation_config)
          @vm_port = args[:vm_port] if args.key?(:vm_port)
          @vm_selection_config = args[:vm_selection_config] if args.key?(:vm_selection_config)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudClouddmsV1OperationMetadata
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
      
      # Request message for 'ImportMappingRules' request.
      class ImportMappingRulesRequest
        include Google::Apis::Core::Hashable
      
        # Should the conversion workspace be committed automatically after the import
        # operation.
        # Corresponds to the JSON property `autoCommit`
        # @return [Boolean]
        attr_accessor :auto_commit
        alias_method :auto_commit?, :auto_commit
      
        # One or more rules files
        # Corresponds to the JSON property `rulesFiles`
        # @return [Array<Google::Apis::DatamigrationV1::RulesFile>]
        attr_accessor :rules_files
      
        # The format of the rules content file.
        # Corresponds to the JSON property `rulesFormat`
        # @return [String]
        attr_accessor :rules_format
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_commit = args[:auto_commit] if args.key?(:auto_commit)
          @rules_files = args[:rules_files] if args.key?(:rules_files)
          @rules_format = args[:rules_format] if args.key?(:rules_format)
        end
      end
      
      # Details regarding an Import Rules background job
      class ImportRulesJobDetails
        include Google::Apis::Core::Hashable
      
        # The requested file format
        # Corresponds to the JSON property `fileFormat`
        # @return [String]
        attr_accessor :file_format
      
        # File names used for the import rules job
        # Corresponds to the JSON property `files`
        # @return [Array<String>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_format = args[:file_format] if args.key?(:file_format)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # Index is not used as an independent entity, it is retrieved as part of a Table
      # entity.
      class IndexEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The name of the index
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Table columns used as part of the Index for e.g. B-TREE index should list the
        # columns which constitutes the index.
        # Corresponds to the JSON property `tableColumns`
        # @return [Array<String>]
        attr_accessor :table_columns
      
        # Type of index - e.g. B-TREE
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # boolean value indicating whether the index is unique
        # Corresponds to the JSON property `unique`
        # @return [Boolean]
        attr_accessor :unique
        alias_method :unique?, :unique
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @name = args[:name] if args.key?(:name)
          @table_columns = args[:table_columns] if args.key?(:table_columns)
          @type = args[:type] if args.key?(:type)
          @unique = args[:unique] if args.key?(:unique)
        end
      end
      
      # Response message for 'ListConnectionProfiles' request.
      class ListConnectionProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The response list of connection profiles.
        # Corresponds to the JSON property `connectionProfiles`
        # @return [Array<Google::Apis::DatamigrationV1::ConnectionProfile>]
        attr_accessor :connection_profiles
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
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
          @connection_profiles = args[:connection_profiles] if args.key?(:connection_profiles)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for 'ListConversionWorkspaces' request.
      class ListConversionWorkspacesResponse
        include Google::Apis::Core::Hashable
      
        # The list of conversion workspace objects.
        # Corresponds to the JSON property `conversionWorkspaces`
        # @return [Array<Google::Apis::DatamigrationV1::ConversionWorkspace>]
        attr_accessor :conversion_workspaces
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
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
          @conversion_workspaces = args[:conversion_workspaces] if args.key?(:conversion_workspaces)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DatamigrationV1::Location>]
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
      
      # Response message for 'ListMigrationJobs' request.
      class ListMigrationJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of migration jobs objects.
        # Corresponds to the JSON property `migrationJobs`
        # @return [Array<Google::Apis::DatamigrationV1::MigrationJob>]
        attr_accessor :migration_jobs
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
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
          @migration_jobs = args[:migration_jobs] if args.key?(:migration_jobs)
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
        # @return [Array<Google::Apis::DatamigrationV1::Operation>]
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
      
      # Response message for 'ListPrivateConnections' request.
      class ListPrivateConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of private connections.
        # Corresponds to the JSON property `privateConnections`
        # @return [Array<Google::Apis::DatamigrationV1::PrivateConnection>]
        attr_accessor :private_connections
      
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
          @private_connections = args[:private_connections] if args.key?(:private_connections)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # MachineConfig describes the configuration of a machine.
      class MachineConfig
        include Google::Apis::Core::Hashable
      
        # The number of CPU's in the VM instance.
        # Corresponds to the JSON property `cpuCount`
        # @return [Fixnum]
        attr_accessor :cpu_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_count = args[:cpu_count] if args.key?(:cpu_count)
        end
      end
      
      # Represents a Database Migration Service migration job object.
      class MigrationJob
        include Google::Apis::Core::Hashable
      
        # A conversion workspace's version.
        # Corresponds to the JSON property `conversionWorkspace`
        # @return [Google::Apis::DatamigrationV1::ConversionWorkspaceInfo]
        attr_accessor :conversion_workspace
      
        # Output only. The timestamp when the migration job resource was created. A
        # timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "
        # 2014-10-02T15:01:23.045123456Z".
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The resource name (URI) of the destination connection profile.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # A message defining the database engine and provider.
        # Corresponds to the JSON property `destinationDatabase`
        # @return [Google::Apis::DatamigrationV1::DatabaseType]
        attr_accessor :destination_database
      
        # The migration job display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Dump flags definition.
        # Corresponds to the JSON property `dumpFlags`
        # @return [Google::Apis::DatamigrationV1::DumpFlags]
        attr_accessor :dump_flags
      
        # The path to the dump file in Google Cloud Storage, in the format: (gs://[
        # BUCKET_NAME]/[OBJECT_NAME]). This field and the "dump_flags" field are
        # mutually exclusive.
        # Corresponds to the JSON property `dumpPath`
        # @return [String]
        attr_accessor :dump_path
      
        # Output only. The duration of the migration job (in seconds). A duration in
        # seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Output only. If the migration job is completed, the time when it was completed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DatamigrationV1::Status]
        attr_accessor :error
      
        # This field can be used to select the entities to migrate as part of the
        # migration job. It uses AIP-160 notation to select a subset of the entities
        # configured on the associated conversion-workspace. This field should not be
        # set on migration-jobs that are not associated with a conversion workspace.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # The resource labels for migration job to use to annotate any related
        # underlying resources such as Compute Engine VMs. An object containing a list
        # of "key": "value" pairs. Example: `` "name": "wrench", "mass": "1.3kg", "count"
        # : "3" ``.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name (URI) of this migration job resource, in the form of: projects/`
        # project`/locations/`location`/migrationJobs/`migrationJob`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current migration job phase.
        # Corresponds to the JSON property `phase`
        # @return [String]
        attr_accessor :phase
      
        # The details needed to configure a reverse SSH tunnel between the source and
        # destination databases. These details will be used when calling the
        # generateSshScript method (see https://cloud.google.com/database-migration/docs/
        # reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to
        # produce the script that will help set up the reverse SSH tunnel, and to set up
        # the VPC peering between the Cloud SQL private network and the VPC.
        # Corresponds to the JSON property `reverseSshConnectivity`
        # @return [Google::Apis::DatamigrationV1::ReverseSshConnectivity]
        attr_accessor :reverse_ssh_connectivity
      
        # Required. The resource name (URI) of the source connection profile.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # A message defining the database engine and provider.
        # Corresponds to the JSON property `sourceDatabase`
        # @return [Google::Apis::DatamigrationV1::DatabaseType]
        attr_accessor :source_database
      
        # The current migration job state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The source database will allow incoming connections from the destination
        # database's public IP. You can retrieve the Cloud SQL instance's public IP from
        # the Cloud SQL console or using Cloud SQL APIs. No additional configuration is
        # required.
        # Corresponds to the JSON property `staticIpConnectivity`
        # @return [Google::Apis::DatamigrationV1::StaticIpConnectivity]
        attr_accessor :static_ip_connectivity
      
        # Required. The migration job type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The timestamp when the migration job resource was last updated. A
        # timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "
        # 2014-10-02T15:01:23.045123456Z".
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The details of the VPC where the source database is located in Google Cloud.
        # We will use this information to set up the VPC peering connection between
        # Cloud SQL and this VPC.
        # Corresponds to the JSON property `vpcPeeringConnectivity`
        # @return [Google::Apis::DatamigrationV1::VpcPeeringConnectivity]
        attr_accessor :vpc_peering_connectivity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion_workspace = args[:conversion_workspace] if args.key?(:conversion_workspace)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination = args[:destination] if args.key?(:destination)
          @destination_database = args[:destination_database] if args.key?(:destination_database)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dump_flags = args[:dump_flags] if args.key?(:dump_flags)
          @dump_path = args[:dump_path] if args.key?(:dump_path)
          @duration = args[:duration] if args.key?(:duration)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @phase = args[:phase] if args.key?(:phase)
          @reverse_ssh_connectivity = args[:reverse_ssh_connectivity] if args.key?(:reverse_ssh_connectivity)
          @source = args[:source] if args.key?(:source)
          @source_database = args[:source_database] if args.key?(:source_database)
          @state = args[:state] if args.key?(:state)
          @static_ip_connectivity = args[:static_ip_connectivity] if args.key?(:static_ip_connectivity)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vpc_peering_connectivity = args[:vpc_peering_connectivity] if args.key?(:vpc_peering_connectivity)
        end
      end
      
      # Error message of a verification Migration job.
      class MigrationJobVerificationError
        include Google::Apis::Core::Hashable
      
        # Output only. An instance of ErrorCode specifying the error that occurred.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Output only. A specific detailed error message, if supplied by the engine.
        # Corresponds to the JSON property `errorDetailMessage`
        # @return [String]
        attr_accessor :error_detail_message
      
        # Output only. A formatted message with further details about the error and a
        # CTA.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_detail_message = args[:error_detail_message] if args.key?(:error_detail_message)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # Specifies connection parameters required specifically for MySQL databases.
      class MySqlConnectionProfile
        include Google::Apis::Core::Hashable
      
        # If the source is a Cloud SQL database, use this field to provide the Cloud SQL
        # instance ID of the source.
        # Corresponds to the JSON property `cloudSqlId`
        # @return [String]
        attr_accessor :cloud_sql_id
      
        # Required. The IP or hostname of the source MySQL database.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Required. Input only. The password for the user that Database Migration
        # Service will be using to connect to the database. This field is not returned
        # on request, and the value is encrypted when stored in Database Migration
        # Service.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Output only. Indicates If this connection profile password is stored.
        # Corresponds to the JSON property `passwordSet`
        # @return [Boolean]
        attr_accessor :password_set
        alias_method :password_set?, :password_set
      
        # Required. The network port of the source MySQL database.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # SSL configuration information.
        # Corresponds to the JSON property `ssl`
        # @return [Google::Apis::DatamigrationV1::SslConfig]
        attr_accessor :ssl
      
        # Required. The username that Database Migration Service will use to connect to
        # the database. The value is encrypted when stored in Database Migration Service.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_id = args[:cloud_sql_id] if args.key?(:cloud_sql_id)
          @host = args[:host] if args.key?(:host)
          @password = args[:password] if args.key?(:password)
          @password_set = args[:password_set] if args.key?(:password_set)
          @port = args[:port] if args.key?(:port)
          @ssl = args[:ssl] if args.key?(:ssl)
          @username = args[:username] if args.key?(:username)
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
        # @return [Google::Apis::DatamigrationV1::Status]
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
      
      # Specifies connection parameters required specifically for Oracle databases.
      class OracleConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Required. Database service for the Oracle connection.
        # Corresponds to the JSON property `databaseService`
        # @return [String]
        attr_accessor :database_service
      
        # Forward SSH Tunnel connectivity.
        # Corresponds to the JSON property `forwardSshConnectivity`
        # @return [Google::Apis::DatamigrationV1::ForwardSshTunnelConnectivity]
        attr_accessor :forward_ssh_connectivity
      
        # Required. The IP or hostname of the source Oracle database.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Required. Input only. The password for the user that Database Migration
        # Service will be using to connect to the database. This field is not returned
        # on request, and the value is encrypted when stored in Database Migration
        # Service.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Output only. Indicates whether a new password is included in the request.
        # Corresponds to the JSON property `passwordSet`
        # @return [Boolean]
        attr_accessor :password_set
        alias_method :password_set?, :password_set
      
        # Required. The network port of the source Oracle database.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Private Connectivity.
        # Corresponds to the JSON property `privateConnectivity`
        # @return [Google::Apis::DatamigrationV1::PrivateConnectivity]
        attr_accessor :private_connectivity
      
        # Static IP address connectivity configured on service project.
        # Corresponds to the JSON property `staticServiceIpConnectivity`
        # @return [Google::Apis::DatamigrationV1::StaticServiceIpConnectivity]
        attr_accessor :static_service_ip_connectivity
      
        # Required. The username that Database Migration Service will use to connect to
        # the database. The value is encrypted when stored in Database Migration Service.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_service = args[:database_service] if args.key?(:database_service)
          @forward_ssh_connectivity = args[:forward_ssh_connectivity] if args.key?(:forward_ssh_connectivity)
          @host = args[:host] if args.key?(:host)
          @password = args[:password] if args.key?(:password)
          @password_set = args[:password_set] if args.key?(:password_set)
          @port = args[:port] if args.key?(:port)
          @private_connectivity = args[:private_connectivity] if args.key?(:private_connectivity)
          @static_service_ip_connectivity = args[:static_service_ip_connectivity] if args.key?(:static_service_ip_connectivity)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Package's parent is a schema.
      class PackageEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The SQL code which creates the package body. If the package specification has
        # cursors or subprograms, then the package body is mandatory.
        # Corresponds to the JSON property `packageBody`
        # @return [String]
        attr_accessor :package_body
      
        # The SQL code which creates the package
        # Corresponds to the JSON property `packageSqlCode`
        # @return [String]
        attr_accessor :package_sql_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @package_body = args[:package_body] if args.key?(:package_body)
          @package_sql_code = args[:package_sql_code] if args.key?(:package_sql_code)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::DatamigrationV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DatamigrationV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
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
      
      # Specifies connection parameters required specifically for PostgreSQL databases.
      class PostgreSqlConnectionProfile
        include Google::Apis::Core::Hashable
      
        # If the source is a Cloud SQL database, use this field to provide the Cloud SQL
        # instance ID of the source.
        # Corresponds to the JSON property `cloudSqlId`
        # @return [String]
        attr_accessor :cloud_sql_id
      
        # Required. The IP or hostname of the source PostgreSQL database.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # Output only. If the source is a Cloud SQL database, this field indicates the
        # network architecture it's associated with.
        # Corresponds to the JSON property `networkArchitecture`
        # @return [String]
        attr_accessor :network_architecture
      
        # Required. Input only. The password for the user that Database Migration
        # Service will be using to connect to the database. This field is not returned
        # on request, and the value is encrypted when stored in Database Migration
        # Service.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Output only. Indicates If this connection profile password is stored.
        # Corresponds to the JSON property `passwordSet`
        # @return [Boolean]
        attr_accessor :password_set
        alias_method :password_set?, :password_set
      
        # Required. The network port of the source PostgreSQL database.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Private Service Connect connectivity (https://cloud.google.com/vpc/docs/
        # private-service-connect#benefits-services)
        # Corresponds to the JSON property `privateServiceConnectConnectivity`
        # @return [Google::Apis::DatamigrationV1::PrivateServiceConnectConnectivity]
        attr_accessor :private_service_connect_connectivity
      
        # SSL configuration information.
        # Corresponds to the JSON property `ssl`
        # @return [Google::Apis::DatamigrationV1::SslConfig]
        attr_accessor :ssl
      
        # The source database will allow incoming connections from the destination
        # database's public IP. You can retrieve the Cloud SQL instance's public IP from
        # the Cloud SQL console or using Cloud SQL APIs. No additional configuration is
        # required.
        # Corresponds to the JSON property `staticIpConnectivity`
        # @return [Google::Apis::DatamigrationV1::StaticIpConnectivity]
        attr_accessor :static_ip_connectivity
      
        # Required. The username that Database Migration Service will use to connect to
        # the database. The value is encrypted when stored in Database Migration Service.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql_id = args[:cloud_sql_id] if args.key?(:cloud_sql_id)
          @host = args[:host] if args.key?(:host)
          @network_architecture = args[:network_architecture] if args.key?(:network_architecture)
          @password = args[:password] if args.key?(:password)
          @password_set = args[:password_set] if args.key?(:password_set)
          @port = args[:port] if args.key?(:port)
          @private_service_connect_connectivity = args[:private_service_connect_connectivity] if args.key?(:private_service_connect_connectivity)
          @ssl = args[:ssl] if args.key?(:ssl)
          @static_ip_connectivity = args[:static_ip_connectivity] if args.key?(:static_ip_connectivity)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Settings for the cluster's primary instance
      class PrimaryInstanceSettings
        include Google::Apis::Core::Hashable
      
        # Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster and
        # instances. See the AlloyDB documentation for how these can be used.
        # Corresponds to the JSON property `databaseFlags`
        # @return [Hash<String,String>]
        attr_accessor :database_flags
      
        # Required. The ID of the AlloyDB primary instance. The ID must satisfy the
        # regex expression "[a-z0-9-]+".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Labels for the AlloyDB primary instance created by DMS. An object containing a
        # list of 'key', 'value' pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # MachineConfig describes the configuration of a machine.
        # Corresponds to the JSON property `machineConfig`
        # @return [Google::Apis::DatamigrationV1::MachineConfig]
        attr_accessor :machine_config
      
        # Output only. The private IP address for the Instance. This is the connection
        # endpoint for an end-user application.
        # Corresponds to the JSON property `privateIp`
        # @return [String]
        attr_accessor :private_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @id = args[:id] if args.key?(:id)
          @labels = args[:labels] if args.key?(:labels)
          @machine_config = args[:machine_config] if args.key?(:machine_config)
          @private_ip = args[:private_ip] if args.key?(:private_ip)
        end
      end
      
      # The PrivateConnection resource is used to establish private connectivity with
      # the customer's network.
      class PrivateConnection
        include Google::Apis::Core::Hashable
      
        # Output only. The create time of the resource.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The private connection display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::DatamigrationV1::Status]
        attr_accessor :error
      
        # The resource labels for private connections to use to annotate any related
        # underlying resources such as Compute Engine VMs. An object containing a list
        # of "key": "value" pairs. Example: `` "name": "wrench", "mass": "1.3kg", "count"
        # : "3" ``.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the Private Connection.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last update time of the resource.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The VPC Peering configuration is used to create VPC peering with the consumer'
        # s VPC.
        # Corresponds to the JSON property `vpcPeeringConfig`
        # @return [Google::Apis::DatamigrationV1::VpcPeeringConfig]
        attr_accessor :vpc_peering_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @vpc_peering_config = args[:vpc_peering_config] if args.key?(:vpc_peering_config)
        end
      end
      
      # Private Connectivity.
      class PrivateConnectivity
        include Google::Apis::Core::Hashable
      
        # Required. The resource name (URI) of the private connection.
        # Corresponds to the JSON property `privateConnection`
        # @return [String]
        attr_accessor :private_connection
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_connection = args[:private_connection] if args.key?(:private_connection)
        end
      end
      
      # Private Service Connect connectivity (https://cloud.google.com/vpc/docs/
      # private-service-connect#benefits-services)
      class PrivateServiceConnectConnectivity
        include Google::Apis::Core::Hashable
      
        # Required. A service attachment that exposes a database, and has the following
        # format: projects/`project`/regions/`region`/serviceAttachments/`
        # service_attachment_name`
        # Corresponds to the JSON property `serviceAttachment`
        # @return [String]
        attr_accessor :service_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_attachment = args[:service_attachment] if args.key?(:service_attachment)
        end
      end
      
      # Request message for 'PromoteMigrationJob' request.
      class PromoteMigrationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'RestartMigrationJob' request.
      class RestartMigrationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for 'ResumeMigrationJob' request.
      class ResumeMigrationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The details needed to configure a reverse SSH tunnel between the source and
      # destination databases. These details will be used when calling the
      # generateSshScript method (see https://cloud.google.com/database-migration/docs/
      # reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to
      # produce the script that will help set up the reverse SSH tunnel, and to set up
      # the VPC peering between the Cloud SQL private network and the VPC.
      class ReverseSshConnectivity
        include Google::Apis::Core::Hashable
      
        # The name of the virtual machine (Compute Engine) used as the bastion server
        # for the SSH tunnel.
        # Corresponds to the JSON property `vm`
        # @return [String]
        attr_accessor :vm
      
        # Required. The IP of the virtual machine (Compute Engine) used as the bastion
        # server for the SSH tunnel.
        # Corresponds to the JSON property `vmIp`
        # @return [String]
        attr_accessor :vm_ip
      
        # Required. The forwarding port of the virtual machine (Compute Engine) used as
        # the bastion server for the SSH tunnel.
        # Corresponds to the JSON property `vmPort`
        # @return [Fixnum]
        attr_accessor :vm_port
      
        # The name of the VPC to peer with the Cloud SQL private network.
        # Corresponds to the JSON property `vpc`
        # @return [String]
        attr_accessor :vpc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vm = args[:vm] if args.key?(:vm)
          @vm_ip = args[:vm_ip] if args.key?(:vm_ip)
          @vm_port = args[:vm_port] if args.key?(:vm_port)
          @vpc = args[:vpc] if args.key?(:vpc)
        end
      end
      
      # Request message for 'RollbackConversionWorkspace' request.
      class RollbackConversionWorkspaceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details of a single rules file
      class RulesFile
        include Google::Apis::Core::Hashable
      
        # The text content of the rules that needs to be converted
        # Corresponds to the JSON property `rulesContent`
        # @return [String]
        attr_accessor :rules_content
      
        # The filename of the rules that needs to be converted. This is used mainly so
        # future logs of the import rules job will contain this detail and can therefore
        # be searched by it later
        # Corresponds to the JSON property `rulesSourceFilename`
        # @return [String]
        attr_accessor :rules_source_filename
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules_content = args[:rules_content] if args.key?(:rules_content)
          @rules_source_filename = args[:rules_source_filename] if args.key?(:rules_source_filename)
        end
      end
      
      # Schema typically has no parent entity, but can have a parent entity
      # DatabaseInstance (for database engines which supports it). For some database
      # engines the term schema and user can be used interchangeably when they refer
      # to a namespace or a collection of other database entities. Can store
      # additional information which is schema specific.
      class SchemaEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
        end
      end
      
      # Response message for 'SearchBackgroundJobs' request.
      class SearchBackgroundJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of conversion workspace mapping rules.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DatamigrationV1::BackgroundJobLogEntry>]
        attr_accessor :jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
        end
      end
      
      # Request message for 'SeedConversionWorkspace' request.
      class SeedConversionWorkspaceRequest
        include Google::Apis::Core::Hashable
      
        # Should the conversion workspace be committed automatically after the seed
        # operation.
        # Corresponds to the JSON property `autoCommit`
        # @return [Boolean]
        attr_accessor :auto_commit
        alias_method :auto_commit?, :auto_commit
      
        # Fully qualified (Uri) name of the destination connection profile.
        # Corresponds to the JSON property `destinationConnectionProfile`
        # @return [String]
        attr_accessor :destination_connection_profile
      
        # Fully qualified (Uri) name of the source connection profile.
        # Corresponds to the JSON property `sourceConnectionProfile`
        # @return [String]
        attr_accessor :source_connection_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_commit = args[:auto_commit] if args.key?(:auto_commit)
          @destination_connection_profile = args[:destination_connection_profile] if args.key?(:destination_connection_profile)
          @source_connection_profile = args[:source_connection_profile] if args.key?(:source_connection_profile)
        end
      end
      
      # Details regarding a Seed background job
      class SeedJobDetails
        include Google::Apis::Core::Hashable
      
        # The connection profile which was used for the seed job
        # Corresponds to the JSON property `connectionProfile`
        # @return [String]
        attr_accessor :connection_profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_profile = args[:connection_profile] if args.key?(:connection_profile)
        end
      end
      
      # Sequence's parent is a schema.
      class SequenceEntity
        include Google::Apis::Core::Hashable
      
        # Indicates number of entries to cache / precreate
        # Corresponds to the JSON property `cache`
        # @return [Fixnum]
        attr_accessor :cache
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # Indicates whether the sequence value should cycle through
        # Corresponds to the JSON property `cycle`
        # @return [Boolean]
        attr_accessor :cycle
        alias_method :cycle?, :cycle
      
        # Increment value for the sequence
        # Corresponds to the JSON property `increment`
        # @return [Fixnum]
        attr_accessor :increment
      
        # Maximum number for the sequence represented as bytes to accommodate large
        # numbers
        # Corresponds to the JSON property `maxValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :max_value
      
        # Minimum number for the sequence represented as bytes to accommodate large
        # numbers
        # Corresponds to the JSON property `minValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :min_value
      
        # Start number for the sequence represented as bytes to accommodate large
        # numbers
        # Corresponds to the JSON property `startValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :start_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache = args[:cache] if args.key?(:cache)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @cycle = args[:cycle] if args.key?(:cycle)
          @increment = args[:increment] if args.key?(:increment)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @start_value = args[:start_value] if args.key?(:start_value)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DatamigrationV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
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
      
      # An entry for an Access Control list.
      class SqlAclEntry
        include Google::Apis::Core::Hashable
      
        # The time when this access control entry expires in [RFC 3339](https://tools.
        # ietf.org/html/rfc3339) format, for example: `2012-11-15T16:19:00.094Z`.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # A label to identify this entry.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Input only. The time-to-leave of this access control entry.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # The allowlisted value for the access control list.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @label = args[:label] if args.key?(:label)
          @ttl = args[:ttl] if args.key?(:ttl)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # IP Management configuration.
      class SqlIpConfig
        include Google::Apis::Core::Hashable
      
        # The list of external networks that are allowed to connect to the instance
        # using the IP. See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation,
        # also known as 'slash' notation (e.g. `192.168.100.0/24`).
        # Corresponds to the JSON property `authorizedNetworks`
        # @return [Array<Google::Apis::DatamigrationV1::SqlAclEntry>]
        attr_accessor :authorized_networks
      
        # Whether the instance should be assigned an IPv4 address or not.
        # Corresponds to the JSON property `enableIpv4`
        # @return [Boolean]
        attr_accessor :enable_ipv4
        alias_method :enable_ipv4?, :enable_ipv4
      
        # The resource link for the VPC network from which the Cloud SQL instance is
        # accessible for private IP. For example, `projects/myProject/global/networks/
        # default`. This setting can be updated, but it cannot be removed after it is
        # set.
        # Corresponds to the JSON property `privateNetwork`
        # @return [String]
        attr_accessor :private_network
      
        # Whether SSL connections over IP should be enforced or not.
        # Corresponds to the JSON property `requireSsl`
        # @return [Boolean]
        attr_accessor :require_ssl
        alias_method :require_ssl?, :require_ssl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorized_networks = args[:authorized_networks] if args.key?(:authorized_networks)
          @enable_ipv4 = args[:enable_ipv4] if args.key?(:enable_ipv4)
          @private_network = args[:private_network] if args.key?(:private_network)
          @require_ssl = args[:require_ssl] if args.key?(:require_ssl)
        end
      end
      
      # Response message for 'GenerateSshScript' request.
      class SshScript
        include Google::Apis::Core::Hashable
      
        # The ssh configuration script.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @script = args[:script] if args.key?(:script)
        end
      end
      
      # SSL configuration information.
      class SslConfig
        include Google::Apis::Core::Hashable
      
        # Required. Input only. The x509 PEM-encoded certificate of the CA that signed
        # the source database server's certificate. The replica will use this
        # certificate to verify it's connecting to the right host.
        # Corresponds to the JSON property `caCertificate`
        # @return [String]
        attr_accessor :ca_certificate
      
        # Input only. The x509 PEM-encoded certificate that will be used by the replica
        # to authenticate against the source database server.If this field is used then
        # the 'client_key' field is mandatory.
        # Corresponds to the JSON property `clientCertificate`
        # @return [String]
        attr_accessor :client_certificate
      
        # Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key
        # associated with the Client Certificate. If this field is used then the '
        # client_certificate' field is mandatory.
        # Corresponds to the JSON property `clientKey`
        # @return [String]
        attr_accessor :client_key
      
        # Output only. The ssl config type according to 'client_key', '
        # client_certificate' and 'ca_certificate'.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ca_certificate = args[:ca_certificate] if args.key?(:ca_certificate)
          @client_certificate = args[:client_certificate] if args.key?(:client_certificate)
          @client_key = args[:client_key] if args.key?(:client_key)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request message for 'StartMigrationJob' request.
      class StartMigrationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The source database will allow incoming connections from the destination
      # database's public IP. You can retrieve the Cloud SQL instance's public IP from
      # the Cloud SQL console or using Cloud SQL APIs. No additional configuration is
      # required.
      class StaticIpConnectivity
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Static IP address connectivity configured on service project.
      class StaticServiceIpConnectivity
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request message for 'StopMigrationJob' request.
      class StopMigrationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Stored procedure's parent is a schema.
      class StoredProcedureEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The SQL code which creates the stored procedure
        # Corresponds to the JSON property `sqlCode`
        # @return [String]
        attr_accessor :sql_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @sql_code = args[:sql_code] if args.key?(:sql_code)
        end
      end
      
      # Synonym's parent is a schema.
      class SynonymEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The name of the entity for which the synonym is being created (the source)
        # Corresponds to the JSON property `sourceEntity`
        # @return [String]
        attr_accessor :source_entity
      
        # The type of the entity for which the synonym is being created (usually a table
        # or a sequence)
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @source_entity = args[:source_entity] if args.key?(:source_entity)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Table's parent is a schema.
      class TableEntity
        include Google::Apis::Core::Hashable
      
        # Table Columns.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DatamigrationV1::ColumnEntity>]
        attr_accessor :columns
      
        # Comment associated with the table
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Table Constraints.
        # Corresponds to the JSON property `constraints`
        # @return [Array<Google::Apis::DatamigrationV1::ConstraintEntity>]
        attr_accessor :constraints
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # Table Indices.
        # Corresponds to the JSON property `indices`
        # @return [Array<Google::Apis::DatamigrationV1::IndexEntity>]
        attr_accessor :indices
      
        # Table triggers.
        # Corresponds to the JSON property `triggers`
        # @return [Array<Google::Apis::DatamigrationV1::TriggerEntity>]
        attr_accessor :triggers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
          @comment = args[:comment] if args.key?(:comment)
          @constraints = args[:constraints] if args.key?(:constraints)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @indices = args[:indices] if args.key?(:indices)
          @triggers = args[:triggers] if args.key?(:triggers)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
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
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
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
      
      # Trigger is not used as an independent entity, it is retrieved as part of a
      # Table entity.
      class TriggerEntity
        include Google::Apis::Core::Hashable
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The name of the trigger
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The SQL code which creates the trigger
        # Corresponds to the JSON property `sqlCode`
        # @return [String]
        attr_accessor :sql_code
      
        # Indicates when the trigger fires, e.g. BEFORE STATEMENT, AFTER EACH ROW
        # Corresponds to the JSON property `triggerType`
        # @return [String]
        attr_accessor :trigger_type
      
        # The DML, DDL, or database events that fires the trigger, e.g. INSERT, UPDATE
        # Corresponds to the JSON property `triggeringEvents`
        # @return [Array<String>]
        attr_accessor :triggering_events
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @name = args[:name] if args.key?(:name)
          @sql_code = args[:sql_code] if args.key?(:sql_code)
          @trigger_type = args[:trigger_type] if args.key?(:trigger_type)
          @triggering_events = args[:triggering_events] if args.key?(:triggering_events)
        end
      end
      
      # The username/password for a database user. Used for specifying initial users
      # at cluster creation time.
      class UserPassword
        include Google::Apis::Core::Hashable
      
        # The initial password for the user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Output only. Indicates if the initial_user.password field has been set.
        # Corresponds to the JSON property `passwordSet`
        # @return [Boolean]
        attr_accessor :password_set
        alias_method :password_set?, :password_set
      
        # The database username.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @password_set = args[:password_set] if args.key?(:password_set)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Request message for 'VerifyMigrationJob' request.
      class VerifyMigrationJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # View's parent is a schema.
      class ViewEntity
        include Google::Apis::Core::Hashable
      
        # View Constraints.
        # Corresponds to the JSON property `constraints`
        # @return [Array<Google::Apis::DatamigrationV1::ConstraintEntity>]
        attr_accessor :constraints
      
        # Custom engine specific features
        # Corresponds to the JSON property `customFeatures`
        # @return [Hash<String,Object>]
        attr_accessor :custom_features
      
        # The SQL code which creates the view.
        # Corresponds to the JSON property `sqlCode`
        # @return [String]
        attr_accessor :sql_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constraints = args[:constraints] if args.key?(:constraints)
          @custom_features = args[:custom_features] if args.key?(:custom_features)
          @sql_code = args[:sql_code] if args.key?(:sql_code)
        end
      end
      
      # VM creation configuration message
      class VmCreationConfig
        include Google::Apis::Core::Hashable
      
        # The subnet name the vm needs to be created in.
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Required. VM instance machine type to create.
        # Corresponds to the JSON property `vmMachineType`
        # @return [String]
        attr_accessor :vm_machine_type
      
        # The Google Cloud Platform zone to create the VM in.
        # Corresponds to the JSON property `vmZone`
        # @return [String]
        attr_accessor :vm_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnet = args[:subnet] if args.key?(:subnet)
          @vm_machine_type = args[:vm_machine_type] if args.key?(:vm_machine_type)
          @vm_zone = args[:vm_zone] if args.key?(:vm_zone)
        end
      end
      
      # VM selection configuration message
      class VmSelectionConfig
        include Google::Apis::Core::Hashable
      
        # Required. The Google Cloud Platform zone the VM is located.
        # Corresponds to the JSON property `vmZone`
        # @return [String]
        attr_accessor :vm_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vm_zone = args[:vm_zone] if args.key?(:vm_zone)
        end
      end
      
      # The VPC Peering configuration is used to create VPC peering with the consumer'
      # s VPC.
      class VpcPeeringConfig
        include Google::Apis::Core::Hashable
      
        # Required. A free subnet for peering. (CIDR of /29)
        # Corresponds to the JSON property `subnet`
        # @return [String]
        attr_accessor :subnet
      
        # Required. Fully qualified name of the VPC DMS will peer to.
        # Corresponds to the JSON property `vpcName`
        # @return [String]
        attr_accessor :vpc_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subnet = args[:subnet] if args.key?(:subnet)
          @vpc_name = args[:vpc_name] if args.key?(:vpc_name)
        end
      end
      
      # The details of the VPC where the source database is located in Google Cloud.
      # We will use this information to set up the VPC peering connection between
      # Cloud SQL and this VPC.
      class VpcPeeringConnectivity
        include Google::Apis::Core::Hashable
      
        # The name of the VPC network to peer with the Cloud SQL private network.
        # Corresponds to the JSON property `vpc`
        # @return [String]
        attr_accessor :vpc
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @vpc = args[:vpc] if args.key?(:vpc)
        end
      end
    end
  end
end
