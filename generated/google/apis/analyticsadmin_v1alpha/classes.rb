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
      
      # A resource message representing a Google Analytics account.
      class GoogleAnalyticsAdminV1alphaAccount
        include Google::Apis::Core::Hashable
      
        # Country of business. Must be a non-deprecated code for a UN M.49 region. https:
        # //unicode.org/cldr/charts/latest/supplem // ental/
        # territory_containment_un_m_49.html
        # Corresponds to the JSON property `countryCode`
        # @return [String]
        attr_accessor :country_code
      
        # Output only. Time when this account was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Indicates whether this Account is soft-deleted or not. Deleted
        # accounts are excluded from List results unless specifically requested.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Required. Human-readable display name for this account.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this account. Format: accounts/`account` Example:
        # "accounts/100"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when account payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @country_code = args[:country_code] if args.key?(:country_code)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deleted = args[:deleted] if args.key?(:deleted)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A virtual resource representing an overview of an account and all its child
      # GA4 properties.
      class GoogleAnalyticsAdminV1alphaAccountSummary
        include Google::Apis::Core::Hashable
      
        # Resource name of account referred to by this account summary Format: accounts/`
        # account_id` Example: "accounts/1000"
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # Display name for the account referred to in this account summary.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name for this account summary. Format: accountSummaries/`account_id`
        # Example: "accountSummaries/1000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of summaries for child accounts of this account.
        # Corresponds to the JSON property `propertySummaries`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaPropertySummary>]
        attr_accessor :property_summaries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @property_summaries = args[:property_summaries] if args.key?(:property_summaries)
        end
      end
      
      # A resource message representing a Google Analytics Android app stream.
      class GoogleAnalyticsAdminV1alphaAndroidAppDataStream
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this stream was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable display name for the Data Stream. The max allowed display name
        # length is 255 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. ID of the corresponding Android app in Firebase, if any. This ID
        # can change if the Android app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Output only. Resource name of this Data Stream. Format: properties/`
        # property_id`/androidAppDataStreams/`stream_id` Example: "properties/1000/
        # androidAppDataStreams/2000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The package name for the app being measured. Example: "com.example.
        # myandroidapp"
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        # Output only. Time when stream payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @name = args[:name] if args.key?(:name)
          @package_name = args[:package_name] if args.key?(:package_name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Read-only resource used to summarize a principal's effective roles.
      class GoogleAnalyticsAdminV1alphaAuditUserLink
        include Google::Apis::Core::Hashable
      
        # Roles directly assigned to this user for this entity. Format: predefinedRoles/
        # read Excludes roles that are inherited from an account (if this is for a
        # property), group, or organization admin role.
        # Corresponds to the JSON property `directRoles`
        # @return [Array<String>]
        attr_accessor :direct_roles
      
        # Union of all permissions a user has at this account or property (includes
        # direct permissions, group-inherited permissions, etc.). Format:
        # predefinedRoles/read
        # Corresponds to the JSON property `effectiveRoles`
        # @return [Array<String>]
        attr_accessor :effective_roles
      
        # Email address of the linked user
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Example format: properties/1234/userLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_roles = args[:direct_roles] if args.key?(:direct_roles)
          @effective_roles = args[:effective_roles] if args.key?(:effective_roles)
          @email_address = args[:email_address] if args.key?(:email_address)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for AuditUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaAuditUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # The maximum number of user links to return. The service may return fewer than
        # this value. If unspecified, at most 1000 user links will be returned. The
        # maximum value is 5000; values above 5000 will be coerced to 5000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # A page token, received from a previous `AuditUserLinks` call. Provide this to
        # retrieve the subsequent page. When paginating, all other parameters provided
        # to `AuditUserLinks` must match the call that provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
        end
      end
      
      # Response message for AuditUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaAuditUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of AuditUserLinks. These will be ordered stably, but in an arbitrary
        # order.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAuditUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for BatchCreateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, then email the new users notifying them that they've been
        # granted permissions to the resource. Regardless of whether this is set or not,
        # notify_new_user field inside each individual request is ignored.
        # Corresponds to the JSON property `notifyNewUsers`
        # @return [Boolean]
        attr_accessor :notify_new_users
        alias_method :notify_new_users?, :notify_new_users
      
        # Required. The requests specifying the user links to create. A maximum of 1000
        # user links can be created in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateUserLinkRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notify_new_users = args[:notify_new_users] if args.key?(:notify_new_users)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchCreateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchCreateUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # The user links created.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for BatchDeleteUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchDeleteUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the user links to update. A maximum of 1000
        # user links can be updated in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchGetUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchGetUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # The requested user links.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for BatchUpdateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksRequest
        include Google::Apis::Core::Hashable
      
        # Required. The requests specifying the user links to update. A maximum of 1000
        # user links can be updated in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response message for BatchUpdateUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaBatchUpdateUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # The user links updated.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for CreateUserLink RPC. Users can have multiple email
      # addresses associated with their Google account, and one of these email
      # addresses is the "primary" email address. Any of the email addresses
      # associated with a Google account may be used for a new UserLink, but the
      # returned UserLink will always contain the "primary" email address. As a result,
      # the input and output email address for this request may differ.
      class GoogleAnalyticsAdminV1alphaCreateUserLinkRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, then email the new user notifying them that they've been
        # granted permissions to the resource.
        # Corresponds to the JSON property `notifyNewUser`
        # @return [Boolean]
        attr_accessor :notify_new_user
        alias_method :notify_new_user?, :notify_new_user
      
        # Required. Example format: accounts/1234
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # A resource message representing a user's permissions on an Account or Property
        # resource.
        # Corresponds to the JSON property `userLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        attr_accessor :user_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notify_new_user = args[:notify_new_user] if args.key?(:notify_new_user)
          @parent = args[:parent] if args.key?(:parent)
          @user_link = args[:user_link] if args.key?(:user_link)
        end
      end
      
      # A resource message representing data sharing settings of a Google Analytics
      # account.
      class GoogleAnalyticsAdminV1alphaDataSharingSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name. Format: accounts/`account`/dataSharingSettings
        # Example: "accounts/1000/dataSharingSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Allows any of Google sales to access the data in order to suggest
        # configuration changes to improve results.
        # Corresponds to the JSON property `sharingWithGoogleAnySalesEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_any_sales_enabled
        alias_method :sharing_with_google_any_sales_enabled?, :sharing_with_google_any_sales_enabled
      
        # Allows Google sales teams that are assigned to the customer to access the data
        # in order to suggest configuration changes to improve results. Sales team
        # restrictions still apply when enabled.
        # Corresponds to the JSON property `sharingWithGoogleAssignedSalesEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_assigned_sales_enabled
        alias_method :sharing_with_google_assigned_sales_enabled?, :sharing_with_google_assigned_sales_enabled
      
        # Allows Google to use the data to improve other Google products or services.
        # Corresponds to the JSON property `sharingWithGoogleProductsEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_products_enabled
        alias_method :sharing_with_google_products_enabled?, :sharing_with_google_products_enabled
      
        # Allows Google support to access the data in order to help troubleshoot issues.
        # Corresponds to the JSON property `sharingWithGoogleSupportEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_google_support_enabled
        alias_method :sharing_with_google_support_enabled?, :sharing_with_google_support_enabled
      
        # Allows Google to share the data anonymously in aggregate form with others.
        # Corresponds to the JSON property `sharingWithOthersEnabled`
        # @return [Boolean]
        attr_accessor :sharing_with_others_enabled
        alias_method :sharing_with_others_enabled?, :sharing_with_others_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @sharing_with_google_any_sales_enabled = args[:sharing_with_google_any_sales_enabled] if args.key?(:sharing_with_google_any_sales_enabled)
          @sharing_with_google_assigned_sales_enabled = args[:sharing_with_google_assigned_sales_enabled] if args.key?(:sharing_with_google_assigned_sales_enabled)
          @sharing_with_google_products_enabled = args[:sharing_with_google_products_enabled] if args.key?(:sharing_with_google_products_enabled)
          @sharing_with_google_support_enabled = args[:sharing_with_google_support_enabled] if args.key?(:sharing_with_google_support_enabled)
          @sharing_with_others_enabled = args[:sharing_with_others_enabled] if args.key?(:sharing_with_others_enabled)
        end
      end
      
      # Request message for DeleteUserLink RPC.
      class GoogleAnalyticsAdminV1alphaDeleteUserLinkRequest
        include Google::Apis::Core::Hashable
      
        # Required. Example format: accounts/1234/userLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Singleton resource under a WebDataStream, configuring measurement of
      # additional site interactions and content.
      class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
        include Google::Apis::Core::Hashable
      
        # Capture events when your visitors view content on your site that has articles
        # or blog posts.
        # Corresponds to the JSON property `articlesAndBlogsEnabled`
        # @return [Boolean]
        attr_accessor :articles_and_blogs_enabled
        alias_method :articles_and_blogs_enabled?, :articles_and_blogs_enabled
      
        # Capture events when your visitors view content on your site that has
        # structured data (eg, articles, blog posts, product details screens, etc.).
        # Corresponds to the JSON property `contentViewsEnabled`
        # @return [Boolean]
        attr_accessor :content_views_enabled
        alias_method :content_views_enabled?, :content_views_enabled
      
        # If enabled, capture a click event each time a visitor clicks a link or element
        # that has data attributes beginning with "data-ga".
        # Corresponds to the JSON property `dataTaggedElementClicksEnabled`
        # @return [Boolean]
        attr_accessor :data_tagged_element_clicks_enabled
        alias_method :data_tagged_element_clicks_enabled?, :data_tagged_element_clicks_enabled
      
        # Domains to exclude from measurement. Max length is 1024 characters.
        # Corresponds to the JSON property `excludedDomains`
        # @return [String]
        attr_accessor :excluded_domains
      
        # If enabled, capture a file download event each time a link is clicked with a
        # common document, compressed file, application, video, or audio extension.
        # Corresponds to the JSON property `fileDownloadsEnabled`
        # @return [Boolean]
        attr_accessor :file_downloads_enabled
        alias_method :file_downloads_enabled?, :file_downloads_enabled
      
        # If enabled, capture a view search results event each time a visitor interacts
        # with a form on your site.
        # Corresponds to the JSON property `formInteractionsEnabled`
        # @return [Boolean]
        attr_accessor :form_interactions_enabled
        alias_method :form_interactions_enabled?, :form_interactions_enabled
      
        # Output only. Resource name of this Data Stream. Format: properties/`
        # property_id`/webDataStreams/`stream_id`/enhancedMeasurementSettings Example: "
        # properties/1000/webDataStreams/2000/enhancedMeasurementSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If enabled, capture an outbound click event each time a visitor clicks a link
        # that leads them away from your domain.
        # Corresponds to the JSON property `outboundClicksEnabled`
        # @return [Boolean]
        attr_accessor :outbound_clicks_enabled
        alias_method :outbound_clicks_enabled?, :outbound_clicks_enabled
      
        # If enabled, capture a page view event each time the website changes the
        # browser history state.
        # Corresponds to the JSON property `pageChangesEnabled`
        # @return [Boolean]
        attr_accessor :page_changes_enabled
        alias_method :page_changes_enabled?, :page_changes_enabled
      
        # If enabled, capture a page view event each time a page loads.
        # Corresponds to the JSON property `pageLoadsEnabled`
        # @return [Boolean]
        attr_accessor :page_loads_enabled
        alias_method :page_loads_enabled?, :page_loads_enabled
      
        # Output only. If enabled, capture a page view event each time a page loads or
        # the website changes the browser history state.
        # Corresponds to the JSON property `pageViewsEnabled`
        # @return [Boolean]
        attr_accessor :page_views_enabled
        alias_method :page_views_enabled?, :page_views_enabled
      
        # Capture events when your visitors view content on your site that has product
        # details screens, etc.
        # Corresponds to the JSON property `productsAndEcommerceEnabled`
        # @return [Boolean]
        attr_accessor :products_and_ecommerce_enabled
        alias_method :products_and_ecommerce_enabled?, :products_and_ecommerce_enabled
      
        # If enabled, capture scroll events each time a visitor gets to the bottom of a
        # page.
        # Corresponds to the JSON property `scrollsEnabled`
        # @return [Boolean]
        attr_accessor :scrolls_enabled
        alias_method :scrolls_enabled?, :scrolls_enabled
      
        # Required. URL query parameters to interpret as site search parameters. Max
        # length is 1024 characters. Must not be empty.
        # Corresponds to the JSON property `searchQueryParameter`
        # @return [String]
        attr_accessor :search_query_parameter
      
        # If enabled, capture a view search results event each time a visitor performs a
        # search on your site (based on a query parameter).
        # Corresponds to the JSON property `siteSearchEnabled`
        # @return [Boolean]
        attr_accessor :site_search_enabled
        alias_method :site_search_enabled?, :site_search_enabled
      
        # Indicates whether Enhanced Measurement Settings will be used to automatically
        # measure interactions and content on this web stream. Changing this value does
        # not affect the settings themselves, but determines whether they are respected.
        # Corresponds to the JSON property `streamEnabled`
        # @return [Boolean]
        attr_accessor :stream_enabled
        alias_method :stream_enabled?, :stream_enabled
      
        # Additional URL query parameters. Max length is 1024 characters.
        # Corresponds to the JSON property `urlQueryParameter`
        # @return [String]
        attr_accessor :url_query_parameter
      
        # If enabled, capture video play, progress, and complete events as visitors view
        # embedded videos on your site.
        # Corresponds to the JSON property `videoEngagementEnabled`
        # @return [Boolean]
        attr_accessor :video_engagement_enabled
        alias_method :video_engagement_enabled?, :video_engagement_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @articles_and_blogs_enabled = args[:articles_and_blogs_enabled] if args.key?(:articles_and_blogs_enabled)
          @content_views_enabled = args[:content_views_enabled] if args.key?(:content_views_enabled)
          @data_tagged_element_clicks_enabled = args[:data_tagged_element_clicks_enabled] if args.key?(:data_tagged_element_clicks_enabled)
          @excluded_domains = args[:excluded_domains] if args.key?(:excluded_domains)
          @file_downloads_enabled = args[:file_downloads_enabled] if args.key?(:file_downloads_enabled)
          @form_interactions_enabled = args[:form_interactions_enabled] if args.key?(:form_interactions_enabled)
          @name = args[:name] if args.key?(:name)
          @outbound_clicks_enabled = args[:outbound_clicks_enabled] if args.key?(:outbound_clicks_enabled)
          @page_changes_enabled = args[:page_changes_enabled] if args.key?(:page_changes_enabled)
          @page_loads_enabled = args[:page_loads_enabled] if args.key?(:page_loads_enabled)
          @page_views_enabled = args[:page_views_enabled] if args.key?(:page_views_enabled)
          @products_and_ecommerce_enabled = args[:products_and_ecommerce_enabled] if args.key?(:products_and_ecommerce_enabled)
          @scrolls_enabled = args[:scrolls_enabled] if args.key?(:scrolls_enabled)
          @search_query_parameter = args[:search_query_parameter] if args.key?(:search_query_parameter)
          @site_search_enabled = args[:site_search_enabled] if args.key?(:site_search_enabled)
          @stream_enabled = args[:stream_enabled] if args.key?(:stream_enabled)
          @url_query_parameter = args[:url_query_parameter] if args.key?(:url_query_parameter)
          @video_engagement_enabled = args[:video_engagement_enabled] if args.key?(:video_engagement_enabled)
        end
      end
      
      # A link between an GA4 property and a Firebase project.
      class GoogleAnalyticsAdminV1alphaFirebaseLink
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this FirebaseLink was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Maximum user access to the GA4 property allowed to admins of the linked
        # Firebase project.
        # Corresponds to the JSON property `maximumUserAccess`
        # @return [String]
        attr_accessor :maximum_user_access
      
        # Output only. Example format: properties/1234/firebaseLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Firebase project resource name. When creating a FirebaseLink, you
        # may provide this resource name using either a project number or project ID.
        # Once this resource has been created, returned FirebaseLinks will always have a
        # project_name that contains a project number. Format: 'projects/`project number`
        # ' Example: 'projects/1234'
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @maximum_user_access = args[:maximum_user_access] if args.key?(:maximum_user_access)
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Read-only resource with the tag for sending data from a website to a
      # WebDataStream.
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        include Google::Apis::Core::Hashable
      
        # Immutable. JavaScript code snippet to be pasted as the first item into the
        # head tag of every webpage to measure.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # A link between an GA4 property and a Google Ads account.
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        include Google::Apis::Core::Hashable
      
        # Enable personalized advertising features with this integration. Automatically
        # publish my Google Analytics audience lists and Google Analytics remarketing
        # events/parameters to the linked Google Ads account. If this field is not set
        # on create/update it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. If true, this link is for a Google Ads manager account.
        # Corresponds to the JSON property `canManageClients`
        # @return [Boolean]
        attr_accessor :can_manage_clients
        alias_method :can_manage_clients?, :can_manage_clients
      
        # Output only. Time when this link was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. Google Ads customer ID.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Output only. Email address of the user that created the link. An empty string
        # will be returned if the email address can't be retrieved.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Output only. Format: properties/`propertyId`/googleAdsLinks/`googleAdsLinkId`
        # Note: googleAdsLinkId is not the Google Ads customer ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Format: properties/`propertyId`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. Time when this link was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @can_manage_clients = args[:can_manage_clients] if args.key?(:can_manage_clients)
          @create_time = args[:create_time] if args.key?(:create_time)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @email_address = args[:email_address] if args.key?(:email_address)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A resource message representing a Google Analytics IOS app stream.
      class GoogleAnalyticsAdminV1alphaIosAppDataStream
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The Apple App Store Bundle ID for the app Example: "com.
        # example.myiosapp"
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Output only. Time when this stream was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable display name for the Data Stream. The max allowed display name
        # length is 255 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. ID of the corresponding iOS app in Firebase, if any. This ID can
        # change if the iOS app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Output only. Resource name of this Data Stream. Format: properties/`
        # property_id`/iosAppDataStreams/`stream_id` Example: "properties/1000/
        # iosAppDataStreams/2000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when stream payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for ListAccountSummaries RPC.
      class GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
        include Google::Apis::Core::Hashable
      
        # Account summaries of all accounts the caller has access to.
        # Corresponds to the JSON property `accountSummaries`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccountSummary>]
        attr_accessor :account_summaries
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_summaries = args[:account_summaries] if args.key?(:account_summaries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for ListAccounts RPC.
      class GoogleAnalyticsAdminV1alphaListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount>]
        attr_accessor :accounts
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @accounts = args[:accounts] if args.key?(:accounts)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for ListAndroidDataStreams RPC.
      class GoogleAnalyticsAdminV1alphaListAndroidAppDataStreamsResponse
        include Google::Apis::Core::Hashable
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Corresponds to the JSON property `androidAppDataStreams`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream>]
        attr_accessor :android_app_data_streams
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_data_streams = args[:android_app_data_streams] if args.key?(:android_app_data_streams)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListFirebaseLinks RPC
      class GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of FirebaseLinks. This will have at most one value.
        # Corresponds to the JSON property `firebaseLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink>]
        attr_accessor :firebase_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firebase_links = args[:firebase_links] if args.key?(:firebase_links)
        end
      end
      
      # Response message for ListGoogleAdsLinks RPC.
      class GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of GoogleAdsLinks.
        # Corresponds to the JSON property `googleAdsLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink>]
        attr_accessor :google_ads_links
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @google_ads_links = args[:google_ads_links] if args.key?(:google_ads_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Request message for ListIosAppDataStreams RPC.
      class GoogleAnalyticsAdminV1alphaListIosAppDataStreamsResponse
        include Google::Apis::Core::Hashable
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Corresponds to the JSON property `iosAppDataStreams`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream>]
        attr_accessor :ios_app_data_streams
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ios_app_data_streams = args[:ios_app_data_streams] if args.key?(:ios_app_data_streams)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListProperties RPC.
      class GoogleAnalyticsAdminV1alphaListPropertiesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty>]
        attr_accessor :properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @properties = args[:properties] if args.key?(:properties)
        end
      end
      
      # Response message for ListUserLinks RPC.
      class GoogleAnalyticsAdminV1alphaListUserLinksResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of UserLinks. These will be ordered stably, but in an arbitrary order.
        # Corresponds to the JSON property `userLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink>]
        attr_accessor :user_links
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @user_links = args[:user_links] if args.key?(:user_links)
        end
      end
      
      # Request message for ListWebDataStreams RPC.
      class GoogleAnalyticsAdminV1alphaListWebDataStreamsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Corresponds to the JSON property `webDataStreams`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream>]
        attr_accessor :web_data_streams
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @web_data_streams = args[:web_data_streams] if args.key?(:web_data_streams)
        end
      end
      
      # A resource message representing a Google Analytics GA4 property.
      class GoogleAnalyticsAdminV1alphaProperty
        include Google::Apis::Core::Hashable
      
        # Output only. Time when the entity was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The currency type used in reports involving monetary values. Format: https://
        # en.wikipedia.org/wiki/ISO_4217 Examples: "USD", "EUR", "JPY"
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Output only. Indicates whether this Property is soft-deleted or not. Deleted
        # properties are excluded from List results unless specifically requested.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # Required. Human-readable display name for this property. The max allowed
        # display name length is 100 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Industry associated with this property Example: AUTOMOTIVE, FOOD_AND_DRINK
        # Corresponds to the JSON property `industryCategory`
        # @return [String]
        attr_accessor :industry_category
      
        # Output only. Resource name of this property. Format: properties/`property_id`
        # Example: "properties/1000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. Resource name of this property's logical parent. Note: The Property-
        # Moving UI can be used to change the parent. Format: accounts/`account` Example:
        # "accounts/100"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Reporting Time Zone, used as the day boundary for reports, regardless of where
        # the data originates. If the time zone honors DST, Analytics will automatically
        # adjust for the changes. NOTE: Changing the time zone only affects data going
        # forward, and is not applied retroactively. Format: https://www.iana.org/time-
        # zones Example: "America/Los_Angeles"
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Output only. Time when entity payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @deleted = args[:deleted] if args.key?(:deleted)
          @display_name = args[:display_name] if args.key?(:display_name)
          @industry_category = args[:industry_category] if args.key?(:industry_category)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A virtual resource representing metadata for an GA4 property.
      class GoogleAnalyticsAdminV1alphaPropertySummary
        include Google::Apis::Core::Hashable
      
        # Display name for the property referred to in this account summary.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of property referred to by this property summary Format:
        # properties/`property_id` Example: "properties/1000"
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # Request message for ProvisionAccountTicket RPC.
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        attr_accessor :account
      
        # Redirect URI where the user will be sent after accepting Terms of Service.
        # Must be configured in Developers Console as a Redirect URI
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @redirect_uri = args[:redirect_uri] if args.key?(:redirect_uri)
        end
      end
      
      # Response message for ProvisionAccountTicket RPC.
      class GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
        include Google::Apis::Core::Hashable
      
        # The param to be passed in the ToS link.
        # Corresponds to the JSON property `accountTicketId`
        # @return [String]
        attr_accessor :account_ticket_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_ticket_id = args[:account_ticket_id] if args.key?(:account_ticket_id)
        end
      end
      
      # Request message for UpdateUserLink RPC.
      class GoogleAnalyticsAdminV1alphaUpdateUserLinkRequest
        include Google::Apis::Core::Hashable
      
        # A resource message representing a user's permissions on an Account or Property
        # resource.
        # Corresponds to the JSON property `userLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaUserLink]
        attr_accessor :user_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @user_link = args[:user_link] if args.key?(:user_link)
        end
      end
      
      # A resource message representing a user's permissions on an Account or Property
      # resource.
      class GoogleAnalyticsAdminV1alphaUserLink
        include Google::Apis::Core::Hashable
      
        # Roles directly assigned to this user for this account or property. Valid
        # values: predefinedRoles/read predefinedRoles/collaborate predefinedRoles/edit
        # predefinedRoles/manage-users Excludes roles that are inherited from a higher-
        # level entity, group, or organization admin role. A UserLink that is updated to
        # have an empty list of direct_roles will be deleted.
        # Corresponds to the JSON property `directRoles`
        # @return [Array<String>]
        attr_accessor :direct_roles
      
        # Email address of the user to link
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Example format: properties/1234/userLinks/5678
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @direct_roles = args[:direct_roles] if args.key?(:direct_roles)
          @email_address = args[:email_address] if args.key?(:email_address)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A resource message representing a Google Analytics web stream.
      class GoogleAnalyticsAdminV1alphaWebDataStream
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this stream was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Immutable. Domain name of the web app being measured, or empty. Example: "http:
        # //www.google.com", "https://www.google.com"
        # Corresponds to the JSON property `defaultUri`
        # @return [String]
        attr_accessor :default_uri
      
        # Required. Human-readable display name for the Data Stream. The max allowed
        # display name length is 100 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. ID of the corresponding web app in Firebase, if any. This ID can
        # change if the web app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Output only. Analytics "Measurement ID", without the "G-" prefix. Example: "G-
        # 1A2BCD345E" would just be "1A2BCD345E"
        # Corresponds to the JSON property `measurementId`
        # @return [String]
        attr_accessor :measurement_id
      
        # Output only. Resource name of this Data Stream. Format: properties/`
        # property_id`/webDataStreams/`stream_id` Example: "properties/1000/
        # webDataStreams/2000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when stream payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @default_uri = args[:default_uri] if args.key?(:default_uri)
          @display_name = args[:display_name] if args.key?(:display_name)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @measurement_id = args[:measurement_id] if args.key?(:measurement_id)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class GoogleProtobufEmpty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
