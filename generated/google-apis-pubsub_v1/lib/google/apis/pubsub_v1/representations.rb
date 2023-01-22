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
    module PubsubV1
      
      class AcknowledgeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BigQueryConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommitSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeadLetterPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetachSubscriptionResponse
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
      
      class ListSchemaRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSchemasResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicSnapshotsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicSubscriptionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTopicsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageStoragePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyAckDeadlineRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ModifyPushConfigRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OidcToken
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PublishResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PullResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PushConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReceivedMessage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RollbackSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchemaSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeekRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeekResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Snapshot
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
      
      class Topic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSnapshotRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTopicRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateMessageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateMessageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateSchemaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateSchemaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AcknowledgeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ack_ids, as: 'ackIds'
        end
      end
      
      class BigQueryConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :drop_unknown_fields, as: 'dropUnknownFields'
          property :state, as: 'state'
          property :table, as: 'table'
          property :use_topic_schema, as: 'useTopicSchema'
          property :write_metadata, as: 'writeMetadata'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::PubsubV1::Expr, decorator: Google::Apis::PubsubV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CommitSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class CreateSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
          property :subscription, as: 'subscription'
        end
      end
      
      class DeadLetterPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dead_letter_topic, as: 'deadLetterTopic'
          property :max_delivery_attempts, as: 'maxDeliveryAttempts'
        end
      end
      
      class DetachSubscriptionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class ListSchemaRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ListSchemasResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :schemas, as: 'schemas', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ListSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshots, as: 'snapshots', class: Google::Apis::PubsubV1::Snapshot, decorator: Google::Apis::PubsubV1::Snapshot::Representation
      
        end
      end
      
      class ListSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions', class: Google::Apis::PubsubV1::Subscription, decorator: Google::Apis::PubsubV1::Subscription::Representation
      
        end
      end
      
      class ListTopicSnapshotsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :snapshots, as: 'snapshots'
        end
      end
      
      class ListTopicSubscriptionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :subscriptions, as: 'subscriptions'
        end
      end
      
      class ListTopicsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :topics, as: 'topics', class: Google::Apis::PubsubV1::Topic, decorator: Google::Apis::PubsubV1::Topic::Representation
      
        end
      end
      
      class MessageStoragePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_persistence_regions, as: 'allowedPersistenceRegions'
        end
      end
      
      class ModifyAckDeadlineRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          collection :ack_ids, as: 'ackIds'
        end
      end
      
      class ModifyPushConfigRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1::PushConfig, decorator: Google::Apis::PubsubV1::PushConfig::Representation
      
        end
      end
      
      class OidcToken
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience, as: 'audience'
          property :service_account_email, as: 'serviceAccountEmail'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::PubsubV1::Binding, decorator: Google::Apis::PubsubV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PublishRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :messages, as: 'messages', class: Google::Apis::PubsubV1::Message, decorator: Google::Apis::PubsubV1::Message::Representation
      
        end
      end
      
      class PublishResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :message_ids, as: 'messageIds'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :data, :base64 => true, as: 'data'
          property :message_id, as: 'messageId'
          property :ordering_key, as: 'orderingKey'
          property :publish_time, as: 'publishTime'
        end
      end
      
      class PullRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_messages, as: 'maxMessages'
          property :return_immediately, as: 'returnImmediately'
        end
      end
      
      class PullResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :received_messages, as: 'receivedMessages', class: Google::Apis::PubsubV1::ReceivedMessage, decorator: Google::Apis::PubsubV1::ReceivedMessage::Representation
      
        end
      end
      
      class PushConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :oidc_token, as: 'oidcToken', class: Google::Apis::PubsubV1::OidcToken, decorator: Google::Apis::PubsubV1::OidcToken::Representation
      
          property :push_endpoint, as: 'pushEndpoint'
        end
      end
      
      class ReceivedMessage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_id, as: 'ackId'
          property :delivery_attempt, as: 'deliveryAttempt'
          property :message, as: 'message', class: Google::Apis::PubsubV1::Message, decorator: Google::Apis::PubsubV1::Message::Representation
      
        end
      end
      
      class RetryPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maximum_backoff, as: 'maximumBackoff'
          property :minimum_backoff, as: 'minimumBackoff'
        end
      end
      
      class RollbackSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
        end
      end
      
      class Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :definition, as: 'definition'
          property :name, as: 'name'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :type, as: 'type'
        end
      end
      
      class SchemaSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :first_revision_id, as: 'firstRevisionId'
          property :last_revision_id, as: 'lastRevisionId'
          property :schema, as: 'schema'
        end
      end
      
      class SeekRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot, as: 'snapshot'
          property :time, as: 'time'
        end
      end
      
      class SeekResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::PubsubV1::Policy, decorator: Google::Apis::PubsubV1::Policy::Representation
      
        end
      end
      
      class Snapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expire_time, as: 'expireTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :topic, as: 'topic'
        end
      end
      
      class Subscription
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ack_deadline_seconds, as: 'ackDeadlineSeconds'
          property :bigquery_config, as: 'bigqueryConfig', class: Google::Apis::PubsubV1::BigQueryConfig, decorator: Google::Apis::PubsubV1::BigQueryConfig::Representation
      
          property :dead_letter_policy, as: 'deadLetterPolicy', class: Google::Apis::PubsubV1::DeadLetterPolicy, decorator: Google::Apis::PubsubV1::DeadLetterPolicy::Representation
      
          property :detached, as: 'detached'
          property :enable_exactly_once_delivery, as: 'enableExactlyOnceDelivery'
          property :enable_message_ordering, as: 'enableMessageOrdering'
          property :expiration_policy, as: 'expirationPolicy', class: Google::Apis::PubsubV1::ExpirationPolicy, decorator: Google::Apis::PubsubV1::ExpirationPolicy::Representation
      
          property :filter, as: 'filter'
          hash :labels, as: 'labels'
          property :message_retention_duration, as: 'messageRetentionDuration'
          property :name, as: 'name'
          property :push_config, as: 'pushConfig', class: Google::Apis::PubsubV1::PushConfig, decorator: Google::Apis::PubsubV1::PushConfig::Representation
      
          property :retain_acked_messages, as: 'retainAckedMessages'
          property :retry_policy, as: 'retryPolicy', class: Google::Apis::PubsubV1::RetryPolicy, decorator: Google::Apis::PubsubV1::RetryPolicy::Representation
      
          property :state, as: 'state'
          property :topic, as: 'topic'
          property :topic_message_retention_duration, as: 'topicMessageRetentionDuration'
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
      
      class Topic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          hash :labels, as: 'labels'
          property :message_retention_duration, as: 'messageRetentionDuration'
          property :message_storage_policy, as: 'messageStoragePolicy', class: Google::Apis::PubsubV1::MessageStoragePolicy, decorator: Google::Apis::PubsubV1::MessageStoragePolicy::Representation
      
          property :name, as: 'name'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :schema_settings, as: 'schemaSettings', class: Google::Apis::PubsubV1::SchemaSettings, decorator: Google::Apis::PubsubV1::SchemaSettings::Representation
      
        end
      end
      
      class UpdateSnapshotRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snapshot, as: 'snapshot', class: Google::Apis::PubsubV1::Snapshot, decorator: Google::Apis::PubsubV1::Snapshot::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateSubscriptionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :subscription, as: 'subscription', class: Google::Apis::PubsubV1::Subscription, decorator: Google::Apis::PubsubV1::Subscription::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateTopicRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic', class: Google::Apis::PubsubV1::Topic, decorator: Google::Apis::PubsubV1::Topic::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ValidateMessageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encoding, as: 'encoding'
          property :message, :base64 => true, as: 'message'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ValidateMessageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ValidateSchemaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :schema, as: 'schema', class: Google::Apis::PubsubV1::Schema, decorator: Google::Apis::PubsubV1::Schema::Representation
      
        end
      end
      
      class ValidateSchemaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
