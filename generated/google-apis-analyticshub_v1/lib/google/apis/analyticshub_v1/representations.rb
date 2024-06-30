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
    module AnalyticshubV1
      
      class AnalyticsHubSubscriptionInfo
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
      
      class AvroConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryDatasetSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudStorageConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataExchange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataProvider
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DcrExchangeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeadLetterPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultExchangeConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationDataset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationDatasetReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationPubSubSubscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExpirationPolicy
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
      
      class GooglePubsubV1Subscription
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LinkedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataExchangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListListingsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOrgDataExchangesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSharedResourceSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Listing
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NoWrapper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OidcToken
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
      
      class PubSubTopicSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publisher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubWrapper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RefreshSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestrictedExportConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestrictedExportPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeSubscriptionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SelectedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SharingEnvironmentConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeDataExchangeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeDataExchangeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeListingRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubscribeListingResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subscription
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
      
      class TextConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsHubSubscriptionInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :listing, as: 'listing'
          property :subscription, as: 'subscription'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::AnalyticshubV1::AuditLogConfig, decorator: Google::Apis::AnalyticshubV1::AuditLogConfig::Representation
      
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
      
      class AvroConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :use_topic_schema, as: 'useTopicSchema'
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class BigQueryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drop_unknown_fields, as: 'dropUnknownFields'
          property :service_account_email, as: 'serviceAccountEmail'
          property :state, as: 'state'
          property :table, as: 'table'
          property :use_table_schema, as: 'useTableSchema'
          property :use_topic_schema, as: 'useTopicSchema'
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class BigQueryDatasetSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :restricted_export_policy, as: 'restrictedExportPolicy', class: Google::Apis::AnalyticshubV1::RestrictedExportPolicy, decorator: Google::Apis::AnalyticshubV1::RestrictedExportPolicy::Representation
      
          collection :selected_resources, as: 'selectedResources', class: Google::Apis::AnalyticshubV1::SelectedResource, decorator: Google::Apis::AnalyticshubV1::SelectedResource::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::AnalyticshubV1::Expr, decorator: Google::Apis::AnalyticshubV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CloudStorageConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro_config, as: 'avroConfig', class: Google::Apis::AnalyticshubV1::AvroConfig, decorator: Google::Apis::AnalyticshubV1::AvroConfig::Representation
      
          property :bucket, as: 'bucket'
          property :filename_datetime_format, as: 'filenameDatetimeFormat'
          property :filename_prefix, as: 'filenamePrefix'
          property :filename_suffix, as: 'filenameSuffix'
          property :max_bytes, :numeric_string => true, as: 'maxBytes'
          property :max_duration, as: 'maxDuration'
          property :max_messages, :numeric_string => true, as: 'maxMessages'
          property :service_account_email, as: 'serviceAccountEmail'
          property :state, as: 'state'
          property :text_config, as: 'textConfig', class: Google::Apis::AnalyticshubV1::TextConfig, decorator: Google::Apis::AnalyticshubV1::TextConfig::Representation
      
        end
      end
      
      class DataExchange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :discovery_type, as: 'discoveryType'
          property :display_name, as: 'displayName'
          property :documentation, as: 'documentation'
          property :icon, :base64 => true, as: 'icon'
          property :listing_count, as: 'listingCount'
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
          property :sharing_environment_config, as: 'sharingEnvironmentConfig', class: Google::Apis::AnalyticshubV1::SharingEnvironmentConfig, decorator: Google::Apis::AnalyticshubV1::SharingEnvironmentConfig::Representation
      
        end
      end
      
      class DataProvider
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
        end
      end
      
      class DcrExchangeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :single_linked_dataset_per_cleanroom, as: 'singleLinkedDatasetPerCleanroom'
          property :single_selected_resource_sharing_restriction, as: 'singleSelectedResourceSharingRestriction'
        end
      end
      
      class DeadLetterPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dead_letter_topic, as: 'deadLetterTopic'
          property :max_delivery_attempts, as: 'maxDeliveryAttempts'
        end
      end
      
      class DefaultExchangeConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DestinationDataset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_reference, as: 'datasetReference', class: Google::Apis::AnalyticshubV1::DestinationDatasetReference, decorator: Google::Apis::AnalyticshubV1::DestinationDatasetReference::Representation
      
          property :description, as: 'description'
          property :friendly_name, as: 'friendlyName'
          hash :labels, as: 'labels'
          property :location, as: 'location'
        end
      end
      
      class DestinationDatasetReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
        end
      end
      
      class DestinationPubSubSubscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pubsub_subscription, as: 'pubsubSubscription', class: Google::Apis::AnalyticshubV1::GooglePubsubV1Subscription, decorator: Google::Apis::AnalyticshubV1::GooglePubsubV1Subscription::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExpirationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ttl, as: 'ttl'
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
          property :options, as: 'options', class: Google::Apis::AnalyticshubV1::GetPolicyOptions, decorator: Google::Apis::AnalyticshubV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GooglePubsubV1Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          property :analytics_hub_subscription_info, as: 'analyticsHubSubscriptionInfo', class: Google::Apis::AnalyticshubV1::AnalyticsHubSubscriptionInfo, decorator: Google::Apis::AnalyticshubV1::AnalyticsHubSubscriptionInfo::Representation
      
          property :bigquery_config, as: 'bigqueryConfig', class: Google::Apis::AnalyticshubV1::BigQueryConfig, decorator: Google::Apis::AnalyticshubV1::BigQueryConfig::Representation
      
          property :cloud_storage_config, as: 'cloudStorageConfig', class: Google::Apis::AnalyticshubV1::CloudStorageConfig, decorator: Google::Apis::AnalyticshubV1::CloudStorageConfig::Representation
      
          property :dead_letter_policy, as: 'deadLetterPolicy', class: Google::Apis::AnalyticshubV1::DeadLetterPolicy, decorator: Google::Apis::AnalyticshubV1::DeadLetterPolicy::Representation
      
          property :detached, as: 'detached'
          property :enable_exactly_once_delivery, as: 'enableExactlyOnceDelivery'
          property :enable_message_ordering, as: 'enableMessageOrdering'
          property :expiration_policy, as: 'expirationPolicy', class: Google::Apis::AnalyticshubV1::ExpirationPolicy, decorator: Google::Apis::AnalyticshubV1::ExpirationPolicy::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :message_retention_duration, as: 'messageRetentionDuration'
          property :name, as: 'name'
          property :push_config, as: 'pushConfig', class: Google::Apis::AnalyticshubV1::PushConfig, decorator: Google::Apis::AnalyticshubV1::PushConfig::Representation
      
          property :retain_acked_messages, as: 'retainAckedMessages'
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::AnalyticshubV1::RetryPolicy, decorator: Google::Apis::AnalyticshubV1::RetryPolicy::Representation
      
          property :state, as: 'state'
          property :topic_message_retention_duration, as: 'topicMessageRetentionDuration'
        end
      end
      
      class LinkedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_dataset, as: 'linkedDataset'
          property :linked_pubsub_subscription, as: 'linkedPubsubSubscription'
          property :listing, as: 'listing'
        end
      end
      
      class ListDataExchangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_exchanges, as: 'dataExchanges', class: Google::Apis::AnalyticshubV1::DataExchange, decorator: Google::Apis::AnalyticshubV1::DataExchange::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListListingsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :listings, as: 'listings', class: Google::Apis::AnalyticshubV1::Listing, decorator: Google::Apis::AnalyticshubV1::Listing::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOrgDataExchangesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_exchanges, as: 'dataExchanges', class: Google::Apis::AnalyticshubV1::DataExchange, decorator: Google::Apis::AnalyticshubV1::DataExchange::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListSharedResourceSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :shared_resource_subscriptions, as: 'sharedResourceSubscriptions', class: Google::Apis::AnalyticshubV1::Subscription, decorator: Google::Apis::AnalyticshubV1::Subscription::Representation
      
        end
      end
      
      class ListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::AnalyticshubV1::Subscription, decorator: Google::Apis::AnalyticshubV1::Subscription::Representation
      
        end
      end
      
      class Listing
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_dataset, as: 'bigqueryDataset', class: Google::Apis::AnalyticshubV1::BigQueryDatasetSource, decorator: Google::Apis::AnalyticshubV1::BigQueryDatasetSource::Representation
      
          collection :categories, as: 'categories'
          property :data_provider, as: 'dataProvider', class: Google::Apis::AnalyticshubV1::DataProvider, decorator: Google::Apis::AnalyticshubV1::DataProvider::Representation
      
          property :description, as: 'description'
          property :discovery_type, as: 'discoveryType'
          property :display_name, as: 'displayName'
          property :documentation, as: 'documentation'
          property :icon, :base64 => true, as: 'icon'
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
          property :publisher, as: 'publisher', class: Google::Apis::AnalyticshubV1::Publisher, decorator: Google::Apis::AnalyticshubV1::Publisher::Representation
      
          property :pubsub_topic, as: 'pubsubTopic', class: Google::Apis::AnalyticshubV1::PubSubTopicSource, decorator: Google::Apis::AnalyticshubV1::PubSubTopicSource::Representation
      
          property :request_access, as: 'requestAccess'
          property :resource_type, as: 'resourceType'
          property :restricted_export_config, as: 'restrictedExportConfig', class: Google::Apis::AnalyticshubV1::RestrictedExportConfig, decorator: Google::Apis::AnalyticshubV1::RestrictedExportConfig::Representation
      
          property :state, as: 'state'
        end
      end
      
      class NoWrapper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class OidcToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AnalyticshubV1::Status, decorator: Google::Apis::AnalyticshubV1::Status::Representation
      
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
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::AnalyticshubV1::AuditConfig, decorator: Google::Apis::AnalyticshubV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::AnalyticshubV1::Binding, decorator: Google::Apis::AnalyticshubV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PubSubTopicSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_affinity_regions, as: 'dataAffinityRegions'
          property :topic, as: 'topic'
        end
      end
      
      class Publisher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
        end
      end
      
      class PubsubWrapper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class PushConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :no_wrapper, as: 'noWrapper', class: Google::Apis::AnalyticshubV1::NoWrapper, decorator: Google::Apis::AnalyticshubV1::NoWrapper::Representation
      
          property :oidc_token, as: 'oidcToken', class: Google::Apis::AnalyticshubV1::OidcToken, decorator: Google::Apis::AnalyticshubV1::OidcToken::Representation
      
          property :pubsub_wrapper, as: 'pubsubWrapper', class: Google::Apis::AnalyticshubV1::PubsubWrapper, decorator: Google::Apis::AnalyticshubV1::PubsubWrapper::Representation
      
          property :push_endpoint, as: 'pushEndpoint'
        end
      end
      
      class RefreshSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RefreshSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::AnalyticshubV1::Subscription, decorator: Google::Apis::AnalyticshubV1::Subscription::Representation
      
        end
      end
      
      class RestrictedExportConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :restrict_direct_table_access, as: 'restrictDirectTableAccess'
          property :restrict_query_result, as: 'restrictQueryResult'
        end
      end
      
      class RestrictedExportPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :restrict_direct_table_access, as: 'restrictDirectTableAccess'
          property :restrict_query_result, as: 'restrictQueryResult'
        end
      end
      
      class RetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum_backoff, as: 'maximumBackoff'
          property :minimum_backoff, as: 'minimumBackoff'
        end
      end
      
      class RevokeSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RevokeSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SelectedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table, as: 'table'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::AnalyticshubV1::Policy, decorator: Google::Apis::AnalyticshubV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SharingEnvironmentConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dcr_exchange_config, as: 'dcrExchangeConfig', class: Google::Apis::AnalyticshubV1::DcrExchangeConfig, decorator: Google::Apis::AnalyticshubV1::DcrExchangeConfig::Representation
      
          property :default_exchange_config, as: 'defaultExchangeConfig', class: Google::Apis::AnalyticshubV1::DefaultExchangeConfig, decorator: Google::Apis::AnalyticshubV1::DefaultExchangeConfig::Representation
      
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
      
      class SubscribeDataExchangeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :subscriber_contact, as: 'subscriberContact'
          property :subscription, as: 'subscription'
        end
      end
      
      class SubscribeDataExchangeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::AnalyticshubV1::Subscription, decorator: Google::Apis::AnalyticshubV1::Subscription::Representation
      
        end
      end
      
      class SubscribeListingRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_dataset, as: 'destinationDataset', class: Google::Apis::AnalyticshubV1::DestinationDataset, decorator: Google::Apis::AnalyticshubV1::DestinationDataset::Representation
      
          property :destination_pubsub_subscription, as: 'destinationPubsubSubscription', class: Google::Apis::AnalyticshubV1::DestinationPubSubSubscription, decorator: Google::Apis::AnalyticshubV1::DestinationPubSubSubscription::Representation
      
        end
      end
      
      class SubscribeListingResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::AnalyticshubV1::Subscription, decorator: Google::Apis::AnalyticshubV1::Subscription::Representation
      
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :data_exchange, as: 'dataExchange'
          property :last_modify_time, as: 'lastModifyTime'
          hash :linked_dataset_map, as: 'linkedDatasetMap', class: Google::Apis::AnalyticshubV1::LinkedResource, decorator: Google::Apis::AnalyticshubV1::LinkedResource::Representation
      
          collection :linked_resources, as: 'linkedResources', class: Google::Apis::AnalyticshubV1::LinkedResource, decorator: Google::Apis::AnalyticshubV1::LinkedResource::Representation
      
          property :listing, as: 'listing'
          property :name, as: 'name'
          property :organization_display_name, as: 'organizationDisplayName'
          property :organization_id, as: 'organizationId'
          property :resource_type, as: 'resourceType'
          property :state, as: 'state'
          property :subscriber_contact, as: 'subscriberContact'
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
      
      class TextConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
