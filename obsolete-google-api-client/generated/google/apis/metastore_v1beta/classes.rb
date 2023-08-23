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
    module MetastoreV1beta
      
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
      
      # Associates members with a role.
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
      
        # Specifies the identities requesting access for a Cloud Platform resource.
        # members can have the following values: allUsers: A special identifier that
        # represents anyone who is on the internet; with or without a Google account.
        # allAuthenticatedUsers: A special identifier that represents anyone who is
        # authenticated with a Google account or a service account. user:`emailid`: An
        # email address that represents a specific Google account. For example, alice@
        # example.com . serviceAccount:`emailid`: An email address that represents a
        # service account. For example, my-other-app@appspot.gserviceaccount.com. group:`
        # emailid`: An email address that represents a Google group. For example, admins@
        # example.com. deleted:user:`emailid`?uid=`uniqueid`: An email address (plus
        # unique identifier) representing a user that has been recently deleted. For
        # example, alice@example.com?uid=123456789012345678901. If the user is recovered,
        # this value reverts to user:`emailid` and the recovered user retains the role
        # in the binding. deleted:serviceAccount:`emailid`?uid=`uniqueid`: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901. If the service account is undeleted, this value reverts
        # to serviceAccount:`emailid` and the undeleted service account retains the role
        # in the binding. deleted:group:`emailid`?uid=`uniqueid`: An email address (plus
        # unique identifier) representing a Google group that has been recently deleted.
        # For example, admins@example.com?uid=123456789012345678901. If the group is
        # recovered, this value reverts to group:`emailid` and the recovered group
        # retains the role in the binding. domain:`domain`: The G Suite domain (primary)
        # that represents all the users of that domain. For example, google.com or
        # example.com.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to members. For example, roles/viewer, roles/editor, or
        # roles/owner.
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
      
      # A specification of the location of and metadata about a database dump from a
      # relational database management system.
      class DatabaseDump
        include Google::Apis::Core::Hashable
      
        # The type of the database.
        # Corresponds to the JSON property `databaseType`
        # @return [String]
        attr_accessor :database_type
      
        # A Cloud Storage object URI that specifies the source from which to import
        # metadata. It must begin with gs://.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # The name of the source database.
        # Corresponds to the JSON property `sourceDatabase`
        # @return [String]
        attr_accessor :source_database
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_type = args[:database_type] if args.key?(:database_type)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @source_database = args[:source_database] if args.key?(:source_database)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # Empty is empty JSON object ``.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for DataprocMetastore.ExportMetadata.
      class ExportMetadataRequest
        include Google::Apis::Core::Hashable
      
        # Required. A Cloud Storage URI of a folder that metadata are exported to, in
        # the format gs:///. A sub-folder containing exported files will be created
        # below it.
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
      
      # Specifies configuration information specific to running Hive metastore
      # software as the metastore service.
      class HiveMetastoreConfig
        include Google::Apis::Core::Hashable
      
        # A mapping of Hive metastore configuration key-value pairs to apply to the Hive
        # metastore (configured in hive-site.xml). The mappings override system defaults
        # (some keys cannot be overridden).
        # Corresponds to the JSON property `configOverrides`
        # @return [Hash<String,String>]
        attr_accessor :config_overrides
      
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
          @config_overrides = args[:config_overrides] if args.key?(:config_overrides)
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
      
        # A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the
        # form gs://`bucket_name`/path/to/krb5.conf, although the file does not need to
        # be named krb5.conf explicitly.
        # Corresponds to the JSON property `krb5ConfigGcsUri`
        # @return [String]
        attr_accessor :krb5_config_gcs_uri
      
        # A Kerberos principal that exists in the both the keytab the KDC to
        # authenticate as. A typical principal is of the form "primary/instance@REALM",
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
          @supported_hive_metastore_versions = args[:supported_hive_metastore_versions] if args.key?(:supported_hive_metastore_versions)
        end
      end
      
      # Maintenance window. This specifies when Dataproc Metastore may perform system
      # maintenance operation to the service.
      class MaintenanceWindow
        include Google::Apis::Core::Hashable
      
        # The day of week, when the window starts.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # The hour of day (0-23) when the window starts.
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
      
      # The details of a metadata export operation.
      class MetadataExport
        include Google::Apis::Core::Hashable
      
        # Output only. A Cloud Storage URI of a folder that metadata are exported to, in
        # the form of gs:////, where ` is automatically generated.
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
          @destination_gcs_uri = args[:destination_gcs_uri] if args.key?(:destination_gcs_uri)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A metastore resource that imports metadata.
      class MetadataImport
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the metadata import was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A specification of the location of and metadata about a database dump from a
        # relational database management system.
        # Corresponds to the JSON property `databaseDump`
        # @return [Google::Apis::MetastoreV1beta::DatabaseDump]
        attr_accessor :database_dump
      
        # The description of the metadata import.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Immutable. The relative resource name of the metadata import, of the form:"
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # metadataImports/`metadata_import_id`".
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
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Specifies how metastore metadata should be integrated with external services.
      class MetadataIntegration
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata management activities of the metastore service.
      class MetadataManagementActivity
        include Google::Apis::Core::Hashable
      
        # Output only. The latest metadata exports of the metastore service.
        # Corresponds to the JSON property `metadataExports`
        # @return [Array<Google::Apis::MetastoreV1beta::MetadataExport>]
        attr_accessor :metadata_exports
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_exports = args[:metadata_exports] if args.key?(:metadata_exports)
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as Delete, the response is google.
        # protobuf.Empty. If the original method is standard Get/Create/Update, the
        # response should be the resource. For other methods, the response should have
        # the type XxxResponse, where Xxx is the original method name. For example, if
        # the original method name is TakeSnapshot(), the inferred response type is
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.A Policy is a collection of bindings. A
      # binding binds one or more members to a single role. Members can be user
      # accounts, service accounts, Google groups, and domains (such as G Suite). A
      # role is a named list of permissions; each role can be an IAM predefined role
      # or a user-created custom role.For some types of Google Cloud resources, a
      # binding can also specify a condition, which is a logical expression that
      # allows access to a resource only if the expression evaluates to true. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the IAM documentation (https://cloud.google.com/iam/help/conditions/
      # resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
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
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the IAM documentation (https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::MetastoreV1beta::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of members to a role. Optionally, may specify a condition
        # that determines how and when the bindings are applied. Each of the bindings
        # must contain at least one member.
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
      
      # A securely stored value.
      class Secret
        include Google::Apis::Core::Hashable
      
        # The relative resource name of a Secret Manager secret version, in the
        # following form:"projects/`project_number`/secrets/`secret_id`/versions/`
        # version_id`".
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
      
        # Immutable. The relative resource name of the metastore service, of the form:"
        # projects/`project_number`/locations/`location_id`/services/`service_id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The relative resource name of the VPC network on which the instance
        # can be accessed. The network must belong to the same project as the metastore
        # instance. It is specified in the following form:"projects/`project_number`/
        # global/networks/`network_id`".
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # The TCP port at which the metastore service is reached. Default: 9083.
        # Corresponds to the JSON property `port`
        # @return [Fixnum]
        attr_accessor :port
      
        # Output only. The current state of the metastore service.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of the metastore
        # service, if available.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # The tier of the service.
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
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @hive_metastore_config = args[:hive_metastore_config] if args.key?(:hive_metastore_config)
          @labels = args[:labels] if args.key?(:labels)
          @maintenance_window = args[:maintenance_window] if args.key?(:maintenance_window)
          @metadata_integration = args[:metadata_integration] if args.key?(:metadata_integration)
          @metadata_management_activity = args[:metadata_management_activity] if args.key?(:metadata_management_activity)
          @name = args[:name] if args.key?(:name)
          @network = args[:network] if args.key?(:network)
          @port = args[:port] if args.key?(:port)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
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
        # binding binds one or more members to a single role. Members can be user
        # accounts, service accounts, Google groups, and domains (such as G Suite). A
        # role is a named list of permissions; each role can be an IAM predefined role
        # or a user-created custom role.For some types of Google Cloud resources, a
        # binding can also specify a condition, which is a logical expression that
        # allows access to a resource only if the expression evaluates to true. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the IAM documentation (https://cloud.google.com/iam/help/conditions/
        # resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
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
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
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
      
      # Request message for TestIamPermissions method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the resource. Permissions with wildcards (
        # such as '*' or 'storage.*') are not allowed. For more information see IAM
        # Overview (https://cloud.google.com/iam/docs/overview#permissions).
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
