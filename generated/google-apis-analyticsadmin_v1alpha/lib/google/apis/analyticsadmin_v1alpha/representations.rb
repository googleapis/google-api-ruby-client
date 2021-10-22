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
    module AnalyticsadminV1alpha
      
      class GoogleAnalyticsAdminV1alphaAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccountSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAndroidAppDataStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaConversionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCustomDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaCustomMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDataSharingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaIosAppDataStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListConversionEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListPropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListUserLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaPropertySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaUserLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaWebDataStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1alphaAccount
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
      
      class GoogleAnalyticsAdminV1alphaAccountSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :property_summaries, as: 'propertySummaries', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPropertySummary, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPropertySummary::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledgement, as: 'acknowledgement'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAndroidAppDataStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :firebase_app_id, as: 'firebaseAppId'
          property :name, as: 'name'
          property :package_name, as: 'packageName'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_video360_advertiser_link, as: 'displayVideo360AdvertiserLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :direct_roles, as: 'directRoles'
          collection :effective_roles, as: 'effectiveRoles'
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notify_new_users, as: 'notifyNewUsers'
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateUserLinkRequest, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateUserLinkRequest::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :resource, as: 'resource'
          property :resource_after_change, as: 'resourceAfterChange', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource::Representation
      
          property :resource_before_change, as: 'resourceBeforeChange', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
      
          property :android_app_data_stream, as: 'androidAppDataStream', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream::Representation
      
          property :conversion_event, as: 'conversionEvent', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
      
          property :custom_dimension, as: 'customDimension', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
      
          property :custom_metric, as: 'customMetric', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
      
          property :data_retention_settings, as: 'dataRetentionSettings', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
      
          property :display_video360_advertiser_link, as: 'displayVideo360AdvertiserLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
      
          property :display_video360_advertiser_link_proposal, as: 'displayVideo360AdvertiserLinkProposal', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
      
          property :firebase_link, as: 'firebaseLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
      
          property :google_ads_link, as: 'googleAdsLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
      
          property :google_signals_settings, as: 'googleSignalsSettings', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
      
          property :ios_app_data_stream, as: 'iosAppDataStream', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream::Representation
      
          property :measurement_protocol_secret, as: 'measurementProtocolSecret', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
      
          property :property, as: 'property', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
      
          property :web_data_stream, as: 'webDataStream', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaChangeHistoryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_type, as: 'actorType'
          property :change_time, as: 'changeTime'
          collection :changes, as: 'changes', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChange, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChange::Representation
      
          property :changes_filtered, as: 'changesFiltered'
          property :id, as: 'id'
          property :user_actor_email, as: 'userActorEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaConversionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :custom, as: 'custom'
          property :deletable, as: 'deletable'
          property :event_name, as: 'eventName'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notify_new_user, as: 'notifyNewUser'
          property :parent, as: 'parent'
          property :user_link, as: 'userLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaCustomDimension
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
      
      class GoogleAnalyticsAdminV1alphaCustomMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :measurement_unit, as: 'measurementUnit'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_data_retention, as: 'eventDataRetention'
          property :name, as: 'name'
          property :reset_user_data_on_new_activity, as: 'resetUserDataOnNewActivity'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDataSharingSettings
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
      
      class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :advertiser_display_name, as: 'advertiserDisplayName'
          property :advertiser_id, as: 'advertiserId'
          property :campaign_data_sharing_enabled, as: 'campaignDataSharingEnabled'
          property :cost_data_sharing_enabled, as: 'costDataSharingEnabled'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :advertiser_display_name, as: 'advertiserDisplayName'
          property :advertiser_id, as: 'advertiserId'
          property :campaign_data_sharing_enabled, as: 'campaignDataSharingEnabled'
          property :cost_data_sharing_enabled, as: 'costDataSharingEnabled'
          property :link_proposal_status_details, as: 'linkProposalStatusDetails', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails::Representation
      
          property :name, as: 'name'
          property :validation_email, as: 'validationEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :project, as: 'project'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :snippet, as: 'snippet'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
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
      
      class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consent, as: 'consent'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaIosAppDataStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :firebase_app_id, as: 'firebaseAppId'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :link_proposal_initiating_product, as: 'linkProposalInitiatingProduct'
          property :link_proposal_state, as: 'linkProposalState'
          property :requestor_email, as: 'requestorEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_summaries, as: 'accountSummaries', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccountSummary, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccountSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :android_app_data_streams, as: 'androidAppDataStreams', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListConversionEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_events, as: 'conversionEvents', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_dimensions, as: 'customDimensions', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_metrics, as: 'customMetrics', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_video360_advertiser_link_proposals, as: 'displayVideo360AdvertiserLinkProposals', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :display_video360_advertiser_links, as: 'displayVideo360AdvertiserLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firebase_links, as: 'firebaseLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_ads_links, as: 'googleAdsLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ios_app_data_streams, as: 'iosAppDataStreams', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :measurement_protocol_secrets, as: 'measurementProtocolSecrets', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListPropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :properties, as: 'properties', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListUserLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :user_links, as: 'userLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :web_data_streams, as: 'webDataStreams', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :secret_value, as: 'secretValue'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaProperty
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
          property :service_level, as: 'serviceLevel'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaPropertySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :property, as: 'property'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
      
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_ticket_id, as: 'accountTicketId'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
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
      
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :change_history_events, as: 'changeHistoryEvents', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryEvent, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :user_link, as: 'userLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1alphaUserLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :direct_roles, as: 'directRoles'
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaWebDataStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :default_uri, as: 'defaultUri'
          property :display_name, as: 'displayName'
          property :firebase_app_id, as: 'firebaseAppId'
          property :measurement_id, as: 'measurementId'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
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
