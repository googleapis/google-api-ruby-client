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
    module WorkspaceeventsV1
      
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
      
      class Artifact
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
      
      class CancelTaskRequest
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
      
      class FilePart
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
      
      class ListSubscriptionsResponse
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
      
      class MutualTlsSecurityScheme
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NotificationEndpoint
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
      
      class Operation
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
      
      class PayloadOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushNotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReactivateSubscriptionRequest
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
      
      class Status
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
      
      class Subscription
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
          collection :extensions, as: 'extensions', class: Google::Apis::WorkspaceeventsV1::AgentExtension, decorator: Google::Apis::WorkspaceeventsV1::AgentExtension::Representation
      
          property :push_notifications, as: 'pushNotifications'
          property :streaming, as: 'streaming'
        end
      end
      
      class AgentCard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_interfaces, as: 'additionalInterfaces', class: Google::Apis::WorkspaceeventsV1::AgentInterface, decorator: Google::Apis::WorkspaceeventsV1::AgentInterface::Representation
      
          property :capabilities, as: 'capabilities', class: Google::Apis::WorkspaceeventsV1::AgentCapabilities, decorator: Google::Apis::WorkspaceeventsV1::AgentCapabilities::Representation
      
          collection :default_input_modes, as: 'defaultInputModes'
          collection :default_output_modes, as: 'defaultOutputModes'
          property :description, as: 'description'
          property :documentation_url, as: 'documentationUrl'
          property :icon_url, as: 'iconUrl'
          property :name, as: 'name'
          property :preferred_transport, as: 'preferredTransport'
          property :protocol_version, as: 'protocolVersion'
          property :provider, as: 'provider', class: Google::Apis::WorkspaceeventsV1::AgentProvider, decorator: Google::Apis::WorkspaceeventsV1::AgentProvider::Representation
      
          collection :security, as: 'security', class: Google::Apis::WorkspaceeventsV1::Security, decorator: Google::Apis::WorkspaceeventsV1::Security::Representation
      
          hash :security_schemes, as: 'securitySchemes', class: Google::Apis::WorkspaceeventsV1::SecurityScheme, decorator: Google::Apis::WorkspaceeventsV1::SecurityScheme::Representation
      
          collection :signatures, as: 'signatures', class: Google::Apis::WorkspaceeventsV1::AgentCardSignature, decorator: Google::Apis::WorkspaceeventsV1::AgentCardSignature::Representation
      
          collection :skills, as: 'skills', class: Google::Apis::WorkspaceeventsV1::AgentSkill, decorator: Google::Apis::WorkspaceeventsV1::AgentSkill::Representation
      
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
          collection :security, as: 'security', class: Google::Apis::WorkspaceeventsV1::Security, decorator: Google::Apis::WorkspaceeventsV1::Security::Representation
      
          collection :tags, as: 'tags'
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
          collection :parts, as: 'parts', class: Google::Apis::WorkspaceeventsV1::Part, decorator: Google::Apis::WorkspaceeventsV1::Part::Representation
      
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
      
      class CancelTaskRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class FilePart
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_with_bytes, :base64 => true, as: 'fileWithBytes'
          property :file_with_uri, as: 'fileWithUri'
          property :mime_type, as: 'mimeType'
          property :name, as: 'name'
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
      
      class ListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::WorkspaceeventsV1::Subscription, decorator: Google::Apis::WorkspaceeventsV1::Subscription::Representation
      
        end
      end
      
      class ListTaskPushNotificationConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :configs, as: 'configs', class: Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig, decorator: Google::Apis::WorkspaceeventsV1::TaskPushNotificationConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :content, as: 'content', class: Google::Apis::WorkspaceeventsV1::Part, decorator: Google::Apis::WorkspaceeventsV1::Part::Representation
      
          property :context_id, as: 'contextId'
          collection :extensions, as: 'extensions'
          property :message_id, as: 'messageId'
          hash :metadata, as: 'metadata'
          property :role, as: 'role'
          property :task_id, as: 'taskId'
        end
      end
      
      class MutualTlsSecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class NotificationEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class OAuth2SecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :flows, as: 'flows', class: Google::Apis::WorkspaceeventsV1::OAuthFlows, decorator: Google::Apis::WorkspaceeventsV1::OAuthFlows::Representation
      
          property :oauth2_metadata_url, as: 'oauth2MetadataUrl'
        end
      end
      
      class OAuthFlows
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authorization_code, as: 'authorizationCode', class: Google::Apis::WorkspaceeventsV1::AuthorizationCodeOAuthFlow, decorator: Google::Apis::WorkspaceeventsV1::AuthorizationCodeOAuthFlow::Representation
      
          property :client_credentials, as: 'clientCredentials', class: Google::Apis::WorkspaceeventsV1::ClientCredentialsOAuthFlow, decorator: Google::Apis::WorkspaceeventsV1::ClientCredentialsOAuthFlow::Representation
      
          property :implicit, as: 'implicit', class: Google::Apis::WorkspaceeventsV1::ImplicitOAuthFlow, decorator: Google::Apis::WorkspaceeventsV1::ImplicitOAuthFlow::Representation
      
          property :password, as: 'password', class: Google::Apis::WorkspaceeventsV1::PasswordOAuthFlow, decorator: Google::Apis::WorkspaceeventsV1::PasswordOAuthFlow::Representation
      
        end
      end
      
      class OpenIdConnectSecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :open_id_connect_url, as: 'openIdConnectUrl'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::WorkspaceeventsV1::Status, decorator: Google::Apis::WorkspaceeventsV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Part
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, as: 'data', class: Google::Apis::WorkspaceeventsV1::DataPart, decorator: Google::Apis::WorkspaceeventsV1::DataPart::Representation
      
          property :file, as: 'file', class: Google::Apis::WorkspaceeventsV1::FilePart, decorator: Google::Apis::WorkspaceeventsV1::FilePart::Representation
      
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
      
      class PayloadOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field_mask, as: 'fieldMask'
          property :include_resource, as: 'includeResource'
        end
      end
      
      class PushNotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication, as: 'authentication', class: Google::Apis::WorkspaceeventsV1::AuthenticationInfo, decorator: Google::Apis::WorkspaceeventsV1::AuthenticationInfo::Representation
      
          property :id, as: 'id'
          property :token, as: 'token'
          property :url, as: 'url'
        end
      end
      
      class ReactivateSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Security
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :schemes, as: 'schemes', class: Google::Apis::WorkspaceeventsV1::StringList, decorator: Google::Apis::WorkspaceeventsV1::StringList::Representation
      
        end
      end
      
      class SecurityScheme
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key_security_scheme, as: 'apiKeySecurityScheme', class: Google::Apis::WorkspaceeventsV1::ApiKeySecurityScheme, decorator: Google::Apis::WorkspaceeventsV1::ApiKeySecurityScheme::Representation
      
          property :http_auth_security_scheme, as: 'httpAuthSecurityScheme', class: Google::Apis::WorkspaceeventsV1::HttpAuthSecurityScheme, decorator: Google::Apis::WorkspaceeventsV1::HttpAuthSecurityScheme::Representation
      
          property :mtls_security_scheme, as: 'mtlsSecurityScheme', class: Google::Apis::WorkspaceeventsV1::MutualTlsSecurityScheme, decorator: Google::Apis::WorkspaceeventsV1::MutualTlsSecurityScheme::Representation
      
          property :oauth2_security_scheme, as: 'oauth2SecurityScheme', class: Google::Apis::WorkspaceeventsV1::OAuth2SecurityScheme, decorator: Google::Apis::WorkspaceeventsV1::OAuth2SecurityScheme::Representation
      
          property :open_id_connect_security_scheme, as: 'openIdConnectSecurityScheme', class: Google::Apis::WorkspaceeventsV1::OpenIdConnectSecurityScheme, decorator: Google::Apis::WorkspaceeventsV1::OpenIdConnectSecurityScheme::Representation
      
        end
      end
      
      class SendMessageConfiguration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accepted_output_modes, as: 'acceptedOutputModes'
          property :blocking, as: 'blocking'
          property :history_length, as: 'historyLength'
          property :push_notification, as: 'pushNotification', class: Google::Apis::WorkspaceeventsV1::PushNotificationConfig, decorator: Google::Apis::WorkspaceeventsV1::PushNotificationConfig::Representation
      
        end
      end
      
      class SendMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :configuration, as: 'configuration', class: Google::Apis::WorkspaceeventsV1::SendMessageConfiguration, decorator: Google::Apis::WorkspaceeventsV1::SendMessageConfiguration::Representation
      
          property :message, as: 'message', class: Google::Apis::WorkspaceeventsV1::Message, decorator: Google::Apis::WorkspaceeventsV1::Message::Representation
      
          hash :metadata, as: 'metadata'
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
      
      class StreamResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_update, as: 'artifactUpdate', class: Google::Apis::WorkspaceeventsV1::TaskArtifactUpdateEvent, decorator: Google::Apis::WorkspaceeventsV1::TaskArtifactUpdateEvent::Representation
      
          property :message, as: 'message', class: Google::Apis::WorkspaceeventsV1::Message, decorator: Google::Apis::WorkspaceeventsV1::Message::Representation
      
          property :status_update, as: 'statusUpdate', class: Google::Apis::WorkspaceeventsV1::TaskStatusUpdateEvent, decorator: Google::Apis::WorkspaceeventsV1::TaskStatusUpdateEvent::Representation
      
          property :task, as: 'task', class: Google::Apis::WorkspaceeventsV1::Task, decorator: Google::Apis::WorkspaceeventsV1::Task::Representation
      
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list, as: 'list'
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authority, as: 'authority'
          property :create_time, as: 'createTime'
          property :etag, as: 'etag'
          collection :event_types, as: 'eventTypes'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :notification_endpoint, as: 'notificationEndpoint', class: Google::Apis::WorkspaceeventsV1::NotificationEndpoint, decorator: Google::Apis::WorkspaceeventsV1::NotificationEndpoint::Representation
      
          property :payload_options, as: 'payloadOptions', class: Google::Apis::WorkspaceeventsV1::PayloadOptions, decorator: Google::Apis::WorkspaceeventsV1::PayloadOptions::Representation
      
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :suspension_reason, as: 'suspensionReason'
          property :target_resource, as: 'targetResource'
          property :ttl, as: 'ttl'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifacts, as: 'artifacts', class: Google::Apis::WorkspaceeventsV1::Artifact, decorator: Google::Apis::WorkspaceeventsV1::Artifact::Representation
      
          property :context_id, as: 'contextId'
          collection :history, as: 'history', class: Google::Apis::WorkspaceeventsV1::Message, decorator: Google::Apis::WorkspaceeventsV1::Message::Representation
      
          property :id, as: 'id'
          hash :metadata, as: 'metadata'
          property :status, as: 'status', class: Google::Apis::WorkspaceeventsV1::TaskStatus, decorator: Google::Apis::WorkspaceeventsV1::TaskStatus::Representation
      
        end
      end
      
      class TaskArtifactUpdateEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :append, as: 'append'
          property :artifact, as: 'artifact', class: Google::Apis::WorkspaceeventsV1::Artifact, decorator: Google::Apis::WorkspaceeventsV1::Artifact::Representation
      
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
          property :push_notification_config, as: 'pushNotificationConfig', class: Google::Apis::WorkspaceeventsV1::PushNotificationConfig, decorator: Google::Apis::WorkspaceeventsV1::PushNotificationConfig::Representation
      
        end
      end
      
      class TaskStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::WorkspaceeventsV1::Message, decorator: Google::Apis::WorkspaceeventsV1::Message::Representation
      
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
          property :status, as: 'status', class: Google::Apis::WorkspaceeventsV1::TaskStatus, decorator: Google::Apis::WorkspaceeventsV1::TaskStatus::Representation
      
          property :task_id, as: 'taskId'
        end
      end
    end
  end
end
