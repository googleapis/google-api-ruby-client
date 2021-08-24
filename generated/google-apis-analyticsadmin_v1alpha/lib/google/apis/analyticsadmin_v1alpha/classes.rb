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
      
      # A resource message representing a Google Analytics account.
      class GoogleAnalyticsAdminV1alphaAccount
        include Google::Apis::Core::Hashable
      
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
      
        # Country of business. Must be a Unicode CLDR region code.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Output only. Time when account payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deleted = args[:deleted] if args.key?(:deleted)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @region_code = args[:region_code] if args.key?(:region_code)
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
      
      # Request message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for ApproveDisplayVideo360AdvertiserLinkProposal RPC.
      class GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
        include Google::Apis::Core::Hashable
      
        # A link between a GA4 property and a Display & Video 360 advertiser.
        # Corresponds to the JSON property `displayVideo360AdvertiserLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        attr_accessor :display_video360_advertiser_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_video360_advertiser_link = args[:display_video360_advertiser_link] if args.key?(:display_video360_advertiser_link)
        end
      end
      
      # Request message for ArchiveCustomDimension RPC.
      class GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ArchiveCustomMetric RPC.
      class GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
      # Request message for CancelDisplayVideo360AdvertiserLinkProposal RPC.
      class GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A description of a change to a single Google Analytics resource.
      class GoogleAnalyticsAdminV1alphaChangeHistoryChange
        include Google::Apis::Core::Hashable
      
        # The type of action that changed this resource.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Resource name of the resource whose changes are described by this entry.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # A snapshot of a resource as before or after the result of a change in change
        # history.
        # Corresponds to the JSON property `resourceAfterChange`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource]
        attr_accessor :resource_after_change
      
        # A snapshot of a resource as before or after the result of a change in change
        # history.
        # Corresponds to the JSON property `resourceBeforeChange`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource]
        attr_accessor :resource_before_change
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @resource = args[:resource] if args.key?(:resource)
          @resource_after_change = args[:resource_after_change] if args.key?(:resource_after_change)
          @resource_before_change = args[:resource_before_change] if args.key?(:resource_before_change)
        end
      end
      
      # A snapshot of a resource as before or after the result of a change in change
      # history.
      class GoogleAnalyticsAdminV1alphaChangeHistoryChangeChangeHistoryResource
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        attr_accessor :account
      
        # A resource message representing a Google Analytics Android app stream.
        # Corresponds to the JSON property `androidAppDataStream`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAndroidAppDataStream]
        attr_accessor :android_app_data_stream
      
        # A conversion event in a Google Analytics property.
        # Corresponds to the JSON property `conversionEvent`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        attr_accessor :conversion_event
      
        # A definition for a CustomDimension.
        # Corresponds to the JSON property `customDimension`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        attr_accessor :custom_dimension
      
        # A definition for a custom metric.
        # Corresponds to the JSON property `customMetric`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        attr_accessor :custom_metric
      
        # Settings values for data retention. This is a singleton resource.
        # Corresponds to the JSON property `dataRetentionSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings]
        attr_accessor :data_retention_settings
      
        # A link between a GA4 property and a Display & Video 360 advertiser.
        # Corresponds to the JSON property `displayVideo360AdvertiserLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        attr_accessor :display_video360_advertiser_link
      
        # A proposal for a link between an GA4 property and a Display & Video 360
        # advertiser. A proposal is converted to a DisplayVideo360AdvertiserLink once
        # approved. Google Analytics admins approve inbound proposals while Display &
        # Video 360 admins approve outbound proposals.
        # Corresponds to the JSON property `displayVideo360AdvertiserLinkProposal`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        attr_accessor :display_video360_advertiser_link_proposal
      
        # A link between an GA4 property and a Firebase project.
        # Corresponds to the JSON property `firebaseLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink]
        attr_accessor :firebase_link
      
        # A link between an GA4 property and a Google Ads account.
        # Corresponds to the JSON property `googleAdsLink`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink]
        attr_accessor :google_ads_link
      
        # Settings values for Google Signals. This is a singleton resource.
        # Corresponds to the JSON property `googleSignalsSettings`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings]
        attr_accessor :google_signals_settings
      
        # A resource message representing a Google Analytics IOS app stream.
        # Corresponds to the JSON property `iosAppDataStream`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaIosAppDataStream]
        attr_accessor :ios_app_data_stream
      
        # A secret value used for sending hits to Measurement Protocol.
        # Corresponds to the JSON property `measurementProtocolSecret`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        attr_accessor :measurement_protocol_secret
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        attr_accessor :property
      
        # A resource message representing a Google Analytics web stream.
        # Corresponds to the JSON property `webDataStream`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaWebDataStream]
        attr_accessor :web_data_stream
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @android_app_data_stream = args[:android_app_data_stream] if args.key?(:android_app_data_stream)
          @conversion_event = args[:conversion_event] if args.key?(:conversion_event)
          @custom_dimension = args[:custom_dimension] if args.key?(:custom_dimension)
          @custom_metric = args[:custom_metric] if args.key?(:custom_metric)
          @data_retention_settings = args[:data_retention_settings] if args.key?(:data_retention_settings)
          @display_video360_advertiser_link = args[:display_video360_advertiser_link] if args.key?(:display_video360_advertiser_link)
          @display_video360_advertiser_link_proposal = args[:display_video360_advertiser_link_proposal] if args.key?(:display_video360_advertiser_link_proposal)
          @firebase_link = args[:firebase_link] if args.key?(:firebase_link)
          @google_ads_link = args[:google_ads_link] if args.key?(:google_ads_link)
          @google_signals_settings = args[:google_signals_settings] if args.key?(:google_signals_settings)
          @ios_app_data_stream = args[:ios_app_data_stream] if args.key?(:ios_app_data_stream)
          @measurement_protocol_secret = args[:measurement_protocol_secret] if args.key?(:measurement_protocol_secret)
          @property = args[:property] if args.key?(:property)
          @web_data_stream = args[:web_data_stream] if args.key?(:web_data_stream)
        end
      end
      
      # A set of changes within a Google Analytics account or its child properties
      # that resulted from the same cause. Common causes would be updates made in the
      # Google Analytics UI, changes from customer support, or automatic Google
      # Analytics system changes.
      class GoogleAnalyticsAdminV1alphaChangeHistoryEvent
        include Google::Apis::Core::Hashable
      
        # The type of actor that made this change.
        # Corresponds to the JSON property `actorType`
        # @return [String]
        attr_accessor :actor_type
      
        # Time when change was made.
        # Corresponds to the JSON property `changeTime`
        # @return [String]
        attr_accessor :change_time
      
        # A list of changes made in this change history event that fit the filters
        # specified in SearchChangeHistoryEventsRequest.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryChange>]
        attr_accessor :changes
      
        # If true, then the list of changes returned was filtered, and does not
        # represent all changes that occurred in this event.
        # Corresponds to the JSON property `changesFiltered`
        # @return [Boolean]
        attr_accessor :changes_filtered
        alias_method :changes_filtered?, :changes_filtered
      
        # ID of this change history event. This ID is unique across Google Analytics.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Email address of the Google account that made the change. This will be a valid
        # email address if the actor field is set to USER, and empty otherwise. Google
        # accounts that have been deleted will cause an error.
        # Corresponds to the JSON property `userActorEmail`
        # @return [String]
        attr_accessor :user_actor_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actor_type = args[:actor_type] if args.key?(:actor_type)
          @change_time = args[:change_time] if args.key?(:change_time)
          @changes = args[:changes] if args.key?(:changes)
          @changes_filtered = args[:changes_filtered] if args.key?(:changes_filtered)
          @id = args[:id] if args.key?(:id)
          @user_actor_email = args[:user_actor_email] if args.key?(:user_actor_email)
        end
      end
      
      # A conversion event in a Google Analytics property.
      class GoogleAnalyticsAdminV1alphaConversionEvent
        include Google::Apis::Core::Hashable
      
        # Output only. Time when this conversion event was created in the property.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. If set to true, this conversion event refers to a custom event.
        # If set to false, this conversion event refers to a default event in GA.
        # Default events typically have special meaning in GA. Default events are
        # usually created for you by the GA system, but in some cases can be created by
        # property admins. Custom events count towards the maximum number of custom
        # conversion events that may be created per property.
        # Corresponds to the JSON property `custom`
        # @return [Boolean]
        attr_accessor :custom
        alias_method :custom?, :custom
      
        # Output only. If set, this event can currently be deleted via
        # DeleteConversionEvent.
        # Corresponds to the JSON property `deletable`
        # @return [Boolean]
        attr_accessor :deletable
        alias_method :deletable?, :deletable
      
        # Immutable. The event name for this conversion event. Examples: 'click', '
        # purchase'
        # Corresponds to the JSON property `eventName`
        # @return [String]
        attr_accessor :event_name
      
        # Output only. Resource name of this conversion event. Format: properties/`
        # property`/conversionEvents/`conversion_event`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom = args[:custom] if args.key?(:custom)
          @deletable = args[:deletable] if args.key?(:deletable)
          @event_name = args[:event_name] if args.key?(:event_name)
          @name = args[:name] if args.key?(:name)
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
      
      # A definition for a CustomDimension.
      class GoogleAnalyticsAdminV1alphaCustomDimension
        include Google::Apis::Core::Hashable
      
        # Optional. Description for this custom dimension. Max length of 150 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If set to true, sets this dimension as NPA and excludes it from ads
        # personalization. This is currently only supported by user-scoped custom
        # dimensions.
        # Corresponds to the JSON property `disallowAdsPersonalization`
        # @return [Boolean]
        attr_accessor :disallow_ads_personalization
        alias_method :disallow_ads_personalization?, :disallow_ads_personalization
      
        # Required. Display name for this custom dimension as shown in the Analytics UI.
        # Max length of 82 characters, alphanumeric plus space and underscore starting
        # with a letter. Legacy system-generated display names may contain square
        # brackets, but updates to this field will never permit square brackets.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name for this CustomDimension resource. Format:
        # properties/`property`/customDimensions/`customDimension`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Tagging parameter name for this custom dimension. If this
        # is a user-scoped dimension, then this is the user property name. If this is an
        # event-scoped dimension, then this is the event parameter name. May only
        # contain alphanumeric and underscore characters, starting with a letter. Max
        # length of 24 characters for user-scoped dimensions, 40 characters for event-
        # scoped dimensions.
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Required. Immutable. The scope of this dimension.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @disallow_ads_personalization = args[:disallow_ads_personalization] if args.key?(:disallow_ads_personalization)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # A definition for a custom metric.
      class GoogleAnalyticsAdminV1alphaCustomMetric
        include Google::Apis::Core::Hashable
      
        # Optional. Description for this custom dimension. Max length of 150 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name for this custom metric as shown in the Analytics UI.
        # Max length of 82 characters, alphanumeric plus space and underscore starting
        # with a letter. Legacy system-generated display names may contain square
        # brackets, but updates to this field will never permit square brackets.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The type for the custom metric's value.
        # Corresponds to the JSON property `measurementUnit`
        # @return [String]
        attr_accessor :measurement_unit
      
        # Output only. Resource name for this CustomMetric resource. Format: properties/`
        # property`/customMetrics/`customMetric`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. Tagging name for this custom metric. If this is an event-
        # scoped metric, then this is the event parameter name. May only contain
        # alphanumeric and underscore charactes, starting with a letter. Max length of
        # 40 characters for event-scoped metrics.
        # Corresponds to the JSON property `parameterName`
        # @return [String]
        attr_accessor :parameter_name
      
        # Required. Immutable. The scope of this custom metric.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @measurement_unit = args[:measurement_unit] if args.key?(:measurement_unit)
          @name = args[:name] if args.key?(:name)
          @parameter_name = args[:parameter_name] if args.key?(:parameter_name)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Settings values for data retention. This is a singleton resource.
      class GoogleAnalyticsAdminV1alphaDataRetentionSettings
        include Google::Apis::Core::Hashable
      
        # The length of time that event-level data is retained.
        # Corresponds to the JSON property `eventDataRetention`
        # @return [String]
        attr_accessor :event_data_retention
      
        # Output only. Resource name for this DataRetentionSetting resource. Format:
        # properties/`property`/dataRetentionSettings
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If true, reset the retention period for the user identifier with every event
        # from that user.
        # Corresponds to the JSON property `resetUserDataOnNewActivity`
        # @return [Boolean]
        attr_accessor :reset_user_data_on_new_activity
        alias_method :reset_user_data_on_new_activity?, :reset_user_data_on_new_activity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_data_retention = args[:event_data_retention] if args.key?(:event_data_retention)
          @name = args[:name] if args.key?(:name)
          @reset_user_data_on_new_activity = args[:reset_user_data_on_new_activity] if args.key?(:reset_user_data_on_new_activity)
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
      
      # A link between a GA4 property and a Display & Video 360 advertiser.
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
        include Google::Apis::Core::Hashable
      
        # Enables personalized advertising features with this integration. If this field
        # is not set on create/update, it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. The display name of the Display & Video 360 Advertiser.
        # Corresponds to the JSON property `advertiserDisplayName`
        # @return [String]
        attr_accessor :advertiser_display_name
      
        # Immutable. The Display & Video 360 Advertiser's advertiser ID.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Immutable. Enables the import of campaign data from Display & Video 360 into
        # the GA4 property. After link creation, this can only be updated from the
        # Display & Video 360 product. If this field is not set on create, it will be
        # defaulted to true.
        # Corresponds to the JSON property `campaignDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :campaign_data_sharing_enabled
        alias_method :campaign_data_sharing_enabled?, :campaign_data_sharing_enabled
      
        # Immutable. Enables the import of cost data from Display & Video 360 into the
        # GA4 property. This can only be enabled if campaign_data_import_enabled is
        # enabled. After link creation, this can only be updated from the Display &
        # Video 360 product. If this field is not set on create, it will be defaulted to
        # true.
        # Corresponds to the JSON property `costDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :cost_data_sharing_enabled
        alias_method :cost_data_sharing_enabled?, :cost_data_sharing_enabled
      
        # Output only. The resource name for this DisplayVideo360AdvertiserLink resource.
        # Format: properties/`propertyId`/displayVideo360AdvertiserLinks/`linkId` Note:
        # linkId is not the Display & Video 360 Advertiser ID
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @advertiser_display_name = args[:advertiser_display_name] if args.key?(:advertiser_display_name)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_data_sharing_enabled = args[:campaign_data_sharing_enabled] if args.key?(:campaign_data_sharing_enabled)
          @cost_data_sharing_enabled = args[:cost_data_sharing_enabled] if args.key?(:cost_data_sharing_enabled)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A proposal for a link between an GA4 property and a Display & Video 360
      # advertiser. A proposal is converted to a DisplayVideo360AdvertiserLink once
      # approved. Google Analytics admins approve inbound proposals while Display &
      # Video 360 admins approve outbound proposals.
      class GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
        include Google::Apis::Core::Hashable
      
        # Immutable. Enables personalized advertising features with this integration. If
        # this field is not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `adsPersonalizationEnabled`
        # @return [Boolean]
        attr_accessor :ads_personalization_enabled
        alias_method :ads_personalization_enabled?, :ads_personalization_enabled
      
        # Output only. The display name of the Display & Video Advertiser. Only
        # populated for proposals that originated from Display & Video 360.
        # Corresponds to the JSON property `advertiserDisplayName`
        # @return [String]
        attr_accessor :advertiser_display_name
      
        # Immutable. The Display & Video 360 Advertiser's advertiser ID.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # Immutable. Enables the import of campaign data from Display & Video 360. If
        # this field is not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `campaignDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :campaign_data_sharing_enabled
        alias_method :campaign_data_sharing_enabled?, :campaign_data_sharing_enabled
      
        # Immutable. Enables the import of cost data from Display & Video 360. This can
        # only be enabled if campaign_data_import_enabled is enabled. If this field is
        # not set on create, it will be defaulted to true.
        # Corresponds to the JSON property `costDataSharingEnabled`
        # @return [Boolean]
        attr_accessor :cost_data_sharing_enabled
        alias_method :cost_data_sharing_enabled?, :cost_data_sharing_enabled
      
        # Status information for a link proposal.
        # Corresponds to the JSON property `linkProposalStatusDetails`
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails]
        attr_accessor :link_proposal_status_details
      
        # Output only. The resource name for this DisplayVideo360AdvertiserLinkProposal
        # resource. Format: properties/`propertyId`/
        # displayVideo360AdvertiserLinkProposals/`proposalId` Note: proposalId is not
        # the Display & Video 360 Advertiser ID
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Input only. On a proposal being sent to Display & Video 360, this field must
        # be set to the email address of an admin on the target advertiser. This is used
        # to verify that the Google Analytics admin is aware of at least one admin on
        # the Display & Video 360 Advertiser. This does not restrict approval of the
        # proposal to a single user. Any admin on the Display & Video 360 Advertiser may
        # approve the proposal.
        # Corresponds to the JSON property `validationEmail`
        # @return [String]
        attr_accessor :validation_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ads_personalization_enabled = args[:ads_personalization_enabled] if args.key?(:ads_personalization_enabled)
          @advertiser_display_name = args[:advertiser_display_name] if args.key?(:advertiser_display_name)
          @advertiser_id = args[:advertiser_id] if args.key?(:advertiser_id)
          @campaign_data_sharing_enabled = args[:campaign_data_sharing_enabled] if args.key?(:campaign_data_sharing_enabled)
          @cost_data_sharing_enabled = args[:cost_data_sharing_enabled] if args.key?(:cost_data_sharing_enabled)
          @link_proposal_status_details = args[:link_proposal_status_details] if args.key?(:link_proposal_status_details)
          @name = args[:name] if args.key?(:name)
          @validation_email = args[:validation_email] if args.key?(:validation_email)
        end
      end
      
      # Singleton resource under a WebDataStream, configuring measurement of
      # additional site interactions and content.
      class GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
        include Google::Apis::Core::Hashable
      
        # If enabled, capture a file download event each time a link is clicked with a
        # common document, compressed file, application, video, or audio extension.
        # Corresponds to the JSON property `fileDownloadsEnabled`
        # @return [Boolean]
        attr_accessor :file_downloads_enabled
        alias_method :file_downloads_enabled?, :file_downloads_enabled
      
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
      
        # Output only. If enabled, capture a page view event each time a page loads.
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
        # Corresponds to the JSON property `uriQueryParameter`
        # @return [String]
        attr_accessor :uri_query_parameter
      
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
          @file_downloads_enabled = args[:file_downloads_enabled] if args.key?(:file_downloads_enabled)
          @name = args[:name] if args.key?(:name)
          @outbound_clicks_enabled = args[:outbound_clicks_enabled] if args.key?(:outbound_clicks_enabled)
          @page_changes_enabled = args[:page_changes_enabled] if args.key?(:page_changes_enabled)
          @page_loads_enabled = args[:page_loads_enabled] if args.key?(:page_loads_enabled)
          @page_views_enabled = args[:page_views_enabled] if args.key?(:page_views_enabled)
          @scrolls_enabled = args[:scrolls_enabled] if args.key?(:scrolls_enabled)
          @search_query_parameter = args[:search_query_parameter] if args.key?(:search_query_parameter)
          @site_search_enabled = args[:site_search_enabled] if args.key?(:site_search_enabled)
          @stream_enabled = args[:stream_enabled] if args.key?(:stream_enabled)
          @uri_query_parameter = args[:uri_query_parameter] if args.key?(:uri_query_parameter)
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
          @name = args[:name] if args.key?(:name)
          @project = args[:project] if args.key?(:project)
        end
      end
      
      # Read-only resource with the tag for sending data from a website to a
      # WebDataStream.
      class GoogleAnalyticsAdminV1alphaGlobalSiteTag
        include Google::Apis::Core::Hashable
      
        # Output only. Resource name for this GlobalSiteTag resource. Format: properties/
        # `propertyId`/globalSiteTag
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @name = args[:name] if args.key?(:name)
          @snippet = args[:snippet] if args.key?(:snippet)
        end
      end
      
      # A link between an GA4 property and a Google Ads account.
      class GoogleAnalyticsAdminV1alphaGoogleAdsLink
        include Google::Apis::Core::Hashable
      
        # Enable personalized advertising features with this integration. Automatically
        # publish my Google Analytics audience lists and Google Analytics remarketing
        # events/parameters to the linked Google Ads account. If this field is not set
        # on create/update, it will be defaulted to true.
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
      
        # Output only. Email address of the user that created the link. An empty string
        # will be returned if the email address can't be retrieved.
        # Corresponds to the JSON property `creatorEmailAddress`
        # @return [String]
        attr_accessor :creator_email_address
      
        # Immutable. Google Ads customer ID.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Output only. Format: properties/`propertyId`/googleAdsLinks/`googleAdsLinkId`
        # Note: googleAdsLinkId is not the Google Ads customer ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @creator_email_address = args[:creator_email_address] if args.key?(:creator_email_address)
          @customer_id = args[:customer_id] if args.key?(:customer_id)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings values for Google Signals. This is a singleton resource.
      class GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
        include Google::Apis::Core::Hashable
      
        # Output only. Terms of Service acceptance.
        # Corresponds to the JSON property `consent`
        # @return [String]
        attr_accessor :consent
      
        # Output only. Resource name of this setting. Format: properties/`property_id`/
        # googleSignalsSettings Example: "properties/1000/googleSignalsSettings"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of this setting.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @consent = args[:consent] if args.key?(:consent)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
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
      
      # Status information for a link proposal.
      class GoogleAnalyticsAdminV1alphaLinkProposalStatusDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The source of this proposal.
        # Corresponds to the JSON property `linkProposalInitiatingProduct`
        # @return [String]
        attr_accessor :link_proposal_initiating_product
      
        # Output only. The state of this proposal.
        # Corresponds to the JSON property `linkProposalState`
        # @return [String]
        attr_accessor :link_proposal_state
      
        # Output only. The email address of the user that proposed this linkage.
        # Corresponds to the JSON property `requestorEmail`
        # @return [String]
        attr_accessor :requestor_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link_proposal_initiating_product = args[:link_proposal_initiating_product] if args.key?(:link_proposal_initiating_product)
          @link_proposal_state = args[:link_proposal_state] if args.key?(:link_proposal_state)
          @requestor_email = args[:requestor_email] if args.key?(:requestor_email)
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
      
      # Response message for ListConversionEvents RPC.
      class GoogleAnalyticsAdminV1alphaListConversionEventsResponse
        include Google::Apis::Core::Hashable
      
        # The requested conversion events
        # Corresponds to the JSON property `conversionEvents`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent>]
        attr_accessor :conversion_events
      
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
          @conversion_events = args[:conversion_events] if args.key?(:conversion_events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListCustomDimensions RPC.
      class GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
        include Google::Apis::Core::Hashable
      
        # List of CustomDimensions.
        # Corresponds to the JSON property `customDimensions`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension>]
        attr_accessor :custom_dimensions
      
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
          @custom_dimensions = args[:custom_dimensions] if args.key?(:custom_dimensions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListCustomMetrics RPC.
      class GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
        include Google::Apis::Core::Hashable
      
        # List of CustomMetrics.
        # Corresponds to the JSON property `customMetrics`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric>]
        attr_accessor :custom_metrics
      
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
          @custom_metrics = args[:custom_metrics] if args.key?(:custom_metrics)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDisplayVideo360AdvertiserLinkProposals RPC.
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
        include Google::Apis::Core::Hashable
      
        # List of DisplayVideo360AdvertiserLinkProposals.
        # Corresponds to the JSON property `displayVideo360AdvertiserLinkProposals`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal>]
        attr_accessor :display_video360_advertiser_link_proposals
      
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
          @display_video360_advertiser_link_proposals = args[:display_video360_advertiser_link_proposals] if args.key?(:display_video360_advertiser_link_proposals)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListDisplayVideo360AdvertiserLinks RPC.
      class GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of DisplayVideo360AdvertiserLinks.
        # Corresponds to the JSON property `displayVideo360AdvertiserLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink>]
        attr_accessor :display_video360_advertiser_links
      
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
          @display_video360_advertiser_links = args[:display_video360_advertiser_links] if args.key?(:display_video360_advertiser_links)
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
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages. Currently, Google Analytics
        # supports only one FirebaseLink per property, so this will never be populated.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firebase_links = args[:firebase_links] if args.key?(:firebase_links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # Response message for ListMeasurementProtocolSecret RPC
      class GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
        include Google::Apis::Core::Hashable
      
        # A list of secrets for the parent stream specified in the request.
        # Corresponds to the JSON property `measurementProtocolSecrets`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret>]
        attr_accessor :measurement_protocol_secrets
      
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
          @measurement_protocol_secrets = args[:measurement_protocol_secrets] if args.key?(:measurement_protocol_secrets)
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
      
      # A secret value used for sending hits to Measurement Protocol.
      class GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
        include Google::Apis::Core::Hashable
      
        # Required. Human-readable display name for this secret.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this secret. This secret may be a child of any
        # type of stream. Format: properties/`property`/webDataStreams/`webDataStream`/
        # measurementProtocolSecrets/`measurementProtocolSecret`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The measurement protocol secret value. Pass this value to the
        # api_secret field of the Measurement Protocol API when sending hits to this
        # secret's parent property.
        # Corresponds to the JSON property `secretValue`
        # @return [String]
        attr_accessor :secret_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @secret_value = args[:secret_value] if args.key?(:secret_value)
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
      
        # Output only. If set, the time at which this property was trashed. If not set,
        # then this property is not currently in the trash can.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Required. Human-readable display name for this property. The max allowed
        # display name length is 100 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. If set, the time at which this trashed property will be
        # permanently deleted. If not set, then this property is not currently in the
        # trash can and is not slated to be deleted.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
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
      
        # Output only. The Google Analytics service level that applies to this property.
        # Corresponds to the JSON property `serviceLevel`
        # @return [String]
        attr_accessor :service_level
      
        # Required. Reporting Time Zone, used as the day boundary for reports,
        # regardless of where the data originates. If the time zone honors DST,
        # Analytics will automatically adjust for the changes. NOTE: Changing the time
        # zone only affects data going forward, and is not applied retroactively. Format:
        # https://www.iana.org/time-zones Example: "America/Los_Angeles"
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
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @industry_category = args[:industry_category] if args.key?(:industry_category)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @service_level = args[:service_level] if args.key?(:service_level)
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
      
      # Request message for SearchChangeHistoryEvents RPC.
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If set, only return changes that match one or more of these types of
        # actions.
        # Corresponds to the JSON property `action`
        # @return [Array<String>]
        attr_accessor :action
      
        # Optional. If set, only return changes if they are made by a user in this list.
        # Corresponds to the JSON property `actorEmail`
        # @return [Array<String>]
        attr_accessor :actor_email
      
        # Optional. If set, only return changes made after this time (inclusive).
        # Corresponds to the JSON property `earliestChangeTime`
        # @return [String]
        attr_accessor :earliest_change_time
      
        # Optional. If set, only return changes made before this time (inclusive).
        # Corresponds to the JSON property `latestChangeTime`
        # @return [String]
        attr_accessor :latest_change_time
      
        # Optional. The maximum number of ChangeHistoryEvent items to return. The
        # service may return fewer than this value, even if there are additional pages.
        # If unspecified, at most 50 items will be returned. The maximum value is 200 (
        # higher values will be coerced to the maximum).
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. A page token, received from a previous `SearchChangeHistoryEvents`
        # call. Provide this to retrieve the subsequent page. When paginating, all other
        # parameters provided to `SearchChangeHistoryEvents` must match the call that
        # provided the page token.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Resource name for a child property. If set, only return changes made
        # to this property or its child resources.
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # Optional. If set, only return changes if they are for a resource that matches
        # at least one of these types.
        # Corresponds to the JSON property `resourceType`
        # @return [Array<String>]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @actor_email = args[:actor_email] if args.key?(:actor_email)
          @earliest_change_time = args[:earliest_change_time] if args.key?(:earliest_change_time)
          @latest_change_time = args[:latest_change_time] if args.key?(:latest_change_time)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @property = args[:property] if args.key?(:property)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # Response message for SearchAccounts RPC.
      class GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller.
        # Corresponds to the JSON property `changeHistoryEvents`
        # @return [Array<Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChangeHistoryEvent>]
        attr_accessor :change_history_events
      
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
          @change_history_events = args[:change_history_events] if args.key?(:change_history_events)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
        # Immutable. Email address of the user to link
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # Output only. Example format: properties/1234/userLinks/5678
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
