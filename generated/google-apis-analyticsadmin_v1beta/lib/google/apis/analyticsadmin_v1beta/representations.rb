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
    module AnalyticsadminV1beta
      
      class GoogleAnalyticsAdminV1betaAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccountSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaConversionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaCustomDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaCustomMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataSharingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamWebStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaFirebaseLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaGoogleAdsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListAccountSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListConversionEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListCustomMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListDataStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListPropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaPropertySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deleted, as: 'deleted'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccountSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :property_summaries, as: 'propertySummaries', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaPropertySummary, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaPropertySummary::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledgement, as: 'acknowledgement'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :resource, as: 'resource'
          property :resource_after_change, as: 'resourceAfterChange', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource::Representation
      
          property :resource_before_change, as: 'resourceBeforeChange', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
      
          property :conversion_event, as: 'conversionEvent', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
      
          property :data_retention_settings, as: 'dataRetentionSettings', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings::Representation
      
          property :data_stream, as: 'dataStream', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
      
          property :firebase_link, as: 'firebaseLink', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink::Representation
      
          property :google_ads_link, as: 'googleAdsLink', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
      
          property :measurement_protocol_secret, as: 'measurementProtocolSecret', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
      
          property :property, as: 'property', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_type, as: 'actorType'
          property :change_time, as: 'changeTime'
          collection :changes, as: 'changes', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChange, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChange::Representation
      
          property :changes_filtered, as: 'changesFiltered'
          property :id, as: 'id'
          property :user_actor_email, as: 'userActorEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1betaConversionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom, as: 'custom'
          property :deletable, as: 'deletable'
          property :event_name, as: 'eventName'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1betaCustomDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disallow_ads_personalization, as: 'disallowAdsPersonalization'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1betaCustomMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :measurement_unit, as: 'measurementUnit'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          collection :restricted_metric_type, as: 'restrictedMetricType'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_data_retention, as: 'eventDataRetention'
          property :name, as: 'name'
          property :reset_user_data_on_new_activity, as: 'resetUserDataOnNewActivity'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataSharingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sharing_with_google_any_sales_enabled, as: 'sharingWithGoogleAnySalesEnabled'
          property :sharing_with_google_assigned_sales_enabled, as: 'sharingWithGoogleAssignedSalesEnabled'
          property :sharing_with_google_products_enabled, as: 'sharingWithGoogleProductsEnabled'
          property :sharing_with_google_support_enabled, as: 'sharingWithGoogleSupportEnabled'
          property :sharing_with_others_enabled, as: 'sharingWithOthersEnabled'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_app_stream_data, as: 'androidAppStreamData', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :ios_app_stream_data, as: 'iosAppStreamData', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :web_stream_data, as: 'webStreamData', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamWebStreamData, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamWebStreamData::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firebase_app_id, as: 'firebaseAppId'
          property :package_name, as: 'packageName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :firebase_app_id, as: 'firebaseAppId'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamWebStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_uri, as: 'defaultUri'
          property :firebase_app_id, as: 'firebaseAppId'
          property :measurement_id, as: 'measurementId'
        end
      end
      
      class GoogleAnalyticsAdminV1betaFirebaseLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :project, as: 'project'
        end
      end
      
      class GoogleAnalyticsAdminV1betaGoogleAdsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :can_manage_clients, as: 'canManageClients'
          property :create_time, as: 'createTime'
          property :creator_email_address, as: 'creatorEmailAddress'
          property :customer_id, as: 'customerId'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListAccountSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_summaries, as: 'accountSummaries', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccountSummary, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccountSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListConversionEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_events, as: 'conversionEvents', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_dimensions, as: 'customDimensions', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListCustomMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_metrics, as: 'customMetrics', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListDataStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_streams, as: 'dataStreams', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firebase_links, as: 'firebaseLinks', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_ads_links, as: 'googleAdsLinks', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :measurement_protocol_secrets, as: 'measurementProtocolSecrets', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListPropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :properties, as: 'properties', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :secret_value, as: 'secretValue'
        end
      end
      
      class GoogleAnalyticsAdminV1betaProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :create_time, as: 'createTime'
          property :currency_code, as: 'currencyCode'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :expire_time, as: 'expireTime'
          property :industry_category, as: 'industryCategory'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :property_type, as: 'propertyType'
          property :service_level, as: 'serviceLevel'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1betaPropertySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
          property :property, as: 'property'
          property :property_type, as: 'propertyType'
        end
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
      
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_ticket_id, as: 'accountTicketId'
        end
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action, as: 'action'
          collection :actor_email, as: 'actorEmail'
          property :earliest_change_time, as: 'earliestChangeTime'
          property :latest_change_time, as: 'latestChangeTime'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :property, as: 'property'
          collection :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :change_history_events, as: 'changeHistoryEvents', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryEvent, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
