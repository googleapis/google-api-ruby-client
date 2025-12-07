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
    module EventarcV1
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Channel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ChannelConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Destination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Enrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EventType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilteringAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Gke
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleApiSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChannelConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineDestinationHttpEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineDestinationNetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineMediation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineMediationTransformation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudEventarcV1PipelineRetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningCancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HttpEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChannelConnectionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListChannelsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListEnrollmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListGoogleApiSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMessageBusEnrollmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMessageBusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPipelinesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProvidersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTriggersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageBus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OrganizationSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectSubscriptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Provider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Pubsub
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StateCondition
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
      
      class Transport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::EventarcV1::AuditLogConfig, decorator: Google::Apis::EventarcV1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::EventarcV1::Expr, decorator: Google::Apis::EventarcV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Channel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_token, as: 'activationToken'
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :provider, as: 'provider'
          property :pubsub_topic, as: 'pubsubTopic'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ChannelConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activation_token, as: 'activationToken'
          property :channel, as: 'channel'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CloudRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :region, as: 'region'
          property :service, as: 'service'
        end
      end
      
      class Destination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_function, as: 'cloudFunction'
          property :cloud_run, as: 'cloudRun', class: Google::Apis::EventarcV1::CloudRun, decorator: Google::Apis::EventarcV1::CloudRun::Representation
      
          property :gke, as: 'gke', class: Google::Apis::EventarcV1::Gke, decorator: Google::Apis::EventarcV1::Gke::Representation
      
          property :http_endpoint, as: 'httpEndpoint', class: Google::Apis::EventarcV1::HttpEndpoint, decorator: Google::Apis::EventarcV1::HttpEndpoint::Representation
      
          property :network_config, as: 'networkConfig', class: Google::Apis::EventarcV1::NetworkConfig, decorator: Google::Apis::EventarcV1::NetworkConfig::Representation
      
          property :workflow, as: 'workflow'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Enrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cel_match, as: 'celMatch'
          property :create_time, as: 'createTime'
          property :destination, as: 'destination'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :message_bus, as: 'messageBus'
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class EventFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute, as: 'attribute'
          property :operator, as: 'operator'
          property :value, as: 'value'
        end
      end
      
      class EventType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :event_schema_uri, as: 'eventSchemaUri'
          collection :filtering_attributes, as: 'filteringAttributes', class: Google::Apis::EventarcV1::FilteringAttribute, decorator: Google::Apis::EventarcV1::FilteringAttribute::Representation
      
          property :type, as: 'type'
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
      
      class FilteringAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attribute, as: 'attribute'
          property :description, as: 'description'
          property :path_pattern_supported, as: 'pathPatternSupported'
          property :required, as: 'required'
        end
      end
      
      class Gke
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :location, as: 'location'
          property :namespace, as: 'namespace'
          property :path, as: 'path'
          property :service, as: 'service'
        end
      end
      
      class GoogleApiSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          property :destination, as: 'destination'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::EventarcV1::LoggingConfig, decorator: Google::Apis::EventarcV1::LoggingConfig::Representation
      
          property :name, as: 'name'
          property :organization_subscription, as: 'organizationSubscription', class: Google::Apis::EventarcV1::OrganizationSubscription, decorator: Google::Apis::EventarcV1::OrganizationSubscription::Representation
      
          property :project_subscriptions, as: 'projectSubscriptions', class: Google::Apis::EventarcV1::ProjectSubscriptions, decorator: Google::Apis::EventarcV1::ProjectSubscriptions::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleChannelConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :crypto_key_name, as: 'cryptoKeyName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudEventarcV1PipelineDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authentication_config, as: 'authenticationConfig', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig::Representation
      
          property :http_endpoint, as: 'httpEndpoint', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationHttpEndpoint, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationHttpEndpoint::Representation
      
          property :message_bus, as: 'messageBus'
          property :network_config, as: 'networkConfig', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationNetworkConfig, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationNetworkConfig::Representation
      
          property :output_payload_format, as: 'outputPayloadFormat', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormat, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormat::Representation
      
          property :topic, as: 'topic'
          property :workflow, as: 'workflow'
        end
      end
      
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :google_oidc, as: 'googleOidc', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken::Representation
      
          property :oauth_token, as: 'oauthToken', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken::Representation
      
        end
      end
      
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOAuthToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scope, as: 'scope'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudEventarcV1PipelineDestinationAuthenticationConfigOidcToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class GoogleCloudEventarcV1PipelineDestinationHttpEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message_binding_template, as: 'messageBindingTemplate'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudEventarcV1PipelineDestinationNetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_attachment, as: 'networkAttachment'
        end
      end
      
      class GoogleCloudEventarcV1PipelineMediation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transformation, as: 'transformation', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMediationTransformation, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMediationTransformation::Representation
      
        end
      end
      
      class GoogleCloudEventarcV1PipelineMediationTransformation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :transformation_template, as: 'transformationTemplate'
        end
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro, as: 'avro', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat::Representation
      
          property :json, as: 'json', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat::Representation
      
          property :protobuf, as: 'protobuf', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat::Representation
      
        end
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatAvroFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema_definition, as: 'schemaDefinition'
        end
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatJsonFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudEventarcV1PipelineMessagePayloadFormatProtobufFormat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema_definition, as: 'schemaDefinition'
        end
      end
      
      class GoogleCloudEventarcV1PipelineRetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_attempts, as: 'maxAttempts'
          property :max_retry_delay, as: 'maxRetryDelay'
          property :min_retry_delay, as: 'minRetryDelay'
        end
      end
      
      class GoogleLongrunningCancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::EventarcV1::GoogleLongrunningOperation, decorator: Google::Apis::EventarcV1::GoogleLongrunningOperation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::EventarcV1::GoogleRpcStatus, decorator: Google::Apis::EventarcV1::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class HttpEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class ListChannelConnectionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channel_connections, as: 'channelConnections', class: Google::Apis::EventarcV1::ChannelConnection, decorator: Google::Apis::EventarcV1::ChannelConnection::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListChannelsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::EventarcV1::Channel, decorator: Google::Apis::EventarcV1::Channel::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListEnrollmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enrollments, as: 'enrollments', class: Google::Apis::EventarcV1::Enrollment, decorator: Google::Apis::EventarcV1::Enrollment::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListGoogleApiSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_api_sources, as: 'googleApiSources', class: Google::Apis::EventarcV1::GoogleApiSource, decorator: Google::Apis::EventarcV1::GoogleApiSource::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::EventarcV1::Location, decorator: Google::Apis::EventarcV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMessageBusEnrollmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enrollments, as: 'enrollments'
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListMessageBusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :message_buses, as: 'messageBuses', class: Google::Apis::EventarcV1::MessageBus, decorator: Google::Apis::EventarcV1::MessageBus::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListPipelinesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :pipelines, as: 'pipelines', class: Google::Apis::EventarcV1::Pipeline, decorator: Google::Apis::EventarcV1::Pipeline::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListProvidersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :providers, as: 'providers', class: Google::Apis::EventarcV1::Provider, decorator: Google::Apis::EventarcV1::Provider::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTriggersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :triggers, as: 'triggers', class: Google::Apis::EventarcV1::Trigger, decorator: Google::Apis::EventarcV1::Trigger::Representation
      
          collection :unreachable, as: 'unreachable'
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
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :log_severity, as: 'logSeverity'
        end
      end
      
      class MessageBus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::EventarcV1::LoggingConfig, decorator: Google::Apis::EventarcV1::LoggingConfig::Representation
      
          property :name, as: 'name'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class NetworkConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network_attachment, as: 'networkAttachment'
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
      
      class OrganizationSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class Pipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :crypto_key_name, as: 'cryptoKeyName'
          collection :destinations, as: 'destinations', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestination, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineDestination::Representation
      
          property :display_name, as: 'displayName'
          property :etag, as: 'etag'
          property :input_payload_format, as: 'inputPayloadFormat', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormat, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMessagePayloadFormat::Representation
      
          hash :labels, as: 'labels'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::EventarcV1::LoggingConfig, decorator: Google::Apis::EventarcV1::LoggingConfig::Representation
      
          collection :mediations, as: 'mediations', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMediation, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineMediation::Representation
      
          property :name, as: 'name'
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineRetryPolicy, decorator: Google::Apis::EventarcV1::GoogleCloudEventarcV1PipelineRetryPolicy::Representation
      
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::EventarcV1::AuditConfig, decorator: Google::Apis::EventarcV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::EventarcV1::Binding, decorator: Google::Apis::EventarcV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ProjectSubscriptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :list, as: 'list'
        end
      end
      
      class Provider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :event_types, as: 'eventTypes', class: Google::Apis::EventarcV1::EventType, decorator: Google::Apis::EventarcV1::EventType::Representation
      
          property :name, as: 'name'
        end
      end
      
      class Pubsub
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription'
          property :topic, as: 'topic'
        end
      end
      
      class RetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_attempts, as: 'maxAttempts'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::EventarcV1::Policy, decorator: Google::Apis::EventarcV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class StateCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
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
      
      class Transport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub, as: 'pubsub', class: Google::Apis::EventarcV1::Pubsub, decorator: Google::Apis::EventarcV1::Pubsub::Representation
      
        end
      end
      
      class Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          hash :conditions, as: 'conditions', class: Google::Apis::EventarcV1::StateCondition, decorator: Google::Apis::EventarcV1::StateCondition::Representation
      
          property :create_time, as: 'createTime'
          property :destination, as: 'destination', class: Google::Apis::EventarcV1::Destination, decorator: Google::Apis::EventarcV1::Destination::Representation
      
          property :etag, as: 'etag'
          property :event_data_content_type, as: 'eventDataContentType'
          collection :event_filters, as: 'eventFilters', class: Google::Apis::EventarcV1::EventFilter, decorator: Google::Apis::EventarcV1::EventFilter::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::EventarcV1::RetryPolicy, decorator: Google::Apis::EventarcV1::RetryPolicy::Representation
      
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account, as: 'serviceAccount'
          property :transport, as: 'transport', class: Google::Apis::EventarcV1::Transport, decorator: Google::Apis::EventarcV1::Transport::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
    end
  end
end
