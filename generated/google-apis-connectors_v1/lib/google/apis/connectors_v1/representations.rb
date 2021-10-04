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
    module ConnectorsV1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthConfigTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigVariable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConfigVariableTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionSchemaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectionStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Connector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ConnectorVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EgressControlConfig
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
      
      class ExtractionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExtractionRules
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InputParameter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JwtClaims
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorVersionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListConnectorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRuntimeActionSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRuntimeEntitySchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LockConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2ClientCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Oauth2JwtBearer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Provider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResultMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RoleGrant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeActionSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeEntitySchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SupportedRuntimeFeatures
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
      
      class UserPassword
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ConnectorsV1::AuditLogConfig, decorator: Google::Apis::ConnectorsV1::AuditLogConfig::Representation
      
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
      
      class AuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_variables, as: 'additionalVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :auth_type, as: 'authType'
          property :oauth2_client_credentials, as: 'oauth2ClientCredentials', class: Google::Apis::ConnectorsV1::Oauth2ClientCredentials, decorator: Google::Apis::ConnectorsV1::Oauth2ClientCredentials::Representation
      
          property :oauth2_jwt_bearer, as: 'oauth2JwtBearer', class: Google::Apis::ConnectorsV1::Oauth2JwtBearer, decorator: Google::Apis::ConnectorsV1::Oauth2JwtBearer::Representation
      
          property :user_password, as: 'userPassword', class: Google::Apis::ConnectorsV1::UserPassword, decorator: Google::Apis::ConnectorsV1::UserPassword::Representation
      
        end
      end
      
      class AuthConfigTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_type, as: 'authType'
          collection :config_variable_templates, as: 'configVariableTemplates', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ConnectorsV1::Expr, decorator: Google::Apis::ConnectorsV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ConfigVariable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :int_value, :numeric_string => true, as: 'intValue'
          property :key, as: 'key'
          property :secret_value, as: 'secretValue', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class ConfigVariableTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :key, as: 'key'
          property :required, as: 'required'
          property :validation_regex, as: 'validationRegex'
          property :value_type, as: 'valueType'
        end
      end
      
      class Connection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auth_config, as: 'authConfig', class: Google::Apis::ConnectorsV1::AuthConfig, decorator: Google::Apis::ConnectorsV1::AuthConfig::Representation
      
          collection :config_variables, as: 'configVariables', class: Google::Apis::ConnectorsV1::ConfigVariable, decorator: Google::Apis::ConnectorsV1::ConfigVariable::Representation
      
          property :connector_version, as: 'connectorVersion'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          collection :egress_backends, as: 'egressBackends'
          property :envoy_image_location, as: 'envoyImageLocation'
          property :image_location, as: 'imageLocation'
          property :inactive, as: 'inactive'
          hash :labels, as: 'labels'
          property :lock_config, as: 'lockConfig', class: Google::Apis::ConnectorsV1::LockConfig, decorator: Google::Apis::ConnectorsV1::LockConfig::Representation
      
          property :name, as: 'name'
          property :service_account, as: 'serviceAccount'
          property :service_directory, as: 'serviceDirectory'
          property :status, as: 'status', class: Google::Apis::ConnectorsV1::ConnectionStatus, decorator: Google::Apis::ConnectorsV1::ConnectionStatus::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class ConnectionSchemaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions'
          collection :entities, as: 'entities'
        end
      end
      
      class ConnectionStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :state, as: 'state'
          property :status, as: 'status'
        end
      end
      
      class Connector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :documentation_uri, as: 'documentationUri'
          property :external_uri, as: 'externalUri'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :web_assets_location, as: 'webAssetsLocation'
        end
      end
      
      class ConnectorVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :auth_config_templates, as: 'authConfigTemplates', class: Google::Apis::ConnectorsV1::AuthConfigTemplate, decorator: Google::Apis::ConnectorsV1::AuthConfigTemplate::Representation
      
          collection :config_variable_templates, as: 'configVariableTemplates', class: Google::Apis::ConnectorsV1::ConfigVariableTemplate, decorator: Google::Apis::ConnectorsV1::ConfigVariableTemplate::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :egress_control_config, as: 'egressControlConfig', class: Google::Apis::ConnectorsV1::EgressControlConfig, decorator: Google::Apis::ConnectorsV1::EgressControlConfig::Representation
      
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :release_version, as: 'releaseVersion'
          property :role_grant, as: 'roleGrant', class: Google::Apis::ConnectorsV1::RoleGrant, decorator: Google::Apis::ConnectorsV1::RoleGrant::Representation
      
          property :supported_runtime_features, as: 'supportedRuntimeFeatures', class: Google::Apis::ConnectorsV1::SupportedRuntimeFeatures, decorator: Google::Apis::ConnectorsV1::SupportedRuntimeFeatures::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class EgressControlConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backends, as: 'backends'
          property :extraction_rules, as: 'extractionRules', class: Google::Apis::ConnectorsV1::ExtractionRules, decorator: Google::Apis::ConnectorsV1::ExtractionRules::Representation
      
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
      
      class ExtractionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :extraction_regex, as: 'extractionRegex'
          property :source, as: 'source', class: Google::Apis::ConnectorsV1::Source, decorator: Google::Apis::ConnectorsV1::Source::Representation
      
        end
      end
      
      class ExtractionRules
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extraction_rule, as: 'extractionRule', class: Google::Apis::ConnectorsV1::ExtractionRule, decorator: Google::Apis::ConnectorsV1::ExtractionRule::Representation
      
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :additional_details, as: 'additionalDetails'
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :field, as: 'field'
          property :key, as: 'key'
          property :nullable, as: 'nullable'
          property :readonly, as: 'readonly'
        end
      end
      
      class InputParameter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :default_value, as: 'defaultValue'
          property :description, as: 'description'
          property :nullable, as: 'nullable'
          property :parameter, as: 'parameter'
        end
      end
      
      class JwtClaims
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :issuer, as: 'issuer'
          property :subject, as: 'subject'
        end
      end
      
      class ListConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connections, as: 'connections', class: Google::Apis::ConnectorsV1::Connection, decorator: Google::Apis::ConnectorsV1::Connection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectorVersionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connector_versions, as: 'connectorVersions', class: Google::Apis::ConnectorsV1::ConnectorVersion, decorator: Google::Apis::ConnectorsV1::ConnectorVersion::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListConnectorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :connectors, as: 'connectors', class: Google::Apis::ConnectorsV1::Connector, decorator: Google::Apis::ConnectorsV1::Connector::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ConnectorsV1::Location, decorator: Google::Apis::ConnectorsV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ConnectorsV1::Operation, decorator: Google::Apis::ConnectorsV1::Operation::Representation
      
        end
      end
      
      class ListProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :providers, as: 'providers', class: Google::Apis::ConnectorsV1::Provider, decorator: Google::Apis::ConnectorsV1::Provider::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRuntimeActionSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runtime_action_schemas, as: 'runtimeActionSchemas', class: Google::Apis::ConnectorsV1::RuntimeActionSchema, decorator: Google::Apis::ConnectorsV1::RuntimeActionSchema::Representation
      
        end
      end
      
      class ListRuntimeEntitySchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :runtime_entity_schemas, as: 'runtimeEntitySchemas', class: Google::Apis::ConnectorsV1::RuntimeEntitySchema, decorator: Google::Apis::ConnectorsV1::RuntimeEntitySchema::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class LockConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :locked, as: 'locked'
          property :reason, as: 'reason'
        end
      end
      
      class Oauth2ClientCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
        end
      end
      
      class Oauth2JwtBearer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_key, as: 'clientKey', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :jwt_claims, as: 'jwtClaims', class: Google::Apis::ConnectorsV1::JwtClaims, decorator: Google::Apis::ConnectorsV1::JwtClaims::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ConnectorsV1::Status, decorator: Google::Apis::ConnectorsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ConnectorsV1::AuditConfig, decorator: Google::Apis::ConnectorsV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ConnectorsV1::Binding, decorator: Google::Apis::ConnectorsV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Provider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :documentation_uri, as: 'documentationUri'
          property :external_uri, as: 'externalUri'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :web_assets_location, as: 'webAssetsLocation'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path_template, as: 'pathTemplate'
          property :type, as: 'type'
        end
      end
      
      class ResultMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :description, as: 'description'
          property :field, as: 'field'
        end
      end
      
      class RoleGrant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :helper_text_template, as: 'helperTextTemplate'
          property :principal, as: 'principal'
          property :resource, as: 'resource', class: Google::Apis::ConnectorsV1::Resource, decorator: Google::Apis::ConnectorsV1::Resource::Representation
      
          collection :roles, as: 'roles'
        end
      end
      
      class RuntimeActionSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          collection :input_parameters, as: 'inputParameters', class: Google::Apis::ConnectorsV1::InputParameter, decorator: Google::Apis::ConnectorsV1::InputParameter::Representation
      
          collection :result_metadata, as: 'resultMetadata', class: Google::Apis::ConnectorsV1::ResultMetadata, decorator: Google::Apis::ConnectorsV1::ResultMetadata::Representation
      
        end
      end
      
      class RuntimeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connd_subscription, as: 'conndSubscription'
          property :connd_topic, as: 'conndTopic'
          property :control_plane_subscription, as: 'controlPlaneSubscription'
          property :control_plane_topic, as: 'controlPlaneTopic'
          property :location_id, as: 'locationId'
          property :runtime_endpoint, as: 'runtimeEndpoint'
          property :schema_gcs_bucket, as: 'schemaGcsBucket'
          property :service_directory, as: 'serviceDirectory'
          property :state, as: 'state'
        end
      end
      
      class RuntimeEntitySchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entity, as: 'entity'
          collection :fields, as: 'fields', class: Google::Apis::ConnectorsV1::Field, decorator: Google::Apis::ConnectorsV1::Field::Representation
      
        end
      end
      
      class Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_version, as: 'secretVersion'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ConnectorsV1::Policy, decorator: Google::Apis::ConnectorsV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_id, as: 'fieldId'
          property :source_type, as: 'sourceType'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class SupportedRuntimeFeatures
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action_apis, as: 'actionApis'
          property :entity_apis, as: 'entityApis'
          property :sql_query, as: 'sqlQuery'
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
      
      class UserPassword
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :password, as: 'password', class: Google::Apis::ConnectorsV1::Secret, decorator: Google::Apis::ConnectorsV1::Secret::Representation
      
          property :username, as: 'username'
        end
      end
    end
  end
end
