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
      
      # A resource message representing a Google Analytics account.
      class GoogleAnalyticsAdminV1betaAccount
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
      class GoogleAnalyticsAdminV1betaAccountSummary
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
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaPropertySummary>]
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
      
      # Request message for AcknowledgeUserDataCollection RPC.
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
        include Google::Apis::Core::Hashable
      
        # Required. An acknowledgement that the caller of this method understands the
        # terms of user data collection. This field must contain the exact value: "I
        # acknowledge that I have the necessary privacy disclosures and rights from my
        # end users for the collection and processing of their data, including the
        # association of such data with the visitation information Google Analytics
        # collects from my site and/or app property."
        # Corresponds to the JSON property `acknowledgement`
        # @return [String]
        attr_accessor :acknowledgement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acknowledgement = args[:acknowledgement] if args.key?(:acknowledgement)
        end
      end
      
      # Response message for AcknowledgeUserDataCollection RPC.
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ArchiveCustomDimension RPC.
      class GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for ArchiveCustomMetric RPC.
      class GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A description of a change to a single Google Analytics resource.
      class GoogleAnalyticsAdminV1betaChangeHistoryChange
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
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource]
        attr_accessor :resource_after_change
      
        # A snapshot of a resource as before or after the result of a change in change
        # history.
        # Corresponds to the JSON property `resourceBeforeChange`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource]
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
      class GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount]
        attr_accessor :account
      
        # A conversion event in a Google Analytics property.
        # Corresponds to the JSON property `conversionEvent`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent]
        attr_accessor :conversion_event
      
        # Settings values for data retention. This is a singleton resource.
        # Corresponds to the JSON property `dataRetentionSettings`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings]
        attr_accessor :data_retention_settings
      
        # A resource message representing a data stream.
        # Corresponds to the JSON property `dataStream`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream]
        attr_accessor :data_stream
      
        # A link between a GA4 property and a Firebase project.
        # Corresponds to the JSON property `firebaseLink`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink]
        attr_accessor :firebase_link
      
        # A link between a GA4 property and a Google Ads account.
        # Corresponds to the JSON property `googleAdsLink`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink]
        attr_accessor :google_ads_link
      
        # A secret value used for sending hits to Measurement Protocol.
        # Corresponds to the JSON property `measurementProtocolSecret`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret]
        attr_accessor :measurement_protocol_secret
      
        # A resource message representing a Google Analytics GA4 property.
        # Corresponds to the JSON property `property`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty]
        attr_accessor :property
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @conversion_event = args[:conversion_event] if args.key?(:conversion_event)
          @data_retention_settings = args[:data_retention_settings] if args.key?(:data_retention_settings)
          @data_stream = args[:data_stream] if args.key?(:data_stream)
          @firebase_link = args[:firebase_link] if args.key?(:firebase_link)
          @google_ads_link = args[:google_ads_link] if args.key?(:google_ads_link)
          @measurement_protocol_secret = args[:measurement_protocol_secret] if args.key?(:measurement_protocol_secret)
          @property = args[:property] if args.key?(:property)
        end
      end
      
      # A set of changes within a Google Analytics account or its child properties
      # that resulted from the same cause. Common causes would be updates made in the
      # Google Analytics UI, changes from customer support, or automatic Google
      # Analytics system changes.
      class GoogleAnalyticsAdminV1betaChangeHistoryEvent
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
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChange>]
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
      class GoogleAnalyticsAdminV1betaConversionEvent
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
      
        # Output only. If set, this event can currently be deleted with
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
      
      # A definition for a CustomDimension.
      class GoogleAnalyticsAdminV1betaCustomDimension
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
      class GoogleAnalyticsAdminV1betaCustomMetric
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
      
        # Optional. Types of restricted data that this metric may contain. Required for
        # metrics with CURRENCY measurement unit. Must be empty for metrics with a non-
        # CURRENCY measurement unit.
        # Corresponds to the JSON property `restrictedMetricType`
        # @return [Array<String>]
        attr_accessor :restricted_metric_type
      
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
          @restricted_metric_type = args[:restricted_metric_type] if args.key?(:restricted_metric_type)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # Settings values for data retention. This is a singleton resource.
      class GoogleAnalyticsAdminV1betaDataRetentionSettings
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
      class GoogleAnalyticsAdminV1betaDataSharingSettings
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
      
      # A resource message representing a data stream.
      class GoogleAnalyticsAdminV1betaDataStream
        include Google::Apis::Core::Hashable
      
        # Data specific to Android app streams.
        # Corresponds to the JSON property `androidAppStreamData`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData]
        attr_accessor :android_app_stream_data
      
        # Output only. Time when this stream was originally created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Human-readable display name for the Data Stream. Required for web data streams.
        # The max allowed display name length is 255 UTF-16 code units.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Data specific to iOS app streams.
        # Corresponds to the JSON property `iosAppStreamData`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData]
        attr_accessor :ios_app_stream_data
      
        # Output only. Resource name of this Data Stream. Format: properties/`
        # property_id`/dataStreams/`stream_id` Example: "properties/1000/dataStreams/
        # 2000"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The type of this DataStream resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Time when stream payload fields were last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Data specific to web streams.
        # Corresponds to the JSON property `webStreamData`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamWebStreamData]
        attr_accessor :web_stream_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @android_app_stream_data = args[:android_app_stream_data] if args.key?(:android_app_stream_data)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @ios_app_stream_data = args[:ios_app_stream_data] if args.key?(:ios_app_stream_data)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
          @web_stream_data = args[:web_stream_data] if args.key?(:web_stream_data)
        end
      end
      
      # Data specific to Android app streams.
      class GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
        include Google::Apis::Core::Hashable
      
        # Output only. ID of the corresponding Android app in Firebase, if any. This ID
        # can change if the Android app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        # Immutable. The package name for the app being measured. Example: "com.example.
        # myandroidapp"
        # Corresponds to the JSON property `packageName`
        # @return [String]
        attr_accessor :package_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @package_name = args[:package_name] if args.key?(:package_name)
        end
      end
      
      # Data specific to iOS app streams.
      class GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The Apple App Store Bundle ID for the app Example: "com.
        # example.myiosapp"
        # Corresponds to the JSON property `bundleId`
        # @return [String]
        attr_accessor :bundle_id
      
        # Output only. ID of the corresponding iOS app in Firebase, if any. This ID can
        # change if the iOS app is deleted and recreated.
        # Corresponds to the JSON property `firebaseAppId`
        # @return [String]
        attr_accessor :firebase_app_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bundle_id = args[:bundle_id] if args.key?(:bundle_id)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
        end
      end
      
      # Data specific to web streams.
      class GoogleAnalyticsAdminV1betaDataStreamWebStreamData
        include Google::Apis::Core::Hashable
      
        # Immutable. Domain name of the web app being measured, or empty. Example: "http:
        # //www.google.com", "https://www.google.com"
        # Corresponds to the JSON property `defaultUri`
        # @return [String]
        attr_accessor :default_uri
      
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_uri = args[:default_uri] if args.key?(:default_uri)
          @firebase_app_id = args[:firebase_app_id] if args.key?(:firebase_app_id)
          @measurement_id = args[:measurement_id] if args.key?(:measurement_id)
        end
      end
      
      # A link between a GA4 property and a Firebase project.
      class GoogleAnalyticsAdminV1betaFirebaseLink
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
      
      # A link between a GA4 property and a Google Ads account.
      class GoogleAnalyticsAdminV1betaGoogleAdsLink
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
      
      # Response message for ListAccountSummaries RPC.
      class GoogleAnalyticsAdminV1betaListAccountSummariesResponse
        include Google::Apis::Core::Hashable
      
        # Account summaries of all accounts the caller has access to.
        # Corresponds to the JSON property `accountSummaries`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccountSummary>]
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
      class GoogleAnalyticsAdminV1betaListAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller.
        # Corresponds to the JSON property `accounts`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount>]
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
      
      # Response message for ListConversionEvents RPC.
      class GoogleAnalyticsAdminV1betaListConversionEventsResponse
        include Google::Apis::Core::Hashable
      
        # The requested conversion events
        # Corresponds to the JSON property `conversionEvents`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent>]
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
      class GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
        include Google::Apis::Core::Hashable
      
        # List of CustomDimensions.
        # Corresponds to the JSON property `customDimensions`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension>]
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
      class GoogleAnalyticsAdminV1betaListCustomMetricsResponse
        include Google::Apis::Core::Hashable
      
        # List of CustomMetrics.
        # Corresponds to the JSON property `customMetrics`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric>]
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
      
      # Response message for ListDataStreams RPC.
      class GoogleAnalyticsAdminV1betaListDataStreamsResponse
        include Google::Apis::Core::Hashable
      
        # List of DataStreams.
        # Corresponds to the JSON property `dataStreams`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream>]
        attr_accessor :data_streams
      
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
          @data_streams = args[:data_streams] if args.key?(:data_streams)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListFirebaseLinks RPC
      class GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of FirebaseLinks. This will have at most one value.
        # Corresponds to the JSON property `firebaseLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink>]
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
      class GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
        include Google::Apis::Core::Hashable
      
        # List of GoogleAdsLinks.
        # Corresponds to the JSON property `googleAdsLinks`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink>]
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
      
      # Response message for ListMeasurementProtocolSecret RPC
      class GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
        include Google::Apis::Core::Hashable
      
        # A list of secrets for the parent stream specified in the request.
        # Corresponds to the JSON property `measurementProtocolSecrets`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret>]
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
      class GoogleAnalyticsAdminV1betaListPropertiesResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Results that matched the filter criteria and were accessible to the caller.
        # Corresponds to the JSON property `properties`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty>]
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
      
      # A secret value used for sending hits to Measurement Protocol.
      class GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
        include Google::Apis::Core::Hashable
      
        # Required. Human-readable display name for this secret.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this secret. This secret may be a child of any
        # type of stream. Format: properties/`property`/dataStreams/`dataStream`/
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
      class GoogleAnalyticsAdminV1betaProperty
        include Google::Apis::Core::Hashable
      
        # Immutable. The resource name of the parent account Format: accounts/`
        # account_id` Example: "accounts/123"
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
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
        # Moving UI can be used to change the parent. Format: accounts/`account`,
        # properties/`property` Example: "accounts/100", "properties/101"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Immutable. The property type for this Property resource. When creating a
        # property, if the type is "PROPERTY_TYPE_UNSPECIFIED", then "ORDINARY_PROPERTY"
        # will be implied. "SUBPROPERTY" and "ROLLUP_PROPERTY" types cannot yet be
        # created with the Google Analytics Admin API.
        # Corresponds to the JSON property `propertyType`
        # @return [String]
        attr_accessor :property_type
      
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
          @account = args[:account] if args.key?(:account)
          @create_time = args[:create_time] if args.key?(:create_time)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @industry_category = args[:industry_category] if args.key?(:industry_category)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @property_type = args[:property_type] if args.key?(:property_type)
          @service_level = args[:service_level] if args.key?(:service_level)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A virtual resource representing metadata for a GA4 property.
      class GoogleAnalyticsAdminV1betaPropertySummary
        include Google::Apis::Core::Hashable
      
        # Display name for the property referred to in this property summary.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of this property's logical parent. Note: The Property-Moving UI
        # can be used to change the parent. Format: accounts/`account`, properties/`
        # property` Example: "accounts/100", "properties/200"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Resource name of property referred to by this property summary Format:
        # properties/`property_id` Example: "properties/1000"
        # Corresponds to the JSON property `property`
        # @return [String]
        attr_accessor :property
      
        # The property's property type.
        # Corresponds to the JSON property `propertyType`
        # @return [String]
        attr_accessor :property_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @parent = args[:parent] if args.key?(:parent)
          @property = args[:property] if args.key?(:property)
          @property_type = args[:property_type] if args.key?(:property_type)
        end
      end
      
      # Request message for ProvisionAccountTicket RPC.
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
        include Google::Apis::Core::Hashable
      
        # A resource message representing a Google Analytics account.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount]
        attr_accessor :account
      
        # Redirect URI where the user will be sent after accepting Terms of Service.
        # Must be configured in Cloud Console as a Redirect URI.
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
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
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
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
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
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
        include Google::Apis::Core::Hashable
      
        # Results that were accessible to the caller.
        # Corresponds to the JSON property `changeHistoryEvents`
        # @return [Array<Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryEvent>]
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
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
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
