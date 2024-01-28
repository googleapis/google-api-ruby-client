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
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsAccessRole
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AwsProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AzureProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudResourceProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSpannerProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlCredential
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudSqlProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorConfigurationAuthentication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorConfigurationEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorConfigurationSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorConfigurationUsernamePassword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetastoreServiceConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SalesforceDataCloudProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkHistoryServerConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BigqueryconnectionV1::AuditLogConfig, decorator: Google::Apis::BigqueryconnectionV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class AwsAccessRole
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :iam_role_id, as: 'iamRoleId'
          property :identity, as: 'identity'
        end
      end
      
      class AwsProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_role, as: 'accessRole', class: Google::Apis::BigqueryconnectionV1::AwsAccessRole, decorator: Google::Apis::BigqueryconnectionV1::AwsAccessRole::Representation
      
        end
      end
      
      class AzureProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application'
          property :client_id, as: 'clientId'
          property :customer_tenant_id, as: 'customerTenantId'
          property :federated_application_client_id, as: 'federatedApplicationClientId'
          property :identity, as: 'identity'
          property :object_id_prop, as: 'objectId'
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BigqueryconnectionV1::Expr, decorator: Google::Apis::BigqueryconnectionV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CloudResourceProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :service_account_id, as: 'serviceAccountId'
        end
      end
      
      class CloudSpannerProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :database_role, as: 'databaseRole'
          property :max_parallelism, as: 'maxParallelism'
          property :use_data_boost, as: 'useDataBoost'
          property :use_parallelism, as: 'useParallelism'
          property :use_serverless_analytics, as: 'useServerlessAnalytics'
        end
      end
      
      class CloudSqlCredential
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password'
          property :username, as: 'username'
        end
      end
      
      class CloudSqlProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential, as: 'credential', class: Google::Apis::BigqueryconnectionV1::CloudSqlCredential, decorator: Google::Apis::BigqueryconnectionV1::CloudSqlCredential::Representation
      
          property :database, as: 'database'
          property :instance_id, as: 'instanceId'
          property :service_account_id, as: 'serviceAccountId'
          property :type, as: 'type'
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aws, as: 'aws', class: Google::Apis::BigqueryconnectionV1::AwsProperties, decorator: Google::Apis::BigqueryconnectionV1::AwsProperties::Representation
      
          property :azure, as: 'azure', class: Google::Apis::BigqueryconnectionV1::AzureProperties, decorator: Google::Apis::BigqueryconnectionV1::AzureProperties::Representation
      
          property :cloud_resource, as: 'cloudResource', class: Google::Apis::BigqueryconnectionV1::CloudResourceProperties, decorator: Google::Apis::BigqueryconnectionV1::CloudResourceProperties::Representation
      
          property :cloud_spanner, as: 'cloudSpanner', class: Google::Apis::BigqueryconnectionV1::CloudSpannerProperties, decorator: Google::Apis::BigqueryconnectionV1::CloudSpannerProperties::Representation
      
          property :cloud_sql, as: 'cloudSql', class: Google::Apis::BigqueryconnectionV1::CloudSqlProperties, decorator: Google::Apis::BigqueryconnectionV1::CloudSqlProperties::Representation
      
          property :configuration, as: 'configuration', class: Google::Apis::BigqueryconnectionV1::ConnectorConfiguration, decorator: Google::Apis::BigqueryconnectionV1::ConnectorConfiguration::Representation
      
          property :creation_time, :numeric_string => true, as: 'creationTime'
          property :description, as: 'description'
          property :friendly_name, as: 'friendlyName'
          property :has_credential, as: 'hasCredential'
          property :kms_key_name, as: 'kmsKeyName'
          property :last_modified_time, :numeric_string => true, as: 'lastModifiedTime'
          property :name, as: 'name'
          property :salesforce_data_cloud, as: 'salesforceDataCloud', class: Google::Apis::BigqueryconnectionV1::SalesforceDataCloudProperties, decorator: Google::Apis::BigqueryconnectionV1::SalesforceDataCloudProperties::Representation
      
          property :spark, as: 'spark', class: Google::Apis::BigqueryconnectionV1::SparkProperties, decorator: Google::Apis::BigqueryconnectionV1::SparkProperties::Representation
      
        end
      end
      
      class ConnectorConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication', class: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationAuthentication, decorator: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationAuthentication::Representation
      
          property :connector_id, as: 'connectorId'
          property :endpoint, as: 'endpoint', class: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationEndpoint, decorator: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationEndpoint::Representation
      
        end
      end
      
      class ConnectorConfigurationAuthentication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :username_password, as: 'usernamePassword', class: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationUsernamePassword, decorator: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationUsernamePassword::Representation
      
        end
      end
      
      class ConnectorConfigurationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host_port, as: 'hostPort'
        end
      end
      
      class ConnectorConfigurationSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :plaintext, as: 'plaintext'
          property :secret_type, as: 'secretType'
        end
      end
      
      class ConnectorConfigurationUsernamePassword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password', class: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationSecret, decorator: Google::Apis::BigqueryconnectionV1::ConnectorConfigurationSecret::Representation
      
          property :username, as: 'username'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::BigqueryconnectionV1::GetPolicyOptions, decorator: Google::Apis::BigqueryconnectionV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::BigqueryconnectionV1::Connection, decorator: Google::Apis::BigqueryconnectionV1::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class MetastoreServiceConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metastore_service, as: 'metastoreService'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BigqueryconnectionV1::AuditConfig, decorator: Google::Apis::BigqueryconnectionV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BigqueryconnectionV1::Binding, decorator: Google::Apis::BigqueryconnectionV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class SalesforceDataCloudProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :identity, as: 'identity'
          property :instance_uri, as: 'instanceUri'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BigqueryconnectionV1::Policy, decorator: Google::Apis::BigqueryconnectionV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SparkHistoryServerConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataproc_cluster, as: 'dataprocCluster'
        end
      end
      
      class SparkProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metastore_service_config, as: 'metastoreServiceConfig', class: Google::Apis::BigqueryconnectionV1::MetastoreServiceConfig, decorator: Google::Apis::BigqueryconnectionV1::MetastoreServiceConfig::Representation
      
          property :service_account_id, as: 'serviceAccountId'
          property :spark_history_server_config, as: 'sparkHistoryServerConfig', class: Google::Apis::BigqueryconnectionV1::SparkHistoryServerConfig, decorator: Google::Apis::BigqueryconnectionV1::SparkHistoryServerConfig::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
    end
  end
end
