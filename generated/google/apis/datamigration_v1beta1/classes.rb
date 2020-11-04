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
    module DatamigrationV1beta1
      
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
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::DatamigrationV1beta1::AuditLogConfig>]
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
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bindingId`
        # @return [String]
        attr_accessor :binding_id
      
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
        # @return [Google::Apis::DatamigrationV1beta1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binding_id = args[:binding_id] if args.key?(:binding_id)
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
        # @return [Google::Apis::DatamigrationV1beta1::CloudSqlSettings]
        attr_accessor :settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # The database engine type and version (such as `MYSQL_5_7` / `POSTGRES_9_6`).
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # IP Management configuration.
        # Corresponds to the JSON property `ipConfig`
        # @return [Google::Apis::DatamigrationV1beta1::SqlIpConfig]
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
      
        # The Google Cloud Platform zone where your Cloud SQL datdabse instance is
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
          @data_disk_size_gb = args[:data_disk_size_gb] if args.key?(:data_disk_size_gb)
          @data_disk_type = args[:data_disk_type] if args.key?(:data_disk_type)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @database_version = args[:database_version] if args.key?(:database_version)
          @ip_config = args[:ip_config] if args.key?(:ip_config)
          @root_password = args[:root_password] if args.key?(:root_password)
          @root_password_set = args[:root_password_set] if args.key?(:root_password_set)
          @source_id = args[:source_id] if args.key?(:source_id)
          @storage_auto_resize_limit = args[:storage_auto_resize_limit] if args.key?(:storage_auto_resize_limit)
          @tier = args[:tier] if args.key?(:tier)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # A connection profile definition.
      class ConnectionProfile
        include Google::Apis::Core::Hashable
      
        # Specifies required connection parameters, and, optionally, the parameters
        # required to create a Cloud SQL destination database instance.
        # Corresponds to the JSON property `cloudsql`
        # @return [Google::Apis::DatamigrationV1beta1::CloudSqlConnectionProfile]
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
        # @return [Google::Apis::DatamigrationV1beta1::Status]
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
        # @return [Google::Apis::DatamigrationV1beta1::MySqlConnectionProfile]
        attr_accessor :mysql
      
        # The name of this connection profile resource in the form of projects/`project`/
        # locations/`location`/instances/`instance`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @cloudsql = args[:cloudsql] if args.key?(:cloudsql)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error = args[:error] if args.key?(:error)
          @labels = args[:labels] if args.key?(:labels)
          @mysql = args[:mysql] if args.key?(:mysql)
          @name = args[:name] if args.key?(:name)
          @provider = args[:provider] if args.key?(:provider)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request message for 'GenerateSshScript' request.
      class GenerateSshScriptRequest
        include Google::Apis::Core::Hashable
      
        # Required. Bastion VM Instance name to use or to create.
        # Corresponds to the JSON property `vm`
        # @return [String]
        attr_accessor :vm
      
        # VM creation configuration message
        # Corresponds to the JSON property `vmCreationConfig`
        # @return [Google::Apis::DatamigrationV1beta1::VmCreationConfig]
        attr_accessor :vm_creation_config
      
        # The port that will be open on the bastion host
        # Corresponds to the JSON property `vmPort`
        # @return [Fixnum]
        attr_accessor :vm_port
      
        # VM selection configuration message
        # Corresponds to the JSON property `vmSelectionConfig`
        # @return [Google::Apis::DatamigrationV1beta1::VmSelectionConfig]
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
      class GoogleCloudClouddmsV1beta1OperationMetadata
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
      
      # Response message for 'ListConnectionProfiles' request.
      class ListConnectionProfilesResponse
        include Google::Apis::Core::Hashable
      
        # The response list of connection profiles.
        # Corresponds to the JSON property `connectionProfiles`
        # @return [Array<Google::Apis::DatamigrationV1beta1::ConnectionProfile>]
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DatamigrationV1beta1::Location>]
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
        # @return [Array<Google::Apis::DatamigrationV1beta1::MigrationJob>]
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
        # @return [Array<Google::Apis::DatamigrationV1beta1::Operation>]
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
      
      # Represents a Database Migration Service migration job object.
      class MigrationJob
        include Google::Apis::Core::Hashable
      
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
        # @return [Google::Apis::DatamigrationV1beta1::DatabaseType]
        attr_accessor :destination_database
      
        # The migration job display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The path to the dump file in Google Cloud Storage, in the format: (gs://[
        # BUCKET_NAME]/[OBJECT_NAME]).
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
        # @return [Google::Apis::DatamigrationV1beta1::Status]
        attr_accessor :error
      
        # The resource labels for migration job to use to annotate any related
        # underlying resources such as Compute Engine VMs. An object containing a list
        # of "key": "value" pairs. Example: `` "name": "wrench", "mass": "1.3kg", "count"
        # : "3" ``.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The name (URI) of this migration job resource, in the form of: projects/`
        # project`/locations/`location`/instances/`instance`.
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
        # reference/rest/v1beta1/projects.locations.migrationJobs/generateSshScript) to
        # produce the script that will help set up the reverse SSH tunnel, and to set up
        # the VPC peering between the Cloud SQL private network and the VPC.
        # Corresponds to the JSON property `reverseSshConnectivity`
        # @return [Google::Apis::DatamigrationV1beta1::ReverseSshConnectivity]
        attr_accessor :reverse_ssh_connectivity
      
        # Required. The resource name (URI) of the source connection profile.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # A message defining the database engine and provider.
        # Corresponds to the JSON property `sourceDatabase`
        # @return [Google::Apis::DatamigrationV1beta1::DatabaseType]
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
        # @return [Google::Apis::DatamigrationV1beta1::StaticIpConnectivity]
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
        # @return [Google::Apis::DatamigrationV1beta1::VpcPeeringConnectivity]
        attr_accessor :vpc_peering_connectivity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination = args[:destination] if args.key?(:destination)
          @destination_database = args[:destination_database] if args.key?(:destination_database)
          @display_name = args[:display_name] if args.key?(:display_name)
          @dump_path = args[:dump_path] if args.key?(:dump_path)
          @duration = args[:duration] if args.key?(:duration)
          @end_time = args[:end_time] if args.key?(:end_time)
          @error = args[:error] if args.key?(:error)
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
        # @return [Google::Apis::DatamigrationV1beta1::SslConfig]
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
        # @return [Google::Apis::DatamigrationV1beta1::Status]
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::DatamigrationV1beta1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DatamigrationV1beta1::Binding>]
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
      # reference/rest/v1beta1/projects.locations.migrationJobs/generateSshScript) to
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
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DatamigrationV1beta1::Policy]
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
        # @return [Array<Google::Apis::DatamigrationV1beta1::SqlAclEntry>]
        attr_accessor :authorized_networks
      
        # Whether the instance should be assigned an IPv4 address or not.
        # Corresponds to the JSON property `enableIpv4`
        # @return [Boolean]
        attr_accessor :enable_ipv4
        alias_method :enable_ipv4?, :enable_ipv4
      
        # The resource link for the VPC network from which the Cloud SQL instance is
        # accessible for private IP. For example, `/projects/myProject/global/networks/
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
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
