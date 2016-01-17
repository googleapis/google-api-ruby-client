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
    module AnalyticsV3
      
      # JSON template for Analytics account entry.
      class Account
        include Google::Apis::Core::Hashable
      
        # Child link for an account entry. Points to the list of web properties for this
        # account.
        # Corresponds to the JSON property `childLink`
        # @return [Google::Apis::AnalyticsV3::Account::ChildLink]
        attr_accessor :child_link
      
        # Time the account was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Account ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics account.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Account name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Permissions the user has for this account.
        # Corresponds to the JSON property `permissions`
        # @return [Google::Apis::AnalyticsV3::Account::Permissions]
        attr_accessor :permissions
      
        # Link for this account.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Time the account was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_link = args[:child_link] unless args[:child_link].nil?
          @created = args[:created] unless args[:created].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
        
        # Child link for an account entry. Points to the list of web properties for this
        # account.
        class ChildLink
          include Google::Apis::Core::Hashable
        
          # Link to the list of web properties for this account.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Type of the child link. Its value is "analytics#webproperties".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Permissions the user has for this account.
        class Permissions
          include Google::Apis::Core::Hashable
        
          # All the permissions that the user has for this account. These include any
          # implied permissions (e.g., EDIT implies VIEW).
          # Corresponds to the JSON property `effective`
          # @return [Array<String>]
          attr_accessor :effective
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @effective = args[:effective] unless args[:effective].nil?
          end
        end
      end
      
      # JSON template for a linked account.
      class AccountRef
        include Google::Apis::Core::Hashable
      
        # Link for this account.
        # Corresponds to the JSON property `href`
        # @return [String]
        attr_accessor :href
      
        # Account ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Analytics account reference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Account name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @href = args[:href] unless args[:href].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # An AccountSummary collection lists a summary of accounts, properties and views
      # (profiles) to which the user has access. Each resource in the collection
      # corresponds to a single AccountSummary.
      class AccountSummaries
        include Google::Apis::Core::Hashable
      
        # A list of AccountSummaries.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::AccountSummary>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this AccountSummary collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this AccountSummary collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for an Analytics AccountSummary. An AccountSummary is a
      # lightweight tree comprised of properties/profiles.
      class AccountSummary
        include Google::Apis::Core::Hashable
      
        # Account ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics AccountSummary.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Account name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of web properties under this account.
        # Corresponds to the JSON property `webProperties`
        # @return [Array<Google::Apis::AnalyticsV3::WebPropertySummary>]
        attr_accessor :web_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @web_properties = args[:web_properties] unless args[:web_properties].nil?
        end
      end
      
      # JSON template for an Analytics account ticket. The account ticket consists of
      # the ticket ID and the basic information for the account, property and profile.
      class AccountTicket
        include Google::Apis::Core::Hashable
      
        # JSON template for Analytics account entry.
        # Corresponds to the JSON property `account`
        # @return [Google::Apis::AnalyticsV3::Account]
        attr_accessor :account
      
        # Account ticket ID used to access the account ticket.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for account ticket.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # JSON template for an Analytics view (profile).
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::AnalyticsV3::Profile]
        attr_accessor :profile
      
        # Redirect URI where the user will be sent after accepting Terms of Service.
        # Must be configured in APIs console as a callback URL.
        # Corresponds to the JSON property `redirectUri`
        # @return [String]
        attr_accessor :redirect_uri
      
        # JSON template for an Analytics web property.
        # Corresponds to the JSON property `webproperty`
        # @return [Google::Apis::AnalyticsV3::Webproperty]
        attr_accessor :webproperty
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] unless args[:account].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @profile = args[:profile] unless args[:profile].nil?
          @redirect_uri = args[:redirect_uri] unless args[:redirect_uri].nil?
          @webproperty = args[:webproperty] unless args[:webproperty].nil?
        end
      end
      
      # An account collection provides a list of Analytics accounts to which a user
      # has access. The account collection is the entry point to all management
      # information. Each resource in the collection corresponds to a single Analytics
      # account.
      class Accounts
        include Google::Apis::Core::Hashable
      
        # A list of accounts.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Account>]
        attr_accessor :items
      
        # The maximum number of entries the response can contain, regardless of the
        # actual number of entries returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Next link for this account collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Previous link for this account collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the entries, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for an AdWords account.
      class AdWordsAccount
        include Google::Apis::Core::Hashable
      
        # True if auto-tagging is enabled on the AdWords account. Read-only after the
        # insert operation.
        # Corresponds to the JSON property `autoTaggingEnabled`
        # @return [Boolean]
        attr_accessor :auto_tagging_enabled
        alias_method :auto_tagging_enabled?, :auto_tagging_enabled
      
        # Customer ID. This field is required when creating an AdWords link.
        # Corresponds to the JSON property `customerId`
        # @return [String]
        attr_accessor :customer_id
      
        # Resource type for AdWords account.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auto_tagging_enabled = args[:auto_tagging_enabled] unless args[:auto_tagging_enabled].nil?
          @customer_id = args[:customer_id] unless args[:customer_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Request template for the delete upload data request.
      class DeleteUploadDataRequest
        include Google::Apis::Core::Hashable
      
        # A list of upload UIDs.
        # Corresponds to the JSON property `customDataImportUids`
        # @return [Array<String>]
        attr_accessor :custom_data_import_uids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_data_import_uids = args[:custom_data_import_uids] unless args[:custom_data_import_uids].nil?
        end
      end
      
      # JSON template for a metadata column.
      class Column
        include Google::Apis::Core::Hashable
      
        # Map of attribute name and value for this column.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Column id.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics column.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] unless args[:attributes].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Lists columns (dimensions and metrics) for a particular report type.
      class Columns
        include Google::Apis::Core::Hashable
      
        # List of attributes names returned by columns.
        # Corresponds to the JSON property `attributeNames`
        # @return [Array<String>]
        attr_accessor :attribute_names
      
        # Etag of collection. This etag can be compared with the last response etag to
        # check if response has changed.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # List of columns for a report type.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Column>]
        attr_accessor :items
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Total number of columns returned in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_names = args[:attribute_names] unless args[:attribute_names].nil?
          @etag = args[:etag] unless args[:etag].nil?
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
        end
      end
      
      # JSON template for an Analytics custom data source.
      class CustomDataSource
        include Google::Apis::Core::Hashable
      
        # Account ID to which this custom data source belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # 
        # Corresponds to the JSON property `childLink`
        # @return [Google::Apis::AnalyticsV3::CustomDataSource::ChildLink]
        attr_accessor :child_link
      
        # Time this custom data source was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Description of custom data source.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Custom data source ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `importBehavior`
        # @return [String]
        attr_accessor :import_behavior
      
        # Resource type for Analytics custom data source.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this custom data source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for this custom data source. Points to the web property to which
        # this custom data source belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::CustomDataSource::ParentLink]
        attr_accessor :parent_link
      
        # IDs of views (profiles) linked to the custom data source.
        # Corresponds to the JSON property `profilesLinked`
        # @return [Array<String>]
        attr_accessor :profiles_linked
      
        # Link for this Analytics custom data source.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Type of the custom data source.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Time this custom data source was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # 
        # Corresponds to the JSON property `uploadType`
        # @return [String]
        attr_accessor :upload_type
      
        # Web property ID of the form UA-XXXXX-YY to which this custom data source
        # belongs.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @child_link = args[:child_link] unless args[:child_link].nil?
          @created = args[:created] unless args[:created].nil?
          @description = args[:description] unless args[:description].nil?
          @id = args[:id] unless args[:id].nil?
          @import_behavior = args[:import_behavior] unless args[:import_behavior].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @profiles_linked = args[:profiles_linked] unless args[:profiles_linked].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @type = args[:type] unless args[:type].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @upload_type = args[:upload_type] unless args[:upload_type].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
        end
        
        # 
        class ChildLink
          include Google::Apis::Core::Hashable
        
          # Link to the list of daily uploads for this custom data source. Link to the
          # list of uploads for this custom data source.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#dailyUploads". Value is "analytics#uploads".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Parent link for this custom data source. Points to the web property to which
        # this custom data source belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the web property to which this custom data source belongs.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#webproperty".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # Lists Analytics custom data sources to which the user has access. Each
      # resource in the collection corresponds to a single Analytics custom data
      # source.
      class CustomDataSources
        include Google::Apis::Core::Hashable
      
        # Collection of custom data sources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::CustomDataSource>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this custom data source collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this custom data source collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for Analytics Custom Dimension.
      class CustomDimension
        include Google::Apis::Core::Hashable
      
        # Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Boolean indicating whether the custom dimension is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Time the custom dimension was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Custom dimension ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Index of the custom dimension.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Kind value for a custom dimension. Set to "analytics#customDimension". It is a
        # read-only field.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the custom dimension.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for the custom dimension. Points to the property to which the
        # custom dimension belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::CustomDimension::ParentLink]
        attr_accessor :parent_link
      
        # Scope of the custom dimension: HIT, SESSION, USER or PRODUCT.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Link for the custom dimension
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Time the custom dimension was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Property ID.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @created = args[:created] unless args[:created].nil?
          @id = args[:id] unless args[:id].nil?
          @index = args[:index] unless args[:index].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @scope = args[:scope] unless args[:scope].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
        end
        
        # Parent link for the custom dimension. Points to the property to which the
        # custom dimension belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the property to which the custom dimension belongs.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Type of the parent link. Set to "analytics#webproperty".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # A custom dimension collection lists Analytics custom dimensions to which the
      # user has access. Each resource in the collection corresponds to a single
      # Analytics custom dimension.
      class CustomDimensions
        include Google::Apis::Core::Hashable
      
        # Collection of custom dimensions.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::CustomDimension>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this custom dimension collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this custom dimension collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for Analytics Custom Metric.
      class CustomMetric
        include Google::Apis::Core::Hashable
      
        # Account ID.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Boolean indicating whether the custom metric is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Time the custom metric was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Custom metric ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Index of the custom metric.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Kind value for a custom metric. Set to "analytics#customMetric". It is a read-
        # only field.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Max value of custom metric.
        # Corresponds to the JSON property `max_value`
        # @return [String]
        attr_accessor :max_value
      
        # Min value of custom metric.
        # Corresponds to the JSON property `min_value`
        # @return [String]
        attr_accessor :min_value
      
        # Name of the custom metric.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for the custom metric. Points to the property to which the custom
        # metric belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::CustomMetric::ParentLink]
        attr_accessor :parent_link
      
        # Scope of the custom metric: HIT or PRODUCT.
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Link for the custom metric
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Data type of custom metric.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Time the custom metric was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Property ID.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @created = args[:created] unless args[:created].nil?
          @id = args[:id] unless args[:id].nil?
          @index = args[:index] unless args[:index].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @max_value = args[:max_value] unless args[:max_value].nil?
          @min_value = args[:min_value] unless args[:min_value].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @scope = args[:scope] unless args[:scope].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @type = args[:type] unless args[:type].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
        end
        
        # Parent link for the custom metric. Points to the property to which the custom
        # metric belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the property to which the custom metric belongs.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Type of the parent link. Set to "analytics#webproperty".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
      end
      
      # A custom metric collection lists Analytics custom metrics to which the user
      # has access. Each resource in the collection corresponds to a single Analytics
      # custom metric.
      class CustomMetrics
        include Google::Apis::Core::Hashable
      
        # Collection of custom metrics.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::CustomMetric>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this custom metric collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this custom metric collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for Analytics Entity AdWords Link.
      class EntityAdWordsLink
        include Google::Apis::Core::Hashable
      
        # A list of AdWords client accounts. These cannot be MCC accounts. This field is
        # required when creating an AdWords link. It cannot be empty.
        # Corresponds to the JSON property `adWordsAccounts`
        # @return [Array<Google::Apis::AnalyticsV3::AdWordsAccount>]
        attr_accessor :ad_words_accounts
      
        # Web property being linked.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AnalyticsV3::EntityAdWordsLink::Entity]
        attr_accessor :entity
      
        # Entity AdWords link ID
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for entity AdWords link.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of the link. This field is required when creating an AdWords link.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # IDs of linked Views (Profiles) represented as strings.
        # Corresponds to the JSON property `profileIds`
        # @return [Array<String>]
        attr_accessor :profile_ids
      
        # URL link for this Google Analytics - Google AdWords link.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_words_accounts = args[:ad_words_accounts] unless args[:ad_words_accounts].nil?
          @entity = args[:entity] unless args[:entity].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @profile_ids = args[:profile_ids] unless args[:profile_ids].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
        
        # Web property being linked.
        class Entity
          include Google::Apis::Core::Hashable
        
          # JSON template for a web property reference.
          # Corresponds to the JSON property `webPropertyRef`
          # @return [Google::Apis::AnalyticsV3::WebPropertyRef]
          attr_accessor :web_property_ref
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @web_property_ref = args[:web_property_ref] unless args[:web_property_ref].nil?
          end
        end
      end
      
      # An entity AdWords link collection provides a list of GA-AdWords links Each
      # resource in this collection corresponds to a single link.
      class EntityAdWordsLinks
        include Google::Apis::Core::Hashable
      
        # A list of entity AdWords links.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::EntityAdWordsLink>]
        attr_accessor :items
      
        # The maximum number of entries the response can contain, regardless of the
        # actual number of entries returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Next link for this AdWords link collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Previous link for this AdWords link collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the entries, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
        end
      end
      
      # JSON template for an Analytics Entity-User Link. Returns permissions that a
      # user has for an entity.
      class EntityUserLink
        include Google::Apis::Core::Hashable
      
        # Entity for this link. It can be an account, a web property, or a view (profile)
        # .
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::AnalyticsV3::EntityUserLink::Entity]
        attr_accessor :entity
      
        # Entity user link ID
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for entity user link.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Permissions the user has for this entity.
        # Corresponds to the JSON property `permissions`
        # @return [Google::Apis::AnalyticsV3::EntityUserLink::Permissions]
        attr_accessor :permissions
      
        # Self link for this resource.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # JSON template for a user reference.
        # Corresponds to the JSON property `userRef`
        # @return [Google::Apis::AnalyticsV3::UserRef]
        attr_accessor :user_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] unless args[:entity].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @user_ref = args[:user_ref] unless args[:user_ref].nil?
        end
        
        # Entity for this link. It can be an account, a web property, or a view (profile)
        # .
        class Entity
          include Google::Apis::Core::Hashable
        
          # JSON template for a linked account.
          # Corresponds to the JSON property `accountRef`
          # @return [Google::Apis::AnalyticsV3::AccountRef]
          attr_accessor :account_ref
        
          # JSON template for a linked view (profile).
          # Corresponds to the JSON property `profileRef`
          # @return [Google::Apis::AnalyticsV3::ProfileRef]
          attr_accessor :profile_ref
        
          # JSON template for a web property reference.
          # Corresponds to the JSON property `webPropertyRef`
          # @return [Google::Apis::AnalyticsV3::WebPropertyRef]
          attr_accessor :web_property_ref
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @account_ref = args[:account_ref] unless args[:account_ref].nil?
            @profile_ref = args[:profile_ref] unless args[:profile_ref].nil?
            @web_property_ref = args[:web_property_ref] unless args[:web_property_ref].nil?
          end
        end
        
        # Permissions the user has for this entity.
        class Permissions
          include Google::Apis::Core::Hashable
        
          # Effective permissions represent all the permissions that a user has for this
          # entity. These include any implied permissions (e.g., EDIT implies VIEW) or
          # inherited permissions from the parent entity. Effective permissions are read-
          # only.
          # Corresponds to the JSON property `effective`
          # @return [Array<String>]
          attr_accessor :effective
        
          # Permissions that a user has been assigned at this very level. Does not include
          # any implied or inherited permissions. Local permissions are modifiable.
          # Corresponds to the JSON property `local`
          # @return [Array<String>]
          attr_accessor :local
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @effective = args[:effective] unless args[:effective].nil?
            @local = args[:local] unless args[:local].nil?
          end
        end
      end
      
      # An entity user link collection provides a list of Analytics ACL links Each
      # resource in this collection corresponds to a single link.
      class EntityUserLinks
        include Google::Apis::Core::Hashable
      
        # A list of entity user links.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::EntityUserLink>]
        attr_accessor :items
      
        # The maximum number of entries the response can contain, regardless of the
        # actual number of entries returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Next link for this account collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Previous link for this account collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the entries, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
        end
      end
      
      # JSON template for Analytics experiment resource.
      class Experiment
        include Google::Apis::Core::Hashable
      
        # Account ID to which this experiment belongs. This field is read-only.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Time the experiment was created. This field is read-only.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Notes about this experiment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # If true, the end user will be able to edit the experiment via the Google
        # Analytics user interface.
        # Corresponds to the JSON property `editableInGaUi`
        # @return [Boolean]
        attr_accessor :editable_in_ga_ui
        alias_method :editable_in_ga_ui?, :editable_in_ga_ui
      
        # The ending time of the experiment (the time the status changed from RUNNING to
        # ENDED). This field is present only if the experiment has ended. This field is
        # read-only.
        # Corresponds to the JSON property `endTime`
        # @return [DateTime]
        attr_accessor :end_time
      
        # Boolean specifying whether to distribute traffic evenly across all variations.
        # If the value is False, content experiments follows the default behavior of
        # adjusting traffic dynamically based on variation performance. Optional --
        # defaults to False. This field may not be changed for an experiment whose
        # status is ENDED.
        # Corresponds to the JSON property `equalWeighting`
        # @return [Boolean]
        attr_accessor :equal_weighting
        alias_method :equal_weighting?, :equal_weighting
      
        # Experiment ID. Required for patch and update. Disallowed for create.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Internal ID for the web property to which this experiment belongs. This field
        # is read-only.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Resource type for an Analytics experiment. This field is read-only.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # An integer number in [3, 90]. Specifies the minimum length of the experiment.
        # Can be changed for a running experiment. This field may not be changed for an
        # experiments whose status is ENDED.
        # Corresponds to the JSON property `minimumExperimentLengthInDays`
        # @return [Fixnum]
        attr_accessor :minimum_experiment_length_in_days
      
        # Experiment name. This field may not be changed for an experiment whose status
        # is ENDED. This field is required when creating an experiment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric that the experiment is optimizing. Valid values: "ga:goal(n)
        # Completions", "ga:adsenseAdsClicks", "ga:adsenseAdsViewed", "ga:adsenseRevenue"
        # , "ga:bounces", "ga:pageviews", "ga:sessionDuration", "ga:transactions", "ga:
        # transactionRevenue". This field is required if status is "RUNNING" and
        # servingFramework is one of "REDIRECT" or "API".
        # Corresponds to the JSON property `objectiveMetric`
        # @return [String]
        attr_accessor :objective_metric
      
        # Whether the objectiveMetric should be minimized or maximized. Possible values:
        # "MAXIMUM", "MINIMUM". Optional--defaults to "MAXIMUM". Cannot be specified
        # without objectiveMetric. Cannot be modified when status is "RUNNING" or "ENDED"
        # .
        # Corresponds to the JSON property `optimizationType`
        # @return [String]
        attr_accessor :optimization_type
      
        # Parent link for an experiment. Points to the view (profile) to which this
        # experiment belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::Experiment::ParentLink]
        attr_accessor :parent_link
      
        # View (Profile) ID to which this experiment belongs. This field is read-only.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # Why the experiment ended. Possible values: "STOPPED_BY_USER", "WINNER_FOUND", "
        # EXPERIMENT_EXPIRED", "ENDED_WITH_NO_WINNER", "GOAL_OBJECTIVE_CHANGED". "
        # ENDED_WITH_NO_WINNER" means that the experiment didn't expire but no winner
        # was projected to be found. If the experiment status is changed via the API to
        # ENDED this field is set to STOPPED_BY_USER. This field is read-only.
        # Corresponds to the JSON property `reasonExperimentEnded`
        # @return [String]
        attr_accessor :reason_experiment_ended
      
        # Boolean specifying whether variations URLS are rewritten to match those of the
        # original. This field may not be changed for an experiments whose status is
        # ENDED.
        # Corresponds to the JSON property `rewriteVariationUrlsAsOriginal`
        # @return [Boolean]
        attr_accessor :rewrite_variation_urls_as_original
        alias_method :rewrite_variation_urls_as_original?, :rewrite_variation_urls_as_original
      
        # Link for this experiment. This field is read-only.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The framework used to serve the experiment variations and evaluate the results.
        # One of:
        # - REDIRECT: Google Analytics redirects traffic to different variation pages,
        # reports the chosen variation and evaluates the results.
        # - API: Google Analytics chooses and reports the variation to serve and
        # evaluates the results; the caller is responsible for serving the selected
        # variation.
        # - EXTERNAL: The variations will be served externally and the chosen variation
        # reported to Google Analytics. The caller is responsible for serving the
        # selected variation and evaluating the results.
        # Corresponds to the JSON property `servingFramework`
        # @return [String]
        attr_accessor :serving_framework
      
        # The snippet of code to include on the control page(s). This field is read-only.
        # Corresponds to the JSON property `snippet`
        # @return [String]
        attr_accessor :snippet
      
        # The starting time of the experiment (the time the status changed from
        # READY_TO_RUN to RUNNING). This field is present only if the experiment has
        # started. This field is read-only.
        # Corresponds to the JSON property `startTime`
        # @return [DateTime]
        attr_accessor :start_time
      
        # Experiment status. Possible values: "DRAFT", "READY_TO_RUN", "RUNNING", "ENDED"
        # . Experiments can be created in the "DRAFT", "READY_TO_RUN" or "RUNNING" state.
        # This field is required when creating an experiment.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # A floating-point number in (0, 1]. Specifies the fraction of the traffic that
        # participates in the experiment. Can be changed for a running experiment. This
        # field may not be changed for an experiments whose status is ENDED.
        # Corresponds to the JSON property `trafficCoverage`
        # @return [Float]
        attr_accessor :traffic_coverage
      
        # Time the experiment was last modified. This field is read-only.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Array of variations. The first variation in the array is the original. The
        # number of variations may not change once an experiment is in the RUNNING state.
        # At least two variations are required before status can be set to RUNNING.
        # Corresponds to the JSON property `variations`
        # @return [Array<Google::Apis::AnalyticsV3::Experiment::Variation>]
        attr_accessor :variations
      
        # Web property ID to which this experiment belongs. The web property ID is of
        # the form UA-XXXXX-YY. This field is read-only.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        # A floating-point number in (0, 1). Specifies the necessary confidence level to
        # choose a winner. This field may not be changed for an experiments whose status
        # is ENDED.
        # Corresponds to the JSON property `winnerConfidenceLevel`
        # @return [Float]
        attr_accessor :winner_confidence_level
      
        # Boolean specifying whether a winner has been found for this experiment. This
        # field is read-only.
        # Corresponds to the JSON property `winnerFound`
        # @return [Boolean]
        attr_accessor :winner_found
        alias_method :winner_found?, :winner_found
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @created = args[:created] unless args[:created].nil?
          @description = args[:description] unless args[:description].nil?
          @editable_in_ga_ui = args[:editable_in_ga_ui] unless args[:editable_in_ga_ui].nil?
          @end_time = args[:end_time] unless args[:end_time].nil?
          @equal_weighting = args[:equal_weighting] unless args[:equal_weighting].nil?
          @id = args[:id] unless args[:id].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @minimum_experiment_length_in_days = args[:minimum_experiment_length_in_days] unless args[:minimum_experiment_length_in_days].nil?
          @name = args[:name] unless args[:name].nil?
          @objective_metric = args[:objective_metric] unless args[:objective_metric].nil?
          @optimization_type = args[:optimization_type] unless args[:optimization_type].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @profile_id = args[:profile_id] unless args[:profile_id].nil?
          @reason_experiment_ended = args[:reason_experiment_ended] unless args[:reason_experiment_ended].nil?
          @rewrite_variation_urls_as_original = args[:rewrite_variation_urls_as_original] unless args[:rewrite_variation_urls_as_original].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @serving_framework = args[:serving_framework] unless args[:serving_framework].nil?
          @snippet = args[:snippet] unless args[:snippet].nil?
          @start_time = args[:start_time] unless args[:start_time].nil?
          @status = args[:status] unless args[:status].nil?
          @traffic_coverage = args[:traffic_coverage] unless args[:traffic_coverage].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @variations = args[:variations] unless args[:variations].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
          @winner_confidence_level = args[:winner_confidence_level] unless args[:winner_confidence_level].nil?
          @winner_found = args[:winner_found] unless args[:winner_found].nil?
        end
        
        # Parent link for an experiment. Points to the view (profile) to which this
        # experiment belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the view (profile) to which this experiment belongs. This field is
          # read-only.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#profile". This field is read-only.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # 
        class Variation
          include Google::Apis::Core::Hashable
        
          # The name of the variation. This field is required when creating an experiment.
          # This field may not be changed for an experiment whose status is ENDED.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # Status of the variation. Possible values: "ACTIVE", "INACTIVE". INACTIVE
          # variations are not served. This field may not be changed for an experiment
          # whose status is ENDED.
          # Corresponds to the JSON property `status`
          # @return [String]
          attr_accessor :status
        
          # The URL of the variation. This field may not be changed for an experiment
          # whose status is RUNNING or ENDED.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          # Weight that this variation should receive. Only present if the experiment is
          # running. This field is read-only.
          # Corresponds to the JSON property `weight`
          # @return [Float]
          attr_accessor :weight
        
          # True if the experiment has ended and this variation performed (statistically)
          # significantly better than the original. This field is read-only.
          # Corresponds to the JSON property `won`
          # @return [Boolean]
          attr_accessor :won
          alias_method :won?, :won
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @name = args[:name] unless args[:name].nil?
            @status = args[:status] unless args[:status].nil?
            @url = args[:url] unless args[:url].nil?
            @weight = args[:weight] unless args[:weight].nil?
            @won = args[:won] unless args[:won].nil?
          end
        end
      end
      
      # An experiment collection lists Analytics experiments to which the user has
      # access. Each view (profile) can have a set of experiments. Each resource in
      # the Experiment collection corresponds to a single Analytics experiment.
      class Experiments
        include Google::Apis::Core::Hashable
      
        # A list of experiments.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Experiment>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this experiment collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this experiment collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of
        # resources in the result.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for an Analytics account filter.
      class Filter
        include Google::Apis::Core::Hashable
      
        # Account ID to which this filter belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Details for the filter of the type ADVANCED.
        # Corresponds to the JSON property `advancedDetails`
        # @return [Google::Apis::AnalyticsV3::Filter::AdvancedDetails]
        attr_accessor :advanced_details
      
        # Time this filter was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # JSON template for an Analytics filter expression.
        # Corresponds to the JSON property `excludeDetails`
        # @return [Google::Apis::AnalyticsV3::FilterExpression]
        attr_accessor :exclude_details
      
        # Filter ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # JSON template for an Analytics filter expression.
        # Corresponds to the JSON property `includeDetails`
        # @return [Google::Apis::AnalyticsV3::FilterExpression]
        attr_accessor :include_details
      
        # Resource type for Analytics filter.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Details for the filter of the type LOWER.
        # Corresponds to the JSON property `lowercaseDetails`
        # @return [Google::Apis::AnalyticsV3::Filter::LowercaseDetails]
        attr_accessor :lowercase_details
      
        # Name of this filter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for this filter. Points to the account to which this filter
        # belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::Filter::ParentLink]
        attr_accessor :parent_link
      
        # Details for the filter of the type SEARCH_AND_REPLACE.
        # Corresponds to the JSON property `searchAndReplaceDetails`
        # @return [Google::Apis::AnalyticsV3::Filter::SearchAndReplaceDetails]
        attr_accessor :search_and_replace_details
      
        # Link for this filter.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Type of this filter. Possible values are INCLUDE, EXCLUDE, LOWERCASE,
        # UPPERCASE, SEARCH_AND_REPLACE and ADVANCED.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Time this filter was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Details for the filter of the type UPPER.
        # Corresponds to the JSON property `uppercaseDetails`
        # @return [Google::Apis::AnalyticsV3::Filter::UppercaseDetails]
        attr_accessor :uppercase_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @advanced_details = args[:advanced_details] unless args[:advanced_details].nil?
          @created = args[:created] unless args[:created].nil?
          @exclude_details = args[:exclude_details] unless args[:exclude_details].nil?
          @id = args[:id] unless args[:id].nil?
          @include_details = args[:include_details] unless args[:include_details].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @lowercase_details = args[:lowercase_details] unless args[:lowercase_details].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @search_and_replace_details = args[:search_and_replace_details] unless args[:search_and_replace_details].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @type = args[:type] unless args[:type].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @uppercase_details = args[:uppercase_details] unless args[:uppercase_details].nil?
        end
        
        # Details for the filter of the type ADVANCED.
        class AdvancedDetails
          include Google::Apis::Core::Hashable
        
          # Indicates if the filter expressions are case sensitive.
          # Corresponds to the JSON property `caseSensitive`
          # @return [Boolean]
          attr_accessor :case_sensitive
          alias_method :case_sensitive?, :case_sensitive
        
          # Expression to extract from field A.
          # Corresponds to the JSON property `extractA`
          # @return [String]
          attr_accessor :extract_a
        
          # Expression to extract from field B.
          # Corresponds to the JSON property `extractB`
          # @return [String]
          attr_accessor :extract_b
        
          # Field A.
          # Corresponds to the JSON property `fieldA`
          # @return [String]
          attr_accessor :field_a
        
          # The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
          # Corresponds to the JSON property `fieldAIndex`
          # @return [Fixnum]
          attr_accessor :field_a_index
        
          # Indicates if field A is required to match.
          # Corresponds to the JSON property `fieldARequired`
          # @return [Boolean]
          attr_accessor :field_a_required
          alias_method :field_a_required?, :field_a_required
        
          # Field B.
          # Corresponds to the JSON property `fieldB`
          # @return [String]
          attr_accessor :field_b
        
          # The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
          # Corresponds to the JSON property `fieldBIndex`
          # @return [Fixnum]
          attr_accessor :field_b_index
        
          # Indicates if field B is required to match.
          # Corresponds to the JSON property `fieldBRequired`
          # @return [Boolean]
          attr_accessor :field_b_required
          alias_method :field_b_required?, :field_b_required
        
          # Expression used to construct the output value.
          # Corresponds to the JSON property `outputConstructor`
          # @return [String]
          attr_accessor :output_constructor
        
          # Output field.
          # Corresponds to the JSON property `outputToField`
          # @return [String]
          attr_accessor :output_to_field
        
          # The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
          # Corresponds to the JSON property `outputToFieldIndex`
          # @return [Fixnum]
          attr_accessor :output_to_field_index
        
          # Indicates if the existing value of the output field, if any, should be
          # overridden by the output expression.
          # Corresponds to the JSON property `overrideOutputField`
          # @return [Boolean]
          attr_accessor :override_output_field
          alias_method :override_output_field?, :override_output_field
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @case_sensitive = args[:case_sensitive] unless args[:case_sensitive].nil?
            @extract_a = args[:extract_a] unless args[:extract_a].nil?
            @extract_b = args[:extract_b] unless args[:extract_b].nil?
            @field_a = args[:field_a] unless args[:field_a].nil?
            @field_a_index = args[:field_a_index] unless args[:field_a_index].nil?
            @field_a_required = args[:field_a_required] unless args[:field_a_required].nil?
            @field_b = args[:field_b] unless args[:field_b].nil?
            @field_b_index = args[:field_b_index] unless args[:field_b_index].nil?
            @field_b_required = args[:field_b_required] unless args[:field_b_required].nil?
            @output_constructor = args[:output_constructor] unless args[:output_constructor].nil?
            @output_to_field = args[:output_to_field] unless args[:output_to_field].nil?
            @output_to_field_index = args[:output_to_field_index] unless args[:output_to_field_index].nil?
            @override_output_field = args[:override_output_field] unless args[:override_output_field].nil?
          end
        end
        
        # Details for the filter of the type LOWER.
        class LowercaseDetails
          include Google::Apis::Core::Hashable
        
          # Field to use in the filter.
          # Corresponds to the JSON property `field`
          # @return [String]
          attr_accessor :field
        
          # The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
          # Corresponds to the JSON property `fieldIndex`
          # @return [Fixnum]
          attr_accessor :field_index
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @field = args[:field] unless args[:field].nil?
            @field_index = args[:field_index] unless args[:field_index].nil?
          end
        end
        
        # Parent link for this filter. Points to the account to which this filter
        # belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the account to which this filter belongs.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#account".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Details for the filter of the type SEARCH_AND_REPLACE.
        class SearchAndReplaceDetails
          include Google::Apis::Core::Hashable
        
          # Determines if the filter is case sensitive.
          # Corresponds to the JSON property `caseSensitive`
          # @return [Boolean]
          attr_accessor :case_sensitive
          alias_method :case_sensitive?, :case_sensitive
        
          # Field to use in the filter.
          # Corresponds to the JSON property `field`
          # @return [String]
          attr_accessor :field
        
          # The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
          # Corresponds to the JSON property `fieldIndex`
          # @return [Fixnum]
          attr_accessor :field_index
        
          # Term to replace the search term with.
          # Corresponds to the JSON property `replaceString`
          # @return [String]
          attr_accessor :replace_string
        
          # Term to search.
          # Corresponds to the JSON property `searchString`
          # @return [String]
          attr_accessor :search_string
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @case_sensitive = args[:case_sensitive] unless args[:case_sensitive].nil?
            @field = args[:field] unless args[:field].nil?
            @field_index = args[:field_index] unless args[:field_index].nil?
            @replace_string = args[:replace_string] unless args[:replace_string].nil?
            @search_string = args[:search_string] unless args[:search_string].nil?
          end
        end
        
        # Details for the filter of the type UPPER.
        class UppercaseDetails
          include Google::Apis::Core::Hashable
        
          # Field to use in the filter.
          # Corresponds to the JSON property `field`
          # @return [String]
          attr_accessor :field
        
          # The Index of the custom dimension. Required if field is a CUSTOM_DIMENSION.
          # Corresponds to the JSON property `fieldIndex`
          # @return [Fixnum]
          attr_accessor :field_index
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @field = args[:field] unless args[:field].nil?
            @field_index = args[:field_index] unless args[:field_index].nil?
          end
        end
      end
      
      # JSON template for an Analytics filter expression.
      class FilterExpression
        include Google::Apis::Core::Hashable
      
        # Determines if the filter is case sensitive.
        # Corresponds to the JSON property `caseSensitive`
        # @return [Boolean]
        attr_accessor :case_sensitive
        alias_method :case_sensitive?, :case_sensitive
      
        # Filter expression value
        # Corresponds to the JSON property `expressionValue`
        # @return [String]
        attr_accessor :expression_value
      
        # Field to filter. Possible values:
        # - Content and Traffic
        # - PAGE_REQUEST_URI,
        # - PAGE_HOSTNAME,
        # - PAGE_TITLE,
        # - REFERRAL,
        # - COST_DATA_URI (Campaign target URL),
        # - HIT_TYPE,
        # - INTERNAL_SEARCH_TERM,
        # - INTERNAL_SEARCH_TYPE,
        # - SOURCE_PROPERTY_TRACKING_ID,
        # - Campaign or AdGroup
        # - CAMPAIGN_SOURCE,
        # - CAMPAIGN_MEDIUM,
        # - CAMPAIGN_NAME,
        # - CAMPAIGN_AD_GROUP,
        # - CAMPAIGN_TERM,
        # - CAMPAIGN_CONTENT,
        # - CAMPAIGN_CODE,
        # - CAMPAIGN_REFERRAL_PATH,
        # - E-Commerce
        # - TRANSACTION_COUNTRY,
        # - TRANSACTION_REGION,
        # - TRANSACTION_CITY,
        # - TRANSACTION_AFFILIATION (Store or order location),
        # - ITEM_NAME,
        # - ITEM_CODE,
        # - ITEM_VARIATION,
        # - TRANSACTION_ID,
        # - TRANSACTION_CURRENCY_CODE,
        # - PRODUCT_ACTION_TYPE,
        # - Audience/Users
        # - BROWSER,
        # - BROWSER_VERSION,
        # - BROWSER_SIZE,
        # - PLATFORM,
        # - PLATFORM_VERSION,
        # - LANGUAGE,
        # - SCREEN_RESOLUTION,
        # - SCREEN_COLORS,
        # - JAVA_ENABLED (Boolean Field),
        # - FLASH_VERSION,
        # - GEO_SPEED (Connection speed),
        # - VISITOR_TYPE,
        # - GEO_ORGANIZATION (ISP organization),
        # - GEO_DOMAIN,
        # - GEO_IP_ADDRESS,
        # - GEO_IP_VERSION,
        # - Location
        # - GEO_COUNTRY,
        # - GEO_REGION,
        # - GEO_CITY,
        # - Event
        # - EVENT_CATEGORY,
        # - EVENT_ACTION,
        # - EVENT_LABEL,
        # - Other
        # - CUSTOM_FIELD_1,
        # - CUSTOM_FIELD_2,
        # - USER_DEFINED_VALUE,
        # - Application
        # - APP_ID,
        # - APP_INSTALLER_ID,
        # - APP_NAME,
        # - APP_VERSION,
        # - SCREEN,
        # - IS_APP (Boolean Field),
        # - IS_FATAL_EXCEPTION (Boolean Field),
        # - EXCEPTION_DESCRIPTION,
        # - Mobile device
        # - IS_MOBILE (Boolean Field, Deprecated. Use DEVICE_CATEGORY=mobile),
        # - IS_TABLET (Boolean Field, Deprecated. Use DEVICE_CATEGORY=tablet),
        # - DEVICE_CATEGORY,
        # - MOBILE_HAS_QWERTY_KEYBOARD (Boolean Field),
        # - MOBILE_HAS_NFC_SUPPORT (Boolean Field),
        # - MOBILE_HAS_CELLULAR_RADIO (Boolean Field),
        # - MOBILE_HAS_WIFI_SUPPORT (Boolean Field),
        # - MOBILE_BRAND_NAME,
        # - MOBILE_MODEL_NAME,
        # - MOBILE_MARKETING_NAME,
        # - MOBILE_POINTING_METHOD,
        # - Social
        # - SOCIAL_NETWORK,
        # - SOCIAL_ACTION,
        # - SOCIAL_ACTION_TARGET,
        # - Custom dimension
        # - CUSTOM_DIMENSION (See accompanying field index),
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # The Index of the custom dimension. Set only if the field is a is
        # CUSTOM_DIMENSION.
        # Corresponds to the JSON property `fieldIndex`
        # @return [Fixnum]
        attr_accessor :field_index
      
        # Kind value for filter expression
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Match type for this filter. Possible values are BEGINS_WITH, EQUAL, ENDS_WITH,
        # CONTAINS, or MATCHES. GEO_DOMAIN, GEO_IP_ADDRESS, PAGE_REQUEST_URI, or
        # PAGE_HOSTNAME filters can use any match type; all other filters must use
        # MATCHES.
        # Corresponds to the JSON property `matchType`
        # @return [String]
        attr_accessor :match_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive = args[:case_sensitive] unless args[:case_sensitive].nil?
          @expression_value = args[:expression_value] unless args[:expression_value].nil?
          @field = args[:field] unless args[:field].nil?
          @field_index = args[:field_index] unless args[:field_index].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @match_type = args[:match_type] unless args[:match_type].nil?
        end
      end
      
      # JSON template for a profile filter link.
      class FilterRef
        include Google::Apis::Core::Hashable
      
        # Account ID to which this filter belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Link for this filter.
        # Corresponds to the JSON property `href`
        # @return [String]
        attr_accessor :href
      
        # Filter ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind value for filter reference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this filter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @href = args[:href] unless args[:href].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # A filter collection lists filters created by users in an Analytics account.
      # Each resource in the collection corresponds to a filter.
      class Filters
        include Google::Apis::Core::Hashable
      
        # A list of filters.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Filter>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1,000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this filter collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this filter collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # Analytics data for a given view (profile).
      class GaData
        include Google::Apis::Core::Hashable
      
        # Column headers that list dimension names followed by the metric names. The
        # order of dimensions and metrics is same as specified in the request.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Array<Google::Apis::AnalyticsV3::GaData::ColumnHeader>]
        attr_accessor :column_headers
      
        # Determines if Analytics data contains samples.
        # Corresponds to the JSON property `containsSampledData`
        # @return [Boolean]
        attr_accessor :contains_sampled_data
        alias_method :contains_sampled_data?, :contains_sampled_data
      
        # 
        # Corresponds to the JSON property `dataTable`
        # @return [Google::Apis::AnalyticsV3::GaData::DataTable]
        attr_accessor :data_table
      
        # Unique ID for this data response.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The maximum number of rows the response can contain, regardless of the actual
        # number of rows returned. Its value ranges from 1 to 10,000 with a value of
        # 1000 by default, or otherwise specified by the max-results query parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this Analytics data query.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this Analytics data query.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # Information for the view (profile), for which the Analytics data was requested.
        # Corresponds to the JSON property `profileInfo`
        # @return [Google::Apis::AnalyticsV3::GaData::ProfileInfo]
        attr_accessor :profile_info
      
        # Analytics data request query parameters.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::AnalyticsV3::GaData::Query]
        attr_accessor :query
      
        # Analytics data rows, where each row contains a list of dimension values
        # followed by the metric values. The order of dimensions and metrics is same as
        # specified in the request.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<String>>]
        attr_accessor :rows
      
        # The number of samples used to calculate the result.
        # Corresponds to the JSON property `sampleSize`
        # @return [String]
        attr_accessor :sample_size
      
        # Total size of the sample space from which the samples were selected.
        # Corresponds to the JSON property `sampleSpace`
        # @return [String]
        attr_accessor :sample_space
      
        # Link to this page.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The total number of rows for the query, regardless of the number of rows in
        # the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Total values for the requested metrics over all the results, not just the
        # results returned in this response. The order of the metric totals is same as
        # the metric order specified in the request.
        # Corresponds to the JSON property `totalsForAllResults`
        # @return [Hash<String,String>]
        attr_accessor :totals_for_all_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] unless args[:column_headers].nil?
          @contains_sampled_data = args[:contains_sampled_data] unless args[:contains_sampled_data].nil?
          @data_table = args[:data_table] unless args[:data_table].nil?
          @id = args[:id] unless args[:id].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @profile_info = args[:profile_info] unless args[:profile_info].nil?
          @query = args[:query] unless args[:query].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @sample_size = args[:sample_size] unless args[:sample_size].nil?
          @sample_space = args[:sample_space] unless args[:sample_space].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @totals_for_all_results = args[:totals_for_all_results] unless args[:totals_for_all_results].nil?
        end
        
        # 
        class ColumnHeader
          include Google::Apis::Core::Hashable
        
          # Column Type. Either DIMENSION or METRIC.
          # Corresponds to the JSON property `columnType`
          # @return [String]
          attr_accessor :column_type
        
          # Data type. Dimension column headers have only STRING as the data type. Metric
          # column headers have data types for metric values such as INTEGER, DOUBLE,
          # CURRENCY etc.
          # Corresponds to the JSON property `dataType`
          # @return [String]
          attr_accessor :data_type
        
          # Column name.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column_type = args[:column_type] unless args[:column_type].nil?
            @data_type = args[:data_type] unless args[:data_type].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
        
        # 
        class DataTable
          include Google::Apis::Core::Hashable
        
          # 
          # Corresponds to the JSON property `cols`
          # @return [Array<Google::Apis::AnalyticsV3::GaData::DataTable::Col>]
          attr_accessor :cols
        
          # 
          # Corresponds to the JSON property `rows`
          # @return [Array<Google::Apis::AnalyticsV3::GaData::DataTable::Row>]
          attr_accessor :rows
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @cols = args[:cols] unless args[:cols].nil?
            @rows = args[:rows] unless args[:rows].nil?
          end
          
          # 
          class Col
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `id`
            # @return [String]
            attr_accessor :id
          
            # 
            # Corresponds to the JSON property `label`
            # @return [String]
            attr_accessor :label
          
            # 
            # Corresponds to the JSON property `type`
            # @return [String]
            attr_accessor :type
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @id = args[:id] unless args[:id].nil?
              @label = args[:label] unless args[:label].nil?
              @type = args[:type] unless args[:type].nil?
            end
          end
          
          # 
          class Row
            include Google::Apis::Core::Hashable
          
            # 
            # Corresponds to the JSON property `c`
            # @return [Array<Google::Apis::AnalyticsV3::GaData::DataTable::Row::C>]
            attr_accessor :c
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @c = args[:c] unless args[:c].nil?
            end
            
            # 
            class C
              include Google::Apis::Core::Hashable
            
              # 
              # Corresponds to the JSON property `v`
              # @return [String]
              attr_accessor :v
            
              def initialize(**args)
                 update!(**args)
              end
            
              # Update properties of this object
              def update!(**args)
                @v = args[:v] unless args[:v].nil?
              end
            end
          end
        end
        
        # Information for the view (profile), for which the Analytics data was requested.
        class ProfileInfo
          include Google::Apis::Core::Hashable
        
          # Account ID to which this view (profile) belongs.
          # Corresponds to the JSON property `accountId`
          # @return [String]
          attr_accessor :account_id
        
          # Internal ID for the web property to which this view (profile) belongs.
          # Corresponds to the JSON property `internalWebPropertyId`
          # @return [String]
          attr_accessor :internal_web_property_id
        
          # View (Profile) ID.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          # View (Profile) name.
          # Corresponds to the JSON property `profileName`
          # @return [String]
          attr_accessor :profile_name
        
          # Table ID for view (profile).
          # Corresponds to the JSON property `tableId`
          # @return [String]
          attr_accessor :table_id
        
          # Web Property ID to which this view (profile) belongs.
          # Corresponds to the JSON property `webPropertyId`
          # @return [String]
          attr_accessor :web_property_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @account_id = args[:account_id] unless args[:account_id].nil?
            @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
            @profile_id = args[:profile_id] unless args[:profile_id].nil?
            @profile_name = args[:profile_name] unless args[:profile_name].nil?
            @table_id = args[:table_id] unless args[:table_id].nil?
            @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
          end
        end
        
        # Analytics data request query parameters.
        class Query
          include Google::Apis::Core::Hashable
        
          # List of analytics dimensions.
          # Corresponds to the JSON property `dimensions`
          # @return [String]
          attr_accessor :dimensions
        
          # End date.
          # Corresponds to the JSON property `end-date`
          # @return [String]
          attr_accessor :end_date
        
          # Comma-separated list of dimension or metric filters.
          # Corresponds to the JSON property `filters`
          # @return [String]
          attr_accessor :filters
        
          # Unique table ID.
          # Corresponds to the JSON property `ids`
          # @return [String]
          attr_accessor :ids
        
          # Maximum results per page.
          # Corresponds to the JSON property `max-results`
          # @return [Fixnum]
          attr_accessor :max_results
        
          # List of analytics metrics.
          # Corresponds to the JSON property `metrics`
          # @return [Array<String>]
          attr_accessor :metrics
        
          # Desired sampling level
          # Corresponds to the JSON property `samplingLevel`
          # @return [String]
          attr_accessor :sampling_level
        
          # Analytics advanced segment.
          # Corresponds to the JSON property `segment`
          # @return [String]
          attr_accessor :segment
        
          # List of dimensions or metrics based on which Analytics data is sorted.
          # Corresponds to the JSON property `sort`
          # @return [Array<String>]
          attr_accessor :sort
        
          # Start date.
          # Corresponds to the JSON property `start-date`
          # @return [String]
          attr_accessor :start_date
        
          # Start index.
          # Corresponds to the JSON property `start-index`
          # @return [Fixnum]
          attr_accessor :start_index
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @dimensions = args[:dimensions] unless args[:dimensions].nil?
            @end_date = args[:end_date] unless args[:end_date].nil?
            @filters = args[:filters] unless args[:filters].nil?
            @ids = args[:ids] unless args[:ids].nil?
            @max_results = args[:max_results] unless args[:max_results].nil?
            @metrics = args[:metrics] unless args[:metrics].nil?
            @sampling_level = args[:sampling_level] unless args[:sampling_level].nil?
            @segment = args[:segment] unless args[:segment].nil?
            @sort = args[:sort] unless args[:sort].nil?
            @start_date = args[:start_date] unless args[:start_date].nil?
            @start_index = args[:start_index] unless args[:start_index].nil?
          end
        end
      end
      
      # JSON template for Analytics goal resource.
      class Goal
        include Google::Apis::Core::Hashable
      
        # Account ID to which this goal belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Determines whether this goal is active.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Time this goal was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Details for the goal of the type EVENT.
        # Corresponds to the JSON property `eventDetails`
        # @return [Google::Apis::AnalyticsV3::Goal::EventDetails]
        attr_accessor :event_details
      
        # Goal ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Internal ID for the web property to which this goal belongs.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Resource type for an Analytics goal.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Goal name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for a goal. Points to the view (profile) to which this goal
        # belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::Goal::ParentLink]
        attr_accessor :parent_link
      
        # View (Profile) ID to which this goal belongs.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # Link for this goal.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Goal type. Possible values are URL_DESTINATION, VISIT_TIME_ON_SITE,
        # VISIT_NUM_PAGES, AND EVENT.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Time this goal was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Details for the goal of the type URL_DESTINATION.
        # Corresponds to the JSON property `urlDestinationDetails`
        # @return [Google::Apis::AnalyticsV3::Goal::UrlDestinationDetails]
        attr_accessor :url_destination_details
      
        # Goal value.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        # Details for the goal of the type VISIT_NUM_PAGES.
        # Corresponds to the JSON property `visitNumPagesDetails`
        # @return [Google::Apis::AnalyticsV3::Goal::VisitNumPagesDetails]
        attr_accessor :visit_num_pages_details
      
        # Details for the goal of the type VISIT_TIME_ON_SITE.
        # Corresponds to the JSON property `visitTimeOnSiteDetails`
        # @return [Google::Apis::AnalyticsV3::Goal::VisitTimeOnSiteDetails]
        attr_accessor :visit_time_on_site_details
      
        # Web property ID to which this goal belongs. The web property ID is of the form
        # UA-XXXXX-YY.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @active = args[:active] unless args[:active].nil?
          @created = args[:created] unless args[:created].nil?
          @event_details = args[:event_details] unless args[:event_details].nil?
          @id = args[:id] unless args[:id].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @profile_id = args[:profile_id] unless args[:profile_id].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @type = args[:type] unless args[:type].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @url_destination_details = args[:url_destination_details] unless args[:url_destination_details].nil?
          @value = args[:value] unless args[:value].nil?
          @visit_num_pages_details = args[:visit_num_pages_details] unless args[:visit_num_pages_details].nil?
          @visit_time_on_site_details = args[:visit_time_on_site_details] unless args[:visit_time_on_site_details].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
        end
        
        # Details for the goal of the type EVENT.
        class EventDetails
          include Google::Apis::Core::Hashable
        
          # List of event conditions.
          # Corresponds to the JSON property `eventConditions`
          # @return [Array<Google::Apis::AnalyticsV3::Goal::EventDetails::EventCondition>]
          attr_accessor :event_conditions
        
          # Determines if the event value should be used as the value for this goal.
          # Corresponds to the JSON property `useEventValue`
          # @return [Boolean]
          attr_accessor :use_event_value
          alias_method :use_event_value?, :use_event_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @event_conditions = args[:event_conditions] unless args[:event_conditions].nil?
            @use_event_value = args[:use_event_value] unless args[:use_event_value].nil?
          end
          
          # 
          class EventCondition
            include Google::Apis::Core::Hashable
          
            # Type of comparison. Possible values are LESS_THAN, GREATER_THAN or EQUAL.
            # Corresponds to the JSON property `comparisonType`
            # @return [String]
            attr_accessor :comparison_type
          
            # Value used for this comparison.
            # Corresponds to the JSON property `comparisonValue`
            # @return [String]
            attr_accessor :comparison_value
          
            # Expression used for this match.
            # Corresponds to the JSON property `expression`
            # @return [String]
            attr_accessor :expression
          
            # Type of the match to be performed. Possible values are REGEXP, BEGINS_WITH, or
            # EXACT.
            # Corresponds to the JSON property `matchType`
            # @return [String]
            attr_accessor :match_type
          
            # Type of this event condition. Possible values are CATEGORY, ACTION, LABEL, or
            # VALUE.
            # Corresponds to the JSON property `type`
            # @return [String]
            attr_accessor :type
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @comparison_type = args[:comparison_type] unless args[:comparison_type].nil?
              @comparison_value = args[:comparison_value] unless args[:comparison_value].nil?
              @expression = args[:expression] unless args[:expression].nil?
              @match_type = args[:match_type] unless args[:match_type].nil?
              @type = args[:type] unless args[:type].nil?
            end
          end
        end
        
        # Parent link for a goal. Points to the view (profile) to which this goal
        # belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the view (profile) to which this goal belongs.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#profile".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Details for the goal of the type URL_DESTINATION.
        class UrlDestinationDetails
          include Google::Apis::Core::Hashable
        
          # Determines if the goal URL must exactly match the capitalization of visited
          # URLs.
          # Corresponds to the JSON property `caseSensitive`
          # @return [Boolean]
          attr_accessor :case_sensitive
          alias_method :case_sensitive?, :case_sensitive
        
          # Determines if the first step in this goal is required.
          # Corresponds to the JSON property `firstStepRequired`
          # @return [Boolean]
          attr_accessor :first_step_required
          alias_method :first_step_required?, :first_step_required
        
          # Match type for the goal URL. Possible values are HEAD, EXACT, or REGEX.
          # Corresponds to the JSON property `matchType`
          # @return [String]
          attr_accessor :match_type
        
          # List of steps configured for this goal funnel.
          # Corresponds to the JSON property `steps`
          # @return [Array<Google::Apis::AnalyticsV3::Goal::UrlDestinationDetails::Step>]
          attr_accessor :steps
        
          # URL for this goal.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @case_sensitive = args[:case_sensitive] unless args[:case_sensitive].nil?
            @first_step_required = args[:first_step_required] unless args[:first_step_required].nil?
            @match_type = args[:match_type] unless args[:match_type].nil?
            @steps = args[:steps] unless args[:steps].nil?
            @url = args[:url] unless args[:url].nil?
          end
          
          # 
          class Step
            include Google::Apis::Core::Hashable
          
            # Step name.
            # Corresponds to the JSON property `name`
            # @return [String]
            attr_accessor :name
          
            # Step number.
            # Corresponds to the JSON property `number`
            # @return [Fixnum]
            attr_accessor :number
          
            # URL for this step.
            # Corresponds to the JSON property `url`
            # @return [String]
            attr_accessor :url
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @name = args[:name] unless args[:name].nil?
              @number = args[:number] unless args[:number].nil?
              @url = args[:url] unless args[:url].nil?
            end
          end
        end
        
        # Details for the goal of the type VISIT_NUM_PAGES.
        class VisitNumPagesDetails
          include Google::Apis::Core::Hashable
        
          # Type of comparison. Possible values are LESS_THAN, GREATER_THAN, or EQUAL.
          # Corresponds to the JSON property `comparisonType`
          # @return [String]
          attr_accessor :comparison_type
        
          # Value used for this comparison.
          # Corresponds to the JSON property `comparisonValue`
          # @return [String]
          attr_accessor :comparison_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @comparison_type = args[:comparison_type] unless args[:comparison_type].nil?
            @comparison_value = args[:comparison_value] unless args[:comparison_value].nil?
          end
        end
        
        # Details for the goal of the type VISIT_TIME_ON_SITE.
        class VisitTimeOnSiteDetails
          include Google::Apis::Core::Hashable
        
          # Type of comparison. Possible values are LESS_THAN or GREATER_THAN.
          # Corresponds to the JSON property `comparisonType`
          # @return [String]
          attr_accessor :comparison_type
        
          # Value used for this comparison.
          # Corresponds to the JSON property `comparisonValue`
          # @return [String]
          attr_accessor :comparison_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @comparison_type = args[:comparison_type] unless args[:comparison_type].nil?
            @comparison_value = args[:comparison_value] unless args[:comparison_value].nil?
          end
        end
      end
      
      # A goal collection lists Analytics goals to which the user has access. Each
      # view (profile) can have a set of goals. Each resource in the Goal collection
      # corresponds to a single Analytics goal.
      class Goals
        include Google::Apis::Core::Hashable
      
        # A list of goals.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Goal>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this goal collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this goal collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of
        # resources in the result.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # Multi-Channel Funnels data for a given view (profile).
      class McfData
        include Google::Apis::Core::Hashable
      
        # Column headers that list dimension names followed by the metric names. The
        # order of dimensions and metrics is same as specified in the request.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Array<Google::Apis::AnalyticsV3::McfData::ColumnHeader>]
        attr_accessor :column_headers
      
        # Determines if the Analytics data contains sampled data.
        # Corresponds to the JSON property `containsSampledData`
        # @return [Boolean]
        attr_accessor :contains_sampled_data
        alias_method :contains_sampled_data?, :contains_sampled_data
      
        # Unique ID for this data response.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The maximum number of rows the response can contain, regardless of the actual
        # number of rows returned. Its value ranges from 1 to 10,000 with a value of
        # 1000 by default, or otherwise specified by the max-results query parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this Analytics data query.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this Analytics data query.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # Information for the view (profile), for which the Analytics data was requested.
        # Corresponds to the JSON property `profileInfo`
        # @return [Google::Apis::AnalyticsV3::McfData::ProfileInfo]
        attr_accessor :profile_info
      
        # Analytics data request query parameters.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::AnalyticsV3::McfData::Query]
        attr_accessor :query
      
        # Analytics data rows, where each row contains a list of dimension values
        # followed by the metric values. The order of dimensions and metrics is same as
        # specified in the request.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<Google::Apis::AnalyticsV3::McfData::Row>>]
        attr_accessor :rows
      
        # The number of samples used to calculate the result.
        # Corresponds to the JSON property `sampleSize`
        # @return [String]
        attr_accessor :sample_size
      
        # Total size of the sample space from which the samples were selected.
        # Corresponds to the JSON property `sampleSpace`
        # @return [String]
        attr_accessor :sample_space
      
        # Link to this page.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The total number of rows for the query, regardless of the number of rows in
        # the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Total values for the requested metrics over all the results, not just the
        # results returned in this response. The order of the metric totals is same as
        # the metric order specified in the request.
        # Corresponds to the JSON property `totalsForAllResults`
        # @return [Hash<String,String>]
        attr_accessor :totals_for_all_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] unless args[:column_headers].nil?
          @contains_sampled_data = args[:contains_sampled_data] unless args[:contains_sampled_data].nil?
          @id = args[:id] unless args[:id].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @profile_info = args[:profile_info] unless args[:profile_info].nil?
          @query = args[:query] unless args[:query].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @sample_size = args[:sample_size] unless args[:sample_size].nil?
          @sample_space = args[:sample_space] unless args[:sample_space].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @totals_for_all_results = args[:totals_for_all_results] unless args[:totals_for_all_results].nil?
        end
        
        # 
        class ColumnHeader
          include Google::Apis::Core::Hashable
        
          # Column Type. Either DIMENSION or METRIC.
          # Corresponds to the JSON property `columnType`
          # @return [String]
          attr_accessor :column_type
        
          # Data type. Dimension and metric values data types such as INTEGER, DOUBLE,
          # CURRENCY, MCF_SEQUENCE etc.
          # Corresponds to the JSON property `dataType`
          # @return [String]
          attr_accessor :data_type
        
          # Column name.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column_type = args[:column_type] unless args[:column_type].nil?
            @data_type = args[:data_type] unless args[:data_type].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
        
        # Information for the view (profile), for which the Analytics data was requested.
        class ProfileInfo
          include Google::Apis::Core::Hashable
        
          # Account ID to which this view (profile) belongs.
          # Corresponds to the JSON property `accountId`
          # @return [String]
          attr_accessor :account_id
        
          # Internal ID for the web property to which this view (profile) belongs.
          # Corresponds to the JSON property `internalWebPropertyId`
          # @return [String]
          attr_accessor :internal_web_property_id
        
          # View (Profile) ID.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          # View (Profile) name.
          # Corresponds to the JSON property `profileName`
          # @return [String]
          attr_accessor :profile_name
        
          # Table ID for view (profile).
          # Corresponds to the JSON property `tableId`
          # @return [String]
          attr_accessor :table_id
        
          # Web Property ID to which this view (profile) belongs.
          # Corresponds to the JSON property `webPropertyId`
          # @return [String]
          attr_accessor :web_property_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @account_id = args[:account_id] unless args[:account_id].nil?
            @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
            @profile_id = args[:profile_id] unless args[:profile_id].nil?
            @profile_name = args[:profile_name] unless args[:profile_name].nil?
            @table_id = args[:table_id] unless args[:table_id].nil?
            @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
          end
        end
        
        # Analytics data request query parameters.
        class Query
          include Google::Apis::Core::Hashable
        
          # List of analytics dimensions.
          # Corresponds to the JSON property `dimensions`
          # @return [String]
          attr_accessor :dimensions
        
          # End date.
          # Corresponds to the JSON property `end-date`
          # @return [String]
          attr_accessor :end_date
        
          # Comma-separated list of dimension or metric filters.
          # Corresponds to the JSON property `filters`
          # @return [String]
          attr_accessor :filters
        
          # Unique table ID.
          # Corresponds to the JSON property `ids`
          # @return [String]
          attr_accessor :ids
        
          # Maximum results per page.
          # Corresponds to the JSON property `max-results`
          # @return [Fixnum]
          attr_accessor :max_results
        
          # List of analytics metrics.
          # Corresponds to the JSON property `metrics`
          # @return [Array<String>]
          attr_accessor :metrics
        
          # Desired sampling level
          # Corresponds to the JSON property `samplingLevel`
          # @return [String]
          attr_accessor :sampling_level
        
          # Analytics advanced segment.
          # Corresponds to the JSON property `segment`
          # @return [String]
          attr_accessor :segment
        
          # List of dimensions or metrics based on which Analytics data is sorted.
          # Corresponds to the JSON property `sort`
          # @return [Array<String>]
          attr_accessor :sort
        
          # Start date.
          # Corresponds to the JSON property `start-date`
          # @return [String]
          attr_accessor :start_date
        
          # Start index.
          # Corresponds to the JSON property `start-index`
          # @return [Fixnum]
          attr_accessor :start_index
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @dimensions = args[:dimensions] unless args[:dimensions].nil?
            @end_date = args[:end_date] unless args[:end_date].nil?
            @filters = args[:filters] unless args[:filters].nil?
            @ids = args[:ids] unless args[:ids].nil?
            @max_results = args[:max_results] unless args[:max_results].nil?
            @metrics = args[:metrics] unless args[:metrics].nil?
            @sampling_level = args[:sampling_level] unless args[:sampling_level].nil?
            @segment = args[:segment] unless args[:segment].nil?
            @sort = args[:sort] unless args[:sort].nil?
            @start_date = args[:start_date] unless args[:start_date].nil?
            @start_index = args[:start_index] unless args[:start_index].nil?
          end
        end
        
        # A union object representing a dimension or metric value. Only one of "
        # primitiveValue" or "conversionPathValue" attribute will be populated.
        class Row
          include Google::Apis::Core::Hashable
        
          # A conversion path dimension value, containing a list of interactions with
          # their attributes.
          # Corresponds to the JSON property `conversionPathValue`
          # @return [Array<Google::Apis::AnalyticsV3::McfData::Row::ConversionPathValue>]
          attr_accessor :conversion_path_value
        
          # A primitive dimension value. A primitive metric value.
          # Corresponds to the JSON property `primitiveValue`
          # @return [String]
          attr_accessor :primitive_value
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @conversion_path_value = args[:conversion_path_value] unless args[:conversion_path_value].nil?
            @primitive_value = args[:primitive_value] unless args[:primitive_value].nil?
          end
          
          # 
          class ConversionPathValue
            include Google::Apis::Core::Hashable
          
            # Type of an interaction on conversion path. Such as CLICK, IMPRESSION etc.
            # Corresponds to the JSON property `interactionType`
            # @return [String]
            attr_accessor :interaction_type
          
            # Node value of an interaction on conversion path. Such as source, medium etc.
            # Corresponds to the JSON property `nodeValue`
            # @return [String]
            attr_accessor :node_value
          
            def initialize(**args)
               update!(**args)
            end
          
            # Update properties of this object
            def update!(**args)
              @interaction_type = args[:interaction_type] unless args[:interaction_type].nil?
              @node_value = args[:node_value] unless args[:node_value].nil?
            end
          end
        end
      end
      
      # JSON template for an Analytics view (profile).
      class Profile
        include Google::Apis::Core::Hashable
      
        # Account ID to which this view (profile) belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Indicates whether bot filtering is enabled for this view (profile).
        # Corresponds to the JSON property `botFilteringEnabled`
        # @return [Boolean]
        attr_accessor :bot_filtering_enabled
        alias_method :bot_filtering_enabled?, :bot_filtering_enabled
      
        # Child link for this view (profile). Points to the list of goals for this view (
        # profile).
        # Corresponds to the JSON property `childLink`
        # @return [Google::Apis::AnalyticsV3::Profile::ChildLink]
        attr_accessor :child_link
      
        # Time this view (profile) was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # The currency type associated with this view (profile), defaults to USD. The
        # supported values are:
        # ARS, AUD, BGN, BRL, CAD, CHF, CNY, CZK, DKK, EUR, GBP, HKD, HUF, IDR, INR, JPY,
        # KRW, LTL, MXN, NOK, NZD, PHP, PLN, RUB, SEK, THB, TRY, TWD, USD, VND, ZAR
        # Corresponds to the JSON property `currency`
        # @return [String]
        attr_accessor :currency
      
        # Default page for this view (profile).
        # Corresponds to the JSON property `defaultPage`
        # @return [String]
        attr_accessor :default_page
      
        # Indicates whether ecommerce tracking is enabled for this view (profile).
        # Corresponds to the JSON property `eCommerceTracking`
        # @return [Boolean]
        attr_accessor :e_commerce_tracking
        alias_method :e_commerce_tracking?, :e_commerce_tracking
      
        # Indicates whether enhanced ecommerce tracking is enabled for this view (
        # profile). This property can only be enabled if ecommerce tracking is enabled.
        # Corresponds to the JSON property `enhancedECommerceTracking`
        # @return [Boolean]
        attr_accessor :enhanced_e_commerce_tracking
        alias_method :enhanced_e_commerce_tracking?, :enhanced_e_commerce_tracking
      
        # The query parameters that are excluded from this view (profile).
        # Corresponds to the JSON property `excludeQueryParameters`
        # @return [String]
        attr_accessor :exclude_query_parameters
      
        # View (Profile) ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Internal ID for the web property to which this view (profile) belongs.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Resource type for Analytics view (profile).
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this view (profile).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for this view (profile). Points to the web property to which this
        # view (profile) belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::Profile::ParentLink]
        attr_accessor :parent_link
      
        # Permissions the user has for this view (profile).
        # Corresponds to the JSON property `permissions`
        # @return [Google::Apis::AnalyticsV3::Profile::Permissions]
        attr_accessor :permissions
      
        # Link for this view (profile).
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Site search category parameters for this view (profile).
        # Corresponds to the JSON property `siteSearchCategoryParameters`
        # @return [String]
        attr_accessor :site_search_category_parameters
      
        # The site search query parameters for this view (profile).
        # Corresponds to the JSON property `siteSearchQueryParameters`
        # @return [String]
        attr_accessor :site_search_query_parameters
      
        # Whether or not Analytics will strip search category parameters from the URLs
        # in your reports.
        # Corresponds to the JSON property `stripSiteSearchCategoryParameters`
        # @return [Boolean]
        attr_accessor :strip_site_search_category_parameters
        alias_method :strip_site_search_category_parameters?, :strip_site_search_category_parameters
      
        # Whether or not Analytics will strip search query parameters from the URLs in
        # your reports.
        # Corresponds to the JSON property `stripSiteSearchQueryParameters`
        # @return [Boolean]
        attr_accessor :strip_site_search_query_parameters
        alias_method :strip_site_search_query_parameters?, :strip_site_search_query_parameters
      
        # Time zone for which this view (profile) has been configured. Time zones are
        # identified by strings from the TZ database.
        # Corresponds to the JSON property `timezone`
        # @return [String]
        attr_accessor :timezone
      
        # View (Profile) type. Supported types: WEB or APP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Time this view (profile) was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        # Website URL for this view (profile).
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @bot_filtering_enabled = args[:bot_filtering_enabled] unless args[:bot_filtering_enabled].nil?
          @child_link = args[:child_link] unless args[:child_link].nil?
          @created = args[:created] unless args[:created].nil?
          @currency = args[:currency] unless args[:currency].nil?
          @default_page = args[:default_page] unless args[:default_page].nil?
          @e_commerce_tracking = args[:e_commerce_tracking] unless args[:e_commerce_tracking].nil?
          @enhanced_e_commerce_tracking = args[:enhanced_e_commerce_tracking] unless args[:enhanced_e_commerce_tracking].nil?
          @exclude_query_parameters = args[:exclude_query_parameters] unless args[:exclude_query_parameters].nil?
          @id = args[:id] unless args[:id].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @site_search_category_parameters = args[:site_search_category_parameters] unless args[:site_search_category_parameters].nil?
          @site_search_query_parameters = args[:site_search_query_parameters] unless args[:site_search_query_parameters].nil?
          @strip_site_search_category_parameters = args[:strip_site_search_category_parameters] unless args[:strip_site_search_category_parameters].nil?
          @strip_site_search_query_parameters = args[:strip_site_search_query_parameters] unless args[:strip_site_search_query_parameters].nil?
          @timezone = args[:timezone] unless args[:timezone].nil?
          @type = args[:type] unless args[:type].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
        end
        
        # Child link for this view (profile). Points to the list of goals for this view (
        # profile).
        class ChildLink
          include Google::Apis::Core::Hashable
        
          # Link to the list of goals for this view (profile).
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#goals".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Parent link for this view (profile). Points to the web property to which this
        # view (profile) belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the web property to which this view (profile) belongs.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Value is "analytics#webproperty".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Permissions the user has for this view (profile).
        class Permissions
          include Google::Apis::Core::Hashable
        
          # All the permissions that the user has for this view (profile). These include
          # any implied permissions (e.g., EDIT implies VIEW) or inherited permissions
          # from the parent web property.
          # Corresponds to the JSON property `effective`
          # @return [Array<String>]
          attr_accessor :effective
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @effective = args[:effective] unless args[:effective].nil?
          end
        end
      end
      
      # JSON template for an Analytics profile filter link.
      class ProfileFilterLink
        include Google::Apis::Core::Hashable
      
        # JSON template for a profile filter link.
        # Corresponds to the JSON property `filterRef`
        # @return [Google::Apis::AnalyticsV3::FilterRef]
        attr_accessor :filter_ref
      
        # Profile filter link ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics filter.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # JSON template for a linked view (profile).
        # Corresponds to the JSON property `profileRef`
        # @return [Google::Apis::AnalyticsV3::ProfileRef]
        attr_accessor :profile_ref
      
        # The rank of this profile filter link relative to the other filters linked to
        # the same profile.
        # For readonly (i.e., list and get) operations, the rank always starts at 1.
        # For write (i.e., create, update, or delete) operations, you may specify a
        # value between 0 and 255 inclusively, [0, 255]. In order to insert a link at
        # the end of the list, either don't specify a rank or set a rank to a number
        # greater than the largest rank in the list. In order to insert a link to the
        # beginning of the list specify a rank that is less than or equal to 1. The new
        # link will move all existing filters with the same or lower rank down the list.
        # After the link is inserted/updated/deleted all profile filter links will be
        # renumbered starting at 1.
        # Corresponds to the JSON property `rank`
        # @return [Fixnum]
        attr_accessor :rank
      
        # Link for this profile filter link.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_ref = args[:filter_ref] unless args[:filter_ref].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @profile_ref = args[:profile_ref] unless args[:profile_ref].nil?
          @rank = args[:rank] unless args[:rank].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
        end
      end
      
      # A profile filter link collection lists profile filter links between profiles
      # and filters. Each resource in the collection corresponds to a profile filter
      # link.
      class ProfileFilterLinks
        include Google::Apis::Core::Hashable
      
        # A list of profile filter links.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::ProfileFilterLink>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1,000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this profile filter link collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this profile filter link collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for a linked view (profile).
      class ProfileRef
        include Google::Apis::Core::Hashable
      
        # Account ID to which this view (profile) belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Link for this view (profile).
        # Corresponds to the JSON property `href`
        # @return [String]
        attr_accessor :href
      
        # View (Profile) ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Internal ID for the web property to which this view (profile) belongs.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Analytics view (profile) reference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this view (profile).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Web property ID of the form UA-XXXXX-YY to which this view (profile) belongs.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @href = args[:href] unless args[:href].nil?
          @id = args[:id] unless args[:id].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
        end
      end
      
      # JSON template for an Analytics ProfileSummary. ProfileSummary returns basic
      # information (i.e., summary) for a profile.
      class ProfileSummary
        include Google::Apis::Core::Hashable
      
        # View (profile) ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics ProfileSummary.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # View (profile) name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # View (Profile) type. Supported types: WEB or APP.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A view (profile) collection lists Analytics views (profiles) to which the user
      # has access. Each resource in the collection corresponds to a single Analytics
      # view (profile).
      class Profiles
        include Google::Apis::Core::Hashable
      
        # A list of views (profiles).
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Profile>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this view (profile) collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this view (profile) collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # Real time data for a given view (profile).
      class RealtimeData
        include Google::Apis::Core::Hashable
      
        # Column headers that list dimension names followed by the metric names. The
        # order of dimensions and metrics is same as specified in the request.
        # Corresponds to the JSON property `columnHeaders`
        # @return [Array<Google::Apis::AnalyticsV3::RealtimeData::ColumnHeader>]
        attr_accessor :column_headers
      
        # Unique ID for this data response.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Information for the view (profile), for which the real time data was requested.
        # Corresponds to the JSON property `profileInfo`
        # @return [Google::Apis::AnalyticsV3::RealtimeData::ProfileInfo]
        attr_accessor :profile_info
      
        # Real time data request query parameters.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::AnalyticsV3::RealtimeData::Query]
        attr_accessor :query
      
        # Real time data rows, where each row contains a list of dimension values
        # followed by the metric values. The order of dimensions and metrics is same as
        # specified in the request.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<String>>]
        attr_accessor :rows
      
        # Link to this page.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The total number of rows for the query, regardless of the number of rows in
        # the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Total values for the requested metrics over all the results, not just the
        # results returned in this response. The order of the metric totals is same as
        # the metric order specified in the request.
        # Corresponds to the JSON property `totalsForAllResults`
        # @return [Hash<String,String>]
        attr_accessor :totals_for_all_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_headers = args[:column_headers] unless args[:column_headers].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @profile_info = args[:profile_info] unless args[:profile_info].nil?
          @query = args[:query] unless args[:query].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @totals_for_all_results = args[:totals_for_all_results] unless args[:totals_for_all_results].nil?
        end
        
        # 
        class ColumnHeader
          include Google::Apis::Core::Hashable
        
          # Column Type. Either DIMENSION or METRIC.
          # Corresponds to the JSON property `columnType`
          # @return [String]
          attr_accessor :column_type
        
          # Data type. Dimension column headers have only STRING as the data type. Metric
          # column headers have data types for metric values such as INTEGER, DOUBLE,
          # CURRENCY etc.
          # Corresponds to the JSON property `dataType`
          # @return [String]
          attr_accessor :data_type
        
          # Column name.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column_type = args[:column_type] unless args[:column_type].nil?
            @data_type = args[:data_type] unless args[:data_type].nil?
            @name = args[:name] unless args[:name].nil?
          end
        end
        
        # Information for the view (profile), for which the real time data was requested.
        class ProfileInfo
          include Google::Apis::Core::Hashable
        
          # Account ID to which this view (profile) belongs.
          # Corresponds to the JSON property `accountId`
          # @return [String]
          attr_accessor :account_id
        
          # Internal ID for the web property to which this view (profile) belongs.
          # Corresponds to the JSON property `internalWebPropertyId`
          # @return [String]
          attr_accessor :internal_web_property_id
        
          # View (Profile) ID.
          # Corresponds to the JSON property `profileId`
          # @return [String]
          attr_accessor :profile_id
        
          # View (Profile) name.
          # Corresponds to the JSON property `profileName`
          # @return [String]
          attr_accessor :profile_name
        
          # Table ID for view (profile).
          # Corresponds to the JSON property `tableId`
          # @return [String]
          attr_accessor :table_id
        
          # Web Property ID to which this view (profile) belongs.
          # Corresponds to the JSON property `webPropertyId`
          # @return [String]
          attr_accessor :web_property_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @account_id = args[:account_id] unless args[:account_id].nil?
            @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
            @profile_id = args[:profile_id] unless args[:profile_id].nil?
            @profile_name = args[:profile_name] unless args[:profile_name].nil?
            @table_id = args[:table_id] unless args[:table_id].nil?
            @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
          end
        end
        
        # Real time data request query parameters.
        class Query
          include Google::Apis::Core::Hashable
        
          # List of real time dimensions.
          # Corresponds to the JSON property `dimensions`
          # @return [String]
          attr_accessor :dimensions
        
          # Comma-separated list of dimension or metric filters.
          # Corresponds to the JSON property `filters`
          # @return [String]
          attr_accessor :filters
        
          # Unique table ID.
          # Corresponds to the JSON property `ids`
          # @return [String]
          attr_accessor :ids
        
          # Maximum results per page.
          # Corresponds to the JSON property `max-results`
          # @return [Fixnum]
          attr_accessor :max_results
        
          # List of real time metrics.
          # Corresponds to the JSON property `metrics`
          # @return [Array<String>]
          attr_accessor :metrics
        
          # List of dimensions or metrics based on which real time data is sorted.
          # Corresponds to the JSON property `sort`
          # @return [Array<String>]
          attr_accessor :sort
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @dimensions = args[:dimensions] unless args[:dimensions].nil?
            @filters = args[:filters] unless args[:filters].nil?
            @ids = args[:ids] unless args[:ids].nil?
            @max_results = args[:max_results] unless args[:max_results].nil?
            @metrics = args[:metrics] unless args[:metrics].nil?
            @sort = args[:sort] unless args[:sort].nil?
          end
        end
      end
      
      # JSON template for an Analytics segment.
      class Segment
        include Google::Apis::Core::Hashable
      
        # Time the segment was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Segment definition.
        # Corresponds to the JSON property `definition`
        # @return [String]
        attr_accessor :definition
      
        # Segment ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics segment.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Segment name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Segment ID. Can be used with the 'segment' parameter in Core Reporting API.
        # Corresponds to the JSON property `segmentId`
        # @return [String]
        attr_accessor :segment_id
      
        # Link for this segment.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Type for a segment. Possible values are "BUILT_IN" or "CUSTOM".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Time the segment was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created = args[:created] unless args[:created].nil?
          @definition = args[:definition] unless args[:definition].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
          @segment_id = args[:segment_id] unless args[:segment_id].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @type = args[:type] unless args[:type].nil?
          @updated = args[:updated] unless args[:updated].nil?
        end
      end
      
      # An segment collection lists Analytics segments that the user has access to.
      # Each resource in the collection corresponds to a single Analytics segment.
      class Segments
        include Google::Apis::Core::Hashable
      
        # A list of segments.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Segment>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type for segments.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this segment collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this segment collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for Analytics unsampled report resource.
      class UnsampledReport
        include Google::Apis::Core::Hashable
      
        # Account ID to which this unsampled report belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Download details for a file stored in Google Cloud Storage.
        # Corresponds to the JSON property `cloudStorageDownloadDetails`
        # @return [Google::Apis::AnalyticsV3::UnsampledReport::CloudStorageDownloadDetails]
        attr_accessor :cloud_storage_download_details
      
        # Time this unsampled report was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # The dimensions for the unsampled report.
        # Corresponds to the JSON property `dimensions`
        # @return [String]
        attr_accessor :dimensions
      
        # The type of download you need to use for the report data file.
        # Corresponds to the JSON property `downloadType`
        # @return [String]
        attr_accessor :download_type
      
        # Download details for a file stored in Google Drive.
        # Corresponds to the JSON property `driveDownloadDetails`
        # @return [Google::Apis::AnalyticsV3::UnsampledReport::DriveDownloadDetails]
        attr_accessor :drive_download_details
      
        # The end date for the unsampled report.
        # Corresponds to the JSON property `end-date`
        # @return [String]
        attr_accessor :end_date
      
        # The filters for the unsampled report.
        # Corresponds to the JSON property `filters`
        # @return [String]
        attr_accessor :filters
      
        # Unsampled report ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for an Analytics unsampled report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The metrics for the unsampled report.
        # Corresponds to the JSON property `metrics`
        # @return [String]
        attr_accessor :metrics
      
        # View (Profile) ID to which this unsampled report belongs.
        # Corresponds to the JSON property `profileId`
        # @return [String]
        attr_accessor :profile_id
      
        # The segment for the unsampled report.
        # Corresponds to the JSON property `segment`
        # @return [String]
        attr_accessor :segment
      
        # Link for this unsampled report.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # The start date for the unsampled report.
        # Corresponds to the JSON property `start-date`
        # @return [String]
        attr_accessor :start_date
      
        # Status of this unsampled report. Possible values are PENDING, COMPLETED, or
        # FAILED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Title of the unsampled report.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Time this unsampled report was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Web property ID to which this unsampled report belongs. The web property ID is
        # of the form UA-XXXXX-YY.
        # Corresponds to the JSON property `webPropertyId`
        # @return [String]
        attr_accessor :web_property_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @cloud_storage_download_details = args[:cloud_storage_download_details] unless args[:cloud_storage_download_details].nil?
          @created = args[:created] unless args[:created].nil?
          @dimensions = args[:dimensions] unless args[:dimensions].nil?
          @download_type = args[:download_type] unless args[:download_type].nil?
          @drive_download_details = args[:drive_download_details] unless args[:drive_download_details].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @filters = args[:filters] unless args[:filters].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @metrics = args[:metrics] unless args[:metrics].nil?
          @profile_id = args[:profile_id] unless args[:profile_id].nil?
          @segment = args[:segment] unless args[:segment].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
          @status = args[:status] unless args[:status].nil?
          @title = args[:title] unless args[:title].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @web_property_id = args[:web_property_id] unless args[:web_property_id].nil?
        end
        
        # Download details for a file stored in Google Cloud Storage.
        class CloudStorageDownloadDetails
          include Google::Apis::Core::Hashable
        
          # Id of the bucket the file object is stored in.
          # Corresponds to the JSON property `bucketId`
          # @return [String]
          attr_accessor :bucket_id
        
          # Id of the file object containing the report data.
          # Corresponds to the JSON property `objectId`
          # @return [String]
          attr_accessor :obj_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @bucket_id = args[:bucket_id] unless args[:bucket_id].nil?
            @obj_id = args[:obj_id] unless args[:obj_id].nil?
          end
        end
        
        # Download details for a file stored in Google Drive.
        class DriveDownloadDetails
          include Google::Apis::Core::Hashable
        
          # Id of the document/file containing the report data.
          # Corresponds to the JSON property `documentId`
          # @return [String]
          attr_accessor :document_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @document_id = args[:document_id] unless args[:document_id].nil?
          end
        end
      end
      
      # An unsampled report collection lists Analytics unsampled reports to which the
      # user has access. Each view (profile) can have a set of unsampled reports. Each
      # resource in the unsampled report collection corresponds to a single Analytics
      # unsampled report.
      class UnsampledReports
        include Google::Apis::Core::Hashable
      
        # A list of unsampled reports.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::UnsampledReport>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this unsampled report collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this unsampled report collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of
        # resources in the result.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # Metadata returned for an upload operation.
      class Upload
        include Google::Apis::Core::Hashable
      
        # Account Id to which this upload belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Custom data source Id to which this data import belongs.
        # Corresponds to the JSON property `customDataSourceId`
        # @return [String]
        attr_accessor :custom_data_source_id
      
        # Data import errors collection.
        # Corresponds to the JSON property `errors`
        # @return [Array<String>]
        attr_accessor :errors
      
        # A unique ID for this upload.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Resource type for Analytics upload.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Upload status. Possible values: PENDING, COMPLETED, FAILED, DELETING, DELETED.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @custom_data_source_id = args[:custom_data_source_id] unless args[:custom_data_source_id].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @status = args[:status] unless args[:status].nil?
        end
      end
      
      # Upload collection lists Analytics uploads to which the user has access. Each
      # custom data source can have a set of uploads. Each resource in the upload
      # collection corresponds to a single Analytics data upload.
      class Uploads
        include Google::Apis::Core::Hashable
      
        # A list of uploads.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Upload>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this upload collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this upload collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of
        # resources in the result.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
        end
      end
      
      # JSON template for a user reference.
      class UserRef
        include Google::Apis::Core::Hashable
      
        # Email ID of this user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # User ID.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @id = args[:id] unless args[:id].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # JSON template for a web property reference.
      class WebPropertyRef
        include Google::Apis::Core::Hashable
      
        # Account ID to which this web property belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Link for this web property.
        # Corresponds to the JSON property `href`
        # @return [String]
        attr_accessor :href
      
        # Web property ID of the form UA-XXXXX-YY.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Internal ID for this web property.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Analytics web property reference.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this web property.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @href = args[:href] unless args[:href].nil?
          @id = args[:id] unless args[:id].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @name = args[:name] unless args[:name].nil?
        end
      end
      
      # JSON template for an Analytics WebPropertySummary. WebPropertySummary returns
      # basic information (i.e., summary) for a web property.
      class WebPropertySummary
        include Google::Apis::Core::Hashable
      
        # Web property ID of the form UA-XXXXX-YY.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Internal ID for this web property.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Resource type for Analytics WebPropertySummary.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Level for this web property. Possible values are STANDARD or PREMIUM.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Web property name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of profiles under this web property.
        # Corresponds to the JSON property `profiles`
        # @return [Array<Google::Apis::AnalyticsV3::ProfileSummary>]
        attr_accessor :profiles
      
        # Website url for this web property.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] unless args[:id].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @level = args[:level] unless args[:level].nil?
          @name = args[:name] unless args[:name].nil?
          @profiles = args[:profiles] unless args[:profiles].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
        end
      end
      
      # A web property collection lists Analytics web properties to which the user has
      # access. Each resource in the collection corresponds to a single Analytics web
      # property.
      class Webproperties
        include Google::Apis::Core::Hashable
      
        # A list of web properties.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AnalyticsV3::Webproperty>]
        attr_accessor :items
      
        # The maximum number of resources the response can contain, regardless of the
        # actual number of resources returned. Its value ranges from 1 to 1000 with a
        # value of 1000 by default, or otherwise specified by the max-results query
        # parameter.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # Collection type.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Link to next page for this web property collection.
        # Corresponds to the JSON property `nextLink`
        # @return [String]
        attr_accessor :next_link
      
        # Link to previous page for this web property collection.
        # Corresponds to the JSON property `previousLink`
        # @return [String]
        attr_accessor :previous_link
      
        # The starting index of the resources, which is 1 by default or otherwise
        # specified by the start-index query parameter.
        # Corresponds to the JSON property `startIndex`
        # @return [Fixnum]
        attr_accessor :start_index
      
        # The total number of results for the query, regardless of the number of results
        # in the response.
        # Corresponds to the JSON property `totalResults`
        # @return [Fixnum]
        attr_accessor :total_results
      
        # Email ID of the authenticated user
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @items_per_page = args[:items_per_page] unless args[:items_per_page].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @next_link = args[:next_link] unless args[:next_link].nil?
          @previous_link = args[:previous_link] unless args[:previous_link].nil?
          @start_index = args[:start_index] unless args[:start_index].nil?
          @total_results = args[:total_results] unless args[:total_results].nil?
          @username = args[:username] unless args[:username].nil?
        end
      end
      
      # JSON template for an Analytics web property.
      class Webproperty
        include Google::Apis::Core::Hashable
      
        # Account ID to which this web property belongs.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Child link for this web property. Points to the list of views (profiles) for
        # this web property.
        # Corresponds to the JSON property `childLink`
        # @return [Google::Apis::AnalyticsV3::Webproperty::ChildLink]
        attr_accessor :child_link
      
        # Time this web property was created.
        # Corresponds to the JSON property `created`
        # @return [DateTime]
        attr_accessor :created
      
        # Default view (profile) ID.
        # Corresponds to the JSON property `defaultProfileId`
        # @return [String]
        attr_accessor :default_profile_id
      
        # Web property ID of the form UA-XXXXX-YY.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The industry vertical/category selected for this web property.
        # Corresponds to the JSON property `industryVertical`
        # @return [String]
        attr_accessor :industry_vertical
      
        # Internal ID for this web property.
        # Corresponds to the JSON property `internalWebPropertyId`
        # @return [String]
        attr_accessor :internal_web_property_id
      
        # Resource type for Analytics WebProperty.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Level for this web property. Possible values are STANDARD or PREMIUM.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Name of this web property.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Parent link for this web property. Points to the account to which this web
        # property belongs.
        # Corresponds to the JSON property `parentLink`
        # @return [Google::Apis::AnalyticsV3::Webproperty::ParentLink]
        attr_accessor :parent_link
      
        # Permissions the user has for this web property.
        # Corresponds to the JSON property `permissions`
        # @return [Google::Apis::AnalyticsV3::Webproperty::Permissions]
        attr_accessor :permissions
      
        # View (Profile) count for this web property.
        # Corresponds to the JSON property `profileCount`
        # @return [Fixnum]
        attr_accessor :profile_count
      
        # Link for this web property.
        # Corresponds to the JSON property `selfLink`
        # @return [String]
        attr_accessor :self_link
      
        # Time this web property was last modified.
        # Corresponds to the JSON property `updated`
        # @return [DateTime]
        attr_accessor :updated
      
        # Website url for this web property.
        # Corresponds to the JSON property `websiteUrl`
        # @return [String]
        attr_accessor :website_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] unless args[:account_id].nil?
          @child_link = args[:child_link] unless args[:child_link].nil?
          @created = args[:created] unless args[:created].nil?
          @default_profile_id = args[:default_profile_id] unless args[:default_profile_id].nil?
          @id = args[:id] unless args[:id].nil?
          @industry_vertical = args[:industry_vertical] unless args[:industry_vertical].nil?
          @internal_web_property_id = args[:internal_web_property_id] unless args[:internal_web_property_id].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @level = args[:level] unless args[:level].nil?
          @name = args[:name] unless args[:name].nil?
          @parent_link = args[:parent_link] unless args[:parent_link].nil?
          @permissions = args[:permissions] unless args[:permissions].nil?
          @profile_count = args[:profile_count] unless args[:profile_count].nil?
          @self_link = args[:self_link] unless args[:self_link].nil?
          @updated = args[:updated] unless args[:updated].nil?
          @website_url = args[:website_url] unless args[:website_url].nil?
        end
        
        # Child link for this web property. Points to the list of views (profiles) for
        # this web property.
        class ChildLink
          include Google::Apis::Core::Hashable
        
          # Link to the list of views (profiles) for this web property.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Type of the parent link. Its value is "analytics#profiles".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Parent link for this web property. Points to the account to which this web
        # property belongs.
        class ParentLink
          include Google::Apis::Core::Hashable
        
          # Link to the account for this web property.
          # Corresponds to the JSON property `href`
          # @return [String]
          attr_accessor :href
        
          # Type of the parent link. Its value is "analytics#account".
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @href = args[:href] unless args[:href].nil?
            @type = args[:type] unless args[:type].nil?
          end
        end
        
        # Permissions the user has for this web property.
        class Permissions
          include Google::Apis::Core::Hashable
        
          # All the permissions that the user has for this web property. These include any
          # implied permissions (e.g., EDIT implies VIEW) or inherited permissions from
          # the parent account.
          # Corresponds to the JSON property `effective`
          # @return [Array<String>]
          attr_accessor :effective
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @effective = args[:effective] unless args[:effective].nil?
          end
        end
      end
    end
  end
end
