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
    module CloudbillingV1
      
      class ApiKeySecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentCapabilities
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentCard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentCardSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentExtension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentSkill
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthenticationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuthorizationCodeOAuthFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BillingAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelTaskRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientCredentialsOAuthFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataPart
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
      
      class FilePart
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GeoTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpAuthSecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImplicitOAuthFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListBillingAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProjectBillingInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSkusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTaskPushNotificationConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveBillingAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MutualTlsSecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuth2SecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OAuthFlows
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenIdConnectSecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Part
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PasswordOAuthFlow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PricingExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PricingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectBillingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Security
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendMessageConfiguration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SendMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sku
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StreamResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskArtifactUpdateEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskPushNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskStatusUpdateEvent
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
      
      class TierRate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiKeySecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :location, as: 'location'
          property :name, as: 'name'
        end
      end
      
      class AgentCapabilities
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :extensions, as: 'extensions', class: Google::Apis::CloudbillingV1::AgentExtension, decorator: Google::Apis::CloudbillingV1::AgentExtension::Representation
      
          property :push_notifications, as: 'pushNotifications'
          property :streaming, as: 'streaming'
        end
      end
      
      class AgentCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_interfaces, as: 'additionalInterfaces', class: Google::Apis::CloudbillingV1::AgentInterface, decorator: Google::Apis::CloudbillingV1::AgentInterface::Representation
      
          property :capabilities, as: 'capabilities', class: Google::Apis::CloudbillingV1::AgentCapabilities, decorator: Google::Apis::CloudbillingV1::AgentCapabilities::Representation
      
          collection :default_input_modes, as: 'defaultInputModes'
          collection :default_output_modes, as: 'defaultOutputModes'
          property :description, as: 'description'
          property :documentation_url, as: 'documentationUrl'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
          property :preferred_transport, as: 'preferredTransport'
          property :protocol_version, as: 'protocolVersion'
          property :provider, as: 'provider', class: Google::Apis::CloudbillingV1::AgentProvider, decorator: Google::Apis::CloudbillingV1::AgentProvider::Representation
      
          collection :security, as: 'security', class: Google::Apis::CloudbillingV1::Security, decorator: Google::Apis::CloudbillingV1::Security::Representation
      
          hash :security_schemes, as: 'securitySchemes', class: Google::Apis::CloudbillingV1::SecurityScheme, decorator: Google::Apis::CloudbillingV1::SecurityScheme::Representation
      
          collection :signatures, as: 'signatures', class: Google::Apis::CloudbillingV1::AgentCardSignature, decorator: Google::Apis::CloudbillingV1::AgentCardSignature::Representation
      
          collection :skills, as: 'skills', class: Google::Apis::CloudbillingV1::AgentSkill, decorator: Google::Apis::CloudbillingV1::AgentSkill::Representation
      
          property :supports_authenticated_extended_card, as: 'supportsAuthenticatedExtendedCard'
          property :url, as: 'url'
          property :version, as: 'version'
        end
      end
      
      class AgentCardSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :header, as: 'header'
          property :protected, as: 'protected'
          property :signature, as: 'signature'
        end
      end
      
      class AgentExtension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          hash :params, as: 'params'
          property :required, as: 'required'
          property :uri, as: 'uri'
        end
      end
      
      class AgentInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tenant, as: 'tenant'
          property :transport, as: 'transport'
          property :url, as: 'url'
        end
      end
      
      class AgentProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :organization, as: 'organization'
          property :url, as: 'url'
        end
      end
      
      class AgentSkill
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          collection :examples, as: 'examples'
          property :id, as: 'id'
          collection :input_modes, as: 'inputModes'
          property :name, as: 'name'
          collection :output_modes, as: 'outputModes'
          collection :security, as: 'security', class: Google::Apis::CloudbillingV1::Security, decorator: Google::Apis::CloudbillingV1::Security::Representation
      
          collection :tags, as: 'tags'
        end
      end
      
      class AggregationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_count, as: 'aggregationCount'
          property :aggregation_interval, as: 'aggregationInterval'
          property :aggregation_level, as: 'aggregationLevel'
        end
      end
      
      class Artifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :description, as: 'description'
          collection :extensions, as: 'extensions'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          collection :parts, as: 'parts', class: Google::Apis::CloudbillingV1::Part, decorator: Google::Apis::CloudbillingV1::Part::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::CloudbillingV1::AuditLogConfig, decorator: Google::Apis::CloudbillingV1::AuditLogConfig::Representation
      
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
      
      class AuthenticationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credentials, as: 'credentials'
          collection :schemes, as: 'schemes'
        end
      end
      
      class AuthorizationCodeOAuthFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_url, as: 'authorizationUrl'
          property :refresh_url, as: 'refreshUrl'
          hash :scopes, as: 'scopes'
          property :token_url, as: 'tokenUrl'
        end
      end
      
      class BillingAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :display_name, as: 'displayName'
          property :master_billing_account, as: 'masterBillingAccount'
          property :name, as: 'name'
          property :open, as: 'open'
          property :parent, as: 'parent'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::CloudbillingV1::Expr, decorator: Google::Apis::CloudbillingV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tenant, as: 'tenant'
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource_family, as: 'resourceFamily'
          property :resource_group, as: 'resourceGroup'
          property :service_display_name, as: 'serviceDisplayName'
          property :usage_type, as: 'usageType'
        end
      end
      
      class ClientCredentialsOAuthFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :refresh_url, as: 'refreshUrl'
          hash :scopes, as: 'scopes'
          property :token_url, as: 'tokenUrl'
        end
      end
      
      class DataPart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :data, as: 'data'
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
      
      class FilePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_with_bytes, :base64 => true, as: 'fileWithBytes'
          property :file_with_uri, as: 'fileWithUri'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
        end
      end
      
      class GeoTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :regions, as: 'regions'
          property :type, as: 'type'
        end
      end
      
      class HttpAuthSecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bearer_format, as: 'bearerFormat'
          property :description, as: 'description'
          property :scheme, as: 'scheme'
        end
      end
      
      class ImplicitOAuthFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_url, as: 'authorizationUrl'
          property :refresh_url, as: 'refreshUrl'
          hash :scopes, as: 'scopes'
        end
      end
      
      class ListBillingAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :billing_accounts, as: 'billingAccounts', class: Google::Apis::CloudbillingV1::BillingAccount, decorator: Google::Apis::CloudbillingV1::BillingAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProjectBillingInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :project_billing_info, as: 'projectBillingInfo', class: Google::Apis::CloudbillingV1::ProjectBillingInfo, decorator: Google::Apis::CloudbillingV1::ProjectBillingInfo::Representation
      
        end
      end
      
      class ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::CloudbillingV1::Service, decorator: Google::Apis::CloudbillingV1::Service::Representation
      
        end
      end
      
      class ListSkusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :skus, as: 'skus', class: Google::Apis::CloudbillingV1::Sku, decorator: Google::Apis::CloudbillingV1::Sku::Representation
      
        end
      end
      
      class ListTaskPushNotificationConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::CloudbillingV1::TaskPushNotificationConfig, decorator: Google::Apis::CloudbillingV1::TaskPushNotificationConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content, as: 'content', class: Google::Apis::CloudbillingV1::Part, decorator: Google::Apis::CloudbillingV1::Part::Representation
      
          property :context_id, as: 'contextId'
          collection :extensions, as: 'extensions'
          property :message_id, as: 'messageId'
          hash :metadata, as: 'metadata'
          property :role, as: 'role'
          property :task_id, as: 'taskId'
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class MoveBillingAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_parent, as: 'destinationParent'
        end
      end
      
      class MutualTlsSecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class OAuth2SecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :flows, as: 'flows', class: Google::Apis::CloudbillingV1::OAuthFlows, decorator: Google::Apis::CloudbillingV1::OAuthFlows::Representation
      
          property :oauth2_metadata_url, as: 'oauth2MetadataUrl'
        end
      end
      
      class OAuthFlows
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_code, as: 'authorizationCode', class: Google::Apis::CloudbillingV1::AuthorizationCodeOAuthFlow, decorator: Google::Apis::CloudbillingV1::AuthorizationCodeOAuthFlow::Representation
      
          property :client_credentials, as: 'clientCredentials', class: Google::Apis::CloudbillingV1::ClientCredentialsOAuthFlow, decorator: Google::Apis::CloudbillingV1::ClientCredentialsOAuthFlow::Representation
      
          property :implicit, as: 'implicit', class: Google::Apis::CloudbillingV1::ImplicitOAuthFlow, decorator: Google::Apis::CloudbillingV1::ImplicitOAuthFlow::Representation
      
          property :password, as: 'password', class: Google::Apis::CloudbillingV1::PasswordOAuthFlow, decorator: Google::Apis::CloudbillingV1::PasswordOAuthFlow::Representation
      
        end
      end
      
      class OpenIdConnectSecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :open_id_connect_url, as: 'openIdConnectUrl'
        end
      end
      
      class Part
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::CloudbillingV1::DataPart, decorator: Google::Apis::CloudbillingV1::DataPart::Representation
      
          property :file, as: 'file', class: Google::Apis::CloudbillingV1::FilePart, decorator: Google::Apis::CloudbillingV1::FilePart::Representation
      
          hash :metadata, as: 'metadata'
          property :text, as: 'text'
        end
      end
      
      class PasswordOAuthFlow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :refresh_url, as: 'refreshUrl'
          hash :scopes, as: 'scopes'
          property :token_url, as: 'tokenUrl'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::CloudbillingV1::AuditConfig, decorator: Google::Apis::CloudbillingV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::CloudbillingV1::Binding, decorator: Google::Apis::CloudbillingV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PricingExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_unit, as: 'baseUnit'
          property :base_unit_conversion_factor, as: 'baseUnitConversionFactor'
          property :base_unit_description, as: 'baseUnitDescription'
          property :display_quantity, as: 'displayQuantity'
          collection :tiered_rates, as: 'tieredRates', class: Google::Apis::CloudbillingV1::TierRate, decorator: Google::Apis::CloudbillingV1::TierRate::Representation
      
          property :usage_unit, as: 'usageUnit'
          property :usage_unit_description, as: 'usageUnitDescription'
        end
      end
      
      class PricingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_info, as: 'aggregationInfo', class: Google::Apis::CloudbillingV1::AggregationInfo, decorator: Google::Apis::CloudbillingV1::AggregationInfo::Representation
      
          property :currency_conversion_rate, as: 'currencyConversionRate'
          property :effective_time, as: 'effectiveTime'
          property :pricing_expression, as: 'pricingExpression', class: Google::Apis::CloudbillingV1::PricingExpression, decorator: Google::Apis::CloudbillingV1::PricingExpression::Representation
      
          property :summary, as: 'summary'
        end
      end
      
      class ProjectBillingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_account_name, as: 'billingAccountName'
          property :billing_enabled, as: 'billingEnabled'
          property :name, as: 'name'
          property :project_id, as: 'projectId'
        end
      end
      
      class PushNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication', class: Google::Apis::CloudbillingV1::AuthenticationInfo, decorator: Google::Apis::CloudbillingV1::AuthenticationInfo::Representation
      
          property :id, as: 'id'
          property :token, as: 'token'
          property :url, as: 'url'
        end
      end
      
      class Security
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :schemes, as: 'schemes', class: Google::Apis::CloudbillingV1::StringList, decorator: Google::Apis::CloudbillingV1::StringList::Representation
      
        end
      end
      
      class SecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_security_scheme, as: 'apiKeySecurityScheme', class: Google::Apis::CloudbillingV1::ApiKeySecurityScheme, decorator: Google::Apis::CloudbillingV1::ApiKeySecurityScheme::Representation
      
          property :http_auth_security_scheme, as: 'httpAuthSecurityScheme', class: Google::Apis::CloudbillingV1::HttpAuthSecurityScheme, decorator: Google::Apis::CloudbillingV1::HttpAuthSecurityScheme::Representation
      
          property :mtls_security_scheme, as: 'mtlsSecurityScheme', class: Google::Apis::CloudbillingV1::MutualTlsSecurityScheme, decorator: Google::Apis::CloudbillingV1::MutualTlsSecurityScheme::Representation
      
          property :oauth2_security_scheme, as: 'oauth2SecurityScheme', class: Google::Apis::CloudbillingV1::OAuth2SecurityScheme, decorator: Google::Apis::CloudbillingV1::OAuth2SecurityScheme::Representation
      
          property :open_id_connect_security_scheme, as: 'openIdConnectSecurityScheme', class: Google::Apis::CloudbillingV1::OpenIdConnectSecurityScheme, decorator: Google::Apis::CloudbillingV1::OpenIdConnectSecurityScheme::Representation
      
        end
      end
      
      class SendMessageConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accepted_output_modes, as: 'acceptedOutputModes'
          property :blocking, as: 'blocking'
          property :history_length, as: 'historyLength'
          property :push_notification, as: 'pushNotification', class: Google::Apis::CloudbillingV1::PushNotificationConfig, decorator: Google::Apis::CloudbillingV1::PushNotificationConfig::Representation
      
        end
      end
      
      class SendMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration, as: 'configuration', class: Google::Apis::CloudbillingV1::SendMessageConfiguration, decorator: Google::Apis::CloudbillingV1::SendMessageConfiguration::Representation
      
          property :message, as: 'message', class: Google::Apis::CloudbillingV1::Message, decorator: Google::Apis::CloudbillingV1::Message::Representation
      
          hash :metadata, as: 'metadata'
          property :tenant, as: 'tenant'
        end
      end
      
      class SendMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::CloudbillingV1::Message, decorator: Google::Apis::CloudbillingV1::Message::Representation
      
          property :task, as: 'task', class: Google::Apis::CloudbillingV1::Task, decorator: Google::Apis::CloudbillingV1::Task::Representation
      
        end
      end
      
      class Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :business_entity_name, as: 'businessEntityName'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :service_id, as: 'serviceId'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::CloudbillingV1::Policy, decorator: Google::Apis::CloudbillingV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class Sku
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category', class: Google::Apis::CloudbillingV1::Category, decorator: Google::Apis::CloudbillingV1::Category::Representation
      
          property :description, as: 'description'
          property :geo_taxonomy, as: 'geoTaxonomy', class: Google::Apis::CloudbillingV1::GeoTaxonomy, decorator: Google::Apis::CloudbillingV1::GeoTaxonomy::Representation
      
          property :name, as: 'name'
          collection :pricing_info, as: 'pricingInfo', class: Google::Apis::CloudbillingV1::PricingInfo, decorator: Google::Apis::CloudbillingV1::PricingInfo::Representation
      
          property :service_provider_name, as: 'serviceProviderName'
          collection :service_regions, as: 'serviceRegions'
          property :sku_id, as: 'skuId'
        end
      end
      
      class StreamResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_update, as: 'artifactUpdate', class: Google::Apis::CloudbillingV1::TaskArtifactUpdateEvent, decorator: Google::Apis::CloudbillingV1::TaskArtifactUpdateEvent::Representation
      
          property :message, as: 'message', class: Google::Apis::CloudbillingV1::Message, decorator: Google::Apis::CloudbillingV1::Message::Representation
      
          property :status_update, as: 'statusUpdate', class: Google::Apis::CloudbillingV1::TaskStatusUpdateEvent, decorator: Google::Apis::CloudbillingV1::TaskStatusUpdateEvent::Representation
      
          property :task, as: 'task', class: Google::Apis::CloudbillingV1::Task, decorator: Google::Apis::CloudbillingV1::Task::Representation
      
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list, as: 'list'
        end
      end
      
      class Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts', class: Google::Apis::CloudbillingV1::Artifact, decorator: Google::Apis::CloudbillingV1::Artifact::Representation
      
          property :context_id, as: 'contextId'
          collection :history, as: 'history', class: Google::Apis::CloudbillingV1::Message, decorator: Google::Apis::CloudbillingV1::Message::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
          property :status, as: 'status', class: Google::Apis::CloudbillingV1::TaskStatus, decorator: Google::Apis::CloudbillingV1::TaskStatus::Representation
      
        end
      end
      
      class TaskArtifactUpdateEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append, as: 'append'
          property :artifact, as: 'artifact', class: Google::Apis::CloudbillingV1::Artifact, decorator: Google::Apis::CloudbillingV1::Artifact::Representation
      
          property :context_id, as: 'contextId'
          property :last_chunk, as: 'lastChunk'
          hash :metadata, as: 'metadata'
          property :task_id, as: 'taskId'
        end
      end
      
      class TaskPushNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :push_notification_config, as: 'pushNotificationConfig', class: Google::Apis::CloudbillingV1::PushNotificationConfig, decorator: Google::Apis::CloudbillingV1::PushNotificationConfig::Representation
      
        end
      end
      
      class TaskStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::CloudbillingV1::Message, decorator: Google::Apis::CloudbillingV1::Message::Representation
      
          property :state, as: 'state'
          property :timestamp, as: 'timestamp'
        end
      end
      
      class TaskStatusUpdateEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context_id, as: 'contextId'
          property :final, as: 'final'
          hash :metadata, as: 'metadata'
          property :status, as: 'status', class: Google::Apis::CloudbillingV1::TaskStatus, decorator: Google::Apis::CloudbillingV1::TaskStatus::Representation
      
          property :task_id, as: 'taskId'
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
      
      class TierRate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_usage_amount, as: 'startUsageAmount'
          property :unit_price, as: 'unitPrice', class: Google::Apis::CloudbillingV1::Money, decorator: Google::Apis::CloudbillingV1::Money::Representation
      
        end
      end
    end
  end
end
