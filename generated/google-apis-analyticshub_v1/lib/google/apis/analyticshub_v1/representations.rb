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
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
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
      
      class Publisher
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
      
      class RevokeSubscriptionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RevokeSubscriptionResponse
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
      
      class BigQueryDatasetSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
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
      
      class DataExchange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
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
          property :options, as: 'options', class: Google::Apis::AnalyticshubV1::GetPolicyOptions, decorator: Google::Apis::AnalyticshubV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class LinkedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_dataset, as: 'linkedDataset'
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
          property :display_name, as: 'displayName'
          property :documentation, as: 'documentation'
          property :icon, :base64 => true, as: 'icon'
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
          property :publisher, as: 'publisher', class: Google::Apis::AnalyticshubV1::Publisher, decorator: Google::Apis::AnalyticshubV1::Publisher::Representation
      
          property :request_access, as: 'requestAccess'
          property :restricted_export_config, as: 'restrictedExportConfig', class: Google::Apis::AnalyticshubV1::RestrictedExportConfig, decorator: Google::Apis::AnalyticshubV1::RestrictedExportConfig::Representation
      
          property :state, as: 'state'
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
      
      class Publisher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :primary_contact, as: 'primaryContact'
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
      
          property :listing, as: 'listing'
          property :name, as: 'name'
          property :organization_display_name, as: 'organizationDisplayName'
          property :organization_id, as: 'organizationId'
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
    end
  end
end
