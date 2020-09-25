# Copyright 2015 Google Inc.
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
      
      class GoogleAnalyticsAdminV1alphaAndroidAppDataStream
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
      
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
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
      
      class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
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
      
      class GoogleAnalyticsAdminV1alphaIosAppDataStream
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
          property :country_code, as: 'countryCode'
          property :create_time, as: 'createTime'
          property :deleted, as: 'deleted'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
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
      
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :notify_new_user, as: 'notifyNewUser'
          property :parent, as: 'parent'
          property :user_link, as: 'userLink', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink::Representation
      
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
      
      class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :articles_and_blogs_enabled, as: 'articlesAndBlogsEnabled'
          property :content_views_enabled, as: 'contentViewsEnabled'
          property :data_tagged_element_clicks_enabled, as: 'dataTaggedElementClicksEnabled'
          property :excluded_domains, as: 'excludedDomains'
          property :file_downloads_enabled, as: 'fileDownloadsEnabled'
          property :form_interactions_enabled, as: 'formInteractionsEnabled'
          property :name, as: 'name'
          property :outbound_clicks_enabled, as: 'outboundClicksEnabled'
          property :page_changes_enabled, as: 'pageChangesEnabled'
          property :page_loads_enabled, as: 'pageLoadsEnabled'
          property :page_views_enabled, as: 'pageViewsEnabled'
          property :products_and_ecommerce_enabled, as: 'productsAndEcommerceEnabled'
          property :scrolls_enabled, as: 'scrollsEnabled'
          property :search_query_parameter, as: 'searchQueryParameter'
          property :site_search_enabled, as: 'siteSearchEnabled'
          property :stream_enabled, as: 'streamEnabled'
          property :url_query_parameter, as: 'urlQueryParameter'
          property :video_engagement_enabled, as: 'videoEngagementEnabled'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :maximum_user_access, as: 'maximumUserAccess'
          property :name, as: 'name'
          property :project, as: 'project'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :snippet, as: 'snippet'
        end
      end
      
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :can_manage_clients, as: 'canManageClients'
          property :create_time, as: 'createTime'
          property :customer_id, as: 'customerId'
          property :email_address, as: 'emailAddress'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :update_time, as: 'updateTime'
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
      
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firebase_links, as: 'firebaseLinks', class: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
      
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
      
      class GoogleAnalyticsAdminV1alphaProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :currency_code, as: 'currencyCode'
          property :deleted, as: 'deleted'
          property :display_name, as: 'displayName'
          property :industry_category, as: 'industryCategory'
          property :name, as: 'name'
          property :parent, as: 'parent'
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
