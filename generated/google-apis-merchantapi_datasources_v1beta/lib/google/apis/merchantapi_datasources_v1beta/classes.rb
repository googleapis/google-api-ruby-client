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
    module MerchantapiDatasourcesV1beta
      
      # The [data source](https://support.google.com/merchants/answer/7439058) for the
      # Merchant Center account.
      class DataSource
        include Google::Apis::Core::Hashable
      
        # Output only. The data source id.
        # Corresponds to the JSON property `dataSourceId`
        # @return [Fixnum]
        attr_accessor :data_source_id
      
        # Required. The displayed data source name in the Merchant Center UI.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The data specific for file data sources. This field is empty for other data
        # source inputs.
        # Corresponds to the JSON property `fileInput`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::FileInput]
        attr_accessor :file_input
      
        # Output only. Determines the type of input to the data source. Based on the
        # input some settings might not work. Only generic data sources can be created
        # through the API.
        # Corresponds to the JSON property `input`
        # @return [String]
        attr_accessor :input
      
        # The local inventory data source.
        # Corresponds to the JSON property `localInventoryDataSource`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::LocalInventoryDataSource]
        attr_accessor :local_inventory_data_source
      
        # Identifier. The name of the data source. Format: ``datasource.name=accounts/`
        # account`/dataSources/`datasource```
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The primary data source for local and online products.
        # Corresponds to the JSON property `primaryProductDataSource`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::PrimaryProductDataSource]
        attr_accessor :primary_product_data_source
      
        # The promotion data source.
        # Corresponds to the JSON property `promotionDataSource`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::PromotionDataSource]
        attr_accessor :promotion_data_source
      
        # The regional inventory data source.
        # Corresponds to the JSON property `regionalInventoryDataSource`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::RegionalInventoryDataSource]
        attr_accessor :regional_inventory_data_source
      
        # The supplemental data source for local and online products.
        # Corresponds to the JSON property `supplementalProductDataSource`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::SupplementalProductDataSource]
        attr_accessor :supplemental_product_data_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_source_id = args[:data_source_id] if args.key?(:data_source_id)
          @display_name = args[:display_name] if args.key?(:display_name)
          @file_input = args[:file_input] if args.key?(:file_input)
          @input = args[:input] if args.key?(:input)
          @local_inventory_data_source = args[:local_inventory_data_source] if args.key?(:local_inventory_data_source)
          @name = args[:name] if args.key?(:name)
          @primary_product_data_source = args[:primary_product_data_source] if args.key?(:primary_product_data_source)
          @promotion_data_source = args[:promotion_data_source] if args.key?(:promotion_data_source)
          @regional_inventory_data_source = args[:regional_inventory_data_source] if args.key?(:regional_inventory_data_source)
          @supplemental_product_data_source = args[:supplemental_product_data_source] if args.key?(:supplemental_product_data_source)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for the FetchDataSource method.
      class FetchDataSourceRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Fetch details to deliver the data source.
      class FetchSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The day of the month when the data source file should be fetched (1-
        # 31). This field can only be set for monthly frequency.
        # Corresponds to the JSON property `dayOfMonth`
        # @return [Fixnum]
        attr_accessor :day_of_month
      
        # Optional. The day of the week when the data source file should be fetched.
        # This field can only be set for weekly frequency.
        # Corresponds to the JSON property `dayOfWeek`
        # @return [String]
        attr_accessor :day_of_week
      
        # Optional. Enables or pauses the fetch schedule.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The URL where the data source file can be fetched. Google Merchant
        # Center supports automatic scheduled uploads using the HTTP, HTTPS or SFTP
        # protocols, so the value will need to be a valid link using one of those three
        # protocols. Immutable for Google Sheets files.
        # Corresponds to the JSON property `fetchUri`
        # @return [String]
        attr_accessor :fetch_uri
      
        # Required. The frequency describing fetch schedule.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # Optional. An optional password for fetch url. Used for [submitting data
        # sources through SFTP](https://support.google.com/merchants/answer/13813117).
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `timeOfDay`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::TimeOfDay]
        attr_accessor :time_of_day
      
        # Optional. [Time zone](https://cldr.unicode.org) used for schedule. UTC by
        # default. For example, "America/Los_Angeles".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Optional. An optional user name for fetch url. Used for [submitting data
        # sources through SFTP](https://support.google.com/merchants/answer/13813117).
        # Corresponds to the JSON property `username`
        # @return [String]
        attr_accessor :username
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day_of_month = args[:day_of_month] if args.key?(:day_of_month)
          @day_of_week = args[:day_of_week] if args.key?(:day_of_week)
          @enabled = args[:enabled] if args.key?(:enabled)
          @fetch_uri = args[:fetch_uri] if args.key?(:fetch_uri)
          @frequency = args[:frequency] if args.key?(:frequency)
          @password = args[:password] if args.key?(:password)
          @time_of_day = args[:time_of_day] if args.key?(:time_of_day)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @username = args[:username] if args.key?(:username)
        end
      end
      
      # The data specific for file data sources. This field is empty for other data
      # source inputs.
      class FileInput
        include Google::Apis::Core::Hashable
      
        # Fetch details to deliver the data source.
        # Corresponds to the JSON property `fetchSettings`
        # @return [Google::Apis::MerchantapiDatasourcesV1beta::FetchSettings]
        attr_accessor :fetch_settings
      
        # Output only. The type of file input.
        # Corresponds to the JSON property `fileInputType`
        # @return [String]
        attr_accessor :file_input_type
      
        # Optional. The file name of the data source. Required for `UPLOAD` file input
        # type.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fetch_settings = args[:fetch_settings] if args.key?(:fetch_settings)
          @file_input_type = args[:file_input_type] if args.key?(:file_input_type)
          @file_name = args[:file_name] if args.key?(:file_name)
        end
      end
      
      # Response message for the ListDataSources method.
      class ListDataSourcesResponse
        include Google::Apis::Core::Hashable
      
        # The data sources from the specified account.
        # Corresponds to the JSON property `dataSources`
        # @return [Array<Google::Apis::MerchantapiDatasourcesV1beta::DataSource>]
        attr_accessor :data_sources
      
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
          @data_sources = args[:data_sources] if args.key?(:data_sources)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The local inventory data source.
      class LocalInventoryDataSource
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The two-letter ISO 639-1 language of the items to which
        # the local inventory is provided.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Required. Immutable. The feed label of the offers to which the local inventory
        # is provided. Must be less than or equal to 20 uppercase letters (A-Z), numbers
        # (0-9), and dashes (-). See also [migration to feed labels](https://developers.
        # google.com/shopping-content/guides/products/feed-labels).
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
        end
      end
      
      # The primary data source for local and online products.
      class PrimaryProductDataSource
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. Specifies the type of data source channel.
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # Optional. Immutable. The two-letter ISO 639-1 language of the items in the
        # data source. `feedLabel` and `contentLanguage` must be either both set or
        # unset. The fields can only be unset for data sources without file input. If
        # set, the data source will only accept products matching this combination. If
        # unset, the data source will accept products without that restriction.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. The countries where the items may be displayed. Represented as a [
        # CLDR territory code](https://github.com/unicode-org/cldr/blob/latest/common/
        # main/en.xml).
        # Corresponds to the JSON property `countries`
        # @return [Array<String>]
        attr_accessor :countries
      
        # Optional. Immutable. The feed label that is specified on the data source level.
        # Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9), and
        # dashes (-). See also [migration to feed labels](https://developers.google.com/
        # shopping-content/guides/products/feed-labels). `feedLabel` and `
        # contentLanguage` must be either both set or unset for data sources with
        # product content type. They must be set for data sources with a file input. If
        # set, the data source will only accept products matching this combination. If
        # unset, the data source will accept products without that restriction.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @content_language = args[:content_language] if args.key?(:content_language)
          @countries = args[:countries] if args.key?(:countries)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
        end
      end
      
      # The change that happened to the product including old value, new value,
      # country code as the region code and reporting context.
      class ProductChange
        include Google::Apis::Core::Hashable
      
        # The new value of the changed resource or attribute.
        # Corresponds to the JSON property `newValue`
        # @return [String]
        attr_accessor :new_value
      
        # The old value of the changed resource or attribute.
        # Corresponds to the JSON property `oldValue`
        # @return [String]
        attr_accessor :old_value
      
        # Countries that have the change (if applicable)
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Reporting contexts that have the change (if applicable)
        # Corresponds to the JSON property `reportingContext`
        # @return [String]
        attr_accessor :reporting_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
          @region_code = args[:region_code] if args.key?(:region_code)
          @reporting_context = args[:reporting_context] if args.key?(:reporting_context)
        end
      end
      
      # The message that the merchant will receive to notify about product status
      # change event
      class ProductStatusChangeMessage
        include Google::Apis::Core::Hashable
      
        # The target account that owns the entity that changed. Format : `accounts/`
        # merchant_id``
        # Corresponds to the JSON property `account`
        # @return [String]
        attr_accessor :account
      
        # The attribute in the resource that changed, in this case it will be always `
        # Status`.
        # Corresponds to the JSON property `attribute`
        # @return [String]
        attr_accessor :attribute
      
        # A message to describe the change that happened to the product
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::MerchantapiDatasourcesV1beta::ProductChange>]
        attr_accessor :changes
      
        # The account that manages the merchant's account. can be the same as merchant
        # id if it is standalone account. Format : `accounts/`service_provider_id``
        # Corresponds to the JSON property `managingAccount`
        # @return [String]
        attr_accessor :managing_account
      
        # The product name. Format: ``product.name=accounts/`account`/products/`product``
        # `
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The product id.
        # Corresponds to the JSON property `resourceId`
        # @return [String]
        attr_accessor :resource_id
      
        # The resource that changed, in this case it will always be `Product`.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @attribute = args[:attribute] if args.key?(:attribute)
          @changes = args[:changes] if args.key?(:changes)
          @managing_account = args[:managing_account] if args.key?(:managing_account)
          @resource = args[:resource] if args.key?(:resource)
          @resource_id = args[:resource_id] if args.key?(:resource_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
        end
      end
      
      # The promotion data source.
      class PromotionDataSource
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The two-letter ISO 639-1 language of the items in the
        # data source.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Required. Immutable. The target country used as part of the unique identifier.
        # Represented as a [CLDR territory code](https://github.com/unicode-org/cldr/
        # blob/latest/common/main/en.xml). Promotions are only available in selected [
        # countries](https://support.google.com/merchants/answer/4588460).
        # Corresponds to the JSON property `targetCountry`
        # @return [String]
        attr_accessor :target_country
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @target_country = args[:target_country] if args.key?(:target_country)
        end
      end
      
      # The regional inventory data source.
      class RegionalInventoryDataSource
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The two-letter ISO 639-1 language of the items to which
        # the regional inventory is provided.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Required. Immutable. The feed label of the offers to which the regional
        # inventory is provided. Must be less than or equal to 20 uppercase letters (A-Z)
        # , numbers (0-9), and dashes (-). See also [migration to feed labels](https://
        # developers.google.com/shopping-content/guides/products/feed-labels).
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
        end
      end
      
      # The supplemental data source for local and online products.
      class SupplementalProductDataSource
        include Google::Apis::Core::Hashable
      
        # Optional. Immutable. The two-letter ISO 639-1 language of the items in the
        # data source. `feedLabel` and `contentLanguage` must be either both set or
        # unset. The fields can only be unset for data sources without file input. If
        # set, the data source will only accept products matching this combination. If
        # unset, the data source will accept produts without that restriction.
        # Corresponds to the JSON property `contentLanguage`
        # @return [String]
        attr_accessor :content_language
      
        # Optional. Immutable. The feed label that is specified on the data source level.
        # Must be less than or equal to 20 uppercase letters (A-Z), numbers (0-9), and
        # dashes (-). See also [migration to feed labels](https://developers.google.com/
        # shopping-content/guides/products/feed-labels). `feedLabel` and `
        # contentLanguage` must be either both set or unset for data sources with
        # product content type. They must be set for data sources with a file input. If
        # set, the data source will only accept products matching this combination. If
        # unset, the data source will accept produts without that restriction.
        # Corresponds to the JSON property `feedLabel`
        # @return [String]
        attr_accessor :feed_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_language = args[:content_language] if args.key?(:content_language)
          @feed_label = args[:feed_label] if args.key?(:feed_label)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to
        # allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
    end
  end
end
