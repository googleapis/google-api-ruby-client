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
    module SqladminV1beta3
      
      # Database instance backup configuration.
      class BackupConfiguration
        include Google::Apis::Core::Hashable
      
        # Whether binary log is enabled. If backup configuration is disabled, binary log
        # must be disabled as well.
        # Corresponds to the JSON property `binaryLogEnabled`
        # @return [Boolean]
        attr_accessor :binary_log_enabled
        alias_method :binary_log_enabled?, :binary_log_enabled
      
        # Whether this configuration is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Identifier for this configuration. This gets generated automatically when a
        # backup configuration is created.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This is always sql#backupConfiguration.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Start time for the daily backup configuration in UTC timezone in the 24 hour
        # format - HH:MM.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @binary_log_enabled = args[:binary_log_enabled] if args.key?(:binary_log_enabled)
          @enabled = args[:enabled] if args.key?(:enabled)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A database instance backup run resource.
      class BackupRun
        include Google::Apis::Core::Hashable
      
        # Backup Configuration identifier.
        # Corresponds to the JSON property `backupConfiguration`
        # @return [String]
        attr_accessor :backup_configuration
      
        # The due time of this run in UTC timezone in RFC 3339 format, for example 2012-
        # 11-15T16:19:00.094Z.
        # Corresponds to the JSON property `dueTime`
        # @return [DateTime]
        attr_accessor :due_time
      
        # The time the backup operation completed in UTC timezone in RFC 3339 format,
        # for example 2012-11-15T16:19:00.094Z.
        # Corresponds to the JSON property `endTime`
        # @return [DateTime]
        attr_accessor :end_time
      
        # The time the run was enqueued in UTC timezone in RFC 3339 format, for example
        # 2012-11-15T16:19:00.094Z.
        # Corresponds to the JSON property `enqueuedTime`
        # @return [DateTime]
        attr_accessor :enqueued_time
      
        # Database instance operation error.
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::SqladminV1beta3::OperationError]
        attr_accessor :error
      
        # Name of the database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always sql#backupRun.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time the backup operation actually started in UTC timezone in RFC 3339
        # format, for example 2012-11-15T16:19:00.094Z.
        # Corresponds to the JSON property `startTime`
        # @return [DateTime]
        attr_accessor :start_time
      
        # The status of this run.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @due_time = args[:due_time] if args.key?(:due_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @enqueued_time = args[:enqueued_time] if args.key?(:enqueued_time)
          @error = args[:error] if args.key?(:error)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Backup run list results.
      class BackupRunsListResponse
        include Google::Apis::Core::Hashable
      
        # A list of backup runs in reverse chronological order of the enqueued time.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1beta3::BackupRun>]
        attr_accessor :items
      
        # This is always sql#backupRunsList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Binary log coordinates.
      class BinLogCoordinates
        include Google::Apis::Core::Hashable
      
        # Name of the binary log file for a Cloud SQL instance.
        # Corresponds to the JSON property `binLogFileName`
        # @return [String]
        attr_accessor :bin_log_file_name
      
        # Position (offset) within the binary log file.
        # Corresponds to the JSON property `binLogPosition`
        # @return [Fixnum]
        attr_accessor :bin_log_position
      
        # This is always sql#binLogCoordinates.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bin_log_file_name = args[:bin_log_file_name] if args.key?(:bin_log_file_name)
          @bin_log_position = args[:bin_log_position] if args.key?(:bin_log_position)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Database instance clone context.
      class CloneContext
        include Google::Apis::Core::Hashable
      
        # Binary log coordinates.
        # Corresponds to the JSON property `binLogCoordinates`
        # @return [Google::Apis::SqladminV1beta3::BinLogCoordinates]
        attr_accessor :bin_log_coordinates
      
        # Name of the Cloud SQL instance to be created as a clone.
        # Corresponds to the JSON property `destinationInstanceName`
        # @return [String]
        attr_accessor :destination_instance_name
      
        # This is always sql#cloneContext.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the Cloud SQL instance to be cloned.
        # Corresponds to the JSON property `sourceInstanceName`
        # @return [String]
        attr_accessor :source_instance_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bin_log_coordinates = args[:bin_log_coordinates] if args.key?(:bin_log_coordinates)
          @destination_instance_name = args[:destination_instance_name] if args.key?(:destination_instance_name)
          @kind = args[:kind] if args.key?(:kind)
          @source_instance_name = args[:source_instance_name] if args.key?(:source_instance_name)
        end
      end
      
      # MySQL flags for Cloud SQL instances.
      class DatabaseFlags
        include Google::Apis::Core::Hashable
      
        # The name of the flag. These flags are passed at instance startup, so include
        # both MySQL server options and MySQL system variables. Flags should be
        # specified with underscores, not hyphens. For more information, see Configuring
        # MySQL Flags in the Google Cloud SQL documentation, as well as the official
        # MySQL documentation for server options and system variables.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The value of the flag. Booleans should be set to on for true and off for false.
        # This field must be omitted if the flag doesn't take a value.
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
      
      # A Cloud SQL instance resource.
      class DatabaseInstance
        include Google::Apis::Core::Hashable
      
        # Connection name of the Cloud SQL instance used in connection strings.
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # The current disk usage of the instance in bytes.
        # Corresponds to the JSON property `currentDiskSize`
        # @return [Fixnum]
        attr_accessor :current_disk_size
      
        # The database engine type and version. Can be MYSQL_5_5 or MYSQL_5_6. Defaults
        # to MYSQL_5_5. The databaseVersion cannot be changed after instance creation.
        # Corresponds to the JSON property `databaseVersion`
        # @return [String]
        attr_accessor :database_version
      
        # HTTP 1.1 Entity tag for the resource.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Name of the Cloud SQL instance. This does not include the project ID.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # The instance type. This can be one of the following.
        # CLOUD_SQL_INSTANCE: Regular Cloud SQL instance.
        # READ_REPLICA_INSTANCE: Cloud SQL instance acting as a read-replica.
        # Corresponds to the JSON property `instanceType`
        # @return [String]
        attr_accessor :instance_type
      
        # The assigned IP addresses for the instance.
        # Corresponds to the JSON property `ipAddresses`
        # @return [Array<Google::Apis::SqladminV1beta3::IpMapping>]
        attr_accessor :ip_addresses
      
        # The IPv6 address assigned to the instance.
        # Corresponds to the JSON property `ipv6Address`
        # @return [String]
        attr_accessor :ipv6_address
      
        # This is always sql#instance.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the instance which will act as master in the replication setup.
        # Corresponds to the JSON property `masterInstanceName`
        # @return [String]
        attr_accessor :master_instance_name
      
        # The maximum disk size of the instance in bytes.
        # Corresponds to the JSON property `maxDiskSize`
        # @return [Fixnum]
        attr_accessor :max_disk_size
      
        # The project ID of the project containing the Cloud SQL instance. The Google
        # apps domain is prefixed if applicable.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The geographical region. Can be us-central, asia-east1 or europe-west1.
        # Defaults to us-central. The region can not be changed after instance creation.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # The replicas of the instance.
        # Corresponds to the JSON property `replicaNames`
        # @return [Array<String>]
        attr_accessor :replica_names
      
        # SslCerts Resource
        # Corresponds to the JSON property `serverCaCert`
        # @return [Google::Apis::SqladminV1beta3::SslCert]
        attr_accessor :server_ca_cert
      
        # The service account email address assigned to the instance.
        # Corresponds to the JSON property `serviceAccountEmailAddress`
        # @return [String]
        attr_accessor :service_account_email_address
      
        # Database instance settings.
        # Corresponds to the JSON property `settings`
        # @return [Google::Apis::SqladminV1beta3::Settings]
        attr_accessor :settings
      
        # The current serving state of the Cloud SQL instance. This can be one of the
        # following.
        # RUNNABLE: The instance is running, or is ready to run when accessed.
        # SUSPENDED: The instance is not available, for example due to problems with
        # billing.
        # PENDING_CREATE: The instance is being created.
        # MAINTENANCE: The instance is down for maintenance.
        # UNKNOWN_STATE: The state of the instance is unknown.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @current_disk_size = args[:current_disk_size] if args.key?(:current_disk_size)
          @database_version = args[:database_version] if args.key?(:database_version)
          @etag = args[:etag] if args.key?(:etag)
          @instance = args[:instance] if args.key?(:instance)
          @instance_type = args[:instance_type] if args.key?(:instance_type)
          @ip_addresses = args[:ip_addresses] if args.key?(:ip_addresses)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @kind = args[:kind] if args.key?(:kind)
          @master_instance_name = args[:master_instance_name] if args.key?(:master_instance_name)
          @max_disk_size = args[:max_disk_size] if args.key?(:max_disk_size)
          @project = args[:project] if args.key?(:project)
          @region = args[:region] if args.key?(:region)
          @replica_names = args[:replica_names] if args.key?(:replica_names)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
          @service_account_email_address = args[:service_account_email_address] if args.key?(:service_account_email_address)
          @settings = args[:settings] if args.key?(:settings)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Database instance export context.
      class ExportContext
        include Google::Apis::Core::Hashable
      
        # Databases (for example, guestbook) from which the export is made. If
        # unspecified, all databases are exported.
        # Corresponds to the JSON property `database`
        # @return [Array<String>]
        attr_accessor :database
      
        # This is always sql#exportContext.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Tables to export, or that were exported, from the specified database. If you
        # specify tables, specify one and only one database.
        # Corresponds to the JSON property `table`
        # @return [Array<String>]
        attr_accessor :table
      
        # The path to the file in Google Cloud Storage where the export will be stored,
        # or where it was already stored. The URI is in the form gs://bucketName/
        # fileName. If the file already exists, the operation fails. If the filename
        # ends with .gz, the contents are compressed.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @kind = args[:kind] if args.key?(:kind)
          @table = args[:table] if args.key?(:table)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A Google Cloud SQL service flag resource.
      class Flag
        include Google::Apis::Core::Hashable
      
        # For STRING flags, a list of strings that the value can be set to.
        # Corresponds to the JSON property `allowedStringValues`
        # @return [Array<String>]
        attr_accessor :allowed_string_values
      
        # The database version this flag applies to. Currently this can only be [
        # MYSQL_5_5].
        # Corresponds to the JSON property `appliesTo`
        # @return [Array<String>]
        attr_accessor :applies_to
      
        # This is always sql#flag.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # For INTEGER flags, the maximum allowed value.
        # Corresponds to the JSON property `maxValue`
        # @return [Fixnum]
        attr_accessor :max_value
      
        # For INTEGER flags, the minimum allowed value.
        # Corresponds to the JSON property `minValue`
        # @return [Fixnum]
        attr_accessor :min_value
      
        # This is the name of the flag. Flag names always use underscores, not hyphens,
        # e.g. max_allowed_packet
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The type of the flag. Flags are typed to being BOOLEAN, STRING, INTEGER or
        # NONE. NONE is used for flags which do not take a value, such as
        # skip_grant_tables.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_string_values = args[:allowed_string_values] if args.key?(:allowed_string_values)
          @applies_to = args[:applies_to] if args.key?(:applies_to)
          @kind = args[:kind] if args.key?(:kind)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Flags list response.
      class FlagsListResponse
        include Google::Apis::Core::Hashable
      
        # List of flags.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1beta3::Flag>]
        attr_accessor :items
      
        # This is always sql#flagsList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Database instance import context.
      class ImportContext
        include Google::Apis::Core::Hashable
      
        # The database (for example, guestbook) to which the import is made. If not set,
        # it is assumed that the database is specified in the file to be imported.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # This is always sql#importContext.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A path to the MySQL dump file in Google Cloud Storage from which the import is
        # made. The URI is in the form gs://bucketName/fileName. Compressed gzip files (.
        # gz) are also supported.
        # Corresponds to the JSON property `uri`
        # @return [Array<String>]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @kind = args[:kind] if args.key?(:kind)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An Operations resource contains information about database instance operations
      # such as create, delete, and restart. Operations resources are created in
      # response to operations that were initiated; you never create them directly.
      class InstanceOperation
        include Google::Apis::Core::Hashable
      
        # The time this operation finished in UTC timezone in RFC 3339 format, for
        # example 2012-11-15T16:19:00.094Z.
        # Corresponds to the JSON property `endTime`
        # @return [DateTime]
        attr_accessor :end_time
      
        # The time this operation was enqueued in UTC timezone in RFC 3339 format, for
        # example 2012-11-15T16:19:00.094Z.
        # Corresponds to the JSON property `enqueuedTime`
        # @return [DateTime]
        attr_accessor :enqueued_time
      
        # The error(s) encountered by this operation. Only set if the operation results
        # in an error.
        # Corresponds to the JSON property `error`
        # @return [Array<Google::Apis::SqladminV1beta3::OperationError>]
        attr_accessor :error
      
        # Database instance export context.
        # Corresponds to the JSON property `exportContext`
        # @return [Google::Apis::SqladminV1beta3::ExportContext]
        attr_accessor :export_context
      
        # Database instance import context.
        # Corresponds to the JSON property `importContext`
        # @return [Google::Apis::SqladminV1beta3::ImportContext]
        attr_accessor :import_context
      
        # Name of the database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always sql#instanceOperation.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # The type of the operation. Valid values are CREATE, DELETE, UPDATE, RESTART,
        # IMPORT, EXPORT, BACKUP_VOLUME, RESTORE_VOLUME.
        # Corresponds to the JSON property `operationType`
        # @return [String]
        attr_accessor :operation_type
      
        # The time this operation actually started in UTC timezone in RFC 3339 format,
        # for example 2012-11-15T16:19:00.094Z.
        # Corresponds to the JSON property `startTime`
        # @return [DateTime]
        attr_accessor :start_time
      
        # The state of an operation. Valid values are PENDING, RUNNING, DONE, UNKNOWN.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The email address of the user who initiated this operation.
        # Corresponds to the JSON property `userEmailAddress`
        # @return [String]
        attr_accessor :user_email_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @enqueued_time = args[:enqueued_time] if args.key?(:enqueued_time)
          @error = args[:error] if args.key?(:error)
          @export_context = args[:export_context] if args.key?(:export_context)
          @import_context = args[:import_context] if args.key?(:import_context)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
          @operation_type = args[:operation_type] if args.key?(:operation_type)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @user_email_address = args[:user_email_address] if args.key?(:user_email_address)
        end
      end
      
      # Database instance set root password request.
      class InstanceSetRootPasswordRequest
        include Google::Apis::Core::Hashable
      
        # Database instance set root password context.
        # Corresponds to the JSON property `setRootPasswordContext`
        # @return [Google::Apis::SqladminV1beta3::SetRootPasswordContext]
        attr_accessor :set_root_password_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @set_root_password_context = args[:set_root_password_context] if args.key?(:set_root_password_context)
        end
      end
      
      # Database instance clone request.
      class InstancesCloneRequest
        include Google::Apis::Core::Hashable
      
        # Database instance clone context.
        # Corresponds to the JSON property `cloneContext`
        # @return [Google::Apis::SqladminV1beta3::CloneContext]
        attr_accessor :clone_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clone_context = args[:clone_context] if args.key?(:clone_context)
        end
      end
      
      # Database instance clone response.
      class InstancesCloneResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesClone.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An unique identifier for the operation associated with the cloned instance.
        # You can use this identifier to retrieve the Operations resource, which has
        # information about the operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance delete response.
      class InstancesDeleteResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesDelete.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance export request.
      class InstancesExportRequest
        include Google::Apis::Core::Hashable
      
        # Database instance export context.
        # Corresponds to the JSON property `exportContext`
        # @return [Google::Apis::SqladminV1beta3::ExportContext]
        attr_accessor :export_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_context = args[:export_context] if args.key?(:export_context)
        end
      end
      
      # Database instance export response.
      class InstancesExportResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesExport.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance import request.
      class InstancesImportRequest
        include Google::Apis::Core::Hashable
      
        # Database instance import context.
        # Corresponds to the JSON property `importContext`
        # @return [Google::Apis::SqladminV1beta3::ImportContext]
        attr_accessor :import_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @import_context = args[:import_context] if args.key?(:import_context)
        end
      end
      
      # Database instance import response.
      class InstancesImportResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesImport.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance insert response.
      class InstancesInsertResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesInsert.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instances list response.
      class InstancesListResponse
        include Google::Apis::Core::Hashable
      
        # List of database instance resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1beta3::DatabaseInstance>]
        attr_accessor :items
      
        # This is always sql#instancesList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Database promote read replica response.
      class InstancesPromoteReplicaResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesPromoteReplica.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance resetSslConfig response.
      class InstancesResetSslConfigResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesResetSslConfig.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation. All ssl client certificates will be deleted and a new server
        # certificate will be created. Does not take effect until the next instance
        # restart.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance restart response.
      class InstancesRestartResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesRestart.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance restore backup response.
      class InstancesRestoreBackupResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesRestoreBackup.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance set root password response.
      class InstancesSetRootPasswordResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesSetRootPassword.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # Database instance update response.
      class InstancesUpdateResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#instancesUpdate.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve information about the operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # IP Management configuration.
      class IpConfiguration
        include Google::Apis::Core::Hashable
      
        # The list of external networks that are allowed to connect to the instance
        # using the IP. In CIDR notation, also known as 'slash' notation (e.g. 192.168.
        # 100.0/24).
        # Corresponds to the JSON property `authorizedNetworks`
        # @return [Array<String>]
        attr_accessor :authorized_networks
      
        # Whether the instance should be assigned an IP address or not.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # This is always sql#ipConfiguration.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
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
          @enabled = args[:enabled] if args.key?(:enabled)
          @kind = args[:kind] if args.key?(:kind)
          @require_ssl = args[:require_ssl] if args.key?(:require_ssl)
        end
      end
      
      # Database instance IP Mapping.
      class IpMapping
        include Google::Apis::Core::Hashable
      
        # The IP address assigned.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # The due time for this IP to be retired in RFC 3339 format, for example 2012-11-
        # 15T16:19:00.094Z. This field is only available when the IP is scheduled to be
        # retired.
        # Corresponds to the JSON property `timeToRetire`
        # @return [DateTime]
        attr_accessor :time_to_retire
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @time_to_retire = args[:time_to_retire] if args.key?(:time_to_retire)
        end
      end
      
      # Preferred location. This specifies where a Cloud SQL instance should
      # preferably be located, either in a specific Compute Engine zone, or co-located
      # with an App Engine application. Note that if the preferred location is not
      # available, the instance will be located as close as possible within the region.
      # Only one location may be specified.
      class LocationPreference
        include Google::Apis::Core::Hashable
      
        # The App Engine application to follow, it must be in the same region as the
        # Cloud SQL instance.
        # Corresponds to the JSON property `followGaeApplication`
        # @return [String]
        attr_accessor :follow_gae_application
      
        # This is always sql#locationPreference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The preferred Compute Engine zone (e.g. us-centra1-a, us-central1-b, etc.).
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @follow_gae_application = args[:follow_gae_application] if args.key?(:follow_gae_application)
          @kind = args[:kind] if args.key?(:kind)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Database instance operation error.
      class OperationError
        include Google::Apis::Core::Hashable
      
        # Identifies the specific error that occurred.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # This is always sql#operationError.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Database instance list operations response.
      class OperationsListResponse
        include Google::Apis::Core::Hashable
      
        # List of operation resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1beta3::InstanceOperation>]
        attr_accessor :items
      
        # This is always sql#operationsList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The continuation token, used to page through large result sets. Provide this
        # value in a subsequent request to return the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Database instance set root password context.
      class SetRootPasswordContext
        include Google::Apis::Core::Hashable
      
        # This is always sql#setRootUserContext.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The password for the root user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @password = args[:password] if args.key?(:password)
        end
      end
      
      # Database instance settings.
      class Settings
        include Google::Apis::Core::Hashable
      
        # The activation policy for this instance. This specifies when the instance
        # should be activated and is applicable only when the instance state is RUNNABLE.
        # This can be one of the following.
        # ALWAYS: The instance should always be active.
        # NEVER: The instance should never be activated.
        # ON_DEMAND: The instance is activated upon receiving requests.
        # Corresponds to the JSON property `activationPolicy`
        # @return [String]
        attr_accessor :activation_policy
      
        # The App Engine app IDs that can access this instance.
        # Corresponds to the JSON property `authorizedGaeApplications`
        # @return [Array<String>]
        attr_accessor :authorized_gae_applications
      
        # The daily backup configuration for the instance.
        # Corresponds to the JSON property `backupConfiguration`
        # @return [Array<Google::Apis::SqladminV1beta3::BackupConfiguration>]
        attr_accessor :backup_configuration
      
        # The database flags passed to the instance at startup.
        # Corresponds to the JSON property `databaseFlags`
        # @return [Array<Google::Apis::SqladminV1beta3::DatabaseFlags>]
        attr_accessor :database_flags
      
        # Configuration specific to read replica instance. Indicates whether replication
        # is enabled or not.
        # Corresponds to the JSON property `databaseReplicationEnabled`
        # @return [Boolean]
        attr_accessor :database_replication_enabled
        alias_method :database_replication_enabled?, :database_replication_enabled
      
        # IP Management configuration.
        # Corresponds to the JSON property `ipConfiguration`
        # @return [Google::Apis::SqladminV1beta3::IpConfiguration]
        attr_accessor :ip_configuration
      
        # This is always sql#settings.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Preferred location. This specifies where a Cloud SQL instance should
        # preferably be located, either in a specific Compute Engine zone, or co-located
        # with an App Engine application. Note that if the preferred location is not
        # available, the instance will be located as close as possible within the region.
        # Only one location may be specified.
        # Corresponds to the JSON property `locationPreference`
        # @return [Google::Apis::SqladminV1beta3::LocationPreference]
        attr_accessor :location_preference
      
        # The pricing plan for this instance. This can be either PER_USE or PACKAGE.
        # Corresponds to the JSON property `pricingPlan`
        # @return [String]
        attr_accessor :pricing_plan
      
        # The type of replication this instance uses. This can be either ASYNCHRONOUS or
        # SYNCHRONOUS.
        # Corresponds to the JSON property `replicationType`
        # @return [String]
        attr_accessor :replication_type
      
        # The version of instance settings. This is a required field for update method
        # to make sure concurrent updates are handled properly. During update, use the
        # most recent settingsVersion value for this instance and do not try to update
        # this value.
        # Corresponds to the JSON property `settingsVersion`
        # @return [Fixnum]
        attr_accessor :settings_version
      
        # The tier of service for this instance, for example D1, D2. For more
        # information, see pricing.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activation_policy = args[:activation_policy] if args.key?(:activation_policy)
          @authorized_gae_applications = args[:authorized_gae_applications] if args.key?(:authorized_gae_applications)
          @backup_configuration = args[:backup_configuration] if args.key?(:backup_configuration)
          @database_flags = args[:database_flags] if args.key?(:database_flags)
          @database_replication_enabled = args[:database_replication_enabled] if args.key?(:database_replication_enabled)
          @ip_configuration = args[:ip_configuration] if args.key?(:ip_configuration)
          @kind = args[:kind] if args.key?(:kind)
          @location_preference = args[:location_preference] if args.key?(:location_preference)
          @pricing_plan = args[:pricing_plan] if args.key?(:pricing_plan)
          @replication_type = args[:replication_type] if args.key?(:replication_type)
          @settings_version = args[:settings_version] if args.key?(:settings_version)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # SslCerts Resource
      class SslCert
        include Google::Apis::Core::Hashable
      
        # PEM representation.
        # Corresponds to the JSON property `cert`
        # @return [String]
        attr_accessor :cert
      
        # Serial number, as extracted from the certificate.
        # Corresponds to the JSON property `certSerialNumber`
        # @return [String]
        attr_accessor :cert_serial_number
      
        # User supplied name. Constrained to [a-zA-Z.-_ ]+.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        # Time when the certificate was created.
        # Corresponds to the JSON property `createTime`
        # @return [DateTime]
        attr_accessor :create_time
      
        # Time when the certificate expires.
        # Corresponds to the JSON property `expirationTime`
        # @return [DateTime]
        attr_accessor :expiration_time
      
        # Name of the database instance.
        # Corresponds to the JSON property `instance`
        # @return [String]
        attr_accessor :instance
      
        # This is always sql#sslCert.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Sha1 Fingerprint.
        # Corresponds to the JSON property `sha1Fingerprint`
        # @return [String]
        attr_accessor :sha1_fingerprint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert = args[:cert] if args.key?(:cert)
          @cert_serial_number = args[:cert_serial_number] if args.key?(:cert_serial_number)
          @common_name = args[:common_name] if args.key?(:common_name)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @instance = args[:instance] if args.key?(:instance)
          @kind = args[:kind] if args.key?(:kind)
          @sha1_fingerprint = args[:sha1_fingerprint] if args.key?(:sha1_fingerprint)
        end
      end
      
      # SslCertDetail.
      class SslCertDetail
        include Google::Apis::Core::Hashable
      
        # SslCerts Resource
        # Corresponds to the JSON property `certInfo`
        # @return [Google::Apis::SqladminV1beta3::SslCert]
        attr_accessor :cert_info
      
        # The private key for the client cert, in pem format. Keep private in order to
        # protect your security.
        # Corresponds to the JSON property `certPrivateKey`
        # @return [String]
        attr_accessor :cert_private_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_info = args[:cert_info] if args.key?(:cert_info)
          @cert_private_key = args[:cert_private_key] if args.key?(:cert_private_key)
        end
      end
      
      # SslCert delete response.
      class SslCertsDeleteResponse
        include Google::Apis::Core::Hashable
      
        # This is always sql#sslCertsDelete.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An identifier that uniquely identifies the operation. You can use this
        # identifier to retrieve the Operations resource that has information about the
        # operation.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # SslCerts insert request.
      class SslCertsInsertRequest
        include Google::Apis::Core::Hashable
      
        # User supplied name. Must be a distinct name from the other certificates for
        # this instance. New certificates will not be usable until the instance is
        # restarted.
        # Corresponds to the JSON property `commonName`
        # @return [String]
        attr_accessor :common_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @common_name = args[:common_name] if args.key?(:common_name)
        end
      end
      
      # SslCert insert response.
      class SslCertsInsertResponse
        include Google::Apis::Core::Hashable
      
        # SslCertDetail.
        # Corresponds to the JSON property `clientCert`
        # @return [Google::Apis::SqladminV1beta3::SslCertDetail]
        attr_accessor :client_cert
      
        # This is always sql#sslCertsInsert.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # SslCerts Resource
        # Corresponds to the JSON property `serverCaCert`
        # @return [Google::Apis::SqladminV1beta3::SslCert]
        attr_accessor :server_ca_cert
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_cert = args[:client_cert] if args.key?(:client_cert)
          @kind = args[:kind] if args.key?(:kind)
          @server_ca_cert = args[:server_ca_cert] if args.key?(:server_ca_cert)
        end
      end
      
      # SslCerts list response.
      class SslCertsListResponse
        include Google::Apis::Core::Hashable
      
        # List of client certificates for the instance.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1beta3::SslCert>]
        attr_accessor :items
      
        # This is always sql#sslCertsList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A Google Cloud SQL service tier resource.
      class Tier
        include Google::Apis::Core::Hashable
      
        # The maximum disk size of this tier in bytes.
        # Corresponds to the JSON property `DiskQuota`
        # @return [Fixnum]
        attr_accessor :disk_quota
      
        # The maximum RAM usage of this tier in bytes.
        # Corresponds to the JSON property `RAM`
        # @return [Fixnum]
        attr_accessor :ram
      
        # This is always sql#tier.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The applicable regions for this tier.
        # Corresponds to the JSON property `region`
        # @return [Array<String>]
        attr_accessor :region
      
        # An identifier for the service tier, for example D1, D2 etc. For related
        # information, see Pricing.
        # Corresponds to the JSON property `tier`
        # @return [String]
        attr_accessor :tier
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_quota = args[:disk_quota] if args.key?(:disk_quota)
          @ram = args[:ram] if args.key?(:ram)
          @kind = args[:kind] if args.key?(:kind)
          @region = args[:region] if args.key?(:region)
          @tier = args[:tier] if args.key?(:tier)
        end
      end
      
      # Tiers list response.
      class TiersListResponse
        include Google::Apis::Core::Hashable
      
        # List of tiers.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SqladminV1beta3::Tier>]
        attr_accessor :items
      
        # This is always sql#tiersList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
    end
  end
end
