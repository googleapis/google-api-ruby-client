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
    module BigqueryconnectionV1
      
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
        # @return [Array<Google::Apis::BigqueryconnectionV1::AuditLogConfig>]
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
      
      # Authentication method for Amazon Web Services (AWS) that uses Google owned
      # Google service account to assume into customer's AWS IAM Role.
      class AwsAccessRole
        include Google::Apis::Core::Hashable
      
        # The user’s AWS IAM Role that trusts the Google-owned AWS IAM user Connection.
        # Corresponds to the JSON property `iamRoleId`
        # @return [String]
        attr_accessor :iam_role_id
      
        # A unique Google-owned and Google-generated identity for the Connection. This
        # identity will be used to access the user's AWS IAM Role.
        # Corresponds to the JSON property `identity`
        # @return [String]
        attr_accessor :identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iam_role_id = args[:iam_role_id] if args.key?(:iam_role_id)
          @identity = args[:identity] if args.key?(:identity)
        end
      end
      
      # Connection properties specific to Amazon Web Services (AWS).
      class AwsProperties
        include Google::Apis::Core::Hashable
      
        # Authentication method for Amazon Web Services (AWS) that uses Google owned
        # Google service account to assume into customer's AWS IAM Role.
        # Corresponds to the JSON property `accessRole`
        # @return [Google::Apis::BigqueryconnectionV1::AwsAccessRole]
        attr_accessor :access_role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_role = args[:access_role] if args.key?(:access_role)
        end
      end
      
      # Container for connection properties specific to Azure.
      class AzureProperties
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the Azure Active Directory Application.
        # Corresponds to the JSON property `application`
        # @return [String]
        attr_accessor :application
      
        # Output only. The client id of the Azure Active Directory Application.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The id of customer's directory that host the data.
        # Corresponds to the JSON property `customerTenantId`
        # @return [String]
        attr_accessor :customer_tenant_id
      
        # The client ID of the user's Azure Active Directory Application used for a
        # federated connection.
        # Corresponds to the JSON property `federatedApplicationClientId`
        # @return [String]
        attr_accessor :federated_application_client_id
      
        # Output only. A unique Google-owned and Google-generated identity for the
        # Connection. This identity will be used to access the user's Azure Active
        # Directory Application.
        # Corresponds to the JSON property `identity`
        # @return [String]
        attr_accessor :identity
      
        # Output only. The object id of the Azure Active Directory Application.
        # Corresponds to the JSON property `objectId`
        # @return [String]
        attr_accessor :object_id_prop
      
        # The URL user will be redirected to after granting consent during connection
        # setup.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @client_id = args[:client_id] if args.key?(:client_id)
          @customer_tenant_id = args[:customer_tenant_id] if args.key?(:customer_tenant_id)
          @federated_application_client_id = args[:federated_application_client_id] if args.key?(:federated_application_client_id)
          @identity = args[:identity] if args.key?(:identity)
          @object_id_prop = args[:object_id_prop] if args.key?(:object_id_prop)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
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
        # @return [Google::Apis::BigqueryconnectionV1::Expr]
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
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
      
      # Container for connection properties for delegation of access to GCP resources.
      class CloudResourceProperties
        include Google::Apis::Core::Hashable
      
        # Output only. The account ID of the service created for the purpose of this
        # connection. The service account does not have any permissions associated with
        # it when it is created. After creation, customers delegate permissions to the
        # service account. When the connection is used in the context of an operation in
        # BigQuery, the service account will be used to connect to the desired resources
        # in GCP. The account ID is in the form of: @gcp-sa-bigquery-cloudresource.iam.
        # gserviceaccount.com
        # Corresponds to the JSON property `serviceAccountId`
        # @return [String]
        attr_accessor :service_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service_account_id = args[:service_account_id] if args.key?(:service_account_id)
        end
      end
      
      # Connection properties specific to Cloud Spanner.
      class CloudSpannerProperties
        include Google::Apis::Core::Hashable
      
        # Cloud Spanner database in the form `project/instance/database'
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Optional. Cloud Spanner database role for fine-grained access control. The
        # Cloud Spanner admin should have provisioned the database role with appropriate
        # permissions, such as `SELECT` and `INSERT`. Other users should only use roles
        # provided by their Cloud Spanner admins. For more details, see [About fine-
        # grained access control] (https://cloud.google.com/spanner/docs/fgac-about).
        # REQUIRES: The database role name must start with a letter, and can only
        # contain letters, numbers, and underscores.
        # Corresponds to the JSON property `databaseRole`
        # @return [String]
        attr_accessor :database_role
      
        # Allows setting max parallelism per query when executing on Spanner independent
        # compute resources. If unspecified, default values of parallelism are chosen
        # that are dependent on the Cloud Spanner instance configuration. REQUIRES: `
        # use_parallelism` must be set. REQUIRES: `use_data_boost` must be set.
        # Corresponds to the JSON property `maxParallelism`
        # @return [Fixnum]
        attr_accessor :max_parallelism
      
        # If set, the request will be executed via Spanner independent compute resources.
        # REQUIRES: `use_parallelism` must be set.
        # Corresponds to the JSON property `useDataBoost`
        # @return [Boolean]
        attr_accessor :use_data_boost
        alias_method :use_data_boost?, :use_data_boost
      
        # If parallelism should be used when reading from Cloud Spanner
        # Corresponds to the JSON property `useParallelism`
        # @return [Boolean]
        attr_accessor :use_parallelism
        alias_method :use_parallelism?, :use_parallelism
      
        # Deprecated: prefer use_data_boost instead. If the serverless analytics service
        # should be used to read data from Cloud Spanner. Note: `use_parallelism` must
        # be set when using serverless analytics.
        # Corresponds to the JSON property `useServerlessAnalytics`
        # @return [Boolean]
        attr_accessor :use_serverless_analytics
        alias_method :use_serverless_analytics?, :use_serverless_analytics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @database_role = args[:database_role] if args.key?(:database_role)
          @max_parallelism = args[:max_parallelism] if args.key?(:max_parallelism)
          @use_data_boost = args[:use_data_boost] if args.key?(:use_data_boost)
          @use_parallelism = args[:use_parallelism] if args.key?(:use_parallelism)
          @use_serverless_analytics = args[:use_serverless_analytics] if args.key?(:use_serverless_analytics)
        end
      end
      
      # Credential info for the Cloud SQL.
      class CloudSqlCredential
        include Google::Apis::Core::Hashable
      
        # The password for the credential.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The username for the credential.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # Connection properties specific to the Cloud SQL.
      class CloudSqlProperties
        include Google::Apis::Core::Hashable
      
        # Credential info for the Cloud SQL.
        # Corresponds to the JSON property `credential`
        # @return [Google::Apis::BigqueryconnectionV1::CloudSqlCredential]
        attr_accessor :credential
      
        # Database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Cloud SQL instance ID in the form `project:location:instance`.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Output only. The account ID of the service used for the purpose of this
        # connection. When the connection is used in the context of an operation in
        # BigQuery, this service account will serve as the identity being used for
        # connecting to the CloudSQL instance specified in this connection.
        # Corresponds to the JSON property `serviceAccountId`
        # @return [String]
        attr_accessor :service_account_id
      
        # Type of the Cloud SQL database.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @credential = args[:credential] if args.key?(:credential)
          @database = args[:database] if args.key?(:database)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @service_account_id = args[:service_account_id] if args.key?(:service_account_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration parameters to establish connection with an external data source,
      # except the credential attributes.
      class Connection
        include Google::Apis::Core::Hashable
      
        # Connection properties specific to Amazon Web Services (AWS).
        # Corresponds to the JSON property `aws`
        # @return [Google::Apis::BigqueryconnectionV1::AwsProperties]
        attr_accessor :aws
      
        # Container for connection properties specific to Azure.
        # Corresponds to the JSON property `azure`
        # @return [Google::Apis::BigqueryconnectionV1::AzureProperties]
        attr_accessor :azure
      
        # Container for connection properties for delegation of access to GCP resources.
        # Corresponds to the JSON property `cloudResource`
        # @return [Google::Apis::BigqueryconnectionV1::CloudResourceProperties]
        attr_accessor :cloud_resource
      
        # Connection properties specific to Cloud Spanner.
        # Corresponds to the JSON property `cloudSpanner`
        # @return [Google::Apis::BigqueryconnectionV1::CloudSpannerProperties]
        attr_accessor :cloud_spanner
      
        # Connection properties specific to the Cloud SQL.
        # Corresponds to the JSON property `cloudSql`
        # @return [Google::Apis::BigqueryconnectionV1::CloudSqlProperties]
        attr_accessor :cloud_sql
      
        # Represents concrete parameter values for Connector Configuration.
        # Corresponds to the JSON property `configuration`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfiguration]
        attr_accessor :configuration
      
        # Output only. The creation timestamp of the connection.
        # Corresponds to the JSON property `creationTime`
        # @return [Fixnum]
        attr_accessor :creation_time
      
        # User provided description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User provided display name for the connection.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # Output only. True, if credential is configured for this connection.
        # Corresponds to the JSON property `hasCredential`
        # @return [Boolean]
        attr_accessor :has_credential
        alias_method :has_credential?, :has_credential
      
        # Optional. The Cloud KMS key that is used for encryption. Example: `projects/[
        # kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]`
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Output only. The last update timestamp of the connection.
        # Corresponds to the JSON property `lastModifiedTime`
        # @return [Fixnum]
        attr_accessor :last_modified_time
      
        # Output only. The resource name of the connection in the form of: `projects/`
        # project_id`/locations/`location_id`/connections/`connection_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Connection properties specific to Salesforce DataCloud. This is intended for
        # use only by Salesforce partner projects.
        # Corresponds to the JSON property `salesforceDataCloud`
        # @return [Google::Apis::BigqueryconnectionV1::SalesforceDataCloudProperties]
        attr_accessor :salesforce_data_cloud
      
        # Container for connection properties to execute stored procedures for Apache
        # Spark.
        # Corresponds to the JSON property `spark`
        # @return [Google::Apis::BigqueryconnectionV1::SparkProperties]
        attr_accessor :spark
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws = args[:aws] if args.key?(:aws)
          @azure = args[:azure] if args.key?(:azure)
          @cloud_resource = args[:cloud_resource] if args.key?(:cloud_resource)
          @cloud_spanner = args[:cloud_spanner] if args.key?(:cloud_spanner)
          @cloud_sql = args[:cloud_sql] if args.key?(:cloud_sql)
          @configuration = args[:configuration] if args.key?(:configuration)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
          @has_credential = args[:has_credential] if args.key?(:has_credential)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @last_modified_time = args[:last_modified_time] if args.key?(:last_modified_time)
          @name = args[:name] if args.key?(:name)
          @salesforce_data_cloud = args[:salesforce_data_cloud] if args.key?(:salesforce_data_cloud)
          @spark = args[:spark] if args.key?(:spark)
        end
      end
      
      # Represents concrete parameter values for Connector Configuration.
      class ConnectorConfiguration
        include Google::Apis::Core::Hashable
      
        # Data Asset - a resource within instance of the system, reachable under
        # specified endpoint. For example a database name in a SQL DB.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationAsset]
        attr_accessor :asset
      
        # Client authentication.
        # Corresponds to the JSON property `authentication`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationAuthentication]
        attr_accessor :authentication
      
        # Required. Immutable. The ID of the Connector these parameters are configured
        # for.
        # Corresponds to the JSON property `connectorId`
        # @return [String]
        attr_accessor :connector_id
      
        # Remote endpoint specification.
        # Corresponds to the JSON property `endpoint`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationEndpoint]
        attr_accessor :endpoint
      
        # Network related configuration.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationNetwork]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @authentication = args[:authentication] if args.key?(:authentication)
          @connector_id = args[:connector_id] if args.key?(:connector_id)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Data Asset - a resource within instance of the system, reachable under
      # specified endpoint. For example a database name in a SQL DB.
      class ConnectorConfigurationAsset
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the database.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Full Google Cloud resource name - https://cloud.google.com/apis/design/
        # resource_names#full_resource_name. Example: `//library.googleapis.com/shelves/
        # shelf1/books/book2`
        # Corresponds to the JSON property `googleCloudResource`
        # @return [String]
        attr_accessor :google_cloud_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @google_cloud_resource = args[:google_cloud_resource] if args.key?(:google_cloud_resource)
        end
      end
      
      # Client authentication.
      class ConnectorConfigurationAuthentication
        include Google::Apis::Core::Hashable
      
        # Username and Password authentication.
        # Corresponds to the JSON property `usernamePassword`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationUsernamePassword]
        attr_accessor :username_password
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @username_password = args[:username_password] if args.key?(:username_password)
        end
      end
      
      # Remote endpoint specification.
      class ConnectorConfigurationEndpoint
        include Google::Apis::Core::Hashable
      
        # Host and port in a format of `hostname:port` as defined in https://www.ietf.
        # org/rfc/rfc3986.html#section-3.2.2 and https://www.ietf.org/rfc/rfc3986.html#
        # section-3.2.3.
        # Corresponds to the JSON property `hostPort`
        # @return [String]
        attr_accessor :host_port
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_port = args[:host_port] if args.key?(:host_port)
        end
      end
      
      # Network related configuration.
      class ConnectorConfigurationNetwork
        include Google::Apis::Core::Hashable
      
        # Private Service Connect configuration.
        # Corresponds to the JSON property `privateServiceConnect`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationPrivateServiceConnect]
        attr_accessor :private_service_connect
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @private_service_connect = args[:private_service_connect] if args.key?(:private_service_connect)
        end
      end
      
      # Private Service Connect configuration.
      class ConnectorConfigurationPrivateServiceConnect
        include Google::Apis::Core::Hashable
      
        # Required. Network Attachment name in the format of `projects/`project`/regions/
        # `region`/networkAttachments/`networkattachment``.
        # Corresponds to the JSON property `networkAttachment`
        # @return [String]
        attr_accessor :network_attachment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_attachment = args[:network_attachment] if args.key?(:network_attachment)
        end
      end
      
      # Secret value parameter.
      class ConnectorConfigurationSecret
        include Google::Apis::Core::Hashable
      
        # Input only. Secret as plaintext.
        # Corresponds to the JSON property `plaintext`
        # @return [String]
        attr_accessor :plaintext
      
        # Output only. Indicates type of secret. Can be used to check type of stored
        # secret value even if it's `INPUT_ONLY`.
        # Corresponds to the JSON property `secretType`
        # @return [String]
        attr_accessor :secret_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @plaintext = args[:plaintext] if args.key?(:plaintext)
          @secret_type = args[:secret_type] if args.key?(:secret_type)
        end
      end
      
      # Username and Password authentication.
      class ConnectorConfigurationUsernamePassword
        include Google::Apis::Core::Hashable
      
        # Secret value parameter.
        # Corresponds to the JSON property `password`
        # @return [Google::Apis::BigqueryconnectionV1::ConnectorConfigurationSecret]
        attr_accessor :password
      
        # Required. Username.
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @password = args[:password] if args.key?(:password)
          @username = args[:username] if args.key?(:username)
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::BigqueryconnectionV1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # The response for ConnectionService.ListConnections.
      class ListConnectionsResponse
        include Google::Apis::Core::Hashable
      
        # List of connections.
        # Corresponds to the JSON property `connections`
        # @return [Array<Google::Apis::BigqueryconnectionV1::Connection>]
        attr_accessor :connections
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Configuration of the Dataproc Metastore Service.
      class MetastoreServiceConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of an existing Dataproc Metastore service. Example: * `
        # projects/[project_id]/locations/[region]/services/[service_id]`
        # Corresponds to the JSON property `metastoreService`
        # @return [String]
        attr_accessor :metastore_service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metastore_service = args[:metastore_service] if args.key?(:metastore_service)
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::BigqueryconnectionV1::AuditConfig>]
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
        # @return [Array<Google::Apis::BigqueryconnectionV1::Binding>]
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
      
      # Connection properties specific to Salesforce DataCloud. This is intended for
      # use only by Salesforce partner projects.
      class SalesforceDataCloudProperties
        include Google::Apis::Core::Hashable
      
        # Output only. A unique Google-owned and Google-generated service account
        # identity for the connection.
        # Corresponds to the JSON property `identity`
        # @return [String]
        attr_accessor :identity
      
        # The URL to the user's Salesforce DataCloud instance.
        # Corresponds to the JSON property `instanceUri`
        # @return [String]
        attr_accessor :instance_uri
      
        # The ID of the user's Salesforce tenant.
        # Corresponds to the JSON property `tenantId`
        # @return [String]
        attr_accessor :tenant_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @identity = args[:identity] if args.key?(:identity)
          @instance_uri = args[:instance_uri] if args.key?(:instance_uri)
          @tenant_id = args[:tenant_id] if args.key?(:tenant_id)
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::BigqueryconnectionV1::Policy]
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
      
      # Configuration of the Spark History Server.
      class SparkHistoryServerConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Resource name of an existing Dataproc Cluster to act as a Spark
        # History Server for the connection. Example: * `projects/[project_id]/regions/[
        # region]/clusters/[cluster_name]`
        # Corresponds to the JSON property `dataprocCluster`
        # @return [String]
        attr_accessor :dataproc_cluster
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataproc_cluster = args[:dataproc_cluster] if args.key?(:dataproc_cluster)
        end
      end
      
      # Container for connection properties to execute stored procedures for Apache
      # Spark.
      class SparkProperties
        include Google::Apis::Core::Hashable
      
        # Configuration of the Dataproc Metastore Service.
        # Corresponds to the JSON property `metastoreServiceConfig`
        # @return [Google::Apis::BigqueryconnectionV1::MetastoreServiceConfig]
        attr_accessor :metastore_service_config
      
        # Output only. The account ID of the service created for the purpose of this
        # connection. The service account does not have any permissions associated with
        # it when it is created. After creation, customers delegate permissions to the
        # service account. When the connection is used in the context of a stored
        # procedure for Apache Spark in BigQuery, the service account is used to connect
        # to the desired resources in Google Cloud. The account ID is in the form of:
        # bqcx--@gcp-sa-bigquery-consp.iam.gserviceaccount.com
        # Corresponds to the JSON property `serviceAccountId`
        # @return [String]
        attr_accessor :service_account_id
      
        # Configuration of the Spark History Server.
        # Corresponds to the JSON property `sparkHistoryServerConfig`
        # @return [Google::Apis::BigqueryconnectionV1::SparkHistoryServerConfig]
        attr_accessor :spark_history_server_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metastore_service_config = args[:metastore_service_config] if args.key?(:metastore_service_config)
          @service_account_id = args[:service_account_id] if args.key?(:service_account_id)
          @spark_history_server_config = args[:spark_history_server_config] if args.key?(:spark_history_server_config)
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
    end
  end
end
